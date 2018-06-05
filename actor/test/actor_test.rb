require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/actor'

class ActorTest < Minitest::Test
  def test_actor_exists
    actor = Actor.new("Jennifer Lawrence", 1990, "110000000")
    assert_instance_of Actor, actor
  end

  def test_name_birth_worth
    actor = Actor.new("Jennifer Lawrence", 1990, "110000000")
    assert_equal "Jennifer Lawrence", actor.first_last
    assert_equal 1990, actor.birth_year
    assert_equal "110000000", actor.net_worth
  end

end
