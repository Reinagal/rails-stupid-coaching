class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def coach_answer
    if ask == 'I am going to work'
      'Great!'
    elsif ask.include? '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def answer
    @answer = coach_answer
  end
end
