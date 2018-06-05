require 'pry'

class Nominee

  attr_reader     :actor,
                  :movie
  def initialize(actor, movie)
    @actor = actor
    @movie = movie
  end 

end
