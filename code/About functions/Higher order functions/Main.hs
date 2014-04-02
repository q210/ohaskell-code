-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------

divide :: Double -> Double -> Double
divide arg1 arg2 = arg1 / arg2

main = print (divide 10.03 2.1)

-------------------------------------------------------------------
-------------------------------------------------------------------
{-
divide :: Double -> Double -> Double
divide arg1 arg2 = arg1 / arg2

main = 
    let temporaryFunction = divide 10.03  -- "Запомнили" первое значение...
    in 
    print (temporaryFunction 2.1)   -- А вот теперь можем выполнить работу.
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
totalSum :: Double -> Double -> Double -> Double
totalSum arg1 arg2 arg3 = arg1 + arg2 + arg3

main =
    let firstFunction = totalSum 1.0       -- "Запомнили" первый...
        secondFunction = firstFunction 2.0 -- "Запомнили" второй...
    in
    print (secondFunction 3.0)  -- А вот теперь можем складывать.
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
type Login = String
type Password = String
type AvatarURL = String
type UserId = Integer
 
userInfo :: Login -> Password -> AvatarURL -> UserId -> String
userInfo login password avatarURL userId =
    "Full info about user @" ++ (show userId) ++ ":" ++
    "\n login: " ++ login ++
    "\n password: " ++ password ++
    "\n avatar URL: " ++ avatarURL
 
type EmptyInfo = Login -> Password -> AvatarURL -> UserId -> String
type WithLogin =          Password -> AvatarURL -> UserId -> String
type AndWithPassword =                AvatarURL -> UserId -> String
type AndWithAvatarURL =                            UserId -> String
 
storeLoginIn :: EmptyInfo -> UserId -> WithLogin
storeLoginIn emptyInfo userId =
    emptyInfo "denis"
    {- В реальности логин будет получен 
       в соответствии с переданным userId -}
 
storePasswordIn :: WithLogin -> UserId -> AndWithPassword
storePasswordIn infoWithLogin userId =
    infoWithLogin "123456789abc"
    {- В реальности пароль будет получен 
       в соответствии с переданным userId -}
 
storeAvatarURLIn :: AndWithPassword -> UserId -> AndWithAvatarURL
storeAvatarURLIn infoWithPassword userId =
    infoWithPassword "http://dshevchenko.biz/denis_avatar.png"
    {- В реальности URL будет получен 
       в соответствии с переданным userId -}
 
main =
    let userId = 1234
        infoWithLogin = storeLoginIn userInfo userId
        infoWithPassword = storePasswordIn infoWithLogin userId
        infoWithAvatarURL = storeAvatarURLIn infoWithPassword userId
        fullInfoAboutUser = infoWithAvatarURL userId
    in
    putStrLn fullInfoAboutUser
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
type UserId = Integer
type Prefix = String
 
obtainLogin :: UserId -> (Prefix -> String)
obtainLogin userId =
    loginStorage "denis" -- Подразумевается, что логин как-то получен.
    where loginStorage login prefix = prefix ++ ": " ++ login
 
main =
    let userId = 1234
    in
    putStrLn ((obtainLogin userId) "My login")
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
