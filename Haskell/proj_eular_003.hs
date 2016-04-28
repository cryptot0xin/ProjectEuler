-- The prime factors of 13195 are 5, 7, 13 and 29.

-- What is the largest prime factor of the number 600851475143 ?
largestFactor :: Integer -> Integer
largestFactor i
              | even i    = largestFactor (div i 2)
              | otherwise = h i 3
                where h i j
                          | j >= i        = j
                          | mod i j == 0  = h (div i j) j
                          | otherwise     = h i (j + 2)

main :: IO ()
main = print $ largestFactor 600851475143
