-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------

import Data.Char
 
coefficientFromString :: String -> Maybe Int
coefficientFromString str =
    if isNumber firstChar then Just (digitToInt firstChar) else Nothing
    where firstChar = str !! 0  -- Извлекаем символ с индексом 0.
 
check :: Maybe Int -> String
check aCoefficient
    | aCoefficient == Nothing = "Invalid string!"  -- Коэффициент пустой!
    | otherwise = show aCoefficient
 
main :: IO ()
main = print $ check $ coefficientFromString "0"

-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Data.String.Utils
import Data.Maybe

result :: Maybe String -> String
result email = if isNothing email then "Bad email" else "Good!"
 
main :: IO ()
main = 
    print $ result $ Just "me@gmail.com" >>= checkFormat >>= checkDomain
    where checkFormat email = 
              if '@' `elem` email then return email else Nothing
          checkDomain email = 
              if email `endsWith` ".com" then return email else Nothing
          endsWith str suffix = endswith suffix str
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
