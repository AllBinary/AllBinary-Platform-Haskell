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
-- package org.allbinary.game.input
module TestInputInterface (module TestInputInterface, module PaintableInterface) where

import PaintableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, up, up_super, up_impl, down, down_super, down_impl, left, left_super, left_impl, right, right_super, right_impl, strafeLeft, strafeLeft_super, strafeLeft_impl, strafeRight, strafeRight_super, strafeRight_impl, toString)
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
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface

-- Java interface: the classes that implement it have these functions
data TestInputInterface = TestInputInterface
    { header_ :: JavaHeader
    }

instance JavaNull TestInputInterface where
    javaNull = javaNullRecord "TestInputInterface"

instance JavaEquals TestInputInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TestInputInterface where
    (==) = jrecordEquals

instance JavaObjectClass TestInputInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TestInputInterface
fromHeader_ header = TestInputInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TestInputInterface header)
    PaintableInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


up :: (JavaObjectClass this_) => this_ -> IO (())
up object_ = jmethod object_ "up" (\() -> (up_impl (javaCast object_ :: TestInputInterface))) ()

up_super :: (JavaObjectClass this_) => this_ -> IO (())
up_super object_ = (up_impl (javaCast object_ :: TestInputInterface))

up_impl :: TestInputInterface -> IO (())
up_impl this = javaAbstractMethod "up"


down :: (JavaObjectClass this_) => this_ -> IO (())
down object_ = jmethod object_ "down" (\() -> (down_impl (javaCast object_ :: TestInputInterface))) ()

down_super :: (JavaObjectClass this_) => this_ -> IO (())
down_super object_ = (down_impl (javaCast object_ :: TestInputInterface))

down_impl :: TestInputInterface -> IO (())
down_impl this = javaAbstractMethod "down"


left :: (JavaObjectClass this_) => this_ -> IO (())
left object_ = jmethod object_ "left" (\() -> (left_impl (javaCast object_ :: TestInputInterface))) ()

left_super :: (JavaObjectClass this_) => this_ -> IO (())
left_super object_ = (left_impl (javaCast object_ :: TestInputInterface))

left_impl :: TestInputInterface -> IO (())
left_impl this = javaAbstractMethod "left"


right :: (JavaObjectClass this_) => this_ -> IO (())
right object_ = jmethod object_ "right" (\() -> (right_impl (javaCast object_ :: TestInputInterface))) ()

right_super :: (JavaObjectClass this_) => this_ -> IO (())
right_super object_ = (right_impl (javaCast object_ :: TestInputInterface))

right_impl :: TestInputInterface -> IO (())
right_impl this = javaAbstractMethod "right"


strafeLeft :: (JavaObjectClass this_) => this_ -> IO (())
strafeLeft object_ = jmethod object_ "strafeLeft" (\() -> (strafeLeft_impl (javaCast object_ :: TestInputInterface))) ()

strafeLeft_super :: (JavaObjectClass this_) => this_ -> IO (())
strafeLeft_super object_ = (strafeLeft_impl (javaCast object_ :: TestInputInterface))

strafeLeft_impl :: TestInputInterface -> IO (())
strafeLeft_impl this = javaAbstractMethod "strafeLeft"


strafeRight :: (JavaObjectClass this_) => this_ -> IO (())
strafeRight object_ = jmethod object_ "strafeRight" (\() -> (strafeRight_impl (javaCast object_ :: TestInputInterface))) ()

strafeRight_super :: (JavaObjectClass this_) => this_ -> IO (())
strafeRight_super object_ = (strafeRight_impl (javaCast object_ :: TestInputInterface))

strafeRight_impl :: TestInputInterface -> IO (())
strafeRight_impl this = javaAbstractMethod "strafeRight"


