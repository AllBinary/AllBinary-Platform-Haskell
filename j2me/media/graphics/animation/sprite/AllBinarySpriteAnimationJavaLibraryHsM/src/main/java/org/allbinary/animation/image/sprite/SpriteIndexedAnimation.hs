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
-- package org.allbinary.animation.image.sprite
module SpriteIndexedAnimation (module SpriteIndexedAnimation, module IndexedAnimation) where

import IndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAnimationSize, getAnimationSize_super, getAnimationSize_impl, setBasicColorP, setBasicColorP_super, setBasicColorP_impl, getBasicColorP, getBasicColorP_super, getBasicColorP_impl, paintFrame, paintFrame_super, paintFrame_impl, paintXY, paintXY_super, paintXY_impl, paint, paint_super, paint_impl, nextFrame, nextFrame_super, nextFrame_impl, previousFrame, previousFrame_super, previousFrame_impl, getSize, getSize_super, getSize_impl, setFrame, setFrame_super, setFrame_impl, getFrame, getFrame_super, getFrame_impl, isLastFrame, isLastFrame_super, isLastFrame_impl, getLastFrame, getLastFrame_super, getLastFrame_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, close, close_super, close_impl, finalize, finalize_super, finalize_impl, sprite, image, basicColorArray)
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
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified ColorCompositeInterface -- org.allbinary.graphics.color.ColorCompositeInterface
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels

-- implements ColorCompositeInterface
data SpriteIndexedAnimation = SpriteIndexedAnimation
    { header_ :: JavaHeader
    , base :: IndexedAnimation.IndexedAnimation
    , sprite :: IORef (Sprite.Sprite)
    , image :: IORef (Image.Image)
    , basicColorArray :: IORef (JavaArray (BasicColor.BasicColor))
    }

instance JavaNull SpriteIndexedAnimation where
    javaNull = javaNullRecord "SpriteIndexedAnimation"

instance JavaEquals SpriteIndexedAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SpriteIndexedAnimation where
    (==) = jrecordEquals

instance JavaObjectClass SpriteIndexedAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SpriteIndexedAnimation
newRecord_ = do
    base <- IndexedAnimation.newRecord_
    let header_ = base.header_
    sprite <- newIORef javaNull
    image <- newIORef javaNull
    basicColorArray <- newIORef javaNull
    let this = SpriteIndexedAnimation header_ base sprite image basicColorArray
    jregisterLevel header_ this
    ColorCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "getAnimationSize" (\() -> getAnimationSize_impl this)
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "getBasicColorP" (\() -> getBasicColorP_impl this)
    jregisterMethod header_ "paintFrame" (\() -> paintFrame_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "previousFrame" (\() -> previousFrame_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "isLastFrame" (\() -> isLastFrame_impl this)
    jregisterMethod header_ "getLastFrame" (\() -> getLastFrame_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "finalize" (\() -> finalize_impl this)
    pure this

initFields_ :: SpriteIndexedAnimation -> IO ()
initFields_ this = do
    jset this.sprite (javaNull)
    jset this.image (javaNull)
    jset this.basicColorArray (javaNull)
    pure ()

new_4 :: Sprite.Sprite -> Image.Image -> JavaArray (BasicColor.BasicColor) -> AnimationBehavior.AnimationBehavior -> IO SpriteIndexedAnimation
new_4 sprite image basicColorArray animationBehavior = do
    this <- newRecord_
    init_4 this sprite image basicColorArray animationBehavior
    pure this

init_4 :: SpriteIndexedAnimation -> Sprite.Sprite -> Image.Image -> JavaArray (BasicColor.BasicColor) -> AnimationBehavior.AnimationBehavior -> IO ()
init_4 this sprite image basicColorArray animationBehavior = do
        IndexedAnimation.init_1 this.base (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).sprite (sprite)
        jset (this).image (image)
        jset (this).basicColorArray (basicColorArray)
        when (((jlength (jget (this).basicColorArray)) /= 0) && ((jio (SpriteIndexedAnimation.getSize this)) /= (jlength (jget (this).basicColorArray)))) $ do
            javaThrow ((JavaException "Exception" (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).tOTAL_LABEL)))) (jio (SpriteIndexedAnimation.getSize this))))) "!="))) (jlength (jget (this).basicColorArray)))))))))
        pure ()


-- throws Exception
getAnimationSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize object_ = jmethod object_ "getAnimationSize" (\() -> (getAnimationSize_impl (javaCast object_ :: SpriteIndexedAnimation))) ()

getAnimationSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize_super object_ = (getAnimationSize_impl (javaCast object_ :: SpriteIndexedAnimation))

getAnimationSize_impl :: SpriteIndexedAnimation -> IO (Int)
getAnimationSize_impl this = do
        (SpriteIndexedAnimation.getSize this)


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: SpriteIndexedAnimation))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: SpriteIndexedAnimation)) a1

setBasicColorP_impl :: SpriteIndexedAnimation -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        forM_ [0 .. (jlength (jget (this).basicColorArray)) - 1] $ \index -> javaIteration (pure ()) $ do
            when (basicColor == (jindex ((jget (this).basicColorArray)) (index))) $ do
                Control.Monad.void (SpriteIndexedAnimation.setFrame this index)
                throwIO JavaBreak
        pure ()


getBasicColorP :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP object_ = jmethod object_ "getBasicColorP" (\() -> (getBasicColorP_impl (javaCast object_ :: SpriteIndexedAnimation))) ()

getBasicColorP_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP_super object_ = (getBasicColorP_impl (javaCast object_ :: SpriteIndexedAnimation))

getBasicColorP_impl :: SpriteIndexedAnimation -> IO (BasicColor.BasicColor)
getBasicColorP_impl this = do
    javaCatchReturn $ do
        if ((jlength (jget (this).basicColorArray)) < (jio (SpriteIndexedAnimation.getFrame this))) then do
            javaReturn ((jindex ((jget (this).basicColorArray)) ((jio (SpriteIndexedAnimation.getFrame this)))))
        else do
            javaReturn ((jget ((jio (BasicColorFactory.getInstance))).wHITE))


paintFrame :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintFrame object_ a1 a2 a3 a4 = jmethod object_ "paintFrame" (\() -> (paintFrame_impl (javaCast object_ :: SpriteIndexedAnimation))) () a1 a2 a3 a4

paintFrame_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintFrame_super object_ a1 a2 a3 a4 = (paintFrame_impl (javaCast object_ :: SpriteIndexedAnimation)) a1 a2 a3 a4

paintFrame_impl :: SpriteIndexedAnimation -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintFrame_impl this graphics frame x y = do
        Control.Monad.void (SpriteIndexedAnimation.setFrame this frame)
        Control.Monad.void (Sprite.setPosition ((jget (this).sprite)) x y)
        Control.Monad.void (Sprite.paint ((jget (this).sprite)) graphics)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: SpriteIndexedAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: SpriteIndexedAnimation)) a1 a2 a3

paintXY_impl :: SpriteIndexedAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (Sprite.setPosition ((jget (this).sprite)) x y)
        Control.Monad.void (Sprite.paint ((jget (this).sprite)) graphics)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: SpriteIndexedAnimation))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: SpriteIndexedAnimation)) a1

paint_impl :: SpriteIndexedAnimation -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (Sprite.paint ((jget (this).sprite)) graphics)
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: SpriteIndexedAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: SpriteIndexedAnimation))

nextFrame_impl :: SpriteIndexedAnimation -> IO (())
nextFrame_impl this = do
        Control.Monad.void (Sprite.nextFrame ((jget (this).sprite)))
        pure ()


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: SpriteIndexedAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: SpriteIndexedAnimation))

previousFrame_impl :: SpriteIndexedAnimation -> IO (())
previousFrame_impl this = do
        Control.Monad.void (Sprite.prevFrame ((jget (this).sprite)))
        pure ()


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: SpriteIndexedAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: SpriteIndexedAnimation))

getSize_impl :: SpriteIndexedAnimation -> IO (Int)
getSize_impl this = do
        (Sprite.getRawFrameCount ((jget (this).sprite)))


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: SpriteIndexedAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: SpriteIndexedAnimation)) a1

setFrame_impl :: SpriteIndexedAnimation -> Int -> IO (())
setFrame_impl this frame = do
        Control.Monad.void (Sprite.setFrame ((jget (this).sprite)) frame)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: SpriteIndexedAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: SpriteIndexedAnimation))

getFrame_impl :: SpriteIndexedAnimation -> IO (Int)
getFrame_impl this = do
        (Sprite.getFrame ((jget (this).sprite)))


isLastFrame :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLastFrame object_ = jmethod object_ "isLastFrame" (\() -> (isLastFrame_impl (javaCast object_ :: SpriteIndexedAnimation))) ()

isLastFrame_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLastFrame_super object_ = (isLastFrame_impl (javaCast object_ :: SpriteIndexedAnimation))

isLastFrame_impl :: SpriteIndexedAnimation -> IO (Bool)
isLastFrame_impl this = do
    javaCatchReturn $ do
        if ((jio (Sprite.getFrame ((jget (this).sprite)))) == ((jio (SpriteIndexedAnimation.getSize this)) - 1)) then do
            javaReturn (True)
        else do
            javaReturn (False)


getLastFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastFrame object_ = jmethod object_ "getLastFrame" (\() -> (getLastFrame_impl (javaCast object_ :: SpriteIndexedAnimation))) ()

getLastFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastFrame_super object_ = (getLastFrame_impl (javaCast object_ :: SpriteIndexedAnimation))

getLastFrame_impl :: SpriteIndexedAnimation -> IO (Int)
getLastFrame_impl this = do
        (SpriteIndexedAnimation.getSize this)


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: SpriteIndexedAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: SpriteIndexedAnimation)) a1

setSequence_impl :: SpriteIndexedAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: SpriteIndexedAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: SpriteIndexedAnimation))

getSequence_impl :: SpriteIndexedAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (PrimitiveIntUtil.getArrayInstance)


-- throws Exception
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: SpriteIndexedAnimation))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: SpriteIndexedAnimation))

close_impl :: SpriteIndexedAnimation -> IO (())
close_impl this = do
        pure ()


-- throws Throwable
finalize :: (JavaObjectClass this_) => this_ -> IO (())
finalize object_ = jmethod object_ "finalize" (\() -> (finalize_impl (javaCast object_ :: SpriteIndexedAnimation))) ()

finalize_super :: (JavaObjectClass this_) => this_ -> IO (())
finalize_super object_ = (finalize_impl (javaCast object_ :: SpriteIndexedAnimation))

finalize_impl :: SpriteIndexedAnimation -> IO (())
finalize_impl this = do
        pure ()


