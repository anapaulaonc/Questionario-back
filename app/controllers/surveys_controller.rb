class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :update, :destroy]
  before_action :authorize_request, only: [:create]

  # GET /surveys
  def index
    @surveys = Survey.all
    render json: @surveys, include: [:user] 

  end

  # GET /surveys/1
  def show
    render json: @survey, include: [:boolean_questions, :alternative_questions, :discursive_questions]
  end

  # POST /surveys
  def create
    @survey = @current_user.surveys.new(survey_params)

    if @survey.save
      render json: @survey, status: :created, location: @survey
    else
      render json: @survey.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /surveys/1
  def update
    if @survey.update(survey_params)
      render json: @survey
    else
      render json: @survey.errors, status: :unprocessable_entity
    end
  end

  # DELETE /surveys/1
  def destroy
    @survey.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def survey_params
      params.require(:survey).permit(:title)
    end
end
