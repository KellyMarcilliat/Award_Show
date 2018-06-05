require 'pry'
class Actor

  attr_reader     :first_last,
                  :birth_year,
                  :net_worth
  def initialize(first_last, birth_year, net_worth = 0)
    @first_last = first_last
    @birth_year = birth_year
    @net_worth = net_worth
  end
end
