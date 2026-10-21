{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.media.image
module ImageModifierUtil where

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
import qualified Any -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified PlaynImage -- org.microemu.device.playn.PlaynImage
import qualified ResourceCallbackStrings -- org.microemu.device.ResourceCallbackStrings
import qualified Callback -- playn.core.Callback
import qualified Canvas -- playn.core.Canvas
import qualified CoreImage -- playn.core.CoreImage
import qualified ImageImpl -- playn.core.ImageImpl
import qualified HTMLPlaynUtil -- playn.html.HTMLPlaynUtil

data ImageModifierUtil = ImageModifierUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , resourceCallbackStrings :: IORef (ResourceCallbackStrings.ResourceCallbackStrings)
    , playnUtil :: IORef (HTMLPlaynUtil.HTMLPlaynUtil)
    , alphaArray :: IORef (JavaArray (Bool))
    }

instance JavaNull ImageModifierUtil where
    javaNull = javaNullRecord "ImageModifierUtil"

instance JavaEquals ImageModifierUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageModifierUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageModifierUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageModifierUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    resourceCallbackStrings <- newIORef javaNull
    playnUtil <- newIORef javaNull
    alphaArray <- newIORef javaNull
    let this = ImageModifierUtil header_ logUtil commonStrings resourceCallbackStrings playnUtil alphaArray
    jregisterLevel header_ this
    jregisterMethod header_ "setColor" (\() -> setColor_impl this)
    jregisterMethod header_ "changeColor" (\() -> changeColor_impl this)
    jregisterMethod header_ "setAlpha" (\() -> setAlpha_impl this)
    jregisterMethod header_ "setAlphaF" (\() -> setAlphaF_impl this)
    jregisterMethod header_ "setAlpha2" (\() -> setAlpha2_impl this)
    jregisterMethod header_ "setAlpha3" (\() -> setAlpha3_impl this)
    jregisterMethod header_ "getImageArray" (\() -> getImageArray_impl this)
    jregisterMethod header_ "handleImage" (\() -> handleImage_impl this)
    jregisterMethod header_ "copy" (\() -> copy_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    pure this

initFields_ :: ImageModifierUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.resourceCallbackStrings =<< (ResourceCallbackStrings.getInstance)
    jset this.playnUtil =<< (HTMLPlaynUtil.getInstance)
    jset this.alphaArray (javaNull)
    pure ()

new_ :: IO ImageModifierUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageModifierUtil -> IO ()
init_ this = do
    initFields_ this


getInstanceOrCreate :: IO (ImageModifierUtil)
getInstanceOrCreate = do
        (new_)


setColor :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
setColor object_ a1 a2 a3 a4 = jmethod object_ "setColor" (\() -> (setColor_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3 a4

setColor_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
setColor_super object_ a1 a2 a3 a4 = (setColor_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3 a4

setColor_impl :: ImageModifierUtil -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
setColor_impl this unusedOriginalImage image imageIndex basicColor = do
        pure ()


changeColor :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
changeColor object_ a1 a2 a3 a4 = jmethod object_ "changeColor" (\() -> (changeColor_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3 a4

changeColor_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
changeColor_super object_ a1 a2 a3 a4 = (changeColor_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3 a4

changeColor_impl :: ImageModifierUtil -> Image.Image -> Image.Image -> Int -> BasicColor.BasicColor -> IO (())
changeColor_impl this unusedOriginalImage image imageIndex basicColor = do
        pure ()


setAlpha :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> Int -> IO (())
setAlpha object_ a1 a2 a3 a4 = jmethod object_ "setAlpha" (\() -> (setAlpha_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3 a4

setAlpha_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> Int -> IO (())
setAlpha_super object_ a1 a2 a3 a4 = (setAlpha_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3 a4

setAlpha_impl :: ImageModifierUtil -> Image.Image -> Image.Image -> Int -> Int -> IO (())
setAlpha_impl this originalImage image imageIndex alpha = do
        let alphaF = (Prelude.fromIntegral alpha)
        let alphaFloat = (alphaF / 255.0)
        Control.Monad.void (ImageModifierUtil.setAlphaF this originalImage image imageIndex alphaFloat)
        pure ()


setAlphaF :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> Float -> IO (())
setAlphaF object_ a1 a2 a3 a4 = jmethod object_ "setAlphaF" (\() -> (setAlphaF_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3 a4

setAlphaF_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> Float -> IO (())
setAlphaF_super object_ a1 a2 a3 a4 = (setAlphaF_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3 a4

setAlphaF_impl :: ImageModifierUtil -> Image.Image -> Image.Image -> Int -> Float -> IO (())
setAlphaF_impl this originalImage image imageIndex alpha = do
        when (jindex ((jget (this).alphaArray)) (imageIndex)) $ do
            jsetIndex ((jget (this).alphaArray)) (imageIndex) (False)
            Control.Monad.void (ImageModifierUtil.setAlpha2 this originalImage image imageIndex alpha)
        pure ()


setAlpha2 :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> Float -> IO (())
setAlpha2 object_ a1 a2 a3 a4 = jmethod object_ "setAlpha2" (\() -> (setAlpha2_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3 a4

setAlpha2_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Image.Image -> Int -> Float -> IO (())
setAlpha2_super object_ a1 a2 a3 a4 = (setAlpha2_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3 a4

setAlpha2_impl :: ImageModifierUtil -> Image.Image -> Image.Image -> Int -> Float -> IO (())
setAlpha2_impl this originalImage image imageIndex alpha = do
        let htmlImage = (javaCast image :: PlaynImage.PlaynImage)
        let canvasImage = (javaCast (jio (PlaynImage.getImage htmlImage)) :: ImageImpl.ImageImpl)
        let originalPlaynImage = (javaCast (jio (getImage (((javaCast originalImage :: PlaynImage.PlaynImage))))) :: CoreImage.CoreImage)
        canvas <- (HTMLPlaynUtil.getCanvas ((jget (this).playnUtil)) canvasImage)
        Control.Monad.void (Canvas.clear canvas)
        Control.Monad.void (Canvas.setAlpha canvas alpha)
        Control.Monad.void (Canvas.draw canvas originalPlaynImage 0 0)
        pure ()


setAlpha3 :: (JavaObjectClass this_) => this_ -> Image.Image -> Float -> IO (())
setAlpha3 object_ a1 a2 = jmethod object_ "setAlpha3" (\() -> (setAlpha3_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2

setAlpha3_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Float -> IO (())
setAlpha3_super object_ a1 a2 = (setAlpha3_impl (javaCast object_ :: ImageModifierUtil)) a1 a2

setAlpha3_impl :: ImageModifierUtil -> Image.Image -> Float -> IO (())
setAlpha3_impl this image alpha = do
        let alphaF = alpha
        let alphaFloat = (alphaF / 255.0)
        let htmlImage = (javaCast image :: PlaynImage.PlaynImage)
        let canvasImage = (javaCast (jio (PlaynImage.getImage htmlImage)) :: ImageImpl.ImageImpl)
        canvas <- (HTMLPlaynUtil.getCanvas ((jget (this).playnUtil)) canvasImage)
        Control.Monad.void (Canvas.setAlpha canvas alphaFloat)
        pure ()


getImageArray :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (JavaArray (Image.Image))
getImageArray object_ a1 = jmethod object_ "getImageArray" (\() -> (getImageArray_impl (javaCast object_ :: ImageModifierUtil))) () a1

getImageArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> IO (JavaArray (Image.Image))
getImageArray_super object_ a1 = (getImageArray_impl (javaCast object_ :: ImageModifierUtil)) a1

getImageArray_impl :: ImageModifierUtil -> JavaArray (Image.Image) -> IO (JavaArray (Image.Image))
getImageArray_impl this originalImageArray = do
        let size = (jlength originalImageArray)
        jset (this).alphaArray ((jnewArray (size) False))
        let imageArray = (jnewArray (size) javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex imageArray (index) ((jindex originalImageArray (index)))
            Control.Monad.void (ImageModifierUtil.handleImage this imageArray index (jindex originalImageArray (index)))
        pure (imageArray)


handleImage :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Image.Image -> IO (())
handleImage object_ a1 a2 a3 = jmethod object_ "handleImage" (\() -> (handleImage_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3

handleImage_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Image.Image -> IO (())
handleImage_super object_ a1 a2 a3 = (handleImage_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3

handleImage_impl :: ImageModifierUtil -> JavaArray (Image.Image) -> Int -> Image.Image -> IO (())
handleImage_impl this imageArray index image = do
        let image3 = (javaCast (jio (getImage (((javaCast image :: PlaynImage.PlaynImage))))) :: CoreImage.CoreImage)
        if (image3 /= javaNull) then do
            if (((jio (CoreImage.isReady image3)) || (((jio (CoreImage.width image3)) + (jio (CoreImage.height image3))) <= 0)) || ((jio (Image.getName image)) == (jget ((jget (this).resourceCallbackStrings)).fROM_DATA))) then do
                Control.Monad.void (ImageModifierUtil.copy this imageArray index image image3)
            else do
                callback <- (Callback.new_ {- Java anonymous class body: implement it as a record of functions
                    -- onSuccess
                    -- onFailure
-})
                Control.Monad.void (CoreImage.addCallback image3 callback)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget ((jget (this).resourceCallbackStrings)).nULL) + (jio (Image.isMutable image))) this (jget ((jget (this).resourceCallbackStrings)).hANDLE_IMAGE))
        pure ()


copy :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Image.Image -> CoreImage.CoreImage -> IO (())
copy object_ a1 a2 a3 a4 = jmethod object_ "copy" (\() -> (copy_impl (javaCast object_ :: ImageModifierUtil))) () a1 a2 a3 a4

copy_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Image.Image -> CoreImage.CoreImage -> IO (())
copy_super object_ a1 a2 a3 a4 = (copy_impl (javaCast object_ :: ImageModifierUtil)) a1 a2 a3 a4

copy_impl :: ImageModifierUtil -> JavaArray (Image.Image) -> Int -> Image.Image -> CoreImage.CoreImage -> IO (())
copy_impl this imageArray index image image3 = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget ((jget (this).commonStrings)).eXCEPTION_LABEL) + (jget ((jget this.resourceCallbackStrings)).dONE)) this (jget ((jget this.resourceCallbackStrings)).hANDLE_IMAGE))
            ) $ do
            image2 <- (Image.createImageWH (Prelude.fromInteger (jnumericInteger (jio (CoreImage.width image3)))) (Prelude.fromInteger (jnumericInteger (jio (CoreImage.height image3)))))
            graphics <- (Image.getGraphics image2)
            Control.Monad.void (Graphics.drawImage graphics image 0 0 (Anchor.tOP_LEFT))
            jsetIndex imageArray (index) (image2)
        pure ()


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: ImageModifierUtil))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: ImageModifierUtil))

reset_impl :: ImageModifierUtil -> IO (())
reset_impl this = do
        let size = (jlength (jget (this).alphaArray))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).alphaArray)) (index) (True)
        pure ()


