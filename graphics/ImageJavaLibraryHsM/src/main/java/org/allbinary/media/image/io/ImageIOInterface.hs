{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
-- Generated Code Do Not Modify
-- package org.allbinary.media.image.io
module ImageIOInterface where

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

-- Java interface: the classes that implement it have these functions
data ImageIOInterface = ImageIOInterface
    { header_ :: JavaHeader
    }

instance JavaNull ImageIOInterface where
    javaNull = javaNullRecord "ImageIOInterface"

instance JavaEquals ImageIOInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageIOInterface where
    (==) = jrecordEquals

instance JavaObjectClass ImageIOInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ImageIOInterface
fromHeader_ header = ImageIOInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ImageIOInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
save :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
save object_ a1 = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: ImageIOInterface))) () a1

save_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
save_super object_ a1 = (save_impl (javaCast object_ :: ImageIOInterface)) a1

save_impl :: ImageIOInterface -> Int64 -> IO (())
save_impl this frame = javaAbstractMethod "save"


