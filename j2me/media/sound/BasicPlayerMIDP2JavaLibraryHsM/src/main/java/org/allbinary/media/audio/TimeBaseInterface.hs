{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.media.audio
module TimeBaseInterface where

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
import qualified MediaException -- javax.microedition.media.MediaException
import qualified TimeBase -- javax.microedition.media.TimeBase

-- Java interface: the classes that implement it have these functions
data TimeBaseInterface = TimeBaseInterface
    { header_ :: JavaHeader
    }

instance JavaNull TimeBaseInterface where
    javaNull = javaNullRecord "TimeBaseInterface"

instance JavaEquals TimeBaseInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimeBaseInterface where
    (==) = jrecordEquals

instance JavaObjectClass TimeBaseInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TimeBaseInterface
fromHeader_ header = TimeBaseInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TimeBaseInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getTimeBase :: (JavaObjectClass this_) => this_ -> IO (TimeBase.TimeBase)
getTimeBase object_ = jmethod object_ "getTimeBase" (\() -> (getTimeBase_impl (javaCast object_ :: TimeBaseInterface))) ()

getTimeBase_super :: (JavaObjectClass this_) => this_ -> IO (TimeBase.TimeBase)
getTimeBase_super object_ = (getTimeBase_impl (javaCast object_ :: TimeBaseInterface))

getTimeBase_impl :: TimeBaseInterface -> IO (TimeBase.TimeBase)
getTimeBase_impl this = javaAbstractMethod "getTimeBase"


-- throws MediaException
setTimeBase :: (JavaObjectClass this_) => this_ -> TimeBase.TimeBase -> IO (())
setTimeBase object_ a1 = jmethod object_ "setTimeBase" (\() -> (setTimeBase_impl (javaCast object_ :: TimeBaseInterface))) () a1

setTimeBase_super :: (JavaObjectClass this_) => this_ -> TimeBase.TimeBase -> IO (())
setTimeBase_super object_ a1 = (setTimeBase_impl (javaCast object_ :: TimeBaseInterface)) a1

setTimeBase_impl :: TimeBaseInterface -> TimeBase.TimeBase -> IO (())
setTimeBase_impl this timeBase = javaAbstractMethod "setTimeBase"


