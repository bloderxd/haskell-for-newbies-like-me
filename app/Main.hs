module Main where

import Lib
import BloderTypeClass

foo :: Int -> Result Int
foo n | n < 1 = Error
      | n > 1 = Success(n)
      | otherwise = Error

bar :: (Int -> Int) -> Int
bar x = (x 1) + 1

printBar :: IO ()
printBar = print $ bar (\x -> x + 1)

main :: IO ()
main = print (bloder (1 :: Int))
