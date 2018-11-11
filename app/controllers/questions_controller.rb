class QuestionsController < ApplicationController
  def ask
    @query = params[:question]
    @response
  end

  def answer
    @query = params[:question]
    if @query == 'I am going to work'
      return @response = 'Great!'
    elsif @query.end_with? '?'
      return @response = 'Silly question, get dressed and go to work!'
    else
      return @response = "I don't care, get dressed and go to work!"
    end
  end
end
