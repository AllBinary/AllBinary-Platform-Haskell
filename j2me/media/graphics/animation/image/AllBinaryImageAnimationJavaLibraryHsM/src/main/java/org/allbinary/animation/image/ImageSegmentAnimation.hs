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
module ImageSegmentAnimation (module ImageSegmentAnimation, module ImageAnimation) where

import ImageAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, nextFrame, nextFrame_super, nextFrame_impl, previousFrame, previousFrame_super, previousFrame_impl, setFrame, setFrame_super, setFrame_impl, getFrame, getFrame_super, getFrame_impl, getSize, getSize_super, getSize_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, paintXY, paintXY_super, paintXY_impl, getStartX, getStartX_super, getStartX_impl, setStartX, setStartX_super, setStartX_impl, getStartY, getStartY_super, getStartY_impl, setStartY, setStartY_super, setStartY_impl, getDrawWidth, getDrawWidth_super, getDrawWidth_impl, setDrawWidth, setDrawWidth_super, setDrawWidth_impl, getDrawHeight, getDrawHeight_super, getDrawHeight_impl, setDrawHeight, setDrawHeight_super, setDrawHeight_impl, startX, startY, drawWidth, drawHeight, circularIndexUtil, sequenceArray)
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
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil
import qualified ImageAnimation

data ImageSegmentAnimation = ImageSegmentAnimation
    { header_ :: JavaHeader
    , base :: ImageAnimation.ImageAnimation
    , startX :: IORef (Int)
    , startY :: IORef (Int)
    , drawWidth :: IORef (Int)
    , drawHeight :: IORef (Int)
    , circularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    , sequenceArray :: IORef (JavaArray (Int))
    }

instance JavaNull ImageSegmentAnimation where
    javaNull = javaNullRecord "ImageSegmentAnimation"

instance JavaEquals ImageSegmentAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageSegmentAnimation where
    (==) = jrecordEquals

instance JavaObjectClass ImageSegmentAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageSegmentAnimation
newRecord_ = do
    base <- ImageAnimation.newRecord_
    let header_ = base.header_
    startX <- newIORef 0
    startY <- newIORef 0
    drawWidth <- newIORef 0
    drawHeight <- newIORef 0
    circularIndexUtil <- newIORef javaNull
    sequenceArray <- newIORef javaNull
    let this = ImageSegmentAnimation header_ base startX startY drawWidth drawHeight circularIndexUtil sequenceArray
    jregisterLevel header_ this
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "previousFrame" (\() -> previousFrame_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "getStartX" (\() -> getStartX_impl this)
    jregisterMethod header_ "setStartX" (\() -> setStartX_impl this)
    jregisterMethod header_ "getStartY" (\() -> getStartY_impl this)
    jregisterMethod header_ "setStartY" (\() -> setStartY_impl this)
    jregisterMethod header_ "getDrawWidth" (\() -> getDrawWidth_impl this)
    jregisterMethod header_ "setDrawWidth" (\() -> setDrawWidth_impl this)
    jregisterMethod header_ "getDrawHeight" (\() -> getDrawHeight_impl this)
    jregisterMethod header_ "setDrawHeight" (\() -> setDrawHeight_impl this)
    pure this

initFields_ :: ImageSegmentAnimation -> IO ()
initFields_ this = do
    jset this.startX (0)
    jset this.startY (0)
    jset this.drawWidth (0)
    jset this.drawHeight (0)
    jset this.circularIndexUtil (javaNull)
    jset this.sequenceArray (javaNull)
    pure ()

new_3 :: Image.Image -> JavaArray (Int) -> AnimationBehavior.AnimationBehavior -> IO ImageSegmentAnimation
new_3 image sequenceArray animationBehavior = do
    this <- newRecord_
    init_3 this image sequenceArray animationBehavior
    pure this

init_3 :: ImageSegmentAnimation -> Image.Image -> JavaArray (Int) -> AnimationBehavior.AnimationBehavior -> IO ()
init_3 this image sequenceArray animationBehavior = do
        ImageAnimation.init_2 this.base (image) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).startX (0)
        jset (this).startY (0)
        assignedValue <- (Image.getWidth ((jio (ImageAnimation.getImage this))))
        jset (this).drawWidth (assignedValue)
        assignedValue <- (Image.getHeight ((jio (ImageAnimation.getImage this))))
        jset (this).drawHeight (assignedValue)
        assignedValue <- (CircularIndexUtil.createInstance (jget (this).drawHeight))
        jset (this).circularIndexUtil (assignedValue)
        jset (this).sequenceArray (sequenceArray)
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: ImageSegmentAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: ImageSegmentAnimation))

nextFrame_impl :: ImageSegmentAnimation -> IO (())
nextFrame_impl this = do
        Control.Monad.void (CircularIndexUtil.next ((jget (this).circularIndexUtil)))
        pure ()


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: ImageSegmentAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: ImageSegmentAnimation))

previousFrame_impl :: ImageSegmentAnimation -> IO (())
previousFrame_impl this = do
        Control.Monad.void (CircularIndexUtil.previous ((jget (this).circularIndexUtil)))
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: ImageSegmentAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: ImageSegmentAnimation)) a1

setFrame_impl :: ImageSegmentAnimation -> Int -> IO (())
setFrame_impl this index = do
        Control.Monad.void (CircularIndexUtil.setIndex ((jget (this).circularIndexUtil)) index)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: ImageSegmentAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: ImageSegmentAnimation))

getFrame_impl :: ImageSegmentAnimation -> IO (Int)
getFrame_impl this = do
        (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: ImageSegmentAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: ImageSegmentAnimation))

getSize_impl :: ImageSegmentAnimation -> IO (Int)
getSize_impl this = do
        (CircularIndexUtil.getSize ((jget (this).circularIndexUtil)))


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: ImageSegmentAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: ImageSegmentAnimation)) a1

setSequence_impl :: ImageSegmentAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequenceArray = do
        jset (this).sequenceArray (sequenceArray)
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: ImageSegmentAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: ImageSegmentAnimation))

getSequence_impl :: ImageSegmentAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        pure ((jget (this).sequenceArray))


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: ImageSegmentAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: ImageSegmentAnimation)) a1 a2 a3

paintXY_impl :: ImageSegmentAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        pure ()


getStartX :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartX object_ = jmethod object_ "getStartX" (\() -> (getStartX_impl (javaCast object_ :: ImageSegmentAnimation))) ()

getStartX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartX_super object_ = (getStartX_impl (javaCast object_ :: ImageSegmentAnimation))

getStartX_impl :: ImageSegmentAnimation -> IO (Int)
getStartX_impl this = do
        pure ((jget (this).startX))


setStartX :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setStartX object_ a1 = jmethod object_ "setStartX" (\() -> (setStartX_impl (javaCast object_ :: ImageSegmentAnimation))) () a1

setStartX_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setStartX_super object_ a1 = (setStartX_impl (javaCast object_ :: ImageSegmentAnimation)) a1

setStartX_impl :: ImageSegmentAnimation -> Int -> IO (())
setStartX_impl this startX = do
        jset (this).startX (startX)
        pure ()


getStartY :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartY object_ = jmethod object_ "getStartY" (\() -> (getStartY_impl (javaCast object_ :: ImageSegmentAnimation))) ()

getStartY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartY_super object_ = (getStartY_impl (javaCast object_ :: ImageSegmentAnimation))

getStartY_impl :: ImageSegmentAnimation -> IO (Int)
getStartY_impl this = do
        pure ((jget (this).startY))


setStartY :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setStartY object_ a1 = jmethod object_ "setStartY" (\() -> (setStartY_impl (javaCast object_ :: ImageSegmentAnimation))) () a1

setStartY_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setStartY_super object_ a1 = (setStartY_impl (javaCast object_ :: ImageSegmentAnimation)) a1

setStartY_impl :: ImageSegmentAnimation -> Int -> IO (())
setStartY_impl this startY = do
        jset (this).startY (startY)
        pure ()


getDrawWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getDrawWidth object_ = jmethod object_ "getDrawWidth" (\() -> (getDrawWidth_impl (javaCast object_ :: ImageSegmentAnimation))) ()

getDrawWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDrawWidth_super object_ = (getDrawWidth_impl (javaCast object_ :: ImageSegmentAnimation))

getDrawWidth_impl :: ImageSegmentAnimation -> IO (Int)
getDrawWidth_impl this = do
        pure ((jget (this).drawWidth))


setDrawWidth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDrawWidth object_ a1 = jmethod object_ "setDrawWidth" (\() -> (setDrawWidth_impl (javaCast object_ :: ImageSegmentAnimation))) () a1

setDrawWidth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDrawWidth_super object_ a1 = (setDrawWidth_impl (javaCast object_ :: ImageSegmentAnimation)) a1

setDrawWidth_impl :: ImageSegmentAnimation -> Int -> IO (())
setDrawWidth_impl this drawWidth = do
        jset (this).drawWidth (drawWidth)
        pure ()


getDrawHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getDrawHeight object_ = jmethod object_ "getDrawHeight" (\() -> (getDrawHeight_impl (javaCast object_ :: ImageSegmentAnimation))) ()

getDrawHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDrawHeight_super object_ = (getDrawHeight_impl (javaCast object_ :: ImageSegmentAnimation))

getDrawHeight_impl :: ImageSegmentAnimation -> IO (Int)
getDrawHeight_impl this = do
        pure ((jget (this).drawHeight))


setDrawHeight :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDrawHeight object_ a1 = jmethod object_ "setDrawHeight" (\() -> (setDrawHeight_impl (javaCast object_ :: ImageSegmentAnimation))) () a1

setDrawHeight_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDrawHeight_super object_ a1 = (setDrawHeight_impl (javaCast object_ :: ImageSegmentAnimation)) a1

setDrawHeight_impl :: ImageSegmentAnimation -> Int -> IO (())
setDrawHeight_impl this drawHeight = do
        jset (this).drawHeight (drawHeight)
        pure ()


