class QuestionsController < ApplicationController
  def index
    @questions = Question.active
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

  def update
    @question = Question.find(params[:id])
    return redirect_to @question if @question.update(question_params)

    render :edit, status: :unprocessable_entity
  end

  def destroy
    @question = Question.find(params[:id]).destroy
    redirect_to root_path, status: :see_other
  end

  private

  def question_params
    params.require(:question).permit(:header, :body, :status)
  end
end
