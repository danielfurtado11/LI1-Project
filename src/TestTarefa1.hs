module TestTarefa1 where

import Types
import Tarefa1


-- | Converts a number in a Piece

a1 = convertsPiece 3

a2 = convertsPiece 55

a3 = convertsPiece 87


-- | Converts a list of numbers in a Corridor

b1 = numbersToPieces [1,55,2,4,2,66,88,3,5,78,53,2,3,56]

b2 = numbersToPieces [3,2,5,2,77,44,33,25,7,54]


-- | Converts a Corridor to a Maze

c1 = listToMaze 3 [Wall,Empty,Food Big,Empty,Empty,Food Little, Wall, Food Big, Food Little, Empty,Wall,Empty]

c2 = listToMaze 5 [Wall,Empty,Food Big,Food Little,Wall,Empty,Empty,Food Little,Wall,Empty]



-- | Puts up and down walls

d1 = updownmaze [[Wall,Empty,Food Big],[Empty,Empty,Food Little],[Wall,Food Big,Food Little],[Empty,Wall,Empty]]



-- | Adds side Walls to the Maze

e1 = sideWall [[Wall,Wall,Wall],[Wall,Empty,Food Big],[Empty,Empty,Food Little],[Wall,Food Big,Food Little],[Empty,Wall,Empty],[Wall,Wall,Wall]]



-- | Adds Tunnel in maze

f1 = addTunnel 7 [[Wall,Wall,Wall,Wall,Wall],
                 [Wall,Wall,Empty,Food Big,Wall],
                 [Wall,Empty,Empty,Food Little,Wall],
                 [Wall,Wall,Food Big,Food Little,Wall],
                 [Wall,Empty,Wall,Empty,Wall],
                 [Wall,Empty,Food Big,Empty,Wall],
                 [Wall,Wall,Wall,Wall,Wall]]

f2 = addTunnel 6 [[Wall,Wall,Wall,Wall,Wall],
                 [Wall,Wall,Empty,Food Big,Wall],
                 [Wall,Empty,Empty,Food Little,Wall],
                 [Wall,Wall,Food Big,Food Little,Wall],
                 [Wall,Empty,Wall,Empty,Wall],
                 [Wall,Wall,Wall,Wall,Wall]]



-- | Adds Ghost house in the Maze

g1 = addHouse 5 [[Wall,Wall,Wall,Wall,Wall,Wall,Wall,Wall,Wall,Wall,Wall],
                 [Wall,Wall,Empty,Empty,Food Big,Food Big,Wall,Empty,Wall,Food Big,Wall],
                 [Wall,Empty,Empty,Food Big,Food Little,Wall,Wall,Food Big,Empty,Food Little,Wall],
                 [Wall,Empty,Food Big,Food Little,Food Big,Wall,Food Little,Food Little,Empty,Food Little,Wall],
                 [Empty,Food Little,Food Big,Wall,Empty,Empty,Food Big,Empty,Wall,Food Little,Empty],
                 [Empty,Food Little,Empty,Food Big,Wall,Food Little,Empty,Wall,Empty,Empty,Empty],
                 [Wall,Empty,Empty,Empty,Empty,Wall,Food Big,Empty,Food Little,Food Big,Wall],
                 [Wall,Wall,Food Big,Food Big,Food Little,Food Little,Food Little,Food Big,Wall,Food Little,Wall],
                 [Wall,Empty,Wall,Empty,Empty,Empty,Food Little,Food Big,Food Little,Wall,Wall],
                 [Wall,Wall,Wall,Wall,Wall,Wall,Wall,Wall,Wall,Wall,Wall]]
g1' = display g1



-- | Generate Mazes

m1  = generateMaze 15 10 33
m1' = display m1

m2  = generateMaze 22 11 353
m2' = display m2

m3  = generateMaze 44 11 343
m3' = display m3

m4  = generateMaze 31 16 1
m4' = display m4

m5  = generateMaze 21 17 43
m5' = display m5

m6  = generateMaze 20 16 3123
m6' = display m6