require_relative 'processor.rb'

class Weather
  include Processor

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def smallest_temperature_spread
    smallest_difference('MxT', 'MnT', 'The day with the smallest spread is the :field with :difference')
  end
end
