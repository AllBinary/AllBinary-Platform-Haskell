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
-- package org.allbinary.media.image.analysis
module ColorRangeInterface where

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
import qualified Color -- same package or java.lang
-- import java.awt.*

-- Java interface: the classes that implement it have these functions
data ColorRangeInterface = ColorRangeInterface
    { header_ :: JavaHeader
    }

instance JavaNull ColorRangeInterface where
    javaNull = javaNullRecord "ColorRangeInterface"

instance JavaEquals ColorRangeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorRangeInterface where
    (==) = jrecordEquals

instance JavaObjectClass ColorRangeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ColorRangeInterface
fromHeader_ header = ColorRangeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ColorRangeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getMinRed :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinRed object_ = jmethod object_ "getMinRed" (\() -> (getMinRed_impl (javaCast object_ :: ColorRangeInterface))) ()

getMinRed_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinRed_super object_ = (getMinRed_impl (javaCast object_ :: ColorRangeInterface))

getMinRed_impl :: ColorRangeInterface -> IO (Int)
getMinRed_impl this = javaAbstractMethod "getMinRed"


setMinRed :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinRed object_ a1 = jmethod object_ "setMinRed" (\() -> (setMinRed_impl (javaCast object_ :: ColorRangeInterface))) () a1

setMinRed_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinRed_super object_ a1 = (setMinRed_impl (javaCast object_ :: ColorRangeInterface)) a1

setMinRed_impl :: ColorRangeInterface -> Int -> IO (())
setMinRed_impl this minRed = javaAbstractMethod "setMinRed"


getMaxRed :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxRed object_ = jmethod object_ "getMaxRed" (\() -> (getMaxRed_impl (javaCast object_ :: ColorRangeInterface))) ()

getMaxRed_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxRed_super object_ = (getMaxRed_impl (javaCast object_ :: ColorRangeInterface))

getMaxRed_impl :: ColorRangeInterface -> IO (Int)
getMaxRed_impl this = javaAbstractMethod "getMaxRed"


setMaxRed :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxRed object_ a1 = jmethod object_ "setMaxRed" (\() -> (setMaxRed_impl (javaCast object_ :: ColorRangeInterface))) () a1

setMaxRed_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxRed_super object_ a1 = (setMaxRed_impl (javaCast object_ :: ColorRangeInterface)) a1

setMaxRed_impl :: ColorRangeInterface -> Int -> IO (())
setMaxRed_impl this maxRed = javaAbstractMethod "setMaxRed"


getMinGreen :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinGreen object_ = jmethod object_ "getMinGreen" (\() -> (getMinGreen_impl (javaCast object_ :: ColorRangeInterface))) ()

getMinGreen_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinGreen_super object_ = (getMinGreen_impl (javaCast object_ :: ColorRangeInterface))

getMinGreen_impl :: ColorRangeInterface -> IO (Int)
getMinGreen_impl this = javaAbstractMethod "getMinGreen"


setMinGreen :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinGreen object_ a1 = jmethod object_ "setMinGreen" (\() -> (setMinGreen_impl (javaCast object_ :: ColorRangeInterface))) () a1

setMinGreen_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinGreen_super object_ a1 = (setMinGreen_impl (javaCast object_ :: ColorRangeInterface)) a1

setMinGreen_impl :: ColorRangeInterface -> Int -> IO (())
setMinGreen_impl this minGreen = javaAbstractMethod "setMinGreen"


getMaxGreen :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxGreen object_ = jmethod object_ "getMaxGreen" (\() -> (getMaxGreen_impl (javaCast object_ :: ColorRangeInterface))) ()

getMaxGreen_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxGreen_super object_ = (getMaxGreen_impl (javaCast object_ :: ColorRangeInterface))

getMaxGreen_impl :: ColorRangeInterface -> IO (Int)
getMaxGreen_impl this = javaAbstractMethod "getMaxGreen"


setMaxGreen :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxGreen object_ a1 = jmethod object_ "setMaxGreen" (\() -> (setMaxGreen_impl (javaCast object_ :: ColorRangeInterface))) () a1

setMaxGreen_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxGreen_super object_ a1 = (setMaxGreen_impl (javaCast object_ :: ColorRangeInterface)) a1

setMaxGreen_impl :: ColorRangeInterface -> Int -> IO (())
setMaxGreen_impl this maxGreen = javaAbstractMethod "setMaxGreen"


getMinBlue :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinBlue object_ = jmethod object_ "getMinBlue" (\() -> (getMinBlue_impl (javaCast object_ :: ColorRangeInterface))) ()

getMinBlue_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinBlue_super object_ = (getMinBlue_impl (javaCast object_ :: ColorRangeInterface))

getMinBlue_impl :: ColorRangeInterface -> IO (Int)
getMinBlue_impl this = javaAbstractMethod "getMinBlue"


setMinBlue :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinBlue object_ a1 = jmethod object_ "setMinBlue" (\() -> (setMinBlue_impl (javaCast object_ :: ColorRangeInterface))) () a1

setMinBlue_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinBlue_super object_ a1 = (setMinBlue_impl (javaCast object_ :: ColorRangeInterface)) a1

setMinBlue_impl :: ColorRangeInterface -> Int -> IO (())
setMinBlue_impl this minBlue = javaAbstractMethod "setMinBlue"


getMaxBlue :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxBlue object_ = jmethod object_ "getMaxBlue" (\() -> (getMaxBlue_impl (javaCast object_ :: ColorRangeInterface))) ()

getMaxBlue_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxBlue_super object_ = (getMaxBlue_impl (javaCast object_ :: ColorRangeInterface))

getMaxBlue_impl :: ColorRangeInterface -> IO (Int)
getMaxBlue_impl this = javaAbstractMethod "getMaxBlue"


setMaxBlue :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxBlue object_ a1 = jmethod object_ "setMaxBlue" (\() -> (setMaxBlue_impl (javaCast object_ :: ColorRangeInterface))) () a1

setMaxBlue_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxBlue_super object_ a1 = (setMaxBlue_impl (javaCast object_ :: ColorRangeInterface)) a1

setMaxBlue_impl :: ColorRangeInterface -> Int -> IO (())
setMaxBlue_impl this maxBlue = javaAbstractMethod "setMaxBlue"


isInRange :: (JavaObjectClass this_) => this_ -> Color.Color -> IO (Bool)
isInRange object_ a1 = jmethod object_ "isInRange" (\() -> (isInRange_impl (javaCast object_ :: ColorRangeInterface))) () a1

isInRange_super :: (JavaObjectClass this_) => this_ -> Color.Color -> IO (Bool)
isInRange_super object_ a1 = (isInRange_impl (javaCast object_ :: ColorRangeInterface)) a1

isInRange_impl :: ColorRangeInterface -> Color.Color -> IO (Bool)
isInRange_impl this color = javaAbstractMethod "isInRange"


