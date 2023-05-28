class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    return redirect_to @question if @question.save

    render :new, status: :unprocessable_entity
  end

  private

  def question_params
    params.require(:question).permit(:header, :body)
  end
end
