class DiscursiveQuestionsController < ApplicationController
  before_action :set_discursive_question, only: [:show, :update, :destroy]

  # GET /discursive_questions
  def index
    @discursive_questions = DiscursiveQuestion.all

    render json: @discursive_questions
  end

  # GET /discursive_questions/1
  def show
    render json: @discursive_question
  end

  # POST /discursive_questions
  def create
    @discursive_question = DiscursiveQuestion.new(discursive_question_params)

    if @discursive_question.save
      render json: @discursive_question, status: :created, location: @discursive_question
    else
      render json: @discursive_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /discursive_questions/1
  def update
    if @discursive_question.update(discursive_question_params)
      render json: @discursive_question
    else
      render json: @discursive_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /discursive_questions/1
  def destroy
    @discursive_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discursive_question
      @discursive_question = DiscursiveQuestion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def discursive_question_params
      params.require(:discursive_question).permit(:title, :survey_id)
    end
end
