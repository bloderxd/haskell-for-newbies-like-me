module Lib(
    Result(..),
    x
) where

data Result a = Success { data' :: a } | Error deriving(Show)

x :: Result Int -> IO ()
x (Success foo) = print $ "Success " ++ show (foo)
x (Error) = print $ "Error"