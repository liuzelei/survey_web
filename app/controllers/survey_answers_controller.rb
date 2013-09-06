class SurveyAnswersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @suite = SurveySuite.find(1)
    @survey_answers = @suite.survey_answers.order("id desc").page(params[:page])
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @survey_answers }
    end
  end
  
  def export
    headers['Content-Type'] = "application/vnd.ms-excel"
    headers['Content-Disposition'] = 'attachment; filename="export.xls"'
    headers['Cache-Control'] = ''
    @suite = SurveySuite.find(1)
    @survey_answers = @suite.survey_answers.order("id desc")
    render :layout => false
  end

  def show
    @survey_answer = SurveyAnswer.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @survey_answer }
    end
  end

  def new
    @survey_answer = SurveyAnswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @survey_answer }
    end
  end

  def edit
    @survey_answer = SurveyAnswer.find(params[:id])
  end

  def create
    @survey_answer = SurveyAnswer.new(params[:survey_answer])

    respond_to do |format|
      if @survey_answer.save
        format.html { redirect_to @survey_answer, notice: 'Survey answer was successfully created.' }
        format.json { render json: @survey_answer, status: :created, location: @survey_answer }
      else
        format.html { render action: "new" }
        format.json { render json: @survey_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @survey_answer = SurveyAnswer.find(params[:id])

    respond_to do |format|
      if @survey_answer.update_attributes(params[:survey_answer])
        format.html { redirect_to @survey_answer, notice: 'Survey answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @survey_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @survey_answer = SurveyAnswer.find(params[:id])
    @survey_answer.destroy

    respond_to do |format|
      format.html { redirect_to survey_answers_url }
      format.json { head :no_content }
    end
  end
end
