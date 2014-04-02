-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------
 
import Data.Char

main :: IO ()
main = print $ fmap digitToInt ['1'..'9']

-------------------------------------------------------------------
-------------------------------------------------------------------
{-
data Year value = Year value
                  deriving Show

instance Functor Year where
    fmap magicWand (Year value) = Year (magicWand value)

increase :: Int -> Int
increase year = year + 1
 
main :: IO ()
main = 
    print $ fmap increase year
    where year = Year 1981
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Data.Functor

data Year value = Year value
                  deriving Show

instance Functor Year where
    fmap magicWand (Year value) = Year (magicWand value)

increase :: Int -> Int
increase year = year + 1
 
main :: IO ()
main = 
    print $ increase <$> year
    where year = Year 1981
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
