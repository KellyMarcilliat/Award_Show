require 'pry'

class Movie

  attr_reader     :name,
                  :release_year
  def initialize(name, release_year)
    @name = name
    @release_year = release_year
  end 

end
