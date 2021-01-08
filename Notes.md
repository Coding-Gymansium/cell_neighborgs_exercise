# Notes


Rules
Every cell interacts with its eight neighbors, which are the cells that are horizontally, vertically, or diagonally
adjacent. At each iteration, the following transitions occur:
* Any active cell with fewer than two active neighbors becomes inactive.
* Any active cell with two or three active neighbors is active in the next iteration.
* Any active cell with more than three active neighbors becomes inactive.
* Any inactive cell with exactly three active neighbors becomes an active cell.

Going to need:
1. Generate columns and rows 3x3
2. What's my starting point?
  The first iteration is created by applying the above rules simultaneously to every cell in the starting state.

  a1, a2, a3
  b1, b2, b3
  c1, c2, c3

iterate over 'grid' array. 

a cells are index 0
a cells are index 1
a cells are index 2

iterate over columns first 

if grid[row_index][column_index] == 'inactive' && active >= 3
  grid[row_index][column_index] = 'active'
end