-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

-- Find the largest palindrome made from the product of two 3-digit numbers.
isPal :: Integer -> Bool
isPal n = n == (read (reverse (show n))::Integer)

main :: IO ()
main = print $ maximum [ a * b | a <- [100..999], b <- [a..999], isPal (a * b) ]