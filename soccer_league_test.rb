require_relative 'soccer_league'
require 'test/unit'

class SoccerLeagueTest < Test::Unit::TestCase
  def test_simple
    assert_equal('The team with the smallest goal difference is Aston_Villa with 1', SoccerLeague.new('football.dat').smallest_goal_difference )
  end

  def test_failure
    assert_equal('No data to be processed', SoccerLeague.new('fail_file.dat').smallest_goal_difference )
  end
end
