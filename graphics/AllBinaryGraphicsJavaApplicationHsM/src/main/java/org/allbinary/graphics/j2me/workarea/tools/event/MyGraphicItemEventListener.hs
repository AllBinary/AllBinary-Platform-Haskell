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
-- package org.allbinary.graphics.j2me.workarea.tools.event
module MyGraphicItemEventListener where

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
import qualified MyGraphicItemEvent -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data MyGraphicItemEventListener = MyGraphicItemEventListener
    { header_ :: JavaHeader
    }

instance JavaNull MyGraphicItemEventListener where
    javaNull = javaNullRecord "MyGraphicItemEventListener"

instance JavaEquals MyGraphicItemEventListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MyGraphicItemEventListener where
    (==) = jrecordEquals

instance JavaObjectClass MyGraphicItemEventListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> MyGraphicItemEventListener
fromHeader_ header = MyGraphicItemEventListener header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (MyGraphicItemEventListener header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


delete :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
delete object_ a1 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: MyGraphicItemEventListener))) () a1

delete_super :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
delete_super object_ a1 = (delete_impl (javaCast object_ :: MyGraphicItemEventListener)) a1

delete_impl :: MyGraphicItemEventListener -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
delete_impl this evt = javaAbstractMethod "delete"


-- throws Exception
duplicate :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
duplicate object_ a1 = jmethod object_ "duplicate" (\() -> (duplicate_impl (javaCast object_ :: MyGraphicItemEventListener))) () a1

duplicate_super :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
duplicate_super object_ a1 = (duplicate_impl (javaCast object_ :: MyGraphicItemEventListener)) a1

duplicate_impl :: MyGraphicItemEventListener -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
duplicate_impl this evt = javaAbstractMethod "duplicate"


rotate :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
rotate object_ a1 = jmethod object_ "rotate" (\() -> (rotate_impl (javaCast object_ :: MyGraphicItemEventListener))) () a1

rotate_super :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
rotate_super object_ a1 = (rotate_impl (javaCast object_ :: MyGraphicItemEventListener)) a1

rotate_impl :: MyGraphicItemEventListener -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
rotate_impl this evt = javaAbstractMethod "rotate"


highlight :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
highlight object_ a1 = jmethod object_ "highlight" (\() -> (highlight_impl (javaCast object_ :: MyGraphicItemEventListener))) () a1

highlight_super :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
highlight_super object_ a1 = (highlight_impl (javaCast object_ :: MyGraphicItemEventListener)) a1

highlight_impl :: MyGraphicItemEventListener -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
highlight_impl this evt = javaAbstractMethod "highlight"


deselect :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
deselect object_ a1 = jmethod object_ "deselect" (\() -> (deselect_impl (javaCast object_ :: MyGraphicItemEventListener))) () a1

deselect_super :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
deselect_super object_ a1 = (deselect_impl (javaCast object_ :: MyGraphicItemEventListener)) a1

deselect_impl :: MyGraphicItemEventListener -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
deselect_impl this evt = javaAbstractMethod "deselect"


