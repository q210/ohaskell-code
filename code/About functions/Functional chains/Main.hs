-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------

import Data.Char
import Data.String.Utils
 
addPrefix :: String -> String
addPrefix url =
    if url `startsWith` prefix then url else prefix ++ url
    where prefix = "http://"
          startsWith url prefix = startswith prefix url
 
encodeAllSpaces = replace " " "%20"  -- Заменяем все пробелы на %20.
 
makeItLowerCase = map toLower  -- Переводим символы строки в нижний регистр.      
 
main =
    putStrLn (addPrefix (encodeAllSpaces (makeItLowerCase url)))
    where url = "www.SITE.com/test me/Start page"

-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Data.Char
import Data.String.Utils
 
addPrefix :: String -> String
addPrefix url =
    if url `startsWith` prefix then url else prefix ++ url
    where prefix = "http://"
          startsWith url prefix = startswith prefix url
 
encodeAllSpaces = replace " " "%20"  -- Заменяем все пробелы на %20.
 
makeItLowerCase = map toLower  -- Переводим символы строки в нижний регистр.      
 
main =
    putStrLn (addPrefix . encodeAllSpaces . makeItLowerCase) url
    where url = "www.SITE.com/test me/Start page"
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Data.Char
import Data.String.Utils
 
addPrefix :: String -> String
addPrefix url =
    if url `startsWith` prefix then url else prefix ++ url
    where prefix = "http://"
          startsWith url prefix = startswith prefix url
 
encodeAllSpaces = replace " " "%20"  -- Заменяем все пробелы на %20.
 
makeItLowerCase = map toLower  -- Переводим символы строки в нижний регистр.      
 
main =
    putStrLn addPrefix $ encodeAllSpaces $ makeItLowerCase url
    where url = "www.SITE.com/test me/Start page"
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Data.Char
import Data.String.Utils
 
addPrefix :: String -> String
addPrefix url =
    if url `startsWith` prefix then url else prefix ++ url
    where prefix = "http://"
          startsWith url prefix = startswith prefix url
 
encodeAllSpaces = replace " " "%20"  -- Заменяем все пробелы на %20.
 
makeItLowerCase = map toLower  -- Переводим символы строки в нижний регистр.      
 
main =
    putStrLn addPrefix . encodeAllSpaces . makeItLowerCase $ url
    where url = "www.SITE.com/test me/Start page"
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
