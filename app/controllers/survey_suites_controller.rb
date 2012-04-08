class SurveySuitesController < ApplicationController
  before_filter :authenticate_user!
  # GET /survey_suites
  # GET /survey_suites.json
  def index
    @survey_suites = SurveySuite.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @survey_suites }
    end
  end

  # GET /survey_suites/1
  # GET /survey_suites/1.json
  def show
    @survey_suite = SurveySuite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @survey_suite }
    end
  end

  # GET /survey_suites/new
  # GET /survey_suites/new.json
  def new
    @survey_suite = SurveySuite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @survey_suite }
    end
  end

  # GET /survey_suites/1/edit
  def edit
    @survey_suite = SurveySuite.find(params[:id])
  end

  # POST /survey_suites
  # POST /survey_suites.json
  def create
    @survey_suite = SurveySuite.new(params[:survey_suite])

    respond_to do |format|
      if @survey_suite.save
        format.html { redirect_to @survey_suite, notice: 'Survey suite was successfully created.' }
        format.json { render json: @survey_suite, status: :created, location: @survey_suite }
      else
        format.html { render action: "new" }
        format.json { render json: @survey_suite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /survey_suites/1
  # PUT /survey_suites/1.json
  def update
    @survey_suite = SurveySuite.find(params[:id])

    respond_to do |format|
      if @survey_suite.update_attributes(params[:survey_suite])
        format.html { redirect_to @survey_suite, notice: 'Survey suite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @survey_suite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_suites/1
  # DELETE /survey_suites/1.json
  def destroy
    @survey_suite = SurveySuite.find(params[:id])
    @survey_suite.destroy

    respond_to do |format|
      format.html { redirect_to survey_suites_url }
      format.json { head :no_content }
    end
  end
end
