require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/nominee'
require '../awardshow/lib/awardshow'
require '../actor/lib/actor'
require '../movie/lib/movie'

class NomineeTest < Minitest::Test
  def test_nominee_exists
    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee_1 = Nominee.new(actress_1, movie_1)
    assert_instance_of Nominee, nominee_1
  end

  def test_actor_returns_Actor_object
    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee_1 = Nominee.new(actress_1, movie_1)
    assert_equal actress_1, nominee_1.actor
    assert actress_1
  end

  def test_movie_returns_Movie_object
    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee_1 = Nominee.new(actress_1, movie_1)
    assert_equal movie_1, nominee_1.movie
    assert movie_1
  end

  def test_different_nominee_exists
    actress_2 = Actor.new("Brie Larson", 1989, "10000000")
    movie_2 = Movie.new("Room", 2015)
    nominee_2 = Nominee.new(actress_2, movie_2)
    assert_instance_of Nominee, nominee_2
  end
end
