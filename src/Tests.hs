module Tests where 
import Types
import Main
import Tarefa1
import Tarefa2
import Tarefa3
import Tarefa4
import Tarefa5
import Tarefa6


-- | Testes Tarefa 1

-- Labirinto Par
m1  = generateMaze 18 12 33
m1' = display m1


-- Labirinto Ímpar
m2  = generateMaze 17 13 33
m2' = display m2



-- | Testes Tarefa 2

-- Teste quando o Pacman altera a sua direção
m3 = generateMaze 15 10  55
ps3 = [Pacman (PacState (0, (1,3), 1, L, 0, 3) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 1) Alive)]
st3 = State m3 ps3 1
p3  = play (Move 0 D) st3


-- Teste quando o Pacman se move
m4 = generateMaze 15 11  222
ps4 = [Pacman (PacState (0, (1,2), 1, R, 0, 1) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 3) Alive)]
st4 = State m4 ps4 1
p4  = play (Move 0 R) st4


-- Teste quando o Pacman atravessa o Túnel
m5 = generateMaze 17 13  32
ps5 = [Pacman (PacState (0, (6,16), 1, R, 0, 3) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 2) Alive)]
st5 = State m5 ps5 1
p5  = play (Move 0 R) st5


-- Teste quando o Pacman come uma Comida Grande
m6 = generateMaze 16 11  1
ps6 = [Pacman (PacState (0, (8,6), 1, L, 0, 1) 0 Open Normal),Ghost (GhoState (2, (1,8), 1, L, 0, 2) Alive)]
st6 = State m6 ps6 1
p6  = play (Move 0 L) st6



-- | Testes Tarefa 3

-- Compactar Labirintos
c1 = compactMaze [[Wall,Wall,Wall],[Wall,Wall,Wall],[Wall,Wall,Wall]]
c2 = compactMaze [[Wall,Wall,Wall],[Food Big,Food Big,Empty],[Food Big,Food Big,Empty],[Wall,Wall,Wall],[Wall,Wall,Wall]]
c3 = compactMaze [[Wall,Wall,Wall,Wall,Wall],
                 [Wall,Wall,Empty,Food Big,Wall],
                 [Wall,Empty,Empty,Food Little,Wall],
                 [Wall,Wall,Food Big,Food Little,Wall],
                 [Wall,Empty,Wall,Empty,Wall],
                 [Wall,Empty,Food Big,Empty,Wall],
                 [Wall,Wall,Wall,Wall,Wall]]