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
module ImageAnimation (module ImageAnimation, module IndexedAnimation) where

import IndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAnimationSize, getAnimationSize_super, getAnimationSize_impl, nextFrame, nextFrame_super, nextFrame_impl, previousFrame, previousFrame_super, previousFrame_impl, setFrame, setFrame_super, setFrame_impl, getFrame, getFrame_super, getFrame_impl, getSize, getSize_super, getSize_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, paintXY, paintXY_super, paintXY_impl, getImage, getImage_super, getImage_impl, close, close_super, close_impl, finalize, finalize_super, finalize_impl, image, anchor)
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
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil

data ImageAnimation = ImageAnimation
    { header_ :: JavaHeader
    , base :: IndexedAnimation.IndexedAnimation
    , image :: IORef (Image.Image)
    , anchor :: IORef (Int)
    }

instance JavaNull ImageAnimation where
    javaNull = javaNullRecord "ImageAnimation"

instance JavaEquals ImageAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageAnimation where
    (==) = jrecordEquals

instance JavaObjectClass ImageAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageAnimation
newRecord_ = do
    base <- IndexedAnimation.newRecord_
    let header_ = base.header_
    image <- newIORef javaNull
    anchor <- newIORef 0
    let this = ImageAnimation header_ base image anchor
    jregisterLevel header_ this
    jregisterMethod header_ "getAnimationSize" (\() -> getAnimationSize_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "previousFrame" (\() -> previousFrame_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "getImage" (\() -> getImage_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "finalize" (\() -> finalize_impl this)
    pure this

initFields_ :: ImageAnimation -> IO ()
initFields_ this = do
    jset this.image (javaNull)
    jset this.anchor ((jget Anchor.tOP_LEFT))
    pure ()

new_2 :: Image.Image -> AnimationBehavior.AnimationBehavior -> IO ImageAnimation
new_2 image animationBehavior = do
    this <- newRecord_
    init_2 this image animationBehavior
    pure this

init_2 :: ImageAnimation -> Image.Image -> AnimationBehavior.AnimationBehavior -> IO ()
init_2 this image animationBehavior = do
        IndexedAnimation.init_1 this.base (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).image (image)
        pure ()


-- throws Exception
getAnimationSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize object_ = jmethod object_ "getAnimationSize" (\() -> (getAnimationSize_impl (javaCast object_ :: ImageAnimation))) ()

getAnimationSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize_super object_ = (getAnimationSize_impl (javaCast object_ :: ImageAnimation))

getAnimationSize_impl :: ImageAnimation -> IO (Int)
getAnimationSize_impl this = do
        (ImageAnimation.getSize this)


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: ImageAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: ImageAnimation))

nextFrame_impl :: ImageAnimation -> IO (())
nextFrame_impl this = do
        pure ()


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: ImageAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: ImageAnimation))

previousFrame_impl :: ImageAnimation -> IO (())
previousFrame_impl this = do
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: ImageAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: ImageAnimation)) a1

setFrame_impl :: ImageAnimation -> Int -> IO (())
setFrame_impl this index = do
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: ImageAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: ImageAnimation))

getFrame_impl :: ImageAnimation -> IO (Int)
getFrame_impl this = do
        pure (0)


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: ImageAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: ImageAnimation))

getSize_impl :: ImageAnimation -> IO (Int)
getSize_impl this = do
        pure (1)


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: ImageAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: ImageAnimation)) a1

setSequence_impl :: ImageAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: ImageAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: ImageAnimation))

getSequence_impl :: ImageAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (PrimitiveIntUtil.getArrayInstance)


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: ImageAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: ImageAnimation)) a1 a2 a3

paintXY_impl :: ImageAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (Graphics.drawImage graphics (jget (this).image) x y (jget (this).anchor))
        pure ()


getImage :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getImage object_ = jmethod object_ "getImage" (\() -> (getImage_impl (javaCast object_ :: ImageAnimation))) ()

getImage_super :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getImage_super object_ = (getImage_impl (javaCast object_ :: ImageAnimation))

getImage_impl :: ImageAnimation -> IO (Image.Image)
getImage_impl this = do
        pure ((jget (this).image))


-- throws Exception
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: ImageAnimation))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: ImageAnimation))

close_impl :: ImageAnimation -> IO (())
close_impl this = do
        Control.Monad.void (DisposalUtil.disposeImage ((jio (DisposalUtil.getInstance))) (jget (this).image))
        pure ()


-- throws Throwable
finalize :: (JavaObjectClass this_) => this_ -> IO (())
finalize object_ = jmethod object_ "finalize" (\() -> (finalize_impl (javaCast object_ :: ImageAnimation))) ()

finalize_super :: (JavaObjectClass this_) => this_ -> IO (())
finalize_super object_ = (finalize_impl (javaCast object_ :: ImageAnimation))

finalize_impl :: ImageAnimation -> IO (())
finalize_impl this = do
        Control.Monad.void (DisposalUtil.disposeImage ((jio (DisposalUtil.getInstance))) (jget (this).image))
        pure ()


