import Data.List as List
import Data.Maybe as Maybe

subject :: Integer
subject = 600851475143

allIntsStarting2 :: [Integer]
allIntsStarting2 = [2..]

isDivisible :: Integer -> Integer -> Bool
isDivisible x y = 0 == x `mod` y

firstDivisible :: Integer -> [Integer] -> Maybe Integer
firstDivisible subject' = find (isDivisible subject')

largestPrimeFactor :: Integer -> Integer
largestPrimeFactor subject'
  | firstDivisible' == subject' = subject'
  | otherwise           = largestPrimeFactor $ subject' `quot` firstDivisible'
    where firstDivisible' = fromMaybe 1 (firstDivisible subject' allIntsStarting2)

main :: IO ()
main = print $ largestPrimeFactor subject
