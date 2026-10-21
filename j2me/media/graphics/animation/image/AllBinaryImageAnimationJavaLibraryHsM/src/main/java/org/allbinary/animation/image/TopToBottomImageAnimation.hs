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
module TopToBottomImageAnimation (module TopToBottomImageAnimation, module ImageSegmentAnimation) where

import ImageSegmentAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, nextFrame, nextFrame_super, nextFrame_impl, previousFrame, previousFrame_super, previousFrame_impl, setFrame, setFrame_super, setFrame_impl, update, update_super, update_impl, paintXY, paintXY_super, paintXY_impl, currentHeight, anchor)
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
import qualified Sprite -- javax.microedition.lcdui.game.Sprite
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified ImageSegmentAnimation

data TopToBottomImageAnimation = TopToBottomImageAnimation
    { header_ :: JavaHeader
    , base :: ImageSegmentAnimation.ImageSegmentAnimation
    , currentHeight :: IORef (Int)
    , anchor :: IORef (Int)
    }

instance JavaNull TopToBottomImageAnimation where
    javaNull = javaNullRecord "TopToBottomImageAnimation"

instance JavaEquals TopToBottomImageAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TopToBottomImageAnimation where
    (==) = jrecordEquals

instance JavaObjectClass TopToBottomImageAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TopToBottomImageAnimation
newRecord_ = do
    base <- ImageSegmentAnimation.newRecord_
    let header_ = base.header_
    currentHeight <- newIORef 0
    anchor <- newIORef 0
    let this = TopToBottomImageAnimation header_ base currentHeight anchor
    jregisterLevel header_ this
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "previousFrame" (\() -> previousFrame_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: TopToBottomImageAnimation -> IO ()
initFields_ this = do
    jset this.currentHeight (0)
    jset this.anchor ((jget Anchor.tOP_LEFT))
    pure ()

new_3 :: Image.Image -> JavaArray (Int) -> AnimationBehavior.AnimationBehavior -> IO TopToBottomImageAnimation
new_3 image sequenceArray animationBehavior = do
    this <- newRecord_
    init_3 this image sequenceArray animationBehavior
    pure this

init_3 :: TopToBottomImageAnimation -> Image.Image -> JavaArray (Int) -> AnimationBehavior.AnimationBehavior -> IO ()
init_3 this image sequenceArray animationBehavior = do
        ImageSegmentAnimation.init_3 this.base (image) (sequenceArray) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).currentHeight (0)
        when ((jindex ((jio (ImageSegmentAnimation.getSequence this))) (0)) == (Prelude.negate 1)) $ do
            Control.Monad.void (TopToBottomImageAnimation.setFrame this ((jio (ImageSegmentAnimation.getSize this)) - 1))
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: TopToBottomImageAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: TopToBottomImageAnimation))

nextFrame_impl :: TopToBottomImageAnimation -> IO (())
nextFrame_impl this = do
        if ((jindex ((jio (ImageSegmentAnimation.getSequence this))) (0)) == (Prelude.negate 1)) then do
            Control.Monad.void (ImageSegmentAnimation.previousFrame_super this.base)
        else do
            Control.Monad.void (ImageSegmentAnimation.nextFrame_super this.base)
        Control.Monad.void (TopToBottomImageAnimation.update this)
        pure ()


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: TopToBottomImageAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: TopToBottomImageAnimation))

previousFrame_impl :: TopToBottomImageAnimation -> IO (())
previousFrame_impl this = do
        if ((jindex ((jio (ImageSegmentAnimation.getSequence this))) (0)) == (Prelude.negate 1)) then do
            Control.Monad.void (ImageSegmentAnimation.nextFrame_super this.base)
        else do
            Control.Monad.void (ImageSegmentAnimation.previousFrame_super this.base)
        Control.Monad.void (TopToBottomImageAnimation.update this)
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: TopToBottomImageAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: TopToBottomImageAnimation)) a1

setFrame_impl :: TopToBottomImageAnimation -> Int -> IO (())
setFrame_impl this index = do
        Control.Monad.void (ImageSegmentAnimation.setFrame_super this.base index)
        Control.Monad.void (TopToBottomImageAnimation.update this)
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: TopToBottomImageAnimation))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: TopToBottomImageAnimation))

update_impl :: TopToBottomImageAnimation -> IO (())
update_impl this = do
        jset (this).currentHeight ((((jio (ImageSegmentAnimation.getDrawHeight this)) * (jio (ImageSegmentAnimation.getFrame this))) / (jio (ImageSegmentAnimation.getSize this))))
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: TopToBottomImageAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: TopToBottomImageAnimation)) a1 a2 a3

paintXY_impl :: TopToBottomImageAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (Graphics.drawRegion graphics (jio (ImageSegmentAnimation.getImage this)) (jio (ImageSegmentAnimation.getStartX this)) (jio (ImageSegmentAnimation.getStartY this)) (jio (ImageSegmentAnimation.getDrawWidth this)) (jget (this).currentHeight) (Sprite.tRANS_NONE) x y (jget (this).anchor))
        pure ()


