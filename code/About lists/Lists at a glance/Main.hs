-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------

listOfNames :: String -> [String]
listOfNames prefix =
    [prefix ++ "John", prefix ++ "Anna", prefix ++ "Andrew"]
 
main = print $ listOfNames "Dear "

-------------------------------------------------------------------
-------------------------------------------------------------------
{-
main = 
    print $ length listOfAnimals
    where listOfAnimals = ["Bear", "Tiger", "Lion", "Wolf"]
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
thisIsAWildAnimal :: String -> Bool
thisIsAWildAnimal name =
    name `elem` wildAnimals
    where wildAnimals = ["Bear", "Tiger", "Lion", "Wolf"]
 
main = print $ if thisIsAWildAnimal "Cat" then "Yes!" else "No!"
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
addNewHostToFront :: String -> [String] -> [String]
addNewHostToFront newHost listOfHosts = newHost : listOfHosts
 
main =
    print $ addNewHostToFront "124.67.54.90" listOfHosts
    where listOfHosts = ["45.67.78.89", "123.45.65.54", "127.0.0.1"]
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
removeAllEmptyNamesFrom :: [String] -> [String]
removeAllEmptyNamesFrom listOfNames =
    filter notEmptyName listOfNames
    where notEmptyName = not . null
 
main =
    print $ removeAllEmptyNamesFrom listOfNames
    where listOfNames = ["John", "", "Ann"]
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
