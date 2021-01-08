# Ruby Exercise

The exercise is to create a cell based simulation. 
The simulation is given a starting state with specific cellsactive. 
On each iteration, the simulation will update the state of the cells based on a set of rules. 
The output ofthe last iteration will be used as the starting state for the next iteration.

## Rules

Every cell interacts with its eight neighbors, which are the cells that are horizontally, vertically, or diagonally
adjacent. At each iteration, the following transitions occur:
* Any active cell with fewer than two active neighbors becomes inactive.
* Any active cell with two or three active neighbors is active in the next iteration.
* Any active cell with more than three active neighbors becomes inactive.
* Any inactive cell with exactly three active neighbors becomes an active cell.

The first iteration is created by applying the above rules simultaneously to every cell in the starting state. 
Eachiteration is a pure function of the preceding one. The rules continue to be applied repeatedly to create furtheriterations

### Cell Neighbors

|        1       | 2    |3     |
| :------------- | :----------: | -----------: |
|  4 | **cell**   | 5    |
| 6   | 7 | 8 |
