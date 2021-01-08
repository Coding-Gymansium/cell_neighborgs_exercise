require 'pry'
class Grid
  attr_reader :grid, :active
  def initialize(row_1=[], row_2=[], row_3=[])
    @active = 0
    @row_1 = []
    @row_2 = []
    @row_3 = []
    @grid = [row_1, row_2, row_3]
  end

  def horizontal_search(grid, row_index, column_index)
    if grid[row_index][column_index - 1] == "active"
      @active += 1
    end
    
    if grid[row_index][column_index + 1] == "active"
      @active += 1
    end
  end

  def vertical_search(grid, row_index, column_index)
    if grid[row_index + 1][column_index] == "active"
      @active += 1
    end
    if grid[row_index - 1][column_index] == "active"
      @active += 1
    end
  end

  def diagonal_search(grid, row_index, column_index)
    if grid[row_index - 1][column_index - 1] == "active"
      @active += 1
    end
    if grid[row_index - 1][column_index + 1] == "active"
      @active += 1
    end
  
    if grid[row_index + 1][column_index - 1] == "active"
      @active += 1
    end
    if grid[row_index + 1][column_index + 1] == "active"
      @active += 1
    end
  end

  def cell_neighborgs(grid, row_index, column_index)
    horizontal_search(grid, row_index, column_index)
    vertical_search(grid, row_index, column_index)
    diagonal_search(grid, row_index, column_index)
    @active
  end
end
