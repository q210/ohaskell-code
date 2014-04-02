-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------

data User = User { firstName 
                 , lastName 
                 , email :: String
                 }

main = 
    print $ firstName user ++ " " ++
            lastName user ++ ", " ++
            email user
    where user = User { firstName = "Denis"
                      , lastName = "Shevchenko" 
                      , email = "me@dshevchenko.biz" 
                      }

-------------------------------------------------------------------
-------------------------------------------------------------------
{-
data User = User { firstName :: String
                 , lastName :: String
                 , email :: String
                 }

changeEmail :: User -> String -> User
changeEmail user newEmail = user { email = newEmail }

main =
    let userWithNewEmail = changeEmail user "shev.denis@gmail.com"
    in
    print $ email userWithNewEmail
    where user = User { firstName = "Denis"
                      , lastName = "Shevchenko" 
                      , email = "me@dshevchenko.biz" 
                      }
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
