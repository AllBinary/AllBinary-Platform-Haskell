{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.animation
module FillAnimation (module FillAnimation, module IndexedAnimation) where

import IndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setBasicColorP, setBasicColorP_super, setBasicColorP_impl, changeBasicColor, changeBasicColor_super, changeBasicColor_impl, setAlpha, setAlpha_super, setAlpha_impl, setScale, setScale_super, setScale_impl, setMaxScale, setMaxScale_super, setMaxScale_impl, updateModifiers, updateModifiers_super, updateModifiers_impl, paint, paint_super, paint_impl, pixelBuffer, width, height)
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
import qualified AnimationBehavior -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified IndexedAnimation

data FillAnimation = FillAnimation
    { header_ :: JavaHeader
    , base :: IndexedAnimation.IndexedAnimation
    , pixelBuffer :: IORef (JavaArray (Int))
    , width :: IORef (Int)
    , height :: IORef (Int)
    }

instance JavaNull FillAnimation where
    javaNull = javaNullRecord "FillAnimation"

instance JavaEquals FillAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FillAnimation where
    (==) = jrecordEquals

instance JavaObjectClass FillAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO FillAnimation
newRecord_ = do
    base <- IndexedAnimation.newRecord_
    let header_ = base.header_
    pixelBuffer <- newIORef javaNull
    width <- newIORef 0
    height <- newIORef 0
    let this = FillAnimation header_ base pixelBuffer width height
    jregisterLevel header_ this
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "changeBasicColor" (\() -> changeBasicColor_impl this)
    jregisterMethod header_ "setAlpha" (\() -> setAlpha_impl this)
    jregisterMethod header_ "setScale" (\() -> setScale_impl this)
    jregisterMethod header_ "setMaxScale" (\() -> setMaxScale_impl this)
    jregisterMethod header_ "updateModifiers" (\() -> updateModifiers_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: FillAnimation -> IO ()
initFields_ this = do
    jset this.pixelBuffer (javaNull)
    jset this.width (0)
    jset this.height (0)
    pure ()

new_4 :: JavaArray (Int) -> Int -> Int -> AnimationBehavior.AnimationBehavior -> IO FillAnimation
new_4 pixelBuffer width height animationBehavior = do
    this <- newRecord_
    init_4 this pixelBuffer width height animationBehavior
    pure this

init_4 :: FillAnimation -> JavaArray (Int) -> Int -> Int -> AnimationBehavior.AnimationBehavior -> IO ()
init_4 this pixelBuffer width height animationBehavior = do
        IndexedAnimation.init_1 this.base (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).width (100)
        jset (this).height (100)
        jset (this).pixelBuffer (pixelBuffer)
        pure ()


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: FillAnimation))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: FillAnimation)) a1

setBasicColorP_impl :: FillAnimation -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        changed <- newIORef (False)
        when (((jio (IndexedAnimation.getBasicColorP this)) == javaNull) || ((jio (BasicColor.intValue ((jio (IndexedAnimation.getBasicColorP this))))) /= (jio (BasicColor.intValue basicColor)))) $ do
            jset changed (True)
        Control.Monad.void (IndexedAnimation.setBasicColorP_super this.base basicColor)
        when (jget changed) $ do
            Control.Monad.void (FillAnimation.updateModifiers this)
        pure ()


changeBasicColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
changeBasicColor object_ a1 = jmethod object_ "changeBasicColor" (\() -> (changeBasicColor_impl (javaCast object_ :: FillAnimation))) () a1

changeBasicColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
changeBasicColor_super object_ a1 = (changeBasicColor_impl (javaCast object_ :: FillAnimation)) a1

changeBasicColor_impl :: FillAnimation -> BasicColor.BasicColor -> IO (())
changeBasicColor_impl this basicColor = do
        changed <- newIORef (False)
        when (((jio (IndexedAnimation.getChangeBasicColor this)) == javaNull) || ((jio (BasicColor.intValue ((jio (IndexedAnimation.getChangeBasicColor this))))) /= (jio (BasicColor.intValue basicColor)))) $ do
            jset changed (True)
        Control.Monad.void (IndexedAnimation.changeBasicColor_super this.base basicColor)
        when (jget changed) $ do
            Control.Monad.void (FillAnimation.updateModifiers this)
        pure ()


setAlpha :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAlpha object_ a1 = jmethod object_ "setAlpha" (\() -> (setAlpha_impl (javaCast object_ :: FillAnimation))) () a1

setAlpha_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAlpha_super object_ a1 = (setAlpha_impl (javaCast object_ :: FillAnimation)) a1

setAlpha_impl :: FillAnimation -> Int -> IO (())
setAlpha_impl this alpha = do
        changed <- newIORef (False)
        when ((jget (this).base.base.alphaP) /= alpha) $ do
            jset changed (True)
        Control.Monad.void (IndexedAnimation.setAlpha_super this.base alpha)
        when (jget changed) $ do
            Control.Monad.void (FillAnimation.updateModifiers this)
        pure ()


setScale :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setScale object_ a1 a2 = jmethod object_ "setScale" (\() -> (setScale_impl (javaCast object_ :: FillAnimation))) () a1 a2

setScale_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setScale_super object_ a1 a2 = (setScale_impl (javaCast object_ :: FillAnimation)) a1 a2

setScale_impl :: FillAnimation -> Float -> Float -> IO (())
setScale_impl this scaleX scaleY = do
        pure ()


setMaxScale :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setMaxScale object_ a1 a2 = jmethod object_ "setMaxScale" (\() -> (setMaxScale_impl (javaCast object_ :: FillAnimation))) () a1 a2

setMaxScale_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setMaxScale_super object_ a1 a2 = (setMaxScale_impl (javaCast object_ :: FillAnimation)) a1 a2

setMaxScale_impl :: FillAnimation -> Float -> Float -> IO (())
setMaxScale_impl this maxScaleX maxScaleY = do
        pure ()


updateModifiers :: (JavaObjectClass this_) => this_ -> IO (())
updateModifiers object_ = jmethod object_ "updateModifiers" (\() -> (updateModifiers_impl (javaCast object_ :: FillAnimation))) ()

updateModifiers_super :: (JavaObjectClass this_) => this_ -> IO (())
updateModifiers_super object_ = (updateModifiers_impl (javaCast object_ :: FillAnimation))

updateModifiers_impl :: FillAnimation -> IO (())
updateModifiers_impl this = do
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: FillAnimation))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: FillAnimation)) a1

paint_impl :: FillAnimation -> Graphics.Graphics -> IO (())
paint_impl this g = do
        Control.Monad.void (Graphics.drawRGB g (jget this.pixelBuffer) 0 (jget this.width) 0 0 (jget this.width) (jget this.height) True)
        pure ()


