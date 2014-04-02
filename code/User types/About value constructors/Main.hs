-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------

data IPAddress = IP String  -- Имя типа осталось неизменным

instance Show IPAddress where
    show (IP address) = 
        if address == "127.0.0.1" then "localhost" else address

main = putStrLn $ show $ IP "127.0.0.1"

-------------------------------------------------------------------
-------------------------------------------------------------------
{-
data IPAddress = IP String | Host String

instance Show IPAddress where
    show (IP address) =
        address
    
    show (Host address) =
        if address == "127.0.0.1" then "localhost" else address

main = putStrLn $ show $ Host "127.0.0.1"
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
data TransportLayer = TCP | UDP | SCTP | DCCP | SPX

descriptionOf :: TransportLayer -> String
descriptionOf protocol =
    case protocol of 
        TCP  -> "Transmission Control Protocol"
        UDP  -> "User Datagram Protocol"
        SCTP -> "Stream Control Transmission Protocol"
        DCCP -> "Datagram Congestion Control Protocol"
        SPX  -> "Sequenced Packet Exchange"

main = print $ descriptionOf TCP
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
