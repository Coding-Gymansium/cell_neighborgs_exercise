require 'pry'
class Grid
  attr_reader :grid
  def initialize(row_1, row_2, row_3)
    @active = 0
    @row_1 = []
    @row_2 = []
    @row_3 = []
    @grid = [row_1, row_2, row_3]
  end

  
end

grid_1 = Grid.new(
  row_1 = ["active", "active", "active"],
  row_2 = ["inactive", "active", "inactive"],
  row_3 = ["inactive", "inactive", "inactive"]
)
# puts row_2[1]
# puts grid_1.cell_neighborgs(grid_1.grid,1, 1)
# puts row_2[1]
