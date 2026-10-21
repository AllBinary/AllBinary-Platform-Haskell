{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.osgi.framework
module Constants where

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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

-- Java interface: the classes that implement it have these functions
data Constants = Constants
    { header_ :: JavaHeader
    }

instance JavaNull Constants where
    javaNull = javaNullRecord "Constants"

instance JavaEquals Constants where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Constants where
    (==) = jrecordEquals

instance JavaObjectClass Constants where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

bUNDLE_SYMBOLICNAME = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)

fromHeader_ :: JavaHeader -> Constants
fromHeader_ header = Constants header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (Constants header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


