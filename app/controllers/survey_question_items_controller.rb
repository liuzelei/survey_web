class SurveyQuestionItemsController < ApplicationController
  # GET /survey_question_items
  # GET /survey_question_items.json
  def index
    @survey_question_items = SurveyQuestionItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @survey_question_items }
    end
  end

  # GET /survey_question_items/1
  # GET /survey_question_items/1.json
  def show
    @survey_question_item = SurveyQuestionItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @survey_question_item }
    end
  end

  # GET /survey_question_items/new
  # GET /survey_question_items/new.json
  def new
    @survey_question_item = SurveyQuestionItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @survey_question_item }
    end
  end

  # GET /survey_question_items/1/edit
  def edit
    @survey_question_item = SurveyQuestionItem.find(params[:id])
  end

  # POST /survey_question_items
  # POST /survey_question_items.json
  def create
    @survey_question_item = SurveyQuestionItem.new(params[:survey_question_item])

    respond_to do |format|
      if @survey_question_item.save
        format.html { redirect_to @survey_question_item, notice: 'Survey question item was successfully created.' }
        format.json { render json: @survey_question_item, status: :created, location: @survey_question_item }
      else
        format.html { render action: "new" }
        format.json { render json: @survey_question_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /survey_question_items/1
  # PUT /survey_question_items/1.json
  def update
    @survey_question_item = SurveyQuestionItem.find(params[:id])

    respond_to do |format|
      if @survey_question_item.update_attributes(params[:survey_question_item])
        format.html { redirect_to @survey_question_item, notice: 'Survey question item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @survey_question_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_question_items/1
  # DELETE /survey_question_items/1.json
  def destroy
    @survey_question_item = SurveyQuestionItem.find(params[:id])
    @survey_question_item.destroy

    respond_to do |format|
      format.html { redirect_to survey_question_items_url }
      format.json { head :no_content }
    end
  end
end
