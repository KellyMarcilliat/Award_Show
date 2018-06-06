
require 'pry'

class AwardShow

attr_reader   :year,
              :nominees,
              :salaries,
              :actors,
              :last_names
  def initialize(year)
    @year = year
    @nominees = []
    @salaries = []
    @actors = []
    @last_names = []
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
    @nominees.map do |each|
      @salaries << each.actor.net_worth.to_i
    end
    return @salaries.sum/@salaries.count
    # binding.pry
  end

  def nominees_total_net_worth
    @salaries.sum
  end

  def nominees_alphabetical_last_names
    @nominees.map do |each|
      @actors << each.actor.first_last
    end
    @actors.map! do |each|
      each.split
    end
    @actors.map! do |each|
      each.pop
    end
    @last_names = @actors.sort
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
