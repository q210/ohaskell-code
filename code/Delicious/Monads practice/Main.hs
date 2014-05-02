-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------

import Data.Char

toLowerCase = return . toLower
underlineSpaces char = return $ if char == ' ' then '_' else char

main :: IO () 
main = 
    print $ name >>= toLowerCase >>= underlineSpaces
    where name = "Lorem ipsuM"

-------------------------------------------------------------------
-------------------------------------------------------------------
{-
{-# LANGUAGE NoMonomorphismRestriction #-}

import Data.Char

toLowerCase = return . toLower

main :: IO ()
main = 
    print $ name >>= toLowerCase
    where name = Just 'A'
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Data.Char

main :: IO () 
main = 
    print $ numbers >>= toRealNumbers
    where numbers = "1234567890"
          toRealNumbers = return . digitToInt
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Data.Char

main :: IO () 
main = 
    print $ toLowerCase =<< underlineSpaces =<< name
    where name = "Lorem ipsuM"
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
