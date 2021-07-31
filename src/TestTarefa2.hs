module TestTarefa2 where

import Tarefa2
import Types
import Tarefa1



{-
mz :: Maze
ps :: [Player]
st :: State
p3 :: State
-}


-- | Test Changing the Orientation

mz1 = generateMaze 15 10  55
ps1 = [Pacman (PacState (0, (1,3), 1, L, 0, 3) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 1) Alive)]
st1 = State mz1 ps1 1
p1  = play (Move 0 D) st1



-- | Test when Pacman moves to the Left

mz2 = generateMaze 15 13  21
ps2 = [Pacman (PacState (0, (1,2), 1, L, 0, 1) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 2) Alive)]
st2 = State mz2 ps2 1
p2  = play (Move 0 L) st2



-- | Test when Pacman moves to the Right

mz3 = generateMaze 15 11  222
ps3 = [Pacman (PacState (0, (1,2), 1, R, 0, 1) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 3) Alive)]
st3 = State mz3 ps3 1
p3  = play (Move 0 R) st3



-- | Test when Pacman moves Up

mz4 = generateMaze 16 13  142
ps4 = [Pacman (PacState (0, (2,2), 1, U, 0, 3) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 4) Alive)]
st4 = State mz4 ps4 1
p4  = play (Move 0 U) st4



-- | Test when Pacman moves Down

mz5 = generateMaze 16 12  32
ps5 = [Pacman (PacState (0, (1,2), 1, D, 0, 2) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 4) Alive)]
st5 = State mz5 ps5 1
p5  = play (Move 0 D) st5



-- | Test when Pacman tries to move and there is a Wall beside it

mz6 = generateMaze 19 14  23
ps6 = [Pacman (PacState (0, (1,3), 1, R, 0, 3) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 1) Alive)]
st6 = State mz6 ps6 1
p6  = play (Move 0 R) st6



-- | Test when Pacman eats a Food Big

mz7 = generateMaze 16 11  1
ps7 = [Pacman (PacState (0, (8,6), 1, L, 0, 1) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 2) Alive)]
st7 = State mz7 ps7 1
p7  = play (Move 0 L) st7



-- | Test when Pacman eats a Food Little

mz8 = generateMaze 15 12  43
ps8 = [Pacman (PacState (0, (1,3), 1, R, 0, 1) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 1) Alive)]
st8 = State mz8 ps8 1
p8  = play (Move 0 R) st8



-- | Test when Pacman goes through the tunnel for the left

mz9 = generateMaze 17 13  32
ps9 = [Pacman (PacState (0, (6,0), 1, L, 0, 3) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 1) Alive)]
st9 = State mz9 ps9 1
p9  = play (Move 0 L) st9



-- | Test when Pacman goes through the tunnel for the right

mz10 = generateMaze 17 13  32
ps10 = [Pacman (PacState (0, (6,16), 1, R, 0, 3) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 2) Alive)]
st10 = State mz10 ps10 1
p10  = play (Move 0 R) st10



-- | Test when Pacman eats a Dead Ghost

mz11 = generateMaze 16 10  44
ps11 = [Pacman (PacState (0, (1,7), 1, R, 0, 3) 0 Open Mega),Ghost (GhoState (2, (1,8), 1, L, 0, 3) Dead)]
st11 = State mz11 ps11 1
p11  = play (Move 0 R) st11



-- | Test when Pacman crashes with an Alive Ghost with more than 0 lives

mz12 = generateMaze 18 11  2
ps12 = [Pacman (PacState (0, (1,7), 1, R, 0, 3) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 1) Alive)]
st12 = State mz12 ps12 1
p12  = play (Move 0 R) st12



-- | Test when Pacman crashes with an Alive Ghost with 0 lives

mz13 = generateMaze 17 12  1
ps13 = [Pacman (PacState (0, (1,7), 1, R, 0, 0) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 1) Alive)]
st13 = State mz13 ps13 1
p13  = play (Move 0 R) st13
p13' = play (Move 0 R) (play (Move 0 R ) st13) -- ^ to check the state "Dying" of the Pacman



-- | Test Doing 3 Plays

mz14 = generateMaze 16 11  3
ps14 = [Pacman (PacState (0, (1,6), 1, L, 0, 4) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 2) Alive)]
st14 = State mz14 ps14 1
p14  = play (Move 0 D) (play (Move 0 D) (play (Move 0 L ) st14))