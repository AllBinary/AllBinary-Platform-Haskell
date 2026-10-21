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
-- package org.allbinary.input.automation.actions.script.condition.processors.input
module MouseActionScriptInputInterface (module MouseActionScriptInputInterface, module ProfileActionScriptInputInterface) where

import ProfileActionScriptInputInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setPoint, setPoint_super, setPoint_impl, getPoint, getPoint_super, getPoint_impl, getButtonClicks, getButtonClicks_super, getButtonClicks_impl, setButtonClicks, setButtonClicks_super, setButtonClicks_impl, log, log_super, log_impl, toString)
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
-- import java.awt.*
import qualified ProfileActionScriptInputInterface

-- Java interface: the classes that implement it have these functions
data MouseActionScriptInputInterface = MouseActionScriptInputInterface
    { header_ :: JavaHeader
    }

instance JavaNull MouseActionScriptInputInterface where
    javaNull = javaNullRecord "MouseActionScriptInputInterface"

instance JavaEquals MouseActionScriptInputInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MouseActionScriptInputInterface where
    (==) = jrecordEquals

instance JavaObjectClass MouseActionScriptInputInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> MouseActionScriptInputInterface
fromHeader_ header = MouseActionScriptInputInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (MouseActionScriptInputInterface header)
    ProfileActionScriptInputInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setPoint :: (JavaObjectClass this_) => this_ -> Point.Point -> IO (())
setPoint object_ a1 = jmethod object_ "setPoint" (\() -> (setPoint_impl (javaCast object_ :: MouseActionScriptInputInterface))) () a1

setPoint_super :: (JavaObjectClass this_) => this_ -> Point.Point -> IO (())
setPoint_super object_ a1 = (setPoint_impl (javaCast object_ :: MouseActionScriptInputInterface)) a1

setPoint_impl :: MouseActionScriptInputInterface -> Point.Point -> IO (())
setPoint_impl this point = javaAbstractMethod "setPoint"


getPoint :: (JavaObjectClass this_) => this_ -> IO (Point.Point)
getPoint object_ = jmethod object_ "getPoint" (\() -> (getPoint_impl (javaCast object_ :: MouseActionScriptInputInterface))) ()

getPoint_super :: (JavaObjectClass this_) => this_ -> IO (Point.Point)
getPoint_super object_ = (getPoint_impl (javaCast object_ :: MouseActionScriptInputInterface))

getPoint_impl :: MouseActionScriptInputInterface -> IO (Point.Point)
getPoint_impl this = javaAbstractMethod "getPoint"


getButtonClicks :: (JavaObjectClass this_) => this_ -> IO (Int)
getButtonClicks object_ = jmethod object_ "getButtonClicks" (\() -> (getButtonClicks_impl (javaCast object_ :: MouseActionScriptInputInterface))) ()

getButtonClicks_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getButtonClicks_super object_ = (getButtonClicks_impl (javaCast object_ :: MouseActionScriptInputInterface))

getButtonClicks_impl :: MouseActionScriptInputInterface -> IO (Int)
getButtonClicks_impl this = javaAbstractMethod "getButtonClicks"


setButtonClicks :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setButtonClicks object_ a1 = jmethod object_ "setButtonClicks" (\() -> (setButtonClicks_impl (javaCast object_ :: MouseActionScriptInputInterface))) () a1

setButtonClicks_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setButtonClicks_super object_ a1 = (setButtonClicks_impl (javaCast object_ :: MouseActionScriptInputInterface)) a1

setButtonClicks_impl :: MouseActionScriptInputInterface -> Int -> IO (())
setButtonClicks_impl this buttons = javaAbstractMethod "setButtonClicks"


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: MouseActionScriptInputInterface))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: MouseActionScriptInputInterface))

log_impl :: MouseActionScriptInputInterface -> IO (())
log_impl this = javaAbstractMethod "log"


