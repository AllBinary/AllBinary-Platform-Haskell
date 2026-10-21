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
-- package org.allbinary.game.ag.layer.hud.basic.life
module LivesHudWidget (module LivesHudWidget, module BasicHud) where

import BasicHud hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, onDisplayChangeEvent, onDisplayChangeEvent_super, onDisplayChangeEvent_impl, setX, setX_super, setX_impl, paint, paint_super, paint_impl, paintThreed, paintThreed_super, paintThreed_impl, getLifeInterface, getLifeInterface_super, getLifeInterface_impl, lifeInterface, xArray, animationInterface)
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
import qualified Life -- org.allbinary.game.ag.life.Life
import qualified BasicHud -- org.allbinary.game.graphics.hud.BasicHud
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified DisplayChangeEvent -- org.allbinary.graphics.displayable.event.DisplayChangeEvent
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface

-- implements PaintableInterface
data LivesHudWidget = LivesHudWidget
    { header_ :: JavaHeader
    , base :: BasicHud.BasicHud
    , lifeInterface :: IORef (Life.Life)
    , xArray :: IORef (JavaArray (Int))
    , animationInterface :: IORef (Animation.Animation)
    }

instance JavaNull LivesHudWidget where
    javaNull = javaNullRecord "LivesHudWidget"

instance JavaEquals LivesHudWidget where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LivesHudWidget where
    (==) = jrecordEquals

instance JavaObjectClass LivesHudWidget where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO LivesHudWidget
newRecord_ = do
    base <- BasicHud.newRecord_
    let header_ = base.header_
    lifeInterface <- newIORef javaNull
    xArray <- newIORef javaNull
    animationInterface <- newIORef javaNull
    let this = LivesHudWidget header_ base lifeInterface xArray animationInterface
    jregisterLevel header_ this
    PaintableInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "onDisplayChangeEvent" (\() -> onDisplayChangeEvent_impl this)
    jregisterMethod header_ "setX" (\() -> setX_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    jregisterMethod header_ "getLifeInterface" (\() -> getLifeInterface_impl this)
    pure this

initFields_ :: LivesHudWidget -> IO ()
initFields_ this = do
    jset this.lifeInterface (javaNull)
    jset this.xArray (javaNull)
    jset this.animationInterface (javaNull)
    pure ()

new_4 :: Animation.Animation -> Life.Life -> Int -> Int -> IO LivesHudWidget
new_4 animationInterface lifeInterface location direction = do
    this <- newRecord_
    init_4 this animationInterface lifeInterface location direction
    pure this

init_4 :: LivesHudWidget -> Animation.Animation -> Life.Life -> Int -> Int -> IO ()
init_4 this animationInterface lifeInterface location direction = do
        BasicHud.init_4 this.base (location) (direction) (2) (jget ((jio (BasicColorFactory.getInstance))).wHITE)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).lifeInterface (lifeInterface)
        let size = (Prelude.fromIntegral (jio (Life.getMaxlives ((jio (LivesHudWidget.getLifeInterface this))))))
        jset (this).xArray ((jnewArray (size) 0))
        jset (this).animationInterface (animationInterface)
        jset (this).base.updateMaxWidth (((Prelude.fromIntegral (jio (Life.getMaxlives ((jget (this).lifeInterface))))) * 16))
        jset (this).base.updateMaxHeight (16)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: LivesHudWidget))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: LivesHudWidget)) a1

updateMeasurement_impl :: LivesHudWidget -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        Control.Monad.void (BasicHud.updateMeasurement_super this.base graphics)
        let maxLives = (Prelude.fromIntegral (jio (Life.getMaxlives ((jio (LivesHudWidget.getLifeInterface this))))))
        forM_ [0 .. maxLives - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).xArray)) (index) (((jio (BasicHud.getX this)) + ((index * 16))))
        pure ()


onDisplayChangeEvent :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent object_ a1 = jmethod object_ "onDisplayChangeEvent" (\() -> (onDisplayChangeEvent_impl (javaCast object_ :: LivesHudWidget))) () a1

onDisplayChangeEvent_super :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_super object_ a1 = (onDisplayChangeEvent_impl (javaCast object_ :: LivesHudWidget)) a1

onDisplayChangeEvent_impl :: LivesHudWidget -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_impl this displayChangeEvent = do
        Control.Monad.void (BasicHud.onDisplayChangeEvent_super this.base displayChangeEvent)
        jset (this).base.myFontProcessor ((jget (this).base.updateMyFontProcessor))
        pure ()


setX :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setX object_ a1 = jmethod object_ "setX" (\() -> (setX_impl (javaCast object_ :: LivesHudWidget))) () a1

setX_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setX_super object_ a1 = (setX_impl (javaCast object_ :: LivesHudWidget)) a1

setX_impl :: LivesHudWidget -> Int -> IO (())
setX_impl this x = do
        Control.Monad.void (BasicHud.setX_super this.base x)
        jset (this).base.myFontProcessor ((jget (this).base.updateMyFontProcessor))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: LivesHudWidget))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: LivesHudWidget)) a1

paint_impl :: LivesHudWidget -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).base.myFontProcessor)) graphics)
        index <- newIORef ((Prelude.fromIntegral (jio (Life.get ((jio (LivesHudWidget.getLifeInterface this)))))))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (Animation.paintXY ((jget (this).animationInterface)) graphics (jindex ((jget (this).xArray)) ((jget index))) (jio (BasicHud.getY this)))
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: LivesHudWidget))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: LivesHudWidget)) a1

paintThreed_impl :: LivesHudWidget -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        pure ()


getLifeInterface :: (JavaObjectClass this_) => this_ -> IO (Life.Life)
getLifeInterface object_ = jmethod object_ "getLifeInterface" (\() -> (getLifeInterface_impl (javaCast object_ :: LivesHudWidget))) ()

getLifeInterface_super :: (JavaObjectClass this_) => this_ -> IO (Life.Life)
getLifeInterface_super object_ = (getLifeInterface_impl (javaCast object_ :: LivesHudWidget))

getLifeInterface_impl :: LivesHudWidget -> IO (Life.Life)
getLifeInterface_impl this = do
        pure ((jget (this).lifeInterface))


