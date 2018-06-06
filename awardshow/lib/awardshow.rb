
require 'pry'

class AwardShow

attr_reader   :year,
              :nominees#,
              # :nominated_movies
  def initialize(year)
    @year = year
    @nominees = []
    # @nominated_movies = []
  end

  def add_nominee(nominee)
    @nominees << nominee
    # binding.pry
  end

  def nominated_movies
    @nominees.map do |each|
      each.movie
    end
  end

  def average_salary
    @salaries = []
    @nominees.map do |each|
      @salaries << each.actor.net_worth.to_i
    end
    return @salaries.sum/@salaries.count
    # binding.pry
  end

  # def add_nominated_movie
  #   @nominated_movies << nominee.movie
  #   return @nominated_movies
  #   binding.pry
  # end

  # def add_nominated_movie
  #   @nominees.map do |each|
  #     @nominated_movies << each.movie
  #     # return @nominated_movies
  #   end
  #   binding.pry
  # end

end
