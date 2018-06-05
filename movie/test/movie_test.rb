require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/movie'

class MovieTest < Minitest::Test
  def test_it_exists_and_has_name_and_release_year
    movie = Movie.new("Hunger Games", 2012)
    assert_instance_of Movie, movie
    assert_equal "Hunger Games", movie.name
    assert_equal 2012, movie.release_year
  end
end
