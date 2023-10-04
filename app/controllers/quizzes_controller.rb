class QuizzesController < ApplicationController

  def index
 
  end


  def show
    @quizzes = RapperContentScraper.generate
  end

  def get_another_rapper
    rappers = WikipediaContentScraper('rapper')
    render partial: 'quizzes/questions', locals: { rappers: rappers}
  end

end
