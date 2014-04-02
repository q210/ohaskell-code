-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------

type SHU = Integer  -- SHU (Scoville Heat Units), единица жгучести перца
 
class Pepper pepper where
    color :: pepper -> String
    pungency :: pepper -> SHU

data Poblano = Poblano  -- распространён в национальных блюдах Мексики
data TrinidadScorpion = TrinidadScorpion  -- самый жгучий перец в мире
 
instance Pepper Poblano where
    color Poblano = "green"
    pungency Poblano = 1500
 
instance Pepper TrinidadScorpion where
    color TrinidadScorpion = "red"
    pungency TrinidadScorpion = 855000

main = 
    putStrLn $ show (pungency trinidad) ++ ", " ++ color trinidad
    where trinidad = TrinidadScorpion

-------------------------------------------------------------------
-------------------------------------------------------------------
{-
type SHU = Integer  -- SHU (Scoville Heat Units), единица жгучести перца
 
class Pepper pepper where
    color :: pepper -> String
    pungency :: pepper -> SHU

data Poblano = Poblano  -- распространён в национальных блюдах Мексики

instance Pepper Poblano where
    color Poblano = "green"
    pungency Poblano = 1500

pepperInfo :: Pepper pepper => pepper -> String
pepperInfo pepper = show (pungency pepper) ++ ", " ++ color pepper

main = putStrLn $ show $ pepperInfo Poblano
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
type SHU = Integer
 
class Pepper pepper where
    simple :: pepper              -- это константное значение, а не функция
    color :: pepper -> String
    pungency :: pepper -> SHU
    name :: pepper -> String
 
data Poblano = Poblano String     -- унарный конструктор вместо нульарного
 
instance Pepper Poblano where
    simple = Poblano "ancho"      -- готовим простое значение
    color (Poblano name) = "green"
    pungency (Poblano name) = 1500
    name (Poblano name) = name

main = putStrLn $ name (simple :: Poblano) -- обращаемся к значению
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
