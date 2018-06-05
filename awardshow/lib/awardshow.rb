
require 'pry'

class AwardShow

attr_reader   :year,
              :nominees
  def initialize(year)
    @year = year
    @nominees = []
  end

end
