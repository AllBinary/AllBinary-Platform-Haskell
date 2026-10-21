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
-- package org.allbinary.animation.compound
module CompoundIndexedAnimation (module CompoundIndexedAnimation, module IndexedAnimation) where

import IndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setFrame, setFrame_super, setFrame_impl, getFrame, getFrame_super, getFrame_impl, getSize, getSize_super, getSize_impl, previousFrame, previousFrame_super, previousFrame_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, nextFrame, nextFrame_super, nextFrame_impl, paintXY, paintXY_super, paintXY_impl, paintThreedXYZ, paintThreedXYZ_super, paintThreedXYZ_impl, getCurrentAnimation, getCurrentAnimation_super, getCurrentAnimation_impl, nextAnimation, nextAnimation_super, nextAnimation_impl, previousAnimation, previousAnimation_super, previousAnimation_impl, setAnimation, setAnimation_super, setAnimation_impl, getAnimationInterfaceArray, getAnimationInterfaceArray_super, getAnimationInterfaceArray_impl, setAnimationInterfaceArray, setAnimationInterfaceArray_super, setAnimationInterfaceArray_impl, set, set_super, set_impl, circularIndexUtil, animationInterfaceArray)
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
import qualified GL -- javax.microedition.khronos.opengles.GL
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil
import qualified CompoundAnimationInterface

-- implements CompoundAnimationInterface
data CompoundIndexedAnimation = CompoundIndexedAnimation
    { header_ :: JavaHeader
    , base :: IndexedAnimation.IndexedAnimation
    , circularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    , animationInterfaceArray :: IORef (JavaArray (Animation.Animation))
    }

instance JavaNull CompoundIndexedAnimation where
    javaNull = javaNullRecord "CompoundIndexedAnimation"

instance JavaEquals CompoundIndexedAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CompoundIndexedAnimation where
    (==) = jrecordEquals

instance JavaObjectClass CompoundIndexedAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CompoundIndexedAnimation
newRecord_ = do
    base <- IndexedAnimation.newRecord_
    let header_ = base.header_
    circularIndexUtil <- newIORef javaNull
    animationInterfaceArray <- newIORef javaNull
    let this = CompoundIndexedAnimation header_ base circularIndexUtil animationInterfaceArray
    jregisterLevel header_ this
    CompoundAnimationInterface.registerInterface_ header_
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "previousFrame" (\() -> previousFrame_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "paintThreedXYZ" (\() -> paintThreedXYZ_impl this)
    jregisterMethod header_ "getCurrentAnimation" (\() -> getCurrentAnimation_impl this)
    jregisterMethod header_ "nextAnimation" (\() -> nextAnimation_impl this)
    jregisterMethod header_ "previousAnimation" (\() -> previousAnimation_impl this)
    jregisterMethod header_ "setAnimation" (\() -> setAnimation_impl this)
    jregisterMethod header_ "getAnimationInterfaceArray" (\() -> getAnimationInterfaceArray_impl this)
    jregisterMethod header_ "setAnimationInterfaceArray" (\() -> setAnimationInterfaceArray_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    pure this

initFields_ :: CompoundIndexedAnimation -> IO ()
initFields_ this = do
    jset this.circularIndexUtil (javaNull)
    jset this.animationInterfaceArray (javaNull)
    pure ()

new_2 :: JavaArray (Animation.Animation) -> AnimationBehavior.AnimationBehavior -> IO CompoundIndexedAnimation
new_2 animationInterfaceArray animationBehavior = do
    this <- newRecord_
    init_2 this animationInterfaceArray animationBehavior
    pure this

init_2 :: CompoundIndexedAnimation -> JavaArray (Animation.Animation) -> AnimationBehavior.AnimationBehavior -> IO ()
init_2 this animationInterfaceArray animationBehavior = do
        IndexedAnimation.init_1 this.base (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).animationInterfaceArray (animationInterfaceArray)
        assignedValue <- (CircularIndexUtil.createInstance (jlength (jget (this).animationInterfaceArray)))
        jset (this).circularIndexUtil (assignedValue)
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: CompoundIndexedAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: CompoundIndexedAnimation)) a1

setFrame_impl :: CompoundIndexedAnimation -> Int -> IO (())
setFrame_impl this index = do
        let indexedAnimation = (javaCast (jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))))) :: IndexedAnimation.IndexedAnimation)
        Control.Monad.void (IndexedAnimation.setFrame indexedAnimation index)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: CompoundIndexedAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: CompoundIndexedAnimation))

getFrame_impl :: CompoundIndexedAnimation -> IO (Int)
getFrame_impl this = do
        let indexedAnimation = (javaCast (jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))))) :: IndexedAnimation.IndexedAnimation)
        (IndexedAnimation.getFrame indexedAnimation)


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: CompoundIndexedAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: CompoundIndexedAnimation))

getSize_impl :: CompoundIndexedAnimation -> IO (Int)
getSize_impl this = do
        let indexedAnimation = (javaCast (jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))))) :: IndexedAnimation.IndexedAnimation)
        (IndexedAnimation.getSize indexedAnimation)


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: CompoundIndexedAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: CompoundIndexedAnimation))

previousFrame_impl :: CompoundIndexedAnimation -> IO (())
previousFrame_impl this = do
        let indexedAnimation = (javaCast (jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))))) :: IndexedAnimation.IndexedAnimation)
        Control.Monad.void (IndexedAnimation.previousFrame indexedAnimation)
        pure ()


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: CompoundIndexedAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: CompoundIndexedAnimation)) a1

setSequence_impl :: CompoundIndexedAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: CompoundIndexedAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: CompoundIndexedAnimation))

getSequence_impl :: CompoundIndexedAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (PrimitiveIntUtil.getArrayInstance)


-- throws Exception
nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: CompoundIndexedAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: CompoundIndexedAnimation))

nextFrame_impl :: CompoundIndexedAnimation -> IO (())
nextFrame_impl this = do
        Control.Monad.void (nextFrame ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil))))))))
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: CompoundIndexedAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: CompoundIndexedAnimation)) a1 a2 a3

paintXY_impl :: CompoundIndexedAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (paintXY ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil))))))) graphics x y)
        pure ()


paintThreedXYZ :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ object_ a1 a2 a3 a4 = jmethod object_ "paintThreedXYZ" (\() -> (paintThreedXYZ_impl (javaCast object_ :: CompoundIndexedAnimation))) () a1 a2 a3 a4

paintThreedXYZ_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_super object_ a1 a2 a3 a4 = (paintThreedXYZ_impl (javaCast object_ :: CompoundIndexedAnimation)) a1 a2 a3 a4

paintThreedXYZ_impl :: CompoundIndexedAnimation -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_impl this graphics x y z = do
        Control.Monad.void (paintThreedXYZ ((jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil))))))) graphics x y z)
        pure ()


getCurrentAnimation :: (JavaObjectClass this_) => this_ -> IO (IndexedAnimation.IndexedAnimation)
getCurrentAnimation object_ = jmethod object_ "getCurrentAnimation" (\() -> (getCurrentAnimation_impl (javaCast object_ :: CompoundIndexedAnimation))) ()

getCurrentAnimation_super :: (JavaObjectClass this_) => this_ -> IO (IndexedAnimation.IndexedAnimation)
getCurrentAnimation_super object_ = (getCurrentAnimation_impl (javaCast object_ :: CompoundIndexedAnimation))

getCurrentAnimation_impl :: CompoundIndexedAnimation -> IO (IndexedAnimation.IndexedAnimation)
getCurrentAnimation_impl this = do
        pure ((javaCast (jindex ((jget (this).animationInterfaceArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))))) :: IndexedAnimation.IndexedAnimation))


nextAnimation :: (JavaObjectClass this_) => this_ -> IO (())
nextAnimation object_ = jmethod object_ "nextAnimation" (\() -> (nextAnimation_impl (javaCast object_ :: CompoundIndexedAnimation))) ()

nextAnimation_super :: (JavaObjectClass this_) => this_ -> IO (())
nextAnimation_super object_ = (nextAnimation_impl (javaCast object_ :: CompoundIndexedAnimation))

nextAnimation_impl :: CompoundIndexedAnimation -> IO (())
nextAnimation_impl this = do
        frame <- (CompoundIndexedAnimation.getFrame this)
        Control.Monad.void (CircularIndexUtil.next ((jget (this).circularIndexUtil)))
        Control.Monad.void (CompoundIndexedAnimation.setFrame this frame)
        pure ()


previousAnimation :: (JavaObjectClass this_) => this_ -> IO (())
previousAnimation object_ = jmethod object_ "previousAnimation" (\() -> (previousAnimation_impl (javaCast object_ :: CompoundIndexedAnimation))) ()

previousAnimation_super :: (JavaObjectClass this_) => this_ -> IO (())
previousAnimation_super object_ = (previousAnimation_impl (javaCast object_ :: CompoundIndexedAnimation))

previousAnimation_impl :: CompoundIndexedAnimation -> IO (())
previousAnimation_impl this = do
        frame <- (CompoundIndexedAnimation.getFrame this)
        Control.Monad.void (CircularIndexUtil.previous ((jget (this).circularIndexUtil)))
        Control.Monad.void (CompoundIndexedAnimation.setFrame this frame)
        pure ()


setAnimation :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAnimation object_ a1 = jmethod object_ "setAnimation" (\() -> (setAnimation_impl (javaCast object_ :: CompoundIndexedAnimation))) () a1

setAnimation_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAnimation_super object_ a1 = (setAnimation_impl (javaCast object_ :: CompoundIndexedAnimation)) a1

setAnimation_impl :: CompoundIndexedAnimation -> Int -> IO (())
setAnimation_impl this index = do
        frame <- (CompoundIndexedAnimation.getFrame this)
        Control.Monad.void (CircularIndexUtil.setIndex ((jget (this).circularIndexUtil)) index)
        Control.Monad.void (CompoundIndexedAnimation.setFrame this frame)
        pure ()


getAnimationInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Animation.Animation))
getAnimationInterfaceArray object_ = jmethod object_ "getAnimationInterfaceArray" (\() -> (getAnimationInterfaceArray_impl (javaCast object_ :: CompoundIndexedAnimation))) ()

getAnimationInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Animation.Animation))
getAnimationInterfaceArray_super object_ = (getAnimationInterfaceArray_impl (javaCast object_ :: CompoundIndexedAnimation))

getAnimationInterfaceArray_impl :: CompoundIndexedAnimation -> IO (JavaArray (Animation.Animation))
getAnimationInterfaceArray_impl this = do
        pure ((jget (this).animationInterfaceArray))


setAnimationInterfaceArray :: (JavaObjectClass this_) => this_ -> JavaArray (Animation.Animation) -> IO (())
setAnimationInterfaceArray object_ a1 = jmethod object_ "setAnimationInterfaceArray" (\() -> (setAnimationInterfaceArray_impl (javaCast object_ :: CompoundIndexedAnimation))) () a1

setAnimationInterfaceArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Animation.Animation) -> IO (())
setAnimationInterfaceArray_super object_ a1 = (setAnimationInterfaceArray_impl (javaCast object_ :: CompoundIndexedAnimation)) a1

setAnimationInterfaceArray_impl :: CompoundIndexedAnimation -> JavaArray (Animation.Animation) -> IO (())
setAnimationInterfaceArray_impl this animationInterfaceArray = do
        jset (this).animationInterfaceArray (animationInterfaceArray)
        pure ()


-- throws Exception
set :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: CompoundIndexedAnimation))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: CompoundIndexedAnimation)) a1

set_impl :: CompoundIndexedAnimation -> GL.GL -> IO (())
set_impl this gl = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (set ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))) gl)
        pure ()


