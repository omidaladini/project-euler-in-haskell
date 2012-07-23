-- http://projecteuler.net/problem=1

summod upper = sum [ x | x <- [1..upper-1], x `mod` 3 == 0 || x `mod` 5 == 0 ]

main = do
  print sum
  where
    sum = summod 1000
