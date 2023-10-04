class QuizzesController < ApplicationController

  def index
    @quizzes = RapperContentScraper.generate
  end

  def check_answer
  end

  def get_another_rapper
    rappers = WikipediaContentScraper('rapper')
    render partial: 'quizzes/questions', locals: { rappers: rappers}
  end

end
