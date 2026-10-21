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
-- package org.allbinary.game.layer
module LinePathAnimation where

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
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified Layer -- org.allbinary.layer.Layer

data LinePathAnimation = LinePathAnimation
    { header_ :: JavaHeader
    }

instance JavaNull LinePathAnimation where
    javaNull = javaNullRecord "LinePathAnimation"

instance JavaEquals LinePathAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LinePathAnimation where
    (==) = jrecordEquals

instance JavaObjectClass LinePathAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LinePathAnimation
newRecord_ = do
    header_ <- newJavaHeader
    let this = LinePathAnimation header_
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: LinePathAnimation -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LinePathAnimation
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LinePathAnimation -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LinePathAnimation)
getInstance = do
        pure (LinePathAnimation.instance_)


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> GPoint.GPoint -> GPoint.GPoint -> Layer.Layer -> IO (())
paint object_ a1 a2 a3 a4 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: LinePathAnimation))) () a1 a2 a3 a4

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> GPoint.GPoint -> GPoint.GPoint -> Layer.Layer -> IO (())
paint_super object_ a1 a2 a3 a4 = (paint_impl (javaCast object_ :: LinePathAnimation)) a1 a2 a3 a4

paint_impl :: LinePathAnimation -> Graphics.Graphics -> GPoint.GPoint -> GPoint.GPoint -> Layer.Layer -> IO (())
paint_impl this graphics point nextPoint tiledLayer = do
        Control.Monad.void (Graphics.drawLine graphics (jio (GPoint.getX nextPoint)) (jio (GPoint.getY nextPoint)) (jio (GPoint.getX point)) (jio (GPoint.getY point)))
        pure ()


