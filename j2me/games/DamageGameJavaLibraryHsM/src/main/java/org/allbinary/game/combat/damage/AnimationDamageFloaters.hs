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
-- package org.allbinary.game.combat.damage
module AnimationDamageFloaters (module AnimationDamageFloaters, module DamageFloaters) where

import DamageFloaters hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, add, add_super, add_impl, paint, paint_super, paint_impl, logUtil, layerInterface, animationInterfaceArray, circularIndexUtil, dx, dy)
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
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil
import qualified ViewPosition -- org.allbinary.view.ViewPosition
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified DamageFloaters

data AnimationDamageFloaters = AnimationDamageFloaters
    { header_ :: JavaHeader
    , base :: DamageFloaters.DamageFloaters
    , logUtil :: IORef (LogUtil.LogUtil)
    , layerInterface :: IORef (AllBinaryLayer.AllBinaryLayer)
    , animationInterfaceArray :: IORef (JavaArray (IndexedAnimation.IndexedAnimation))
    , circularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    , dx :: IORef (Int)
    , dy :: IORef (Int)
    }

instance JavaNull AnimationDamageFloaters where
    javaNull = javaNullRecord "AnimationDamageFloaters"

instance JavaEquals AnimationDamageFloaters where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnimationDamageFloaters where
    (==) = jrecordEquals

instance JavaObjectClass AnimationDamageFloaters where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AnimationDamageFloaters
newRecord_ = do
    base <- DamageFloaters.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    layerInterface <- newIORef javaNull
    animationInterfaceArray <- newIORef javaNull
    circularIndexUtil <- newIORef javaNull
    dx <- newIORef 0
    dy <- newIORef 0
    let this = AnimationDamageFloaters header_ base logUtil layerInterface animationInterfaceArray circularIndexUtil dx dy
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: AnimationDamageFloaters -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.layerInterface (javaNull)
    jset this.animationInterfaceArray (javaNull)
    jset this.circularIndexUtil (javaNull)
    jset this.dx (0)
    jset this.dy (0)
    pure ()

new_4 :: AllBinaryLayer.AllBinaryLayer -> JavaArray (IndexedAnimation.IndexedAnimation) -> Int -> Int -> IO AnimationDamageFloaters
new_4 layerInterface animationInterfaceArray dx dy = do
    this <- newRecord_
    init_4 this layerInterface animationInterfaceArray dx dy
    pure this

init_4 :: AnimationDamageFloaters -> AllBinaryLayer.AllBinaryLayer -> JavaArray (IndexedAnimation.IndexedAnimation) -> Int -> Int -> IO ()
init_4 this layerInterface animationInterfaceArray dx dy = do
        DamageFloaters.init_ this.base
        initFields_ this
        jset (this).animationInterfaceArray (animationInterfaceArray)
        forM_ [((jlength (jget (this).animationInterfaceArray)) - 1), ((jlength (jget (this).animationInterfaceArray)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (setFrame ((jindex ((jget (this).animationInterfaceArray)) (index))) ((jio (getSize ((jindex ((jget (this).animationInterfaceArray)) (index))))) - 1))
        jset (this).layerInterface (layerInterface)
        assignedValue <- (CircularIndexUtil.createInstance (jlength (jget (this).animationInterfaceArray)))
        jset (this).circularIndexUtil (assignedValue)
        jset (this).dx (dx)
        jset (this).dy (dy)
        pure ()


add :: (JavaObjectClass this_) => this_ -> Int -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: AnimationDamageFloaters))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: AnimationDamageFloaters)) a1

add_impl :: AnimationDamageFloaters -> Int -> IO (())
add_impl this damage = do
        i <- (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))
        Control.Monad.void (setFrame ((jindex ((jget (this).animationInterfaceArray)) (i))) 0)
        Control.Monad.void (CircularIndexUtil.next ((jget (this).circularIndexUtil)))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: AnimationDamageFloaters))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: AnimationDamageFloaters)) a1

paint_impl :: AnimationDamageFloaters -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            canvasStrings <- (CanvasStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (canvasStrings).pAINT) e)
            ) $ do
            viewPosition <- (AllBinaryLayer.getViewPosition ((jget (this).layerInterface)))
            x <- (ViewPositionBase.getX viewPosition)
            y <- (ViewPositionBase.getY viewPosition)
            forM_ [0 .. (jlength (jget (this).animationInterfaceArray)) - 1] $ \index -> javaIteration (pure ()) $ do
                let animationInterface = (jindex ((jget (this).animationInterfaceArray)) (index))
                when ((jio (IndexedAnimation.getFrame animationInterface)) < ((jio (IndexedAnimation.getAnimationSize animationInterface)) - 1)) $ do
                    let delta = ((jio (IndexedAnimation.getFrame animationInterface)) * 20)
                    Control.Monad.void (IndexedAnimation.paintXY animationInterface graphics (x + (jget (this).dx)) ((y - delta) + (jget (this).dy)))
                    Control.Monad.void (IndexedAnimation.nextFrame animationInterface)
        pure ()


