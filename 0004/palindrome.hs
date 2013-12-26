field :: [Integer]
field = [1..999]

isPalindrome :: Integer -> Bool
isPalindrome x = str == reverse str
  where str = show x

allMultiplied :: [Integer] -> [[Integer]]
allMultiplied field' = map (\x -> map (* x) field') field'

maxPalindrome :: [Integer] -> Integer
maxPalindrome field' = maximum $ filter isPalindrome (concat $ allMultiplied field')

main :: IO ()
main = print $ maxPalindrome field
