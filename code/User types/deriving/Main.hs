-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------

data IPAddress = IP String
                 deriving Show

main = print $ IP "127.0.0.1"

-------------------------------------------------------------------
-------------------------------------------------------------------
{-
data User = User { firstName
                 , lastName
                 , email
                 , yearOfBirth :: String
                 , account
                 , uid :: Integer
                 } deriving Show
 
main =
    print user
    where user = User { firstName = "Denis"
                      , lastName = "Shevchenko" 
                      , email = "me@dshevchenko.biz"
                      , yearOfBirth = "1981"
                      , account = 1234567890
                      , uid = 123
                      }
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
data TransportLayer = TCP | UDP | SCTP | DCCP | SPX
                      deriving Enum

descriptionOf :: TransportLayer -> String
descriptionOf protocol =
    case protocol of 
        TCP  -> "Transmission Control Protocol"
        UDP  -> "User Datagram Protocol"
        SCTP -> "Stream Control Transmission Protocol"
        DCCP -> "Datagram Congestion Control Protocol"
        SPX  -> "Sequenced Packet Exchange"

main = print [descriptionOf protocol | protocol <- [TCP ..]]
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
data TransportLayer = TCP | UDP | SCTP | DCCP | SPX
                      deriving (Show, Enum, Bounded)
 
main = print $ "first protocol: " ++ show (minBound :: TransportLayer) ++ 
               ", last protocol: " ++ show (maxBound :: TransportLayer)
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
data User = User { firstName
                 , lastName
                 , email
                 , yearOfBirth :: String
                 , account
                 , uid :: Integer
                 } deriving (Show, Read, Eq)
 
main =
    let object = user
        serializedObject = show object
        deserializedObject = read serializedObject
    in
    print $ object == deserializedObject -- Объекты равны? Не сомневайтесь!
    where user = User { firstName = "Denis"
                      , lastName = "Shevchenko" 
                      , email = "me@dshevchenko.biz"
                      , yearOfBirth = "1981"
                      , account = 1234567890
                      , uid = 123
                      }
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
