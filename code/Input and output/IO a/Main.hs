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
