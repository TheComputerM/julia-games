# Minesweeper
[Minesweeper](https://en.wikipedia.org/wiki/Minesweeper_(video_game)) is a classic retro game, you can play it in Julia by running the app.jl file.

Run the app.jl file in the command line.
```
$ path/to/julia app.jl
```

## Task Description
Minesweeper is a popular game that is recognizable to anyone who has used Windows XP. If you haven't played it yet or want to refresh your memory, you can find the game online as well.

Create a 8x8 and a 16x16 version of a minesweeper game that randomly generates 9 and 20 mines respectively and each turn asks the player for the location of the tile they want to uncover by asking them to enter the row and column of the tile. The current state of the minefield, which can be represented as a text grid, must be shown to the player at each turn.

Each cell of the grid must contain either a number from 0-8 (indicating how many mines are adjacent to this tile) or an asterisk ("*", which represents a mine). Covered tiles can be represented by a blank space. Of course, only the cells the player already has uncovered should be visible.

The game ends when all "safe" tiles have been uncovered or the player steps on a mine. Every game must end with the grid showing ALL THE TILES THAT HAVE BEEN UNCOVERED SO FAR and THE LOCATION OF ALL THE MINES.

__Sample Output__

```
λ julia.exe app.jl                                                      
`easy`: lol nerd
`medium`: 8x8 grid with 9 mines
`hard`: 16x16 grid with 20 mines
Choose type of Difficulty: medium
---------------------------------------------------------------------
     1  2  3  4  5  6  7  8
   ________________________
1 |  ■  ■  ■  ■  ■  ■  ■  ■
2 |  ■  ■  ■  ■  ■  ■  ■  ■
3 |  ■  ■  ■  ■  ■  ■  ■  ■
4 |  ■  ■  ■  ■  ■  ■  ■  ■
5 |  ■  ■  ■  ■  ■  ■  ■  ■
6 |  ■  ■  ■  ■  ■  ■  ■  ■
7 |  ■  ■  ■  ■  ■  ■  ■  ■
8 |  ■  ■  ■  ■  ■  ■  ■  ■

Type the coordinates of the cell you want to check.
Type `m 1 2` to mine (1, 2) or `f 1 2` to flag (1, 2) or type `exit` to exit.

Enter Command: m 1 2
---------------------------------------------------------------------
     1  2  3  4  5  6  7  8
   ________________________
1 |  0  1  ■  ■  ■  ■  ■  ■
2 |  0  2  ■  ■  ■  ■  ■  ■
3 |  0  1  ■  ■  ■  ■  ■  ■
4 |  0  1  ■  ■  ■  ■  ■  ■
5 |  0  1  ■  ■  ■  ■  ■  ■
6 |  0  1  ■  ■  ■  ■  ■  ■
7 |  1  3  ■  ■  ■  ■  ■  ■
8 |  ■  ■  ■  ■  ■  ■  ■  ■

Type the coordinates of the cell you want to check.
Type `m 1 2` to mine (1, 2) or `f 1 2` to flag (1, 2) or type `exit` to exit.

Enter Command: m 7 7
---------------------------------------------------------------------
     1  2  3  4  5  6  7  8
   ________________________
1 |  0  1  ■  ■  ■  ■  ■  ■
2 |  0  2  ■  ■  ■  ■  ■  ■
3 |  0  1  ■  ■  ■  ■  ■  ■
4 |  0  1  ■  ■  ■  ■  ■  ■
5 |  0  1  ■  ■  ■  ■  ■  ■
6 |  0  1  ■  ■  ■  ■  ■  ■
7 |  1  3  ■  ■  ■  ■  1  ■
8 |  ■  ■  ■  ■  ■  ■  ■  ■

Type the coordinates of the cell you want to check.
Type `m 1 2` to mine (1, 2) or `f 1 2` to flag (1, 2) or type `exit` to exit.

Enter Command: m 5 5
---------------------------------------------------------------------
     1  2  3  4  5  6  7  8
   ________________________
1 |  0  1  ■  ■  ■  ■  ■  ■
2 |  0  2  ■  ■  ■  ■  ■  ■
3 |  0  1  ■  ■  ■  ■  ■  ■
4 |  0  1  ■  ■  ■  ■  ■  ■
5 |  0  1  ■  ■  1  ■  ■  ■
6 |  0  1  ■  ■  ■  ■  ■  ■
7 |  1  3  ■  ■  ■  ■  1  ■
8 |  ■  ■  ■  ■  ■  ■  ■  ■

Type the coordinates of the cell you want to check.
Type `m 1 2` to mine (1, 2) or `f 1 2` to flag (1, 2) or type `exit` to exit.

Enter Command: exit
     1  2  3  4  5  6  7  8
   ________________________
1 |  0  1  *  ■  ■  ■  *  ■
2 |  0  2  ■  ■  ■  ■  ■  ■
3 |  0  1  *  ■  ■  ■  ■  ■
4 |  0  1  ■  ■  ■  ■  ■  ■
5 |  0  1  ■  *  1  ■  ■  ■
6 |  0  1  *  ■  ■  ■  ■  ■
7 |  1  3  ■  ■  ■  *  1  ■
8 |  ■  *  *  ■  *  ■  ■  ■                                            
```
