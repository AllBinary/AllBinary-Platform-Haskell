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
-- package org.allbinary.animation
module AnimationInterface (module AnimationInterface, module LocationPaintableInterface) where

import LocationPaintableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, nextFrame, nextFrame_super, nextFrame_impl, paintThreedXYZ, paintThreedXYZ_super, paintThreedXYZ_impl, toString)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified LocationPaintableInterface -- org.allbinary.graphics.paint.LocationPaintableInterface

-- Java interface: the classes that implement it have these functions
data AnimationInterface = AnimationInterface
    { header_ :: JavaHeader
    }

instance JavaNull AnimationInterface where
    javaNull = javaNullRecord "AnimationInterface"

instance JavaEquals AnimationInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnimationInterface where
    (==) = jrecordEquals

instance JavaObjectClass AnimationInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AnimationInterface
fromHeader_ header = AnimationInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AnimationInterface header)
    LocationPaintableInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: AnimationInterface))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: AnimationInterface))

nextFrame_impl :: AnimationInterface -> IO (())
nextFrame_impl this = javaAbstractMethod "nextFrame"


paintThreedXYZ :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ object_ a1 a2 a3 a4 = jmethod object_ "paintThreedXYZ" (\() -> (paintThreedXYZ_impl (javaCast object_ :: AnimationInterface))) () a1 a2 a3 a4

paintThreedXYZ_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_super object_ a1 a2 a3 a4 = (paintThreedXYZ_impl (javaCast object_ :: AnimationInterface)) a1 a2 a3 a4

paintThreedXYZ_impl :: AnimationInterface -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_impl this graphics x y z = javaAbstractMethod "paintThreedXYZ"


