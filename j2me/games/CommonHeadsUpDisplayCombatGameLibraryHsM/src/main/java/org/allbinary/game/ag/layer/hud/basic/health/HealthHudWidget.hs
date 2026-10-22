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
-- package org.allbinary.game.ag.layer.hud.basic.health
module HealthHudWidget (module HealthHudWidget, module BasicHud) where

import BasicHud hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, update, update_super, update_impl, setX, setX_super, setX_impl, onHealthChange, onHealthChange_super, onHealthChange_impl, paint, paint_super, paint_impl, paintThreed, paintThreed_super, paintThreed_impl, healthScale, animationInterface, healthInterface, max, xArray, gameTickTimeDelayHelper, timeDelayHelper, slowBeatTimeDelayHelper, mediumBeatTimeDelayHelper, fastBeatTimeDelayHelper)
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
import qualified MyFontProcessor -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Animation -- org.allbinary.animation.Animation
import qualified BasicHud -- org.allbinary.game.graphics.hud.BasicHud
import qualified Health -- org.allbinary.game.health.Health
import qualified HealthListenerInterface -- org.allbinary.game.health.HealthListenerInterface
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface
import qualified GameTickTimeDelayHelper -- org.allbinary.time.GameTickTimeDelayHelper
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified NoTimeDelayHelper -- org.allbinary.time.NoTimeDelayHelper
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper

-- implements PaintableInterface
-- implements HealthListenerInterface
data HealthHudWidget = HealthHudWidget
    { header_ :: JavaHeader
    , base :: BasicHud.BasicHud
    , healthScale :: IORef (Int)
    , animationInterface :: IORef (Animation.Animation)
    , healthInterface :: IORef (Health.Health)
    , max :: IORef (Int)
    , xArray :: IORef (JavaArray (Int))
    , gameTickTimeDelayHelper :: IORef (GameTickTimeDelayHelper.GameTickTimeDelayHelper)
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , slowBeatTimeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , mediumBeatTimeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , fastBeatTimeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    }

instance JavaNull HealthHudWidget where
    javaNull = javaNullRecord "HealthHudWidget"

instance JavaEquals HealthHudWidget where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HealthHudWidget where
    (==) = jrecordEquals

instance JavaObjectClass HealthHudWidget where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HealthHudWidget
newRecord_ = do
    base <- BasicHud.newRecord_
    let header_ = base.header_
    healthScale <- newIORef 0
    animationInterface <- newIORef javaNull
    healthInterface <- newIORef javaNull
    max <- newIORef 0
    xArray <- newIORef javaNull
    gameTickTimeDelayHelper <- newIORef javaNull
    timeDelayHelper <- newIORef javaNull
    slowBeatTimeDelayHelper <- newIORef javaNull
    mediumBeatTimeDelayHelper <- newIORef javaNull
    fastBeatTimeDelayHelper <- newIORef javaNull
    let this = HealthHudWidget header_ base healthScale animationInterface healthInterface max xArray gameTickTimeDelayHelper timeDelayHelper slowBeatTimeDelayHelper mediumBeatTimeDelayHelper fastBeatTimeDelayHelper
    jregisterLevel header_ this
    PaintableInterface.registerInterface_ header_
    HealthListenerInterface.registerInterface_ header_
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "setX" (\() -> setX_impl this)
    jregisterMethod header_ "onHealthChange" (\() -> onHealthChange_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    pure this

initFields_ :: HealthHudWidget -> IO ()
initFields_ this = do
    jset this.healthScale (0)
    jset this.animationInterface (javaNull)
    jset this.healthInterface (javaNull)
    jset this.max (0)
    jset this.xArray (javaNull)
    jset this.gameTickTimeDelayHelper =<< (GameTickTimeDelayHelperFactory.getInstance)
    jset this.timeDelayHelper ((javaCast NoTimeDelayHelper.sINGLETON :: TimeDelayHelper.TimeDelayHelper))
    jset this.slowBeatTimeDelayHelper =<< (TimeDelayHelper.new_1 1280)
    jset this.mediumBeatTimeDelayHelper =<< (TimeDelayHelper.new_1 640)
    jset this.fastBeatTimeDelayHelper =<< (TimeDelayHelper.new_1 320)
    pure ()

new_4 :: Animation.Animation -> Health.Health -> Int -> Int -> IO HealthHudWidget
new_4 animationInterface healthInterface location direction = do
    this <- newRecord_
    init_4 this animationInterface healthInterface location direction
    pure this

init_4 :: HealthHudWidget -> Animation.Animation -> Health.Health -> Int -> Int -> IO ()
init_4 this animationInterface healthInterface location direction = do
        BasicHud.init_4 this.base (location) (direction) (2) (jget ((jio (BasicColorFactory.getInstance))).wHITE)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).animationInterface (animationInterface)
        jset (this).healthInterface (healthInterface)
        Control.Monad.void (Health.addListener ((jget (this).healthInterface)) (javaCast this))
        jset (this).healthScale (((((jio (Health.getMaxHealth ((jget (this).healthInterface)))) `quot` 6)) + 1))
        Control.Monad.void (HealthHudWidget.onHealthChange this)
        jset (this).base.updateMaxWidth (((jio (Health.getMaxHealth healthInterface)) * 16))
        jset (this).base.updateMaxHeight (16)
        jset (this).xArray ((jnewArray (30) 0))
        Control.Monad.void (HealthHudWidget.update this)
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: HealthHudWidget))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: HealthHudWidget))

update_impl :: HealthHudWidget -> IO (())
update_impl this = do
        when ((jget (this).xArray) /= javaNull) $ do
            forM_ [0 .. (jlength (jget (this).xArray)) - 1] $ \index -> javaIteration (pure ()) $ do
                jsetIndex ((jget (this).xArray)) (index) (((jio (BasicHud.getX this)) + ((index * 16))))
        pure ()


setX :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setX object_ a1 = jmethod object_ "setX" (\() -> (setX_impl (javaCast object_ :: HealthHudWidget))) () a1

setX_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setX_super object_ a1 = (setX_impl (javaCast object_ :: HealthHudWidget)) a1

setX_impl :: HealthHudWidget -> Int -> IO (())
setX_impl this x = do
        Control.Monad.void (BasicHud.setX_super this.base x)
        Control.Monad.void (HealthHudWidget.update this)
        pure ()


onHealthChange :: (JavaObjectClass this_) => this_ -> IO (())
onHealthChange object_ = jmethod object_ "onHealthChange" (\() -> (onHealthChange_impl (javaCast object_ :: HealthHudWidget))) ()

onHealthChange_super :: (JavaObjectClass this_) => this_ -> IO (())
onHealthChange_super object_ = (onHealthChange_impl (javaCast object_ :: HealthHudWidget))

onHealthChange_impl :: HealthHudWidget -> IO (())
onHealthChange_impl this = do
        jset (this).max ((((jio (Health.getHealth ((jget (this).healthInterface)))) `quot` (jget (this).healthScale))))
        jset (this).timeDelayHelper (NoTimeDelayHelper.sINGLETON)
        when (((jget (this).max) <= 1) && (jio (Health.isAlive ((jget (this).healthInterface))))) $ do
            jset (this).max (1)
            if (((jget (this).healthScale) - (jio (Health.getHealth ((jget (this).healthInterface))))) > ((((jget (this).healthScale) * 2)) `quot` 3)) then do
                jset (this).timeDelayHelper ((jget (this).slowBeatTimeDelayHelper))
            else if (((jget (this).healthScale) - (jio (Health.getHealth ((jget (this).healthInterface))))) > ((jget (this).healthScale) `quot` 3)) then do
                jset (this).timeDelayHelper ((jget (this).mediumBeatTimeDelayHelper))
            else do
                jset (this).timeDelayHelper ((jget (this).fastBeatTimeDelayHelper))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: HealthHudWidget))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: HealthHudWidget)) a1

paint_impl :: HealthHudWidget -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).base.myFontProcessor)) graphics)
        forM_ [0 .. (jget (this).max) - 1] $ \index -> javaIteration (pure ()) $ do
            when (jio (TimeDelayHelper.isTime ((jget (this).timeDelayHelper)) (jget ((jget (this).gameTickTimeDelayHelper)).startTime))) $ do
                Control.Monad.void (Animation.paintXY ((jget (this).animationInterface)) graphics (jindex ((jget (this).xArray)) (index)) (jio (BasicHud.getY this)))
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: HealthHudWidget))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: HealthHudWidget)) a1

paintThreed_impl :: HealthHudWidget -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        pure ()


