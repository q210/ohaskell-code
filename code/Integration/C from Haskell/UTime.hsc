module Utils.UTime where

#include <utime.h>

import Foreign.C
import Foreign.Ptr
import Foreign.Storable

data UTimeBuffer = UTimeBuffer { accessTime :: CTime
                               , modificationTime :: CTime
                               }

type UTimeBufferPtr = Ptr UTimeBuffer

instance Storable UTimeBuffer where
    sizeOf _ = (#const sizeof (struct utimbuf))
    alignment _ = alignment (undefined :: CInt)

    peek ptr = do
        c_actime <- (#peek struct utimbuf, actime) ptr
        c_modtime <- (#peek struct utimbuf, modtime) ptr
        return $ UTimeBuffer c_actime c_modtime

    poke ptr realValue = do
        (#poke struct utimbuf, actime) ptr (accessTime realValue)
        (#poke struct utimbuf, modtime) ptr (modificationTime realValue)

foreign import ccall "utime.h utime" 
                     c_utime :: CString -> UTimeBufferPtr -> IO CInt

