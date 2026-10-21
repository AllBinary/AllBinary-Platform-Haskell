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
module HealthBar (module HealthBar, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onHealthChange, onHealthChange_super, onHealthChange_impl, paint, paint_super, paint_impl, paintThreed, paintThreed_super, paintThreed_impl, animationInterface, healthInterface, allbinaryLayer)
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
import qualified HealthBarAnimation -- same package or java.lang
import qualified HealthInterface -- same package or java.lang
import qualified Health -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified HealthListenerInterface

-- implements HealthListenerInterface
data HealthBar = HealthBar
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , animationInterface :: IORef (HealthBarAnimation.HealthBarAnimation)
    , healthInterface :: IORef (HealthInterface.HealthInterface)
    , allbinaryLayer :: IORef (AllBinaryLayer.AllBinaryLayer)
    }

instance JavaNull HealthBar where
    javaNull = javaNullRecord "HealthBar"

instance JavaEquals HealthBar where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HealthBar where
    (==) = jrecordEquals

instance JavaObjectClass HealthBar where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HealthBar
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    animationInterface <- newIORef javaNull
    healthInterface <- newIORef javaNull
    allbinaryLayer <- newIORef javaNull
    let this = HealthBar header_ base animationInterface healthInterface allbinaryLayer
    jregisterLevel header_ this
    HealthListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onHealthChange" (\() -> onHealthChange_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    pure this

initFields_ :: HealthBar -> IO ()
initFields_ this = do
    jset this.animationInterface (javaNull)
    jset this.healthInterface (javaNull)
    jset this.allbinaryLayer (javaNull)
    pure ()

new_4 :: AllBinaryLayer.AllBinaryLayer -> Health.Health -> HealthBarAnimation.HealthBarAnimation -> Int -> IO HealthBar
new_4 layerInterface healthInterface animationInterface direction = do
    this <- newRecord_
    init_4 this layerInterface healthInterface animationInterface direction
    pure this

init_4 :: HealthBar -> AllBinaryLayer.AllBinaryLayer -> Health.Health -> HealthBarAnimation.HealthBarAnimation -> Int -> IO ()
init_4 this layerInterface healthInterface animationInterface direction = do
        Paintable.init_ this.base
        initFields_ this
        jset (this).allbinaryLayer (layerInterface)
        jset (this).animationInterface (animationInterface)
        jset (this).healthInterface (healthInterface)
        Control.Monad.void (Health.addListener ((jget (this).healthInterface)) this)
        Control.Monad.void (HealthBar.onHealthChange this)
        pure ()


onHealthChange :: (JavaObjectClass this_) => this_ -> IO (())
onHealthChange object_ = jmethod object_ "onHealthChange" (\() -> (onHealthChange_impl (javaCast object_ :: HealthBar))) ()

onHealthChange_super :: (JavaObjectClass this_) => this_ -> IO (())
onHealthChange_super object_ = (onHealthChange_impl (javaCast object_ :: HealthBar))

onHealthChange_impl :: HealthBar -> IO (())
onHealthChange_impl this = do
        Control.Monad.void (HealthBarAnimation.onHealthChange ((jget (this).animationInterface)) (((jio (HealthInterface.getHealth ((jget (this).healthInterface)))) * (jio (AllBinaryLayer.getWidth ((jget (this).allbinaryLayer))))) / (jio (HealthInterface.getMaxHealth ((jget (this).healthInterface))))))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: HealthBar))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: HealthBar)) a1

paint_impl :: HealthBar -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (HealthBarAnimation.paintXY ((jget (this).animationInterface)) graphics 0 0)
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: HealthBar))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: HealthBar)) a1

paintThreed_impl :: HealthBar -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        Control.Monad.void (HealthBarAnimation.paintThreedXYZ ((jget (this).animationInterface)) graphics 0 0 0)
        pure ()


