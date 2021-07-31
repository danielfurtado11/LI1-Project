module TestTarefa3 where

import Types
import Tarefa1
import Tarefa2
import Tarefa3


-- | Convert a Corridor to a list of Tuples

a1 = corridorToTuple [Wall,Empty,Wall,Wall,Food Big,Food Little]
a2 = corridorToTuple [Empty,Empty,Empty,Wall,Wall,Empty,Food Big,Food Little,Food Little]


-- | Convert a Maze to a list of lists of Tuples

b1 = mazeToTuple [[Wall,Empty,Food Big],[Empty,Empty,Food Little],[Wall,Food Big,Food Little],[Empty,Wall,Empty]]
b2 = mazeToTuple [[Wall,Wall,Wall,Wall,Wall],
                  [Wall,Wall,Empty,Food Big,Wall],
                  [Wall,Empty,Empty,Food Little,Wall],
                  [Wall,Wall,Food Big,Food Little,Wall],
                  [Wall,Empty,Wall,Empty,Wall],
                  [Wall,Empty,Food Big,Empty,Wall],
                  [Wall,Wall,Wall,Wall,Wall]]



-- | Gather same followed Tuples

c1 = gatherPieces [(1,Wall),(1,Empty),(1,Wall),(1,Wall),(1,Food Big)] 
c2 = gatherPieces [(1,Wall),(1,Empty),(1,Wall),(1,Food Big),(1,Food Little)]
c3 = gatherPieces [(1,Empty),(1,Empty),(1,Empty),(1,Empty),(1,Wall),(1,Wall),(1,Empty),(1,Food Big),(1,Food Little),(1,Food Little)]



-- | Convert a Maze to a list of numbers

d1 = mazeIndex 0 [[Wall,Wall],[Wall,Food Big],[Wall,Food Big],[Wall,Wall],[Empty,Empty]] [[Wall,Wall],[Wall,Food Big],[Wall,Food Big],[Wall,Wall],[Empty,Empty]] 
d2 = mazeIndex 0 [[Wall,Wall,Wall,Wall,Wall],[Wall,Wall,Empty,Food Big,Wall],[Wall,Empty,Empty,Food Little,Wall],[Wall,Wall,Food Big,Food Little,Wall],[Wall,Empty,Wall,Empty,Wall],[Wall,Empty,Food Big,Empty,Wall],[Wall,Wall,Wall,Wall,Wall]] [[Wall,Wall,Wall,Wall,Wall],
                 [Wall,Wall,Empty,Food Big,Wall],
                 [Wall,Empty,Empty,Food Little,Wall],
                 [Wall,Wall,Food Big,Food Little,Wall],
                 [Wall,Empty,Wall,Empty,Wall],
                 [Wall,Empty,Food Big,Empty,Wall],
                 [Wall,Wall,Wall,Wall,Wall]]
d3 = mazeIndex 0 [[Wall,Empty,Food Big],[Empty,Empty,Food Little],[Wall,Food Big,Food Little],[Empty,Wall,Empty]] [[Wall,Empty,Food Big],[Empty,Empty,Food Little],[Wall,Food Big,Food Little],[Empty,Wall,Empty]]



-- | Convert a numbers list and a Maze in a list of corridors 

e1 = instructMaze 0 [0,1,1,0,4] [[(2,Wall)],[(1,Wall),(1,Food Big)],[(1,Wall),(1,Food Big)],[(2,Wall)],[(2,Empty)]]
e2 = instructMaze 0 [0,1,2,3] [[(1,Wall),(1,Empty),(1,Food Big)],[(2,Empty),(1,Food Little)],[(1,Wall),(1,Food Big),(1,Food Little)],[(1,Empty),(1,Wall),(1,Empty)]]



-- | Compact the Maze

f1 = compactMaze [[Wall,Wall,Wall],[Wall,Wall,Wall],[Wall,Wall,Wall]] 

f2 = compactMaze [[Wall,Wall,Wall],[Food Big,Food Big,Empty],[Food Big,Food Big,Empty],[Wall,Wall,Wall],[Wall,Wall,Wall]]

f3 = compactMaze [[Wall,Wall,Wall],[Wall,Empty,Food Big],[Empty,Empty,Food Little],[Wall,Food Big,Food Little],[Empty,Wall,Empty],[Wall,Wall,Wall]]

f4 = compactMaze [[Wall,Wall,Wall,Wall,Wall],
                 [Wall,Wall,Empty,Food Big,Wall],
                 [Wall,Empty,Empty,Food Little,Wall],
                 [Wall,Wall,Food Big,Food Little,Wall],
                 [Wall,Empty,Wall,Empty,Wall],
                 [Wall,Wall,Wall,Wall,Wall]]

f5 = compactMaze [[Wall,Wall,Wall,Wall,Wall],
                 [Wall,Wall,Empty,Food Big,Wall],
                 [Wall,Empty,Empty,Food Little,Wall],
                 [Wall,Wall,Food Big,Food Little,Wall],
                 [Wall,Empty,Wall,Empty,Wall],
                 [Wall,Empty,Food Big,Empty,Wall],
                 [Wall,Wall,Wall,Wall,Wall]]

f6 = compactMaze [[Wall,Wall,Wall,Wall,Wall,Wall,Wall,Wall,Wall,Wall,Wall],
                 [Wall,Wall,Empty,Empty,Food Big,Food Big,Wall,Empty,Wall,Food Big,Wall],
                 [Wall,Empty,Empty,Food Big,Food Little,Wall,Wall,Food Big,Empty,Food Little,Wall],
                 [Wall,Empty,Food Big,Food Little,Food Big,Wall,Food Little,Food Little,Empty,Food Little,Wall],
                 [Empty,Food Little,Food Big,Wall,Empty,Empty,Food Big,Empty,Wall,Food Little,Empty],
                 [Empty,Food Little,Empty,Food Big,Wall,Food Little,Empty,Wall,Empty,Empty,Empty],
                 [Wall,Empty,Empty,Empty,Empty,Wall,Food Big,Empty,Food Little,Food Big,Wall],
                 [Wall,Wall,Food Big,Food Big,Food Little,Food Little,Food Little,Food Big,Wall,Food Little,Wall],
                 [Wall,Empty,Wall,Empty,Empty,Empty,Food Little,Food Big,Food Little,Wall,Wall],
                 [Wall,Wall,Wall,Wall,Wall,Wall,Wall,Wall,Wall,Wall,Wall]] 