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
module ImageArrayAnimation (module ImageArrayAnimation, module IndexedAnimation) where

import IndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAnimationSize, getAnimationSize_super, getAnimationSize_impl, nextFrame, nextFrame_super, nextFrame_impl, previousFrame, previousFrame_super, previousFrame_impl, setFrame, setFrame_super, setFrame_impl, getFrame, getFrame_super, getFrame_impl, getSize, getSize_super, getSize_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, getImage, getImage_super, getImage_impl, getImageArray, getImageArray_super, getImageArray_impl, setImageArray, setImageArray_super, setImageArray_impl, paintXY, paintXY_super, paintXY_impl, imageArray, totalFrames, circularIndexUtil, anchor)
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
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil

data ImageArrayAnimation = ImageArrayAnimation
    { header_ :: JavaHeader
    , base :: IndexedAnimation.IndexedAnimation
    , imageArray :: IORef (JavaArray (Image.Image))
    , totalFrames :: IORef (Int)
    , circularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    , anchor :: IORef (Int)
    }

instance JavaNull ImageArrayAnimation where
    javaNull = javaNullRecord "ImageArrayAnimation"

instance JavaEquals ImageArrayAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageArrayAnimation where
    (==) = jrecordEquals

instance JavaObjectClass ImageArrayAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageArrayAnimation
newRecord_ = do
    base <- IndexedAnimation.newRecord_
    let header_ = base.header_
    imageArray <- newIORef javaNull
    totalFrames <- newIORef 0
    circularIndexUtil <- newIORef javaNull
    anchor <- newIORef 0
    let this = ImageArrayAnimation header_ base imageArray totalFrames circularIndexUtil anchor
    jregisterLevel header_ this
    jregisterMethod header_ "getAnimationSize" (\() -> getAnimationSize_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "previousFrame" (\() -> previousFrame_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    jregisterMethod header_ "getImage" (\() -> getImage_impl this)
    jregisterMethod header_ "getImageArray" (\() -> getImageArray_impl this)
    jregisterMethod header_ "setImageArray" (\() -> setImageArray_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: ImageArrayAnimation -> IO ()
initFields_ this = do
    jset this.imageArray (NullImage.nULL_IMAGE_ARRAY)
    jset this.totalFrames (0)
    jset this.circularIndexUtil (CircularIndexUtil.nULL_CIRCULAR_INDEX_UTIL)
    jset this.anchor ((jget Anchor.tOP_LEFT))
    pure ()

new_2 :: JavaArray (Image.Image) -> AnimationBehavior.AnimationBehavior -> IO ImageArrayAnimation
new_2 imageArray animationBehavior = do
    this <- newRecord_
    init_2 this imageArray animationBehavior
    pure this

init_2 :: ImageArrayAnimation -> JavaArray (Image.Image) -> AnimationBehavior.AnimationBehavior -> IO ()
init_2 this imageArray animationBehavior = do
        IndexedAnimation.init_1 this.base (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (ImageArrayAnimation.setImageArray this imageArray)
        pure ()


-- throws Exception
getAnimationSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize object_ = jmethod object_ "getAnimationSize" (\() -> (getAnimationSize_impl (javaCast object_ :: ImageArrayAnimation))) ()

getAnimationSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize_super object_ = (getAnimationSize_impl (javaCast object_ :: ImageArrayAnimation))

getAnimationSize_impl :: ImageArrayAnimation -> IO (Int)
getAnimationSize_impl this = do
        (ImageArrayAnimation.getSize this)


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: ImageArrayAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: ImageArrayAnimation))

nextFrame_impl :: ImageArrayAnimation -> IO (())
nextFrame_impl this = do
        Control.Monad.void (CircularIndexUtil.next ((jget (this).circularIndexUtil)))
        pure ()


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: ImageArrayAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: ImageArrayAnimation))

previousFrame_impl :: ImageArrayAnimation -> IO (())
previousFrame_impl this = do
        Control.Monad.void (CircularIndexUtil.previous ((jget (this).circularIndexUtil)))
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: ImageArrayAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: ImageArrayAnimation)) a1

setFrame_impl :: ImageArrayAnimation -> Int -> IO (())
setFrame_impl this index = do
        Control.Monad.void (CircularIndexUtil.setIndex ((jget (this).circularIndexUtil)) index)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: ImageArrayAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: ImageArrayAnimation))

getFrame_impl :: ImageArrayAnimation -> IO (Int)
getFrame_impl this = do
        (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: ImageArrayAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: ImageArrayAnimation))

getSize_impl :: ImageArrayAnimation -> IO (Int)
getSize_impl this = do
        pure ((jget (this).totalFrames))


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: ImageArrayAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: ImageArrayAnimation)) a1

setSequence_impl :: ImageArrayAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: ImageArrayAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: ImageArrayAnimation))

getSequence_impl :: ImageArrayAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (PrimitiveIntUtil.getArrayInstance)


getImage :: (JavaObjectClass this_) => this_ -> Int -> IO (Image.Image)
getImage object_ a1 = jmethod object_ "getImage" (\() -> (getImage_impl (javaCast object_ :: ImageArrayAnimation))) () a1

getImage_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Image.Image)
getImage_super object_ a1 = (getImage_impl (javaCast object_ :: ImageArrayAnimation)) a1

getImage_impl :: ImageArrayAnimation -> Int -> IO (Image.Image)
getImage_impl this index = do
        pure ((jindex ((jget (this).imageArray)) (index)))


getImageArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Image.Image))
getImageArray object_ = jmethod object_ "getImageArray" (\() -> (getImageArray_impl (javaCast object_ :: ImageArrayAnimation))) ()

getImageArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Image.Image))
getImageArray_super object_ = (getImageArray_impl (javaCast object_ :: ImageArrayAnimation))

getImageArray_impl :: ImageArrayAnimation -> IO (JavaArray (Image.Image))
getImageArray_impl this = do
        pure ((jget (this).imageArray))


setImageArray :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (())
setImageArray object_ a1 = jmethod object_ "setImageArray" (\() -> (setImageArray_impl (javaCast object_ :: ImageArrayAnimation))) () a1

setImageArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (())
setImageArray_super object_ a1 = (setImageArray_impl (javaCast object_ :: ImageArrayAnimation)) a1

setImageArray_impl :: ImageArrayAnimation -> JavaArray (Image.Image) -> IO (())
setImageArray_impl this imageArray = do
        jset (this).imageArray (imageArray)
        jset (this).totalFrames ((jlength imageArray))
        assignedValue <- (CircularIndexUtil.createInstance (jget (this).totalFrames))
        jset (this).circularIndexUtil (assignedValue)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: ImageArrayAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: ImageArrayAnimation)) a1 a2 a3

paintXY_impl :: ImageArrayAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (Graphics.drawImage graphics (jindex ((jget (this).imageArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))))) x y (jget (this).anchor))
        pure ()


