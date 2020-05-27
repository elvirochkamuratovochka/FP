-- 2. Реализовать на языке Haskell функцию нахождения максимального элемента списка. 

maxel :: [Integer] -> Integer
maxel [] = 0
maxel (x:xs) = 
            if x > (maxel xs)
            then x
            else (maxel xs)

main = print $ maxel [1, 2, 3, 4]