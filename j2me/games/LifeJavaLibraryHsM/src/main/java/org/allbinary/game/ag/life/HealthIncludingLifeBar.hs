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
-- package org.allbinary.game.ag.life
module HealthIncludingLifeBar (module HealthIncludingLifeBar, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createHealthIncludingLifeBar, createHealthIncludingLifeBar_super, createHealthIncludingLifeBar_impl, onHealthChange, onHealthChange_super, onHealthChange_impl, paint, paint_super, paint_impl, paintThreed, paintThreed_super, paintThreed_impl, animationInterface, life, healthInterface, allbinaryLayer)
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
import qualified Life -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Health -- org.allbinary.game.health.Health
import qualified HealthBarAnimation -- org.allbinary.game.health.HealthBarAnimation
import qualified HealthBarTwodAnimation -- org.allbinary.game.health.HealthBarTwodAnimation
import qualified HealthInterface -- org.allbinary.game.health.HealthInterface
import qualified HealthListenerInterface -- org.allbinary.game.health.HealthListenerInterface
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer

-- implements HealthListenerInterface
data HealthIncludingLifeBar = HealthIncludingLifeBar
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , animationInterface :: IORef (HealthBarAnimation.HealthBarAnimation)
    , life :: IORef (Life.Life)
    , healthInterface :: IORef (HealthInterface.HealthInterface)
    , allbinaryLayer :: IORef (AllBinaryLayer.AllBinaryLayer)
    }

instance JavaNull HealthIncludingLifeBar where
    javaNull = javaNullRecord "HealthIncludingLifeBar"

instance JavaEquals HealthIncludingLifeBar where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HealthIncludingLifeBar where
    (==) = jrecordEquals

instance JavaObjectClass HealthIncludingLifeBar where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HealthIncludingLifeBar
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    animationInterface <- newIORef javaNull
    life <- newIORef javaNull
    healthInterface <- newIORef javaNull
    allbinaryLayer <- newIORef javaNull
    let this = HealthIncludingLifeBar header_ base animationInterface life healthInterface allbinaryLayer
    jregisterLevel header_ this
    HealthListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onHealthChange" (\() -> onHealthChange_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    pure this

initFields_ :: HealthIncludingLifeBar -> IO ()
initFields_ this = do
    jset this.animationInterface (javaNull)
    jset this.life (javaNull)
    jset this.healthInterface (javaNull)
    jset this.allbinaryLayer (javaNull)
    pure ()


-- throws Exception
createHealthIncludingLifeBar :: AllBinaryLayer.AllBinaryLayer -> Life.Life -> Health.Health -> Int -> Int -> IO (HealthIncludingLifeBar)
createHealthIncludingLifeBar layerInterface life healthInterface location direction = do
        (new_5 layerInterface life healthInterface (jio (HealthBarTwodAnimation.new_2 layerInterface location)) direction)

new_5 :: AllBinaryLayer.AllBinaryLayer -> Life.Life -> Health.Health -> HealthBarAnimation.HealthBarAnimation -> Int -> IO HealthIncludingLifeBar
new_5 layerInterface life healthInterface animationInterface direction = do
    this <- newRecord_
    init_5 this layerInterface life healthInterface animationInterface direction
    pure this

init_5 :: HealthIncludingLifeBar -> AllBinaryLayer.AllBinaryLayer -> Life.Life -> Health.Health -> HealthBarAnimation.HealthBarAnimation -> Int -> IO ()
init_5 this layerInterface life healthInterface animationInterface direction = do
        Paintable.init_ this.base
        initFields_ this
        jset (this).allbinaryLayer (layerInterface)
        jset (this).animationInterface (animationInterface)
        jset (this).life (life)
        jset (this).healthInterface (healthInterface)
        Control.Monad.void (Health.addListener ((jget (this).healthInterface)) (javaCast this))
        Control.Monad.void (HealthIncludingLifeBar.onHealthChange this)
        pure ()


onHealthChange :: (JavaObjectClass this_) => this_ -> IO (())
onHealthChange object_ = jmethod object_ "onHealthChange" (\() -> (onHealthChange_impl (javaCast object_ :: HealthIncludingLifeBar))) ()

onHealthChange_super :: (JavaObjectClass this_) => this_ -> IO (())
onHealthChange_super object_ = (onHealthChange_impl (javaCast object_ :: HealthIncludingLifeBar))

onHealthChange_impl :: HealthIncludingLifeBar -> IO (())
onHealthChange_impl this = do
        Control.Monad.void (HealthBarAnimation.onHealthChange ((jget (this).animationInterface)) ((((((jio (HealthInterface.getHealth ((jget (this).healthInterface)))) + (((jio (HealthInterface.getMaxHealth ((jget (this).healthInterface)))) * (jio (Life.get ((jget (this).life)))))))) * (jio (AllBinaryLayer.getWidth ((jget (this).allbinaryLayer)))))) / (((jio (HealthInterface.getMaxHealth ((jget (this).healthInterface)))) + (((jio (HealthInterface.getMaxHealth ((jget (this).healthInterface)))) * (jio (Life.getStartLives ((jget (this).life))))))))))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: HealthIncludingLifeBar))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: HealthIncludingLifeBar)) a1

paint_impl :: HealthIncludingLifeBar -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (HealthBarAnimation.paintXY ((jget (this).animationInterface)) graphics 0 0)
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: HealthIncludingLifeBar))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: HealthIncludingLifeBar)) a1

paintThreed_impl :: HealthIncludingLifeBar -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        Control.Monad.void (HealthBarAnimation.paintThreedXYZ ((jget (this).animationInterface)) graphics 0 0 0)
        pure ()


