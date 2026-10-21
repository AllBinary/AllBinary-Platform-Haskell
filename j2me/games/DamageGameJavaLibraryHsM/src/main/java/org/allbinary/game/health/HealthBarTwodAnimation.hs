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
-- package org.allbinary.game.health
module HealthBarTwodAnimation (module HealthBarTwodAnimation, module HealthBarAnimation) where

import HealthBarAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paintXY, paintXY_super, paintXY_impl)
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
import qualified BasicColorSetUtil -- same package or java.lang
import qualified BasicColor -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified HealthBarAnimation

data HealthBarTwodAnimation = HealthBarTwodAnimation
    { header_ :: JavaHeader
    , base :: HealthBarAnimation.HealthBarAnimation
    }

instance JavaNull HealthBarTwodAnimation where
    javaNull = javaNullRecord "HealthBarTwodAnimation"

instance JavaEquals HealthBarTwodAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HealthBarTwodAnimation where
    (==) = jrecordEquals

instance JavaObjectClass HealthBarTwodAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HealthBarTwodAnimation
newRecord_ = do
    base <- HealthBarAnimation.newRecord_
    let header_ = base.header_
    let this = HealthBarTwodAnimation header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: HealthBarTwodAnimation -> IO ()
initFields_ this = do
    pure ()

new_2 :: AllBinaryLayer.AllBinaryLayer -> Int -> IO HealthBarTwodAnimation
new_2 layerInterface location = do
    this <- newRecord_
    init_2 this layerInterface location
    pure this

init_2 :: HealthBarTwodAnimation -> AllBinaryLayer.AllBinaryLayer -> Int -> IO ()
init_2 this layerInterface location = do
        HealthBarAnimation.init_2 this.base (layerInterface) (location)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: HealthBarTwodAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: HealthBarTwodAnimation)) a1 a2 a3

paintXY_impl :: HealthBarTwodAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        ax <- (ViewPositionBase.getX ((jio (AllBinaryLayer.getViewPosition ((jget (this).base.allbinaryLayer))))))
        Control.Monad.void (BasicColorSetUtil.setBasicColorP3 ((jget (this).base.base.basicSetColorUtil)) graphics (jget (this).base.base.basicColor) (jget (this).base.base.colorP))
        Control.Monad.void (Graphics.fillRect graphics ax ((jio (HealthBarAnimation.getY this)) - 1) (jget (this).base.x2) (jget (this).base.thickness))
        pure ()


