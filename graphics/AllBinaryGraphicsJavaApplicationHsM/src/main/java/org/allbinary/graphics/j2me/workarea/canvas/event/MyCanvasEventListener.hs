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
-- package org.allbinary.graphics.j2me.workarea.canvas.event
module MyCanvasEventListener where

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
import qualified MyCanvasEvent -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data MyCanvasEventListener = MyCanvasEventListener
    { header_ :: JavaHeader
    }

instance JavaNull MyCanvasEventListener where
    javaNull = javaNullRecord "MyCanvasEventListener"

instance JavaEquals MyCanvasEventListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MyCanvasEventListener where
    (==) = jrecordEquals

instance JavaObjectClass MyCanvasEventListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> MyCanvasEventListener
fromHeader_ header = MyCanvasEventListener header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (MyCanvasEventListener header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


delete :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
delete object_ a1 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: MyCanvasEventListener))) () a1

delete_super :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
delete_super object_ a1 = (delete_impl (javaCast object_ :: MyCanvasEventListener)) a1

delete_impl :: MyCanvasEventListener -> MyCanvasEvent.MyCanvasEvent -> IO (())
delete_impl this evt = javaAbstractMethod "delete"


-- throws Exception
duplicate :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
duplicate object_ a1 = jmethod object_ "duplicate" (\() -> (duplicate_impl (javaCast object_ :: MyCanvasEventListener))) () a1

duplicate_super :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
duplicate_super object_ a1 = (duplicate_impl (javaCast object_ :: MyCanvasEventListener)) a1

duplicate_impl :: MyCanvasEventListener -> MyCanvasEvent.MyCanvasEvent -> IO (())
duplicate_impl this evt = javaAbstractMethod "duplicate"


select :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
select object_ a1 = jmethod object_ "select" (\() -> (select_impl (javaCast object_ :: MyCanvasEventListener))) () a1

select_super :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
select_super object_ a1 = (select_impl (javaCast object_ :: MyCanvasEventListener)) a1

select_impl :: MyCanvasEventListener -> MyCanvasEvent.MyCanvasEvent -> IO (())
select_impl this evt = javaAbstractMethod "select"


rotate :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
rotate object_ a1 = jmethod object_ "rotate" (\() -> (rotate_impl (javaCast object_ :: MyCanvasEventListener))) () a1

rotate_super :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
rotate_super object_ a1 = (rotate_impl (javaCast object_ :: MyCanvasEventListener)) a1

rotate_impl :: MyCanvasEventListener -> MyCanvasEvent.MyCanvasEvent -> IO (())
rotate_impl this evt = javaAbstractMethod "rotate"


explode :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
explode object_ a1 = jmethod object_ "explode" (\() -> (explode_impl (javaCast object_ :: MyCanvasEventListener))) () a1

explode_super :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
explode_super object_ a1 = (explode_impl (javaCast object_ :: MyCanvasEventListener)) a1

explode_impl :: MyCanvasEventListener -> MyCanvasEvent.MyCanvasEvent -> IO (())
explode_impl this evt = javaAbstractMethod "explode"


-- throws Exception
autoExplode :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
autoExplode object_ a1 = jmethod object_ "autoExplode" (\() -> (autoExplode_impl (javaCast object_ :: MyCanvasEventListener))) () a1

autoExplode_super :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
autoExplode_super object_ a1 = (autoExplode_impl (javaCast object_ :: MyCanvasEventListener)) a1

autoExplode_impl :: MyCanvasEventListener -> MyCanvasEvent.MyCanvasEvent -> IO (())
autoExplode_impl this evt = javaAbstractMethod "autoExplode"


-- throws Exception
center :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
center object_ a1 = jmethod object_ "center" (\() -> (center_impl (javaCast object_ :: MyCanvasEventListener))) () a1

center_super :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
center_super object_ a1 = (center_impl (javaCast object_ :: MyCanvasEventListener)) a1

center_impl :: MyCanvasEventListener -> MyCanvasEvent.MyCanvasEvent -> IO (())
center_impl this evt = javaAbstractMethod "center"


