class WordsController < ApplicationController

  def index
    @message = count_words
    @message = "Text input is required." if @message == 0
  end
  
  private

  def count_words
    return "" if params[:text].nil?
    params[:text].gsub(/\s+/, ' ')
                 .gsub(/[\?\!\.\,\:\;]/, '')
                 .split(' ')
                 .size 
  end

end

