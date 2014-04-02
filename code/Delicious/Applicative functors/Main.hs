-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------
 
newtype Distance value = Distance value
                         deriving Show

add (Distance a) (Distance b) = Distance (a + b)

main :: IO ()
main = print $ Distance 19.78 `add` Distance 1.6

-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Control.Applicative

newtype Distance value = Distance value
                         deriving Show

instance Functor Distance where
    fmap magicWand (Distance value) = Distance (magicWand value)

instance Applicative Distance where
    Distance magicWand <*> functor = fmap magicWand functor

main :: IO ()
main = print $ (+) <$> Distance 19.78 <*> Distance 1.6
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Control.Applicative

newtype Distance value = Distance value
                         deriving Show

instance Functor Distance where
    fmap magicWand (Distance value) = Distance (magicWand value)

instance Applicative Distance where
    Distance magicWand <*> functor = fmap magicWand functor

main :: IO ()
main =
    print $ totalSum <$> Distance 19.78 <*> Distance 1.6 <*> Distance 289.0
    where totalSum arg1 arg2 arg3 = arg1 + arg2 + arg3
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Control.Applicative

newtype Distance value = Distance value
                         deriving Show

instance Functor Distance where
    fmap magicWand (Distance value) = Distance (magicWand value)

instance Applicative Distance where
    Distance magicWand <*> functor = fmap magicWand functor
    pure = Distance

main :: IO ()
main =
    print $ pure totalSum <*> Distance 19.78
                          <*> Distance 1.6 
                          <*> Distance 289.0
    where totalSum arg1 arg2 arg3 = arg1 + arg2 + arg3
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Control.Applicative

newtype Distance value = Distance value
                         deriving Show

instance Functor Distance where
    fmap magicWand (Distance value) = Distance (magicWand value)

instance Applicative Distance where
    Distance magicWand <*> functor = fmap magicWand functor
    pure = Distance
    Distance a *> Distance b = Distance b  -- Просто возвращаем второй...

main :: IO ()
main =  
    print $ pure totalSum <*> Distance 19.78 
                          <*> Distance 1.6 
                          <*> Distance 289.0
                          *>  Distance 2.0  -- Цепочка уже разорвалась!
    where totalSum arg1 arg2 arg3 = arg1 + arg2 + arg3
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Control.Applicative

obtainTwoTextsFromUser :: IO String
obtainTwoTextsFromUser = 
    (++) <$> getFirstText <*> getSecondText  -- Складываем строки.  
    where getFirstText = putStrLn "Enter your text, please: " *> getLine
          getSecondText = putStrLn "One more, please: " *> getLine

main :: IO ()
main = do
    twoTexts <- obtainTwoTextsFromUser
    putStrLn $ "You said " ++ twoTexts
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
main :: IO ()
main = print $ [1, 2, 3] >>= \number -> return $ number * 2
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
import Control.Applicative

main :: IO ()
main = print $ (*2) <$> [1, 2, 3]
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
