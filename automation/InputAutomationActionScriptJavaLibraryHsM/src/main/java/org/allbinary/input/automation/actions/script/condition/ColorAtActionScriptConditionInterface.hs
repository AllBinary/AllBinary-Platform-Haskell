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
-- package org.allbinary.input.automation.actions.script.condition
module ColorAtActionScriptConditionInterface where

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
import qualified Point -- same package or java.lang
import qualified ColorRangeInterface -- org.allbinary.media.image.analysis.ColorRangeInterface
-- import java.awt.*

-- Java interface: the classes that implement it have these functions
data ColorAtActionScriptConditionInterface = ColorAtActionScriptConditionInterface
    { header_ :: JavaHeader
    }

instance JavaNull ColorAtActionScriptConditionInterface where
    javaNull = javaNullRecord "ColorAtActionScriptConditionInterface"

instance JavaEquals ColorAtActionScriptConditionInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorAtActionScriptConditionInterface where
    (==) = jrecordEquals

instance JavaObjectClass ColorAtActionScriptConditionInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ColorAtActionScriptConditionInterface
fromHeader_ header = ColorAtActionScriptConditionInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ColorAtActionScriptConditionInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getPoint :: (JavaObjectClass this_) => this_ -> IO (Point.Point)
getPoint object_ = jmethod object_ "getPoint" (\() -> (getPoint_impl (javaCast object_ :: ColorAtActionScriptConditionInterface))) ()

getPoint_super :: (JavaObjectClass this_) => this_ -> IO (Point.Point)
getPoint_super object_ = (getPoint_impl (javaCast object_ :: ColorAtActionScriptConditionInterface))

getPoint_impl :: ColorAtActionScriptConditionInterface -> IO (Point.Point)
getPoint_impl this = javaAbstractMethod "getPoint"


setPoint :: (JavaObjectClass this_) => this_ -> Point.Point -> IO (())
setPoint object_ a1 = jmethod object_ "setPoint" (\() -> (setPoint_impl (javaCast object_ :: ColorAtActionScriptConditionInterface))) () a1

setPoint_super :: (JavaObjectClass this_) => this_ -> Point.Point -> IO (())
setPoint_super object_ a1 = (setPoint_impl (javaCast object_ :: ColorAtActionScriptConditionInterface)) a1

setPoint_impl :: ColorAtActionScriptConditionInterface -> Point.Point -> IO (())
setPoint_impl this point = javaAbstractMethod "setPoint"


getColorRangeInterface :: (JavaObjectClass this_) => this_ -> IO (ColorRangeInterface.ColorRangeInterface)
getColorRangeInterface object_ = jmethod object_ "getColorRangeInterface" (\() -> (getColorRangeInterface_impl (javaCast object_ :: ColorAtActionScriptConditionInterface))) ()

getColorRangeInterface_super :: (JavaObjectClass this_) => this_ -> IO (ColorRangeInterface.ColorRangeInterface)
getColorRangeInterface_super object_ = (getColorRangeInterface_impl (javaCast object_ :: ColorAtActionScriptConditionInterface))

getColorRangeInterface_impl :: ColorAtActionScriptConditionInterface -> IO (ColorRangeInterface.ColorRangeInterface)
getColorRangeInterface_impl this = javaAbstractMethod "getColorRangeInterface"


setColorRangeInterface :: (JavaObjectClass this_) => this_ -> ColorRangeInterface.ColorRangeInterface -> IO (())
setColorRangeInterface object_ a1 = jmethod object_ "setColorRangeInterface" (\() -> (setColorRangeInterface_impl (javaCast object_ :: ColorAtActionScriptConditionInterface))) () a1

setColorRangeInterface_super :: (JavaObjectClass this_) => this_ -> ColorRangeInterface.ColorRangeInterface -> IO (())
setColorRangeInterface_super object_ a1 = (setColorRangeInterface_impl (javaCast object_ :: ColorAtActionScriptConditionInterface)) a1

setColorRangeInterface_impl :: ColorAtActionScriptConditionInterface -> ColorRangeInterface.ColorRangeInterface -> IO (())
setColorRangeInterface_impl this colorRangeInterface = javaAbstractMethod "setColorRangeInterface"


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: ColorAtActionScriptConditionInterface))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: ColorAtActionScriptConditionInterface))

log_impl :: ColorAtActionScriptConditionInterface -> IO (())
log_impl this = javaAbstractMethod "log"


