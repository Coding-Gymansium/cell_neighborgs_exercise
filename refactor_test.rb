require 'minitest/autorun'
require 'minitest/pride'
require_relative 'refactor'

class GridTest < Minitest::Test

  def test_it_exists
    grid_1 = Grid.new
    assert_instance_of Grid, grid_1
  end

  def test_active_default_is_zero
    grid_1 = Grid.new
    assert_equal 0,  grid_1.active
  end

  def test_grid_has_three_rows_arrays
    grid_1 = Grid.new(
      row_1 = ["active", "active", "active"],
      row_2 = ["inactive", "active", "inactive"],
      row_3 = ["inactive", "inactive", "inactive"]
    )
    assert_equal 3, grid_1.grid.count
  end

  def test_it_can_count_active_cells_neighboring_cells_horizontally
    grid_1 = Grid.new(
      row_1 = ["active", "active", "active"],
      row_2 = ["inactive", "active", "inactive"],
      row_3 = ["inactive", "inactive", "inactive"]
    )
    grid_1.horizontal_search(grid_1.grid,0, 1)
    assert_equal 2, grid_1.active
  end

  def test_it_can_count_active_cells_neighboring_cells_vertically
    grid_1 = Grid.new(
      row_1 = ["active", "active", "active"],
      row_2 = ["inactive", "active", "inactive"],
      row_3 = ["inactive", "inactive", "inactive"]
    )
    grid_1.vertical_search(grid_1.grid,0, 1)
    assert_equal 1, grid_1.active
  end
end