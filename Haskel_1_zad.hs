-- 1. Реализовать на языке Haskell функцию вычисления суммы элементов списка.
lstSum [] = 0
lstSum (b:bTail) = b + lstSum bTail

main = print $ lstSum [0, 3, 5]


