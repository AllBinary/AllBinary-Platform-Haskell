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
-- package org.allbinary.animation.image
module ImageArraySpecialAnimation (module ImageArraySpecialAnimation, module ImageArrayAnimation) where

import ImageArrayAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getLoopCount, getLoopCount_super, getLoopCount_impl, setLastFrame, setLastFrame_super, setLastFrame_impl, reset, reset_super, reset_impl, nextFrame, nextFrame_super, nextFrame_impl, isComplete, isComplete_super, isComplete_impl, paintXY, paintXY_super, paintXY_impl, timeDelayHelper, loopCount, loopCountTotal)
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
import qualified CircularIndexUtil -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified SpecialAnimationInterface -- org.allbinary.animation.special.SpecialAnimationInterface
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified ImageArrayAnimation

-- implements SpecialAnimationInterface
data ImageArraySpecialAnimation = ImageArraySpecialAnimation
    { header_ :: JavaHeader
    , base :: ImageArrayAnimation.ImageArrayAnimation
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , loopCount :: IORef (Int)
    , loopCountTotal :: IORef (Int)
    }

instance JavaNull ImageArraySpecialAnimation where
    javaNull = javaNullRecord "ImageArraySpecialAnimation"

instance JavaEquals ImageArraySpecialAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageArraySpecialAnimation where
    (==) = jrecordEquals

instance JavaObjectClass ImageArraySpecialAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageArraySpecialAnimation
newRecord_ = do
    base <- ImageArrayAnimation.newRecord_
    let header_ = base.header_
    timeDelayHelper <- newIORef javaNull
    loopCount <- newIORef 0
    loopCountTotal <- newIORef 0
    let this = ImageArraySpecialAnimation header_ base timeDelayHelper loopCount loopCountTotal
    jregisterLevel header_ this
    SpecialAnimationInterface.registerInterface_ header_
    jregisterMethod header_ "getLoopCount" (\() -> getLoopCount_impl this)
    jregisterMethod header_ "setLastFrame" (\() -> setLastFrame_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "isComplete" (\() -> isComplete_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: ImageArraySpecialAnimation -> IO ()
initFields_ this = do
    jset this.timeDelayHelper =<< (TimeDelayHelper.new_1 270)
    jset this.loopCount (0)
    jset this.loopCountTotal (1)
    pure ()

new_2 :: JavaArray (Image.Image) -> AnimationBehavior.AnimationBehavior -> IO ImageArraySpecialAnimation
new_2 imageArray animationBehavior = do
    this <- newRecord_
    init_2 this imageArray animationBehavior
    pure this

init_2 :: ImageArraySpecialAnimation -> JavaArray (Image.Image) -> AnimationBehavior.AnimationBehavior -> IO ()
init_2 this imageArray animationBehavior = do
        ImageArrayAnimation.init_2 this.base (imageArray) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (ImageArraySpecialAnimation.reset this)
        pure ()


getLoopCount :: (JavaObjectClass this_) => this_ -> IO (Int)
getLoopCount object_ = jmethod object_ "getLoopCount" (\() -> (getLoopCount_impl (javaCast object_ :: ImageArraySpecialAnimation))) ()

getLoopCount_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLoopCount_super object_ = (getLoopCount_impl (javaCast object_ :: ImageArraySpecialAnimation))

getLoopCount_impl :: ImageArraySpecialAnimation -> IO (Int)
getLoopCount_impl this = do
        pure ((jget (this).loopCount))


setLastFrame :: (JavaObjectClass this_) => this_ -> IO (())
setLastFrame object_ = jmethod object_ "setLastFrame" (\() -> (setLastFrame_impl (javaCast object_ :: ImageArraySpecialAnimation))) ()

setLastFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
setLastFrame_super object_ = (setLastFrame_impl (javaCast object_ :: ImageArraySpecialAnimation))

setLastFrame_impl :: ImageArraySpecialAnimation -> IO (())
setLastFrame_impl this = do
        Control.Monad.void (CircularIndexUtil.setIndex ((jget (this).base.circularIndexUtil)) ((jio (CircularIndexUtil.getSize ((jget (this).base.circularIndexUtil)))) - 1))
        pure ()


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: ImageArraySpecialAnimation))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: ImageArraySpecialAnimation))

reset_impl :: ImageArraySpecialAnimation -> IO (())
reset_impl this = do
        Control.Monad.void (ImageArrayAnimation.setFrame this ((jio (ImageArrayAnimation.getSize this)) - 1))
        jset (this).loopCount (0)
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: ImageArraySpecialAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: ImageArraySpecialAnimation))

nextFrame_impl :: ImageArraySpecialAnimation -> IO (())
nextFrame_impl this = do
        when ((jio (ImageArrayAnimation.getFrame this)) > 0) $ do
            when (jio (TimeDelayHelper.isTime ((jget (this).timeDelayHelper)) (jget ((jio (GameTickTimeDelayHelperFactory.getInstance))).startTime))) $ do
                Control.Monad.void (ImageArrayAnimation.previousFrame this)
                when ((jio (ImageArrayAnimation.getFrame this)) == 0) $ do
                    jset (this).loopCount ((jget (this).loopCount) + 1)
        pure ()


isComplete :: (JavaObjectClass this_) => this_ -> IO (Bool)
isComplete object_ = jmethod object_ "isComplete" (\() -> (isComplete_impl (javaCast object_ :: ImageArraySpecialAnimation))) ()

isComplete_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isComplete_super object_ = (isComplete_impl (javaCast object_ :: ImageArraySpecialAnimation))

isComplete_impl :: ImageArraySpecialAnimation -> IO (Bool)
isComplete_impl this = do
    javaCatchReturn $ do
        if (((jget (this).loopCount) < (jget (this).loopCountTotal)) || ((jio (ImageArrayAnimation.getFrame this)) /= 0)) then do
            javaReturn (False)
        else do
            javaReturn (True)


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: ImageArraySpecialAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: ImageArraySpecialAnimation)) a1 a2 a3

paintXY_impl :: ImageArraySpecialAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        x <- newIORef x
        y <- newIORef y
        jset x (((jio (DisplayInfoSingleton.getLastHalfWidth ((jio (DisplayInfoSingleton.getInstance))))) - (((jio (Image.getWidth ((jio (ImageArrayAnimation.getImage this (jio (CircularIndexUtil.getIndex ((jget (this).base.circularIndexUtil))))))))) `Data.Bits.shiftR` 1))))
        jset y (5)
        Control.Monad.void (ImageArrayAnimation.paintXY_super this.base graphics (jget x) (jget y))
        pure ()


