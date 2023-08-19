class AnswersController < ApplicationController
  before_action :set_question

  def create
    @answer = @question.answers.create(create_params)
    redirect_to question_path(@question)
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to question_path(@question)
  end

  private

  def set_question
    @question = Question.find(params[:question_id])
  end

  def create_params
    answer_params.merge({ user_id: current_user.id })
  end

  def answer_params
    params.require(:answer).permit(:body, :status)
  end
end
