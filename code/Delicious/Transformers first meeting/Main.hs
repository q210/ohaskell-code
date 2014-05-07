-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------
 
emailIsValid :: String -> Bool
-- Пусть наличие '@' будет нашим единственным
-- критерием корректности почтового адреса.
emailIsValid email = '@' `elem` email

getEmail :: IO (Maybe String)
getEmail = do
    email <- getLine  -- Что-то получаем от пользователя...
    return $ if emailIsValid email
             then Just email  -- Всё в порядке.
             else Nothing     -- Нет, ерунда какая-то.

main :: IO ()
main = do
    putStrLn "Input your email, please:"
    email <- getEmail
    -- Проверяем, всё ли правильно сделал наш пользователь...
    case email of
        Nothing -> putStrLn "Wrong email."
        Just email -> putStrLn $ "OK, your email is " ++ email

-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Control.Monad.Trans.Maybe 
import Control.Monad.Trans.Class 
import Control.Monad 

emailIsValid :: String -> Bool
emailIsValid email = '@' `elem` email

getEmail :: MaybeT IO String
getEmail = do
    email <- lift getLine 
    guard $ emailIsValid email
    return email

main :: IO ()
main = do
    putStrLn "Input your email, please:"
    email <- runMaybeT getEmail
    case email of
        Nothing -> putStrLn "Wrong email."
        Just email -> putStrLn $ "OK, your email is " ++ email
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
