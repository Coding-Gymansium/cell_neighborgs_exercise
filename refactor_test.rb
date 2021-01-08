require 'minitest/autorun'
require 'minitest/pride'
require_relative 'refactor'

class GridTest < Minitest::Test

  def test_it_exists
    grid_1 = Grid.new
    assert_instance_of Grid, grid_1
  end
end