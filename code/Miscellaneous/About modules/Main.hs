module Main where

import Utils.Helpers (calibrate)  -- Импортируем только calibrate.
-- Ну и другими вариантами импорта поиграйтесь... ;-)
 
main :: IO ()
main = print $ calibrate 12.4

