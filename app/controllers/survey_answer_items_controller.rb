class SurveyAnswerItemsController < ApplicationController
  # GET /survey_answer_items
  # GET /survey_answer_items.json
  def index
    @survey_answer_items = SurveyAnswerItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @survey_answer_items }
    end
  end

  # GET /survey_answer_items/1
  # GET /survey_answer_items/1.json
  def show
    @survey_answer_item = SurveyAnswerItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @survey_answer_item }
    end
  end

  # GET /survey_answer_items/new
  # GET /survey_answer_items/new.json
  def new
    @survey_answer_item = SurveyAnswerItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @survey_answer_item }
    end
  end

  # GET /survey_answer_items/1/edit
  def edit
    @survey_answer_item = SurveyAnswerItem.find(params[:id])
  end

  # POST /survey_answer_items
  # POST /survey_answer_items.json
  def create
    @survey_answer_item = SurveyAnswerItem.new(params[:survey_answer_item])

    respond_to do |format|
      if @survey_answer_item.save
        format.html { redirect_to @survey_answer_item, notice: 'Survey answer item was successfully created.' }
        format.json { render json: @survey_answer_item, status: :created, location: @survey_answer_item }
      else
        format.html { render action: "new" }
        format.json { render json: @survey_answer_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /survey_answer_items/1
  # PUT /survey_answer_items/1.json
  def update
    @survey_answer_item = SurveyAnswerItem.find(params[:id])

    respond_to do |format|
      if @survey_answer_item.update_attributes(params[:survey_answer_item])
        format.html { redirect_to @survey_answer_item, notice: 'Survey answer item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @survey_answer_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_answer_items/1
  # DELETE /survey_answer_items/1.json
  def destroy
    @survey_answer_item = SurveyAnswerItem.find(params[:id])
    @survey_answer_item.destroy

    respond_to do |format|
      format.html { redirect_to survey_answer_items_url }
      format.json { head :no_content }
    end
  end
end
