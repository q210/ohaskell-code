-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------

import Control.Exception

tryToOpenFile :: FilePath -> IO String
tryToOpenFile path = 
    readFile path `catch` possibleErrors
    where
        possibleErrors :: IOException -> IO String
        possibleErrors error = return $ show error
 
main :: IO ()
main = do
    fileContent <- tryToOpenFile "Users/shevchenko/test.c"
    putStrLn fileContent

-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Control.Exception

tryToOpenFile :: FilePath -> IO String
tryToOpenFile path = 
    handle possibleErrors (readFile path)  -- то же самое, но наоборот...
    where
        possibleErrors :: IOException -> IO String
        possibleErrors error = return "Aaaaa!!! Please check file."
 
main :: IO ()
main = do
    fileContent <- tryToOpenFile "Users/shevchenko/test.c"
    putStrLn fileContent
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Control.Exception

main :: IO ()
main = do
    result <- try $ readFile path :: IO (Either IOException String)
    case result of
        Left exception -> putStrLn $ "Fault: " ++ show exception
        Right content -> putStrLn content
    where path = "Users/dshevchenko/test.c"
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Control.Exception

main :: IO ()
main = do
    result <- try $ evaluate $ 2 `div` 0 
                    :: IO (Either SomeException Integer)
    case result of
        Left exception -> putStrLn $ "Fault: " ++ show exception
        Right value -> print value
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
