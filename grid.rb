require 'pry'
#---- cell: value
# row_1 = {a1: inactive, a2: inactive, a3: inactive}
# row_2 = {b1: inactive, b2: inactive, b3: inactive}
# row_3 = {c1: inactive, c2: inactive, c3: inactive}

# grid = [row_1, row_2, row_3]
# Scenario 1
row_1 = ["active", "active", "active"]
row_2 = ["inactive", "active", "inactive"]
row_3 = ["inactive", "inactive", "inactive"]

grid = [row_1, row_2, row_3]

def cell_neighborgs(grid, row_index, column_index)
  active = 0
  #--- horizontal search
  if grid[row_index][column_index - 1] == "active"
    active += 1
  end
  
  if grid[row_index][column_index + 1] == "active"
    active += 1
  end

  #--- vertical search
  if grid[row_index + 1][column_index] == "active"
    is_active += 1
  end
  if grid[row_index - 1][column_index] == "active"
    active += 1
  end

  #--- diagonal above search
  if grid[row_index - 1][column_index] == "active"
    active += 1
  end

  if grid[row_index + 1][column_index] == "active"
    active += 1
  end
  is_active

  #--- Switch
  if grid[row_index][column_index] == 'inactive' && is_active >= 3
    grid[row_index][column_index] = 'active'
  else 
    grid[row_index][column_index] = 'inactive'
  end
end

puts row_2[1]
puts cell_neighborgs(grid,1, 1)
puts row_2[1]