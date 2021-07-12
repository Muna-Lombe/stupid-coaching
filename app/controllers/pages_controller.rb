class PagesController < ApplicationController
  def home
  end
  def ask
  end
  def answer
    @question = params[:question]
    question = params[:question]
    @answer = ""
    if "I am going to work right now!".downcase.include? question.downcase 
      @answer = "Great!"
    elsif question.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
