
----------------------------------------------------------------
--This function takes the array of integers and
-- it returns their sum
sumArray :: [Int] -> Int
sumArray [] = 0
sumArray (x : xs) = x + sumArray xs


sumArray2 :: [Int] -> Int
sumArray2 [] = 0
sumArray2 array = x + (sumArray2 xs)

        where 
        x : xs = array

--------------------------------------------------------------
-- This function takes one parameter of type Int
-- It returns the factorial value of that number
factorial :: Int -> Int
factorial x
    | x < 0 = error "Number should be a nonnegative integer"
    | x == 0 = 1
    | x == 1 = 1
    | otherwise = x* (factorial(x-1))

----------------------------------------------------------
-- This function takes the Int number as a parameter and
-- it returns the nth Fibonacci number as output
fib :: Int -> Int
fib n
    | n == 0 = 0
    | n == 1 = 1
    | otherwise = fib(n -1) + fib (n-2)

--------------------------------------------------------------
-- This function calculates the GCD of 2 numbers:
gcf :: Int -> Int -> Int 
gcf n1 n2  = gcfHelper n1 n2 1 1 

gcfHelper :: Int -> Int -> Int -> Int -> Int
gcfHelper n1 n2 counter currentResult
        | (n1 < 0) || (n2 < 0) = gcfHelper (abs n1) (abs n2) counter currentResult 
        | (counter > n1) || (counter > n2) = currentResult
        | (n1 `rem` counter == 0) && (n2 `rem` counter == 0) = gcfHelper n1 n2 (counter+1) counter 
        | otherwise = gcfHelper n1 n2 (counter+1) currentResult
