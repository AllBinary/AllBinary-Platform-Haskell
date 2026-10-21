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
module LinePathRelativeAnimation (module LinePathRelativeAnimation, module LinePathAnimation) where

import LinePathAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, paint, paint_super, paint_impl, instanceC)
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
import qualified LinePathAnimation

data LinePathRelativeAnimation = LinePathRelativeAnimation
    { header_ :: JavaHeader
    , base :: LinePathAnimation.LinePathAnimation
    }

instance JavaNull LinePathRelativeAnimation where
    javaNull = javaNullRecord "LinePathRelativeAnimation"

instance JavaEquals LinePathRelativeAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LinePathRelativeAnimation where
    (==) = jrecordEquals

instance JavaObjectClass LinePathRelativeAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO LinePathRelativeAnimation
newRecord_ = do
    base <- LinePathAnimation.newRecord_
    let header_ = base.header_
    let this = LinePathRelativeAnimation header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: LinePathRelativeAnimation -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LinePathRelativeAnimation
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LinePathRelativeAnimation -> IO ()
init_ this = do
    LinePathAnimation.init_ this.base
    initFields_ this


getInstance :: IO (LinePathAnimation.LinePathAnimation)
getInstance = do
        pure ((javaCast LinePathRelativeAnimation.instanceC :: LinePathAnimation.LinePathAnimation))


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> GPoint.GPoint -> GPoint.GPoint -> Layer.Layer -> IO (())
paint object_ a1 a2 a3 a4 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: LinePathRelativeAnimation))) () a1 a2 a3 a4

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> GPoint.GPoint -> GPoint.GPoint -> Layer.Layer -> IO (())
paint_super object_ a1 a2 a3 a4 = (paint_impl (javaCast object_ :: LinePathRelativeAnimation)) a1 a2 a3 a4

paint_impl :: LinePathRelativeAnimation -> Graphics.Graphics -> GPoint.GPoint -> GPoint.GPoint -> Layer.Layer -> IO (())
paint_impl this graphics point nextPoint tiledLayer = do
        Control.Monad.void (Graphics.drawLine graphics ((jio (GPoint.getX nextPoint)) - (jio (Layer.getXP tiledLayer))) ((jio (GPoint.getY nextPoint)) - (jio (Layer.getYP tiledLayer))) ((jio (GPoint.getX point)) - (jio (Layer.getXP tiledLayer))) ((jio (GPoint.getY point)) - (jio (Layer.getYP tiledLayer))))
        pure ()


