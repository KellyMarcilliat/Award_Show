require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/awardshow'
require '../actor/lib/actor'
require '../movie/lib/movie'

class AwardShowTest < Minitest::Test

  def test_award_show_instance_exists
    show = AwardShow.new(2017)
    assert_instance_of AwardShow, show
  end

  def test_award_show_has_year
    show = AwardShow.new(2017)
    assert_equal 2017, show.year
    show = AwardShow.new(2018)
    assert_equal 2018, show.year
  end

  def test_award_show_has_empty_array_for_nominees
    show = AwardShow.new(2017)
    assert_equal [], show.nominees
  end

  # +show.nominees
  # +#=> []

end
