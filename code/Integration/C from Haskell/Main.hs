-------------------------------------------------------------------
-- Примеры кода к главе                                          --
--                                                               --
-- Для вашего удобства все примеры вынесены в единственный файл. --
-- Раскомментируйте какую-то *ОДНУ* из секций - и в путь!        --
-------------------------------------------------------------------
-------------------------------------------------------------------

{-# LANGUAGE ForeignFunctionInterface #-}

module Main where

import Prelude hiding (sin)  -- Во избежание конфликта имён.    
import Foreign.C             -- Наш проводник в мир языка C.

foreign import ccall sin :: CDouble -> CDouble

main :: IO ()
main = do
    putStrLn "Please input your number:"
    number <- getLine
    putStr "This is sinus: "
    print $ sin $ read number

-------------------------------------------------------------------
-------------------------------------------------------------------
{-
{-# LANGUAGE ForeignFunctionInterface #-}

module Main where
  
import Foreign.C             -- Наш проводник в мир языка C.

foreign import ccall "sin" c_sin :: CDouble -> CDouble

main :: IO ()
main = do
    putStrLn "Please input your number:"
    number <- getLine
    putStr "This is sinus: "
    print $ c_sin $ read number
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
{-# LANGUAGE ForeignFunctionInterface #-}

module Main where

import Foreign.C
import Foreign.Ptr  -- Для работы с C-указателями.  

foreign import ccall time :: Ptr CTime -> IO CTime

main :: IO ()
main = do
    posixTime <- time nullPtr  -- Заменитель для NULL.  
    print posixTime
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
{-# LANGUAGE ForeignFunctionInterface #-}

module Main where

import Foreign.C

foreign import ccall clock :: IO CClock  -- Аргумента нет.

main :: IO ()
main = do
    ticks <- clock
    print ticks
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
{-# LANGUAGE ForeignFunctionInterface #-}

module Main where

import Foreign.C

foreign import ccall exit :: CInt -> IO ()  -- Возвращает... ничего.

main :: IO ()
main = exit 2  -- Выходим из приложения со статусом 2. 
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
{-# LANGUAGE ForeignFunctionInterface #-}

module Main where

import Foreign.C
import Foreign.Ptr
import Foreign.Marshal.Alloc

data CTmStruct = CTmStruct         -- Наш аналог для типа struct tm. 
type CTmStructPtr = Ptr CTmStruct  -- Определяем указатель на этот аналог.

foreign import ccall time :: Ptr CTime -> IO CTime
foreign import ccall localtime :: Ptr CTime -> IO CTmStructPtr
foreign import ccall asctime :: CTmStructPtr -> CString

timeObtainer :: Ptr CTime -> IO String
timeObtainer timePtr = do
    time timePtr
    tm <- localtime timePtr
    peekCString $ asctime tm

getTime :: IO String
getTime = alloca $ timeObtainer  —- Трюк с взятием адреса  

main :: IO ()
main = do
    timeFromCWorld <- getTime
    putStr timeFromCWorld 
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
{-
{-# LANGUAGE ForeignFunctionInterface #-}

module Main where

import Utils.UTime

import Foreign.C
import Foreign.Marshal.Alloc
import Foreign.Storable

main :: IO ()
main = do
    path <- newCString "/Users/dshevchenko/test.c"
    utimeBufferPtr <- malloc
    poke utimeBufferPtr realTime
    code <- c_utime path utimeBufferPtr
    free utimeBufferPtr
    putStrLn $ if code == 0 then "It's done" else "Something wrong..."
    where realTime = UTimeBuffer { accessTime = 1396123253
                                 , modificationTime = 1333050979
                                 }
-}
-------------------------------------------------------------------
-------------------------------------------------------------------
