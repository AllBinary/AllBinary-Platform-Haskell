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
module SimultaneousCompoundIndexedAnimation (module SimultaneousCompoundIndexedAnimation, module IndexedAnimation) where

import IndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setFrame, setFrame_super, setFrame_impl, getFrame, getFrame_super, getFrame_impl, getSize, getSize_super, getSize_impl, previousFrame, previousFrame_super, previousFrame_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, nextFrame, nextFrame_super, nextFrame_impl, paintXY, paintXY_super, paintXY_impl, paintThreedXYZ, paintThreedXYZ_super, paintThreedXYZ_impl, getAnimationInterfaceArray, getAnimationInterfaceArray_super, getAnimationInterfaceArray_impl, setAnimationInterfaceArray, setAnimationInterfaceArray_super, setAnimationInterfaceArray_impl, animationInterfaceArray)
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
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil

data SimultaneousCompoundIndexedAnimation = SimultaneousCompoundIndexedAnimation
    { header_ :: JavaHeader
    , base :: IndexedAnimation.IndexedAnimation
    , animationInterfaceArray :: IORef (JavaArray (Animation.Animation))
    }

instance JavaNull SimultaneousCompoundIndexedAnimation where
    javaNull = javaNullRecord "SimultaneousCompoundIndexedAnimation"

instance JavaEquals SimultaneousCompoundIndexedAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SimultaneousCompoundIndexedAnimation where
    (==) = jrecordEquals

instance JavaObjectClass SimultaneousCompoundIndexedAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SimultaneousCompoundIndexedAnimation
newRecord_ = do
    base <- IndexedAnimation.newRecord_
    let header_ = base.header_
    animationInterfaceArray <- newIORef javaNull
    let this = SimultaneousCompoundIndexedAnimation header_ base animationInterfaceArray
    jregisterLevel header_ this
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "previousFrame" (\() -> previousFrame_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "paintThreedXYZ" (\() -> paintThreedXYZ_impl this)
    jregisterMethod header_ "getAnimationInterfaceArray" (\() -> getAnimationInterfaceArray_impl this)
    jregisterMethod header_ "setAnimationInterfaceArray" (\() -> setAnimationInterfaceArray_impl this)
    pure this

initFields_ :: SimultaneousCompoundIndexedAnimation -> IO ()
initFields_ this = do
    jset this.animationInterfaceArray (javaNull)
    pure ()

new_2 :: JavaArray (Animation.Animation) -> AnimationBehavior.AnimationBehavior -> IO SimultaneousCompoundIndexedAnimation
new_2 animationInterfaceArray animationBehavior = do
    this <- newRecord_
    init_2 this animationInterfaceArray animationBehavior
    pure this

init_2 :: SimultaneousCompoundIndexedAnimation -> JavaArray (Animation.Animation) -> AnimationBehavior.AnimationBehavior -> IO ()
init_2 this animationInterfaceArray animationBehavior = do
        IndexedAnimation.init_1 this.base (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).animationInterfaceArray (animationInterfaceArray)
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation)) a1

setFrame_impl :: SimultaneousCompoundIndexedAnimation -> Int -> IO (())
setFrame_impl this frameIndex = do
        indexedAnimation <- newIORef (javaNull)
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset indexedAnimation ((javaCast (jindex ((jget (this).animationInterfaceArray)) ((jget index))) :: IndexedAnimation.IndexedAnimation))
            Control.Monad.void (IndexedAnimation.setFrame ((jget indexedAnimation)) frameIndex)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))

getFrame_impl :: SimultaneousCompoundIndexedAnimation -> IO (Int)
getFrame_impl this = do
        let indexedAnimation = (javaCast (jindex ((jget (this).animationInterfaceArray)) (0)) :: IndexedAnimation.IndexedAnimation)
        (IndexedAnimation.getFrame indexedAnimation)


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))

getSize_impl :: SimultaneousCompoundIndexedAnimation -> IO (Int)
getSize_impl this = do
        let indexedAnimation = (javaCast (jindex ((jget (this).animationInterfaceArray)) (0)) :: IndexedAnimation.IndexedAnimation)
        (IndexedAnimation.getSize indexedAnimation)


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))

previousFrame_impl :: SimultaneousCompoundIndexedAnimation -> IO (())
previousFrame_impl this = do
        indexedAnimation <- newIORef (javaNull)
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset indexedAnimation ((javaCast (jindex ((jget (this).animationInterfaceArray)) ((jget index))) :: IndexedAnimation.IndexedAnimation))
            Control.Monad.void (IndexedAnimation.previousFrame ((jget indexedAnimation)))
        pure ()


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation)) a1

setSequence_impl :: SimultaneousCompoundIndexedAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))

getSequence_impl :: SimultaneousCompoundIndexedAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (PrimitiveIntUtil.getArrayInstance)


-- throws Exception
nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))

nextFrame_impl :: SimultaneousCompoundIndexedAnimation -> IO (())
nextFrame_impl this = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (nextFrame ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))))
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation)) a1 a2 a3

paintXY_impl :: SimultaneousCompoundIndexedAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        let size = (jlength (jget (this).animationInterfaceArray))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (paintXY ((jindex ((jget (this).animationInterfaceArray)) (index))) graphics x y)
        pure ()


paintThreedXYZ :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ object_ a1 a2 a3 a4 = jmethod object_ "paintThreedXYZ" (\() -> (paintThreedXYZ_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))) () a1 a2 a3 a4

paintThreedXYZ_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_super object_ a1 a2 a3 a4 = (paintThreedXYZ_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation)) a1 a2 a3 a4

paintThreedXYZ_impl :: SimultaneousCompoundIndexedAnimation -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_impl this graphics x y z = do
        let size = (jlength (jget (this).animationInterfaceArray))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (paintThreedXYZ ((jindex ((jget (this).animationInterfaceArray)) (index))) graphics x y z)
        pure ()


getAnimationInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Animation.Animation))
getAnimationInterfaceArray object_ = jmethod object_ "getAnimationInterfaceArray" (\() -> (getAnimationInterfaceArray_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))) ()

getAnimationInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Animation.Animation))
getAnimationInterfaceArray_super object_ = (getAnimationInterfaceArray_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))

getAnimationInterfaceArray_impl :: SimultaneousCompoundIndexedAnimation -> IO (JavaArray (Animation.Animation))
getAnimationInterfaceArray_impl this = do
        pure ((jget (this).animationInterfaceArray))


setAnimationInterfaceArray :: (JavaObjectClass this_) => this_ -> JavaArray (Animation.Animation) -> IO (())
setAnimationInterfaceArray object_ a1 = jmethod object_ "setAnimationInterfaceArray" (\() -> (setAnimationInterfaceArray_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation))) () a1

setAnimationInterfaceArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Animation.Animation) -> IO (())
setAnimationInterfaceArray_super object_ a1 = (setAnimationInterfaceArray_impl (javaCast object_ :: SimultaneousCompoundIndexedAnimation)) a1

setAnimationInterfaceArray_impl :: SimultaneousCompoundIndexedAnimation -> JavaArray (Animation.Animation) -> IO (())
setAnimationInterfaceArray_impl this animationInterfaceArray = do
        jset (this).animationInterfaceArray (animationInterfaceArray)
        pure ()


