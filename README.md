# This is a collection of games I have made in Julia

### Minesweeper
Run the minesweeper.jl file in the command line.
```
$ path/to/julia minesweeper.jl
```

__Sample Output__

```
λ julia.exe minesweeper.jl                                                     
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
1 |  0  0  0  2  ■  ■  ■  ■                                                    
2 |  0  1  1  3  ■  ■  ■  ■                                                    
3 |  0  1  ■  ■  ■  ■  ■  ■                                                    
4 |  1  2  ■  ■  ■  ■  ■  ■                                                    
5 |  ■  ■  ■  ■  ■  ■  ■  ■                                                    
6 |  ■  ■  ■  ■  ■  ■  ■  ■                                                    
7 |  ■  ■  ■  ■  ■  ■  ■  ■                                                    
8 |  ■  ■  ■  ■  ■  ■  ■  ■                                                    

Type the coordinates of the cell you want to check.                            
Type `m 1 2` to mine (1, 2) or `f 1 2` to flag (1, 2) or type `exit` to exit.  

Enter Command: f 5 2                                                           
---------------------------------------------------------------------          
     1  2  3  4  5  6  7  8                                                    
   ________________________                                                    
1 |  0  0  0  2  ■  ■  ■  ■                                                    
2 |  0  1  1  3  ?  ■  ■  ■                                                    
3 |  0  1  ■  ■  ■  ■  ■  ■                                                    
4 |  1  2  ■  ■  ■  ■  ■  ■                                                    
5 |  ■  ■  ■  ■  ■  ■  ■  ■                                                    
6 |  ■  ■  ■  ■  ■  ■  ■  ■                                                    
7 |  ■  ■  ■  ■  ■  ■  ■  ■                                                    
8 |  ■  ■  ■  ■  ■  ■  ■  ■                                                    

Type the coordinates of the cell you want to check.                            
Type `m 1 2` to mine (1, 2) or `f 1 2` to flag (1, 2) or type `exit` to exit.  

Enter Command: m 7 7                                                           
---------------------------------------------------------------------          
     1  2  3  4  5  6  7  8                                                    
   ________________________                                                    
1 |  0  0  0  2  ■  ■  ■  ■                                                    
2 |  0  1  1  3  ?  ■  ■  ■                                                    
3 |  0  1  ■  ■  ■  ■  ■  ■                                                    
4 |  1  2  ■  ■  ■  ■  ■  ■                                                    
5 |  ■  ■  ■  ■  ■  ■  ■  ■                                                    
6 |  ■  ■  ■  ■  ■  ■  ■  ■                                                    
7 |  ■  ■  ■  ■  ■  ■  2  ■                                                    
8 |  ■  ■  ■  ■  ■  ■  ■  ■                                                    

Type the coordinates of the cell you want to check.                            
Type `m 1 2` to mine (1, 2) or `f 1 2` to flag (1, 2) or type `exit` to exit.  

Enter Command: exit                                                            
```
