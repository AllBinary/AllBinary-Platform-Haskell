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
-- package org.allbinary.animation.special
module TitleAnimation (module TitleAnimation, module SpecialAnimation) where

import SpecialAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createAnimation, createAnimation_super, createAnimation_impl, nextFrame, nextFrame_super, nextFrame_impl, isComplete, isComplete_super, isComplete_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, getSize, getSize_super, getSize_impl, getFrame, getFrame_super, getFrame_impl, setFrame, setFrame_super, setFrame_impl, setLastFrame, setLastFrame_super, setLastFrame_impl, reset, reset_super, reset_impl, previousFrame, previousFrame_super, previousFrame_impl, paintFrameXY, paintFrameXY_super, paintFrameXY_impl, paintXY, paintXY_super, paintXY_impl, systemWrapper, deltaX, deltaY, deltaZ, basicColorArray, dxArray, dyArray, widthP, animationInterfaceArray, sizeP, y, lastFrameStartTime, displayInfoSingleton, cLEAR_COLOR)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified IndexedAnimationBehavior -- org.allbinary.animation.IndexedAnimationBehavior
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified ABSystemWrapper -- org.allbinary.logic.ABSystemWrapper
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified SpecialAnimation

data TitleAnimation = TitleAnimation
    { header_ :: JavaHeader
    , base :: SpecialAnimation.SpecialAnimation
    , systemWrapper :: IORef (ABSystemWrapper.ABSystemWrapper)
    , deltaX :: IORef (Float)
    , deltaY :: IORef (Float)
    , deltaZ :: IORef (Float)
    , basicColorArray :: IORef (JavaArray (BasicColor.BasicColor))
    , dxArray :: IORef (JavaArray (Int))
    , dyArray :: IORef (JavaArray (Int))
    , widthP :: IORef (Int)
    , animationInterfaceArray :: IORef (JavaArray (IndexedAnimation.IndexedAnimation))
    , sizeP :: IORef (Int)
    , y :: IORef (Int)
    , lastFrameStartTime :: IORef (Int64)
    , displayInfoSingleton :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , cLEAR_COLOR :: IORef (BasicColor.BasicColor)
    }

instance JavaNull TitleAnimation where
    javaNull = javaNullRecord "TitleAnimation"

instance JavaEquals TitleAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TitleAnimation where
    (==) = jrecordEquals

instance JavaObjectClass TitleAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TitleAnimation
newRecord_ = do
    base <- SpecialAnimation.newRecord_
    let header_ = base.header_
    systemWrapper <- newIORef javaNull
    deltaX <- newIORef 0.0
    deltaY <- newIORef 0.0
    deltaZ <- newIORef 0.0
    basicColorArray <- newIORef javaNull
    dxArray <- newIORef javaNull
    dyArray <- newIORef javaNull
    widthP <- newIORef 0
    animationInterfaceArray <- newIORef javaNull
    sizeP <- newIORef 0
    y <- newIORef 0
    lastFrameStartTime <- newIORef 0
    displayInfoSingleton <- newIORef javaNull
    cLEAR_COLOR <- newIORef javaNull
    let this = TitleAnimation header_ base systemWrapper deltaX deltaY deltaZ basicColorArray dxArray dyArray widthP animationInterfaceArray sizeP y lastFrameStartTime displayInfoSingleton cLEAR_COLOR
    jregisterLevel header_ this
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "isComplete" (\() -> isComplete_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "setLastFrame" (\() -> setLastFrame_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    jregisterMethod header_ "previousFrame" (\() -> previousFrame_impl this)
    jregisterMethod header_ "paintFrameXY" (\() -> paintFrameXY_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: TitleAnimation -> IO ()
initFields_ this = do
    jset this.systemWrapper =<< (ABSystemWrapper.getInstance)
    jset this.deltaX (0.0)
    jset this.deltaY (0.0)
    jset this.deltaZ (0.0)
    jset this.basicColorArray (javaNull)
    jset this.dxArray (javaNull)
    jset this.dyArray (javaNull)
    jset this.widthP (0)
    jset this.animationInterfaceArray (javaNull)
    jset this.sizeP (0)
    jset this.y (0)
    jset this.lastFrameStartTime (0)
    jset this.displayInfoSingleton =<< (DisplayInfoSingleton.getInstance)
    jset this.cLEAR_COLOR ((jget ((jio (BasicColorFactory.getInstance))).cLEAR_COLOR))
    pure ()


createAnimation :: JavaArray (IndexedAnimation.IndexedAnimation) -> JavaArray (BasicColor.BasicColor) -> JavaArray (Int) -> JavaArray (Int) -> Int -> Int -> IO (TitleAnimation)
createAnimation animationInterfaceArray basicColorArray dxArray dyArray y width = do
        (new_7 animationInterfaceArray basicColorArray dxArray dyArray y width (jio (IndexedAnimationBehavior.new_2 1 250)))

new_7 :: JavaArray (IndexedAnimation.IndexedAnimation) -> JavaArray (BasicColor.BasicColor) -> JavaArray (Int) -> JavaArray (Int) -> Int -> Int -> AnimationBehavior.AnimationBehavior -> IO TitleAnimation
new_7 animationInterfaceArray basicColorArray dxArray dyArray y width animationBehavior = do
    this <- newRecord_
    init_7 this animationInterfaceArray basicColorArray dxArray dyArray y width animationBehavior
    pure this

init_7 :: TitleAnimation -> JavaArray (IndexedAnimation.IndexedAnimation) -> JavaArray (BasicColor.BasicColor) -> JavaArray (Int) -> JavaArray (Int) -> Int -> Int -> AnimationBehavior.AnimationBehavior -> IO ()
init_7 this animationInterfaceArray basicColorArray dxArray dyArray y width animationBehavior = do
        SpecialAnimation.init_1 this.base (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (ABSystemWrapper.currentTimeMillis ((jget (this).systemWrapper)))
        jset (this).lastFrameStartTime (assignedValue)
        jset (this).animationInterfaceArray (animationInterfaceArray)
        jset (this).sizeP ((jlength (jget (this).animationInterfaceArray)))
        jset (this).basicColorArray (basicColorArray)
        jset (this).dxArray (dxArray)
        jset (this).dyArray (dyArray)
        jset (this).y (y)
        jset (this).widthP (width)
        Control.Monad.void (TitleAnimation.reset this)
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: TitleAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: TitleAnimation))

nextFrame_impl :: TitleAnimation -> IO (())
nextFrame_impl this = do
        currentTime <- (ABSystemWrapper.currentTimeMillis ((jget (this).systemWrapper)))
        let totalTimeElapsed = (currentTime - (jget (this).lastFrameStartTime))
        let indexedAnimationBehavior = (javaCast (jio (SpecialAnimation.getAnimationBehavior this)) :: IndexedAnimationBehavior.IndexedAnimationBehavior)
        when (totalTimeElapsed > (jget (indexedAnimationBehavior).frameDelayTime)) $ do
            Control.Monad.void (TitleAnimation.previousFrame this)
            jset (this).lastFrameStartTime (currentTime)
        when ((jio (getFrame ((jindex ((jget (this).animationInterfaceArray)) (0))))) == 0) $ do
            jset (indexedAnimationBehavior).loopIndex ((jget (indexedAnimationBehavior).loopIndex) + 1)
        pure ()


isComplete :: (JavaObjectClass this_) => this_ -> IO (Bool)
isComplete object_ = jmethod object_ "isComplete" (\() -> (isComplete_impl (javaCast object_ :: TitleAnimation))) ()

isComplete_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isComplete_super object_ = (isComplete_impl (javaCast object_ :: TitleAnimation))

isComplete_impl :: TitleAnimation -> IO (Bool)
isComplete_impl this = do
    javaCatchReturn $ do
        let indexedAnimationBehavior = (javaCast (jio (SpecialAnimation.getAnimationBehavior this)) :: IndexedAnimationBehavior.IndexedAnimationBehavior)
        if ((((jget (indexedAnimationBehavior).loopTotal) == (Prelude.negate 1)) || ((jget (indexedAnimationBehavior).loopIndex) < (jget (indexedAnimationBehavior).loopTotal))) || ((jio (TitleAnimation.getFrame this)) /= 0)) then do
            javaReturn (False)
        else do
            javaReturn (True)


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: TitleAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: TitleAnimation)) a1

setSequence_impl :: TitleAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: TitleAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: TitleAnimation))

getSequence_impl :: TitleAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (PrimitiveIntUtil.getArrayInstance)


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: TitleAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: TitleAnimation))

getSize_impl :: TitleAnimation -> IO (Int)
getSize_impl this = do
        (getSize ((jindex ((jget (this).animationInterfaceArray)) (0))))


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: TitleAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: TitleAnimation))

getFrame_impl :: TitleAnimation -> IO (Int)
getFrame_impl this = do
        (getFrame ((jindex ((jget (this).animationInterfaceArray)) (0))))


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: TitleAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: TitleAnimation)) a1

setFrame_impl :: TitleAnimation -> Int -> IO (())
setFrame_impl this frame = do
        forM_ [0 .. (jget (this).sizeP) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (setFrame ((jindex ((jget (this).animationInterfaceArray)) (index))) frame)
        pure ()


setLastFrame :: (JavaObjectClass this_) => this_ -> IO (())
setLastFrame object_ = jmethod object_ "setLastFrame" (\() -> (setLastFrame_impl (javaCast object_ :: TitleAnimation))) ()

setLastFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
setLastFrame_super object_ = (setLastFrame_impl (javaCast object_ :: TitleAnimation))

setLastFrame_impl :: TitleAnimation -> IO (())
setLastFrame_impl this = do
        Control.Monad.void (TitleAnimation.setFrame this ((jio (TitleAnimation.getSize this)) - 1))
        pure ()


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: TitleAnimation))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: TitleAnimation))

reset_impl :: TitleAnimation -> IO (())
reset_impl this = do
        Control.Monad.void (TitleAnimation.setLastFrame this)
        let indexedAnimationBehavior = ((javaCast (jio (SpecialAnimation.getAnimationBehavior this)) :: IndexedAnimationBehavior.IndexedAnimationBehavior))
        Control.Monad.void (IndexedAnimationBehavior.reset indexedAnimationBehavior)
        pure ()


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: TitleAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: TitleAnimation))

previousFrame_impl :: TitleAnimation -> IO (())
previousFrame_impl this = do
        forM_ [0 .. (jget (this).sizeP) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (previousFrame ((jindex ((jget (this).animationInterfaceArray)) (index))))
        pure ()


paintFrameXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintFrameXY object_ a1 a2 a3 a4 = jmethod object_ "paintFrameXY" (\() -> (paintFrameXY_impl (javaCast object_ :: TitleAnimation))) () a1 a2 a3 a4

paintFrameXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintFrameXY_super object_ a1 a2 a3 a4 = (paintFrameXY_impl (javaCast object_ :: TitleAnimation)) a1 a2 a3 a4

paintFrameXY_impl :: TitleAnimation -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintFrameXY_impl this graphics frame x y = do
        Control.Monad.void (TitleAnimation.setFrame this frame)
        Control.Monad.void (TitleAnimation.paintXY this graphics x y)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: TitleAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: TitleAnimation)) a1 a2 a3

paintXY_impl :: TitleAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics ax ay = do
        x <- newIORef (0)
        when ((jget (this).widthP) /= ((-2147483648) :: Int)) $ do
            jset x ((((((jio (DisplayInfoSingleton.getLastWidth ((jget (this).displayInfoSingleton)))) - (jget (this).widthP))) `quot` 2)))
        deltaX <- newIORef (0)
        deltaY <- newIORef (0)
        forM_ [0 .. (jget (this).sizeP) - 1] $ \index -> javaIteration (pure ()) $ do
            jset deltaX (((jindex ((jget (this).dxArray)) (index)) + (jget x)))
            jset deltaY (((jindex ((jget (this).dyArray)) (index)) + (jget (this).y)))
            when ((jindex ((jget (this).basicColorArray)) (index)) /= (jget (this).cLEAR_COLOR)) $ do
                Control.Monad.void (BasicColorSetUtil.setBasicColorP ((jget (this).base.base.base.basicSetColorUtil)) graphics (jindex ((jget (this).basicColorArray)) (index)))
            Control.Monad.void (paintXY ((jindex ((jget (this).animationInterfaceArray)) (index))) graphics (jget deltaX) (jget deltaY))
        pure ()


