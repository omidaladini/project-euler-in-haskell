-- http://projecteuler.net/problem=2

maxFib :: Integer
maxFib = 4000000

fibs :: [Integer]
fibs = 1:1:zipWith (+) fibs (tail fibs)

main :: IO ()
main = print $  sum [ x | x <- takeWhile (< maxFib) fibs, x `mod` 2 == 0 ]


