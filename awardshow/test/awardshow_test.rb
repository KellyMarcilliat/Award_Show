require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/awardshow'
require '../actor/lib/actor'
require '../movie/lib/movie'
require '../nominee/lib/nominee'

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

  def test_awardshow_nominee_array_remains_empty_with_new_actors_nominees_movies
    show = AwardShow.new(2017)
    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee_1 = Nominee.new(actress_1, movie_1)
    assert_equal [], show.nominees

    actress_2 = Actor.new("Brie Larson", 1989, "10000000")
    movie_2 = Movie.new("Room", 2015)
    nominee_2 = Nominee.new(actress_2, movie_2)
    assert_equal [], show.nominees
  end

  def test_nominee_can_be_added_to_nominees_array
    show = AwardShow.new(2018)
    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee_1 = Nominee.new(actress_1, movie_1)
    show.add_nominee(nominee_1)
    assert_equal [nominee_1], show.nominees
  end

  def test_nominees_array_can_hold_additional_nominees
    show = AwardShow.new(2018)
    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee_1 = Nominee.new(actress_1, movie_1)
    show.add_nominee(nominee_1)

    actress_2 = Actor.new("Brie Larson", 1989, "10000000")
    movie_2 = Movie.new("Room", 2015)
    nominee_2 = Nominee.new(actress_2, movie_2)
    show.add_nominee(nominee_2)
    assert_equal [nominee_1, nominee_2], show.nominees
  end

  def test_it_can_show_nominated_movies
    show = AwardShow.new(2018)

    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee_1 = Nominee.new(actress_1, movie_1)


    actress_2 = Actor.new("Brie Larson", 1989, "10000000")
    movie_2 = Movie.new("Room", 2015)
    nominee_2 = Nominee.new(actress_2, movie_2)

    show.add_nominee(nominee_1)
    show.add_nominee(nominee_2)

    # show.add_nominated_movie
    # show.add_nominated_movie

    assert_equal [movie_1, movie_2], show.nominated_movies
  end

  def test_it_can_calculate_average_salary
    show = AwardShow.new(2018)

    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee_1 = Nominee.new(actress_1, movie_1)


    actress_2 = Actor.new("Brie Larson", 1989, "10000000")
    movie_2 = Movie.new("Room", 2015)
    nominee_2 = Nominee.new(actress_2, movie_2)

    show.add_nominee(nominee_1)
    show.add_nominee(nominee_2)

    assert_equal 60000000, show.average_salary
  end

  def test_it_shows_nominees_total_net_worth
    show = AwardShow.new(2018)

    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee_1 = Nominee.new(actress_1, movie_1)


    actress_2 = Actor.new("Brie Larson", 1989, "10000000")
    movie_2 = Movie.new("Room", 2015)
    nominee_2 = Nominee.new(actress_2, movie_2)

    show.add_nominee(nominee_1)
    show.add_nominee(nominee_2)

    show.average_salary

    assert_equal 120000000, show.nominees_total_net_worth
  end

  def test_it_can_alpabetize_last_names
    show = AwardShow.new(2018)

    actress_1 = Actor.new("Jennifer Lawrence", 1990, "110000000")
    movie_1 = Movie.new("Hunger Games", 2012)
    nominee_1 = Nominee.new(actress_1, movie_1)


    actress_2 = Actor.new("Brie Larson", 1989, "10000000")
    movie_2 = Movie.new("Room", 2015)
    nominee_2 = Nominee.new(actress_2, movie_2)

    show.add_nominee(nominee_1)
    show.add_nominee(nominee_2)

    show.nominees

    assert_equal ["Larson", "Lawrence"], show.nominees_alphabetical_last_names
  end
end
