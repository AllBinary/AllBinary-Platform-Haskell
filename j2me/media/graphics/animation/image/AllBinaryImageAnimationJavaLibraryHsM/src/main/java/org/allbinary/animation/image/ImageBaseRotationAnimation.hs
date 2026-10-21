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
module ImageBaseRotationAnimation (module ImageBaseRotationAnimation, module RotationAnimation) where

import RotationAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAnimationSize, getAnimationSize_super, getAnimationSize_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, paintXY, paintXY_super, paintXY_impl, getImage, getImage_super, getImage_impl, getWidth, getWidth_super, getWidth_impl, getHeight, getHeight_super, getHeight_impl, close, close_super, close_impl, finalize, finalize_super, finalize_impl, image, anchor)
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
import qualified DisposalUtil -- org.allbinary.DisposalUtil
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified RotationAnimation -- org.allbinary.animation.RotationAnimation
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil

data ImageBaseRotationAnimation = ImageBaseRotationAnimation
    { header_ :: JavaHeader
    , base :: RotationAnimation.RotationAnimation
    , image :: IORef (Image.Image)
    , anchor :: IORef (Int)
    }

instance JavaNull ImageBaseRotationAnimation where
    javaNull = javaNullRecord "ImageBaseRotationAnimation"

instance JavaEquals ImageBaseRotationAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageBaseRotationAnimation where
    (==) = jrecordEquals

instance JavaObjectClass ImageBaseRotationAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageBaseRotationAnimation
newRecord_ = do
    base <- RotationAnimation.newRecord_
    let header_ = base.header_
    image <- newIORef javaNull
    anchor <- newIORef 0
    let this = ImageBaseRotationAnimation header_ base image anchor
    jregisterLevel header_ this
    jregisterMethod header_ "getAnimationSize" (\() -> getAnimationSize_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "getImage" (\() -> getImage_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "finalize" (\() -> finalize_impl this)
    pure this

initFields_ :: ImageBaseRotationAnimation -> IO ()
initFields_ this = do
    jset this.image (javaNull)
    jset this.anchor ((jget Anchor.tOP_LEFT))
    pure ()

new_4 :: Image.Image -> AngleInfo.AngleInfo -> Int16 -> AnimationBehavior.AnimationBehavior -> IO ImageBaseRotationAnimation
new_4 image angleInfo totalAngle animationBehavior = do
    this <- newRecord_
    init_4 this image angleInfo totalAngle animationBehavior
    pure this

init_4 :: ImageBaseRotationAnimation -> Image.Image -> AngleInfo.AngleInfo -> Int16 -> AnimationBehavior.AnimationBehavior -> IO ()
init_4 this image angleInfo totalAngle animationBehavior = do
        RotationAnimation.init_3 this.base (angleInfo) (jio (CircularIndexUtil.createInstance (((Prelude.fromIntegral totalAngle) `quot` (Prelude.fromIntegral (jio (AngleIncrementInfo.getAngleIncrement ((jio (AngleInfo.getAngleIncrementInfo angleInfo))))))) :: Int))) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).image (image)
        pure ()


-- throws Exception
getAnimationSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize object_ = jmethod object_ "getAnimationSize" (\() -> (getAnimationSize_impl (javaCast object_ :: ImageBaseRotationAnimation))) ()

getAnimationSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize_super object_ = (getAnimationSize_impl (javaCast object_ :: ImageBaseRotationAnimation))

getAnimationSize_impl :: ImageBaseRotationAnimation -> IO (Int)
getAnimationSize_impl this = do
        (RotationAnimation.getSize this)


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: ImageBaseRotationAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: ImageBaseRotationAnimation)) a1

setSequence_impl :: ImageBaseRotationAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: ImageBaseRotationAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: ImageBaseRotationAnimation))

getSequence_impl :: ImageBaseRotationAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (PrimitiveIntUtil.getArrayInstance)


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: ImageBaseRotationAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: ImageBaseRotationAnimation)) a1 a2 a3

paintXY_impl :: ImageBaseRotationAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (Graphics.drawImage graphics (jget (this).image) x y (jget (this).anchor))
        pure ()


getImage :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getImage object_ = jmethod object_ "getImage" (\() -> (getImage_impl (javaCast object_ :: ImageBaseRotationAnimation))) ()

getImage_super :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getImage_super object_ = (getImage_impl (javaCast object_ :: ImageBaseRotationAnimation))

getImage_impl :: ImageBaseRotationAnimation -> IO (Image.Image)
getImage_impl this = do
        pure ((jget (this).image))


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: ImageBaseRotationAnimation))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: ImageBaseRotationAnimation))

getWidth_impl :: ImageBaseRotationAnimation -> IO (Int)
getWidth_impl this = do
        (Image.getWidth ((jget (this).image)))


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: ImageBaseRotationAnimation))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: ImageBaseRotationAnimation))

getHeight_impl :: ImageBaseRotationAnimation -> IO (Int)
getHeight_impl this = do
        (Image.getHeight ((jget (this).image)))


-- throws Exception
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: ImageBaseRotationAnimation))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: ImageBaseRotationAnimation))

close_impl :: ImageBaseRotationAnimation -> IO (())
close_impl this = do
        Control.Monad.void (DisposalUtil.disposeImage ((jio (DisposalUtil.getInstance))) (jget (this).image))
        pure ()


-- throws Throwable
finalize :: (JavaObjectClass this_) => this_ -> IO (())
finalize object_ = jmethod object_ "finalize" (\() -> (finalize_impl (javaCast object_ :: ImageBaseRotationAnimation))) ()

finalize_super :: (JavaObjectClass this_) => this_ -> IO (())
finalize_super object_ = (finalize_impl (javaCast object_ :: ImageBaseRotationAnimation))

finalize_impl :: ImageBaseRotationAnimation -> IO (())
finalize_impl this = do
        Control.Monad.void (DisposalUtil.disposeImage ((jio (DisposalUtil.getInstance))) (jget (this).image))
        pure ()


