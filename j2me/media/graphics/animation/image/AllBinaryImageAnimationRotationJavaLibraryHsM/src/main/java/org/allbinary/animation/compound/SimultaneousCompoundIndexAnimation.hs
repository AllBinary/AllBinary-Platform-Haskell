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
module SimultaneousCompoundIndexAnimation (module SimultaneousCompoundIndexAnimation, module IndexedAnimation) where

import IndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setFrame, setFrame_super, setFrame_impl, getFrame, getFrame_super, getFrame_impl, getAnimationSize, getAnimationSize_super, getAnimationSize_impl, getSize, getSize_super, getSize_impl, previousFrame, previousFrame_super, previousFrame_impl, nextFrame, nextFrame_super, nextFrame_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, paintXY, paintXY_super, paintXY_impl, paintThreedXYZ, paintThreedXYZ_super, paintThreedXYZ_impl, set, set_super, set_impl, getAnimationInterfaceArray, getAnimationInterfaceArray_super, getAnimationInterfaceArray_impl, setAnimationInterfaceArray, setAnimationInterfaceArray_super, setAnimationInterfaceArray_impl, animationInterfaceArray)
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
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil

data SimultaneousCompoundIndexAnimation = SimultaneousCompoundIndexAnimation
    { header_ :: JavaHeader
    , base :: IndexedAnimation.IndexedAnimation
    , animationInterfaceArray :: IORef (JavaArray (IndexedAnimation.IndexedAnimation))
    }

instance JavaNull SimultaneousCompoundIndexAnimation where
    javaNull = javaNullRecord "SimultaneousCompoundIndexAnimation"

instance JavaEquals SimultaneousCompoundIndexAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SimultaneousCompoundIndexAnimation where
    (==) = jrecordEquals

instance JavaObjectClass SimultaneousCompoundIndexAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SimultaneousCompoundIndexAnimation
newRecord_ = do
    base <- IndexedAnimation.newRecord_
    let header_ = base.header_
    animationInterfaceArray <- newIORef javaNull
    let this = SimultaneousCompoundIndexAnimation header_ base animationInterfaceArray
    jregisterLevel header_ this
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "getAnimationSize" (\() -> getAnimationSize_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "previousFrame" (\() -> previousFrame_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "paintThreedXYZ" (\() -> paintThreedXYZ_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "getAnimationInterfaceArray" (\() -> getAnimationInterfaceArray_impl this)
    jregisterMethod header_ "setAnimationInterfaceArray" (\() -> setAnimationInterfaceArray_impl this)
    pure this

initFields_ :: SimultaneousCompoundIndexAnimation -> IO ()
initFields_ this = do
    jset this.animationInterfaceArray (javaNull)
    pure ()

new_2 :: JavaArray (IndexedAnimation.IndexedAnimation) -> AnimationBehavior.AnimationBehavior -> IO SimultaneousCompoundIndexAnimation
new_2 animationInterfaceArray animationBehavior = do
    this <- newRecord_
    init_2 this animationInterfaceArray animationBehavior
    pure this

init_2 :: SimultaneousCompoundIndexAnimation -> JavaArray (IndexedAnimation.IndexedAnimation) -> AnimationBehavior.AnimationBehavior -> IO ()
init_2 this animationInterfaceArray animationBehavior = do
        IndexedAnimation.init_1 this.base (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).animationInterfaceArray (animationInterfaceArray)
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation)) a1

setFrame_impl :: SimultaneousCompoundIndexAnimation -> Int -> IO (())
setFrame_impl this frameIndex = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (setFrame ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))) frameIndex)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))

getFrame_impl :: SimultaneousCompoundIndexAnimation -> IO (Int)
getFrame_impl this = do
        (getFrame ((jindex ((jget (this).animationInterfaceArray)) (0))))


-- throws Exception
getAnimationSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize object_ = jmethod object_ "getAnimationSize" (\() -> (getAnimationSize_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))) ()

getAnimationSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize_super object_ = (getAnimationSize_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))

getAnimationSize_impl :: SimultaneousCompoundIndexAnimation -> IO (Int)
getAnimationSize_impl this = do
        (getAnimationSize ((jindex ((jget (this).animationInterfaceArray)) (0))))


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))

getSize_impl :: SimultaneousCompoundIndexAnimation -> IO (Int)
getSize_impl this = do
        (getSize ((jindex ((jget (this).animationInterfaceArray)) (0))))


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))

previousFrame_impl :: SimultaneousCompoundIndexAnimation -> IO (())
previousFrame_impl this = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (previousFrame ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))))
        pure ()


-- throws Exception
nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))

nextFrame_impl :: SimultaneousCompoundIndexAnimation -> IO (())
nextFrame_impl this = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (nextFrame ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))))
        pure ()


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation)) a1

setSequence_impl :: SimultaneousCompoundIndexAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))

getSequence_impl :: SimultaneousCompoundIndexAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (PrimitiveIntUtil.getArrayInstance)


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation)) a1 a2 a3

paintXY_impl :: SimultaneousCompoundIndexAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (paintXY ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))) graphics x y)
        pure ()


paintThreedXYZ :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ object_ a1 a2 a3 a4 = jmethod object_ "paintThreedXYZ" (\() -> (paintThreedXYZ_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))) () a1 a2 a3 a4

paintThreedXYZ_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_super object_ a1 a2 a3 a4 = (paintThreedXYZ_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation)) a1 a2 a3 a4

paintThreedXYZ_impl :: SimultaneousCompoundIndexAnimation -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_impl this graphics x y z = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (paintThreedXYZ ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))) graphics x y z)
        pure ()


-- throws Exception
set :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation)) a1

set_impl :: SimultaneousCompoundIndexAnimation -> GL.GL -> IO (())
set_impl this gl = do
        index <- newIORef ((jlength (jget (this).animationInterfaceArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (set ((jindex ((jget (this).animationInterfaceArray)) ((jget index)))) gl)
        pure ()


getAnimationInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (IndexedAnimation.IndexedAnimation))
getAnimationInterfaceArray object_ = jmethod object_ "getAnimationInterfaceArray" (\() -> (getAnimationInterfaceArray_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))) ()

getAnimationInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (IndexedAnimation.IndexedAnimation))
getAnimationInterfaceArray_super object_ = (getAnimationInterfaceArray_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))

getAnimationInterfaceArray_impl :: SimultaneousCompoundIndexAnimation -> IO (JavaArray (IndexedAnimation.IndexedAnimation))
getAnimationInterfaceArray_impl this = do
        pure ((jget (this).animationInterfaceArray))


setAnimationInterfaceArray :: (JavaObjectClass this_) => this_ -> JavaArray (IndexedAnimation.IndexedAnimation) -> IO (())
setAnimationInterfaceArray object_ a1 = jmethod object_ "setAnimationInterfaceArray" (\() -> (setAnimationInterfaceArray_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation))) () a1

setAnimationInterfaceArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (IndexedAnimation.IndexedAnimation) -> IO (())
setAnimationInterfaceArray_super object_ a1 = (setAnimationInterfaceArray_impl (javaCast object_ :: SimultaneousCompoundIndexAnimation)) a1

setAnimationInterfaceArray_impl :: SimultaneousCompoundIndexAnimation -> JavaArray (IndexedAnimation.IndexedAnimation) -> IO (())
setAnimationInterfaceArray_impl this animationInterfaceArray = do
        jset (this).animationInterfaceArray (animationInterfaceArray)
        pure ()


