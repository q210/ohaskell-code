-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------

import Data.Char
 
main = print [toUpper c | c <- "http"]

-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Data.Char
 
main = print [toUpper c | c <- "http", c == 't']
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Data.Char

main = print [toUpper c | c <- "http", c /= 'h', c /= 'p']
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
main =
    print [prefix ++ name | name <- names, prefix <- namePrefix]
    where names = ["James", "Victor", "Denis", "Michael"]
          namePrefix = ["Mr. "]
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
main =
    print [prefix ++ name | name <- names, prefix <- namePrefix]
    where names = ["James", "Victor", "Denis", "Michael"]
          namePrefix = ["Mr. ", "sir "]  -- Теперь префиксов два
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
main =
    print [if car == "Bentley" then "Wow!" else "Good!" | car <- cars]
    where cars = ["Mercedes",
                  "BMW",
                  "Bentley",
                  "Audi",
                  "Bentley"]
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Data.Char

main = print [toUpper c | c <- "http",
                          let hletter = 'h' in c /= hletter]
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Data.String.Utils
 
checkGooglerBy :: String -> String
checkGooglerBy email = 
    if email `endsWith` "gmail.com"
    then nameFrom email ++ " is a Googler!" 
    else email
    where endsWith str suffix = endswith suffix str
          nameFrom fullEmail = takeWhile (/= '@') fullEmail
 
main = print [checkGooglerBy email | email <- ["adam@gmail.com",
                                               "bob@yahoo.com",
                                               "richard@gmail.com",
                                               "elena@yandex.ru",
                                               "denis@gmail.com"]]
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
