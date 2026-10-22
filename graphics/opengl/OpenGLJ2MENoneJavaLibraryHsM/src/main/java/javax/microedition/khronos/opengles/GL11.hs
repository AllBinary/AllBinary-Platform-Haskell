{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package javax.microedition.khronos.opengles
module GL11 (module GL11, module GL10) where

import GL10 hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toString)
import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char
import Data.Int
import Data.Word
import Data.List
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified GL10

-- Java interface: the classes that implement it have these functions
data GL11 = GL11
    { header_ :: JavaHeader
    }

instance JavaNull GL11 where
    javaNull = javaNullRecord "GL11"

instance JavaEquals GL11 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GL11 where
    (==) = jrecordEquals

instance JavaObjectClass GL11 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GL11
fromHeader_ header = GL11 header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GL11 header)
    GL10.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


