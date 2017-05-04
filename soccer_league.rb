require_relative 'processor.rb'

class SoccerLeague
  include Processor

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def smallest_goal_difference
    smallest_difference('F','A', 'The team with the smallest goal difference is :field with :difference')
  end
end
