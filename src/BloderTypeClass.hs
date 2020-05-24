module BloderTypeClass where

import Lib

class Bloder a where
    bloder :: a -> Result a

instance Bloder Int where
    bloder x = Success(x)

instance Bloder Char where 
    bloder _ = Error

instance Bloder Bool where
    bloder x | x = Success(True)
             | not x = Error  