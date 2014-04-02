-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------

import Control.Exception
import Data.String.Utils
import Data.Typeable
 
type Repo = String
 
data InvalidRepository = InvalidRepository Repo
                         deriving (Show, Typeable)
 
instance Exception InvalidRepository

extractProtocol :: String -> String
extractProtocol path =
    if path `startsWith` "git" || path `startsWith` "ssh" 
    then takeWhile (/= ':') path
    else throw $ InvalidRepository path  -- Протокол неверный, кидаем...
    where startsWith url prefix = startswith prefix url

main :: IO ()
main = do
    result <- try $ evaluate $ extractProtocol "ss://ul@sch/proj.git" 
                    :: IO (Either SomeException String)
    case result of
        Left exception -> putStrLn $ "Fault: " ++ show exception
        Right protocol -> putStrLn protocol

-------------------------------------------------------------------
-------------------------------------------------------------------
