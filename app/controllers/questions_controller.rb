class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = ''
    @question = params[:question] if params[:question]
      if @question.include? "?"
        @answer = "Silly question, get dressed and go to work!"
      elsif @question.downcase == "i am going to work right now"
        @answer = "Great!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
  end
end
