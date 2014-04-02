-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------

main :: IO ()
main = do
    putStrLn "Input your text, please:"       
    lineFromUser <- getLine               
    putStrLn $ "Not bad: " ++ lineFromUser

-------------------------------------------------------------------
-------------------------------------------------------------------
{-
obtainUserText :: String -> IO String
obtainUserText prompt = do
    putStrLn prompt  -- Выведи приглашение ввести строку.
    getLine          -- Получи от пользователя некую строку.
 
main :: IO ()
main = do
    firstText <- obtainUserText "Enter your text, please: "
    secondText <- obtainUserText "One more, please: "
    putStrLn $ "You said '" ++ firstText ++ "' and '" ++ secondText ++ "'"
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
obtainTwoTextsFromUser :: IO String
obtainTwoTextsFromUser = do
    putStrLn "Enter your text, please: "
    firstText <- getLine
    putStrLn "One more, please: "
    secondText <- getLine
    return $ "'" ++ firstText ++ "' and '" ++ secondText ++ "'"

main :: IO ()
main = do
    texts <- obtainTwoTextsFromUser
    putStrLn $ "You said " ++ texts
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
