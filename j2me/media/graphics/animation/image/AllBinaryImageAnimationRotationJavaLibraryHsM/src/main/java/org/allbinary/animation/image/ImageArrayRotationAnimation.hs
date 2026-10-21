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
module ImageArrayRotationAnimation (module ImageArrayRotationAnimation, module ImageArrayBaseRotationAnimation) where

import ImageArrayBaseRotationAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createAnimation, createAnimation_super, createAnimation_impl, init, init_super, init_impl, setImageArray, setImageArray_super, setImageArray_impl, expectedTotalFrames)
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
import qualified ImageArrayRotationAnimationInfo -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified ImageArrayBaseRotationAnimation

data ImageArrayRotationAnimation = ImageArrayRotationAnimation
    { header_ :: JavaHeader
    , base :: ImageArrayBaseRotationAnimation.ImageArrayBaseRotationAnimation
    , expectedTotalFrames :: IORef (Int)
    }

instance JavaNull ImageArrayRotationAnimation where
    javaNull = javaNullRecord "ImageArrayRotationAnimation"

instance JavaEquals ImageArrayRotationAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageArrayRotationAnimation where
    (==) = jrecordEquals

instance JavaObjectClass ImageArrayRotationAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageArrayRotationAnimation
newRecord_ = do
    base <- ImageArrayBaseRotationAnimation.newRecord_
    let header_ = base.header_
    expectedTotalFrames <- newIORef 0
    let this = ImageArrayRotationAnimation header_ base expectedTotalFrames
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "setImageArray" (\() -> setImageArray_impl this)
    pure this

initFields_ :: ImageArrayRotationAnimation -> IO ()
initFields_ this = do
    jset this.expectedTotalFrames (0)
    pure ()


-- throws Exception
createAnimation :: (JavaObjectClass o1) => o1 -> AnimationBehavior.AnimationBehavior -> IO (ImageArrayRotationAnimation)
createAnimation anyTypeObject_ animationBehavior = do
        let anyType = jtoObject anyTypeObject_
        let imageRotationAnimationInfo = (javaCast anyType :: ImageArrayRotationAnimationInfo.ImageArrayRotationAnimationInfo)
        (new_4 (jio (ImageArrayRotationAnimationInfo.getImageArray imageRotationAnimationInfo)) (jio (ImageArrayRotationAnimationInfo.getAngleInfoP imageRotationAnimationInfo)) (jio (ImageArrayRotationAnimationInfo.getTotalAngle imageRotationAnimationInfo)) animationBehavior)

new_4 :: JavaArray (Image.Image) -> AngleInfo.AngleInfo -> Int -> AnimationBehavior.AnimationBehavior -> IO ImageArrayRotationAnimation
new_4 imageArray angleInfo totalAngle animationBehavior = do
    this <- newRecord_
    init_4 this imageArray angleInfo totalAngle animationBehavior
    pure this

init_4 :: ImageArrayRotationAnimation -> JavaArray (Image.Image) -> AngleInfo.AngleInfo -> Int -> AnimationBehavior.AnimationBehavior -> IO ()
init_4 this imageArray angleInfo totalAngle animationBehavior = do
        ImageArrayBaseRotationAnimation.init_3 this.base (imageArray) (angleInfo) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (ImageArrayRotationAnimation.init this imageArray angleInfo totalAngle)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> AngleInfo.AngleInfo -> Int -> IO (())
init object_ a1 a2 a3 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ImageArrayRotationAnimation))) () a1 a2 a3

init_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> AngleInfo.AngleInfo -> Int -> IO (())
init_super object_ a1 a2 a3 = (init_impl (javaCast object_ :: ImageArrayRotationAnimation)) a1 a2 a3

init_impl :: ImageArrayRotationAnimation -> JavaArray (Image.Image) -> AngleInfo.AngleInfo -> Int -> IO (())
init_impl this imageArray angleInfo totalAngle = do
        jset (this).expectedTotalFrames ((totalAngle `quot` (Prelude.fromIntegral (jio (AngleIncrementInfo.getAngleIncrement ((jio (AngleInfo.getAngleIncrementInfo ((jget (this).base.base.angleInfo))))))))))
        Control.Monad.void (AngleInfo.adjustAngle ((jget (this).base.base.angleInfo)) 0)
        when ((jget (this).expectedTotalFrames) /= (jio (ImageArrayBaseRotationAnimation.getSize this))) $ do
            javaThrow ((JavaException "Exception" "Wrong Number of Frames"))
        pure ()


setImageArray :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (())
setImageArray object_ a1 = jmethod object_ "setImageArray" (\() -> (setImageArray_impl (javaCast object_ :: ImageArrayRotationAnimation))) () a1

setImageArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (())
setImageArray_super object_ a1 = (setImageArray_impl (javaCast object_ :: ImageArrayRotationAnimation)) a1

setImageArray_impl :: ImageArrayRotationAnimation -> JavaArray (Image.Image) -> IO (())
setImageArray_impl this imageArray = do
        Control.Monad.void (ImageArrayBaseRotationAnimation.setImageArray_super this.base imageArray)
        Control.Monad.void (AngleInfo.adjustAngle ((jget (this).base.base.angleInfo)) 0)
        pure ()


