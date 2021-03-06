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

  def test_it_can_count_active_cells_neighboring_cells_diagonally
    grid_1 = Grid.new(
      row_1 = ["active", "active", "active"],
      row_2 = ["inactive", "active", "inactive"],
      row_3 = ["active", "inactive", "inactive"]
    )
    grid_1.diagonal_search(grid_1.grid,1, 1)
    assert_equal 3, grid_1.active
  end

  def test_it_can_count_all_active_neighboring_cells
    grid_1 = Grid.new(
      row_1 = ["active", "active", "active"],
      row_2 = ["inactive", "active", "inactive"],
      row_3 = ["active", "inactive", "active"]
    )
    grid_1.cell_neighborgs(grid_1.grid,1, 1)
    assert_equal 5, grid_1.active
  end

  def test_it_switches_status_if_3_or_more_neighborgs_are_active
    grid_1 = Grid.new(
      row_1 = ["active", "active", "inactive"],
      row_2 = ["inactive", "active", "inactive"],
      row_3 = ["active", "inactive", "inactive"]
    )
    assert_equal "active", grid_1.grid[1][1]
    grid_1.cell_neighborgs(grid_1.grid,1, 1)
    assert_equal "inactive", grid_1.grid[1][1]
    grid_1.switch_status(grid_1.grid,1, 1)
    assert_equal "active", grid_1.grid[1][1]
  end

  def test_cell_neighborgs_method_can_switch_status
    grid_1 = Grid.new(
      row_1 = ["active", "active", "inactive"],
      row_2 = ["inactive", "active", "inactive"],
      row_3 = ["active", "inactive", "inactive"]
    )
    assert_equal "active", grid_1.grid[1][1]
    grid_1.cell_neighborgs(grid_1.grid,1, 1)
    assert_equal "inactive", grid_1.grid[1][1]
  end
end