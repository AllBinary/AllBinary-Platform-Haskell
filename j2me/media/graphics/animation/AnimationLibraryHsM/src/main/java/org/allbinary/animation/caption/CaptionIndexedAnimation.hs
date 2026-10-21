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
-- package org.allbinary.animation.caption
module CaptionIndexedAnimation (module CaptionIndexedAnimation, module IndexedAnimation) where

import IndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, nextFrame, nextFrame_super, nextFrame_impl, isLastFrame, isLastFrame_super, isLastFrame_impl, previousFrame, previousFrame_super, previousFrame_impl, setFrame, setFrame_super, setFrame_impl, getFrame, getFrame_super, getFrame_impl, getSize, getSize_super, getSize_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, paintXY, paintXY_super, paintXY_impl, paintThreedXYZ, paintThreedXYZ_super, paintThreedXYZ_impl, animationInterface, movieIndexedAnimationInterface, captionDx, captionDy, dx, dy, time, eND_EVENT, timeDelayHelper, player)
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
import qualified Player -- javax.microedition.media.Player
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified AnimationEventHandler -- org.allbinary.animation.AnimationEventHandler
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper

data CaptionIndexedAnimation = CaptionIndexedAnimation
    { header_ :: JavaHeader
    , base :: IndexedAnimation.IndexedAnimation
    , animationInterface :: IORef (Animation.Animation)
    , movieIndexedAnimationInterface :: IORef (IndexedAnimation.IndexedAnimation)
    , captionDx :: IORef (Int)
    , captionDy :: IORef (Int)
    , dx :: IORef (Int)
    , dy :: IORef (Int)
    , time :: IORef (Int)
    , eND_EVENT :: IORef (AllBinaryEventObject.AllBinaryEventObject)
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , player :: IORef (Player.Player)
    }

instance JavaNull CaptionIndexedAnimation where
    javaNull = javaNullRecord "CaptionIndexedAnimation"

instance JavaEquals CaptionIndexedAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CaptionIndexedAnimation where
    (==) = jrecordEquals

instance JavaObjectClass CaptionIndexedAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CaptionIndexedAnimation
newRecord_ = do
    base <- IndexedAnimation.newRecord_
    let header_ = base.header_
    animationInterface <- newIORef javaNull
    movieIndexedAnimationInterface <- newIORef javaNull
    captionDx <- newIORef 0
    captionDy <- newIORef 0
    dx <- newIORef 0
    dy <- newIORef 0
    time <- newIORef 0
    eND_EVENT <- newIORef javaNull
    timeDelayHelper <- newIORef javaNull
    player <- newIORef javaNull
    let this = CaptionIndexedAnimation header_ base animationInterface movieIndexedAnimationInterface captionDx captionDy dx dy time eND_EVENT timeDelayHelper player
    jregisterLevel header_ this
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "isLastFrame" (\() -> isLastFrame_impl this)
    jregisterMethod header_ "previousFrame" (\() -> previousFrame_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "paintThreedXYZ" (\() -> paintThreedXYZ_impl this)
    pure this

initFields_ :: CaptionIndexedAnimation -> IO ()
initFields_ this = do
    jset this.animationInterface (javaNull)
    jset this.movieIndexedAnimationInterface (javaNull)
    jset this.captionDx (0)
    jset this.captionDy (0)
    jset this.dx (0)
    jset this.dy (0)
    jset this.time (0)
    jset this.eND_EVENT (javaNull)
    jset this.timeDelayHelper (javaNull)
    jset this.player (javaNull)
    pure ()

new_9 :: Animation.Animation -> IndexedAnimation.IndexedAnimation -> Player.Player -> Int -> Int -> Int -> Int -> Int -> AnimationBehavior.AnimationBehavior -> IO CaptionIndexedAnimation
new_9 animationInterface movieIndexedAnimationInterface player captionDx captionDy dx dy time animationBehavior = do
    this <- newRecord_
    init_9 this animationInterface movieIndexedAnimationInterface player captionDx captionDy dx dy time animationBehavior
    pure this

init_9 :: CaptionIndexedAnimation -> Animation.Animation -> IndexedAnimation.IndexedAnimation -> Player.Player -> Int -> Int -> Int -> Int -> Int -> AnimationBehavior.AnimationBehavior -> IO ()
init_9 this animationInterface movieIndexedAnimationInterface player captionDx captionDy dx dy time animationBehavior = do
        IndexedAnimation.init_1 this.base (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).animationInterface (animationInterface)
        jset (this).movieIndexedAnimationInterface (movieIndexedAnimationInterface)
        jset (this).captionDx (captionDx)
        jset (this).captionDy (captionDy)
        jset (this).dx (dx)
        jset (this).dy (dy)
        jset (this).time (time)
        assignedValue <- (AllBinaryEventObject.new_1 this)
        jset (this).eND_EVENT (assignedValue)
        let timePerFrame = ((jget (this).time) `quot` (jio (CaptionIndexedAnimation.getSize this)))
        assignedValue <- (TimeDelayHelper.new_1 timePerFrame)
        jset (this).timeDelayHelper (assignedValue)
        jset (this).player (player)
        Control.Monad.void (Player.start ((jget (this).player)))
        pure ()


-- throws Exception
nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: CaptionIndexedAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: CaptionIndexedAnimation))

nextFrame_impl :: CaptionIndexedAnimation -> IO (())
nextFrame_impl this = do
        when (jio (TimeDelayHelper.isTime ((jget (this).timeDelayHelper)) (jget ((jio (GameTickTimeDelayHelperFactory.getInstance))).startTime))) $ do
            Control.Monad.void (IndexedAnimation.nextFrame ((jget (this).movieIndexedAnimationInterface)))
        when (jio (CaptionIndexedAnimation.isLastFrame this)) $ do
            Control.Monad.void (AnimationEventHandler.fireEvent ((jio (AnimationEventHandler.getInstance))) (jget (this).eND_EVENT))
        pure ()


isLastFrame :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLastFrame object_ = jmethod object_ "isLastFrame" (\() -> (isLastFrame_impl (javaCast object_ :: CaptionIndexedAnimation))) ()

isLastFrame_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLastFrame_super object_ = (isLastFrame_impl (javaCast object_ :: CaptionIndexedAnimation))

isLastFrame_impl :: CaptionIndexedAnimation -> IO (Bool)
isLastFrame_impl this = do
    javaCatchReturn $ do
        if ((jio (IndexedAnimation.getFrame ((jget (this).movieIndexedAnimationInterface)))) == ((jio (CaptionIndexedAnimation.getSize this)) - 1)) then do
            javaReturn (True)
        else do
            javaReturn (False)


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: CaptionIndexedAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: CaptionIndexedAnimation))

previousFrame_impl :: CaptionIndexedAnimation -> IO (())
previousFrame_impl this = do
        Control.Monad.void (IndexedAnimation.previousFrame ((jget (this).movieIndexedAnimationInterface)))
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: CaptionIndexedAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: CaptionIndexedAnimation)) a1

setFrame_impl :: CaptionIndexedAnimation -> Int -> IO (())
setFrame_impl this index = do
        Control.Monad.void (IndexedAnimation.setFrame ((jget (this).movieIndexedAnimationInterface)) index)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: CaptionIndexedAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: CaptionIndexedAnimation))

getFrame_impl :: CaptionIndexedAnimation -> IO (Int)
getFrame_impl this = do
        (IndexedAnimation.getFrame ((jget (this).movieIndexedAnimationInterface)))


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: CaptionIndexedAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: CaptionIndexedAnimation))

getSize_impl :: CaptionIndexedAnimation -> IO (Int)
getSize_impl this = do
        (IndexedAnimation.getSize ((jget (this).movieIndexedAnimationInterface)))


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: CaptionIndexedAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: CaptionIndexedAnimation)) a1

setSequence_impl :: CaptionIndexedAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: CaptionIndexedAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: CaptionIndexedAnimation))

getSequence_impl :: CaptionIndexedAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (PrimitiveIntUtil.getArrayInstance)


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: CaptionIndexedAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: CaptionIndexedAnimation)) a1 a2 a3

paintXY_impl :: CaptionIndexedAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (Animation.paintXY ((jget (this).animationInterface)) graphics (x + (jget (this).captionDx)) (y + (jget (this).captionDy)))
        Control.Monad.void (IndexedAnimation.paintXY ((jget (this).movieIndexedAnimationInterface)) graphics ((x + (jget (this).captionDx)) + (jget (this).dx)) ((y + (jget (this).captionDy)) + (jget (this).dy)))
        pure ()


paintThreedXYZ :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ object_ a1 a2 a3 a4 = jmethod object_ "paintThreedXYZ" (\() -> (paintThreedXYZ_impl (javaCast object_ :: CaptionIndexedAnimation))) () a1 a2 a3 a4

paintThreedXYZ_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_super object_ a1 a2 a3 a4 = (paintThreedXYZ_impl (javaCast object_ :: CaptionIndexedAnimation)) a1 a2 a3 a4

paintThreedXYZ_impl :: CaptionIndexedAnimation -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_impl this graphics x y z = do
        Control.Monad.void (Animation.paintThreedXYZ ((jget (this).animationInterface)) graphics (x + (jget (this).captionDx)) (y + (jget (this).captionDy)) z)
        Control.Monad.void (IndexedAnimation.paintThreedXYZ ((jget (this).movieIndexedAnimationInterface)) graphics ((x + (jget (this).captionDx)) + (jget (this).dx)) ((y + (jget (this).captionDy)) + (jget (this).dy)) z)
        pure ()


