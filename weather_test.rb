require_relative 'weather'
require 'test/unit'

class WeatherTest < Test::Unit::TestCase
  def test_simple
    assert_equal('The day with the smallest spread is the 14 with 2', Weather.new('weather.dat').smallest_temperature_spread )
  end

  def test_failure
    assert_equal('No data to be processed', Weather.new('fail_file.dat').smallest_temperature_spread )
  end
end
