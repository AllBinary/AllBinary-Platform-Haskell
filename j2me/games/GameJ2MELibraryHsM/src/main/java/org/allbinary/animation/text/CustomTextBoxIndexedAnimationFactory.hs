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
-- package org.allbinary.animation.text
module CustomTextBoxIndexedAnimationFactory where

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
import qualified CustomTextBox2 -- same package or java.lang
import qualified CustomTextBoxIndexedAnimation -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified TextField -- javax.microedition.lcdui.TextField
import qualified CustomTextBox -- org.allbinary.graphics.form.item.CustomTextBox
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified ABToGBUtil -- org.allbinary.game.canvas.ABToGBUtil
import qualified AllBinaryGameCanvas -- org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties

-- implements AnimationInterfaceFactoryInterface
data CustomTextBoxIndexedAnimationFactory = CustomTextBoxIndexedAnimationFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , scaleProperties :: IORef (ScaleProperties.ScaleProperties)
    , maxLength :: IORef (Int)
    }

instance JavaNull CustomTextBoxIndexedAnimationFactory where
    javaNull = javaNullRecord "CustomTextBoxIndexedAnimationFactory"

instance JavaEquals CustomTextBoxIndexedAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomTextBoxIndexedAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass CustomTextBoxIndexedAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CustomTextBoxIndexedAnimationFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    scaleProperties <- newIORef javaNull
    maxLength <- newIORef 0
    let this = CustomTextBoxIndexedAnimationFactory header_ logUtil scaleProperties maxLength
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: CustomTextBoxIndexedAnimationFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.scaleProperties (javaNull)
    jset this.maxLength (0)
    pure ()

new_2 :: Int -> Int -> IO CustomTextBoxIndexedAnimationFactory
new_2 fontSize maxLength = do
    this <- newRecord_
    init_2 this fontSize maxLength
    pure this

init_2 :: CustomTextBoxIndexedAnimationFactory -> Int -> Int -> IO ()
init_2 this fontSize maxLength = do
        initFields_ this
        assignedValue <- (ScaleProperties.new_)
        jset (this).scaleProperties (assignedValue)
        jset ((jget (this).scaleProperties)).scaleHeight (fontSize)
        jset (this).maxLength (maxLength)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: CustomTextBoxIndexedAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: CustomTextBoxIndexedAnimationFactory)) a1

getInstance_impl :: CustomTextBoxIndexedAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        abToGBUtil <- (ABToGBUtil.getInstance)
        let abCanvas = (javaCast (jget (abToGBUtil).abCanvas) :: AllBinaryGameCanvas.AllBinaryGameCanvas)
        font <- (Font.getFont (Font.fACE_SYSTEM) (Font.sTYLE_PLAIN) (jget ((jget (this).scaleProperties)).scaleHeight))
        customTextBox <- (fmap (\value_ -> javaCast value_ :: CustomTextBox.CustomTextBox) (CustomTextBox2.new_8 (jio (AllBinaryGameCanvas.getCustomCommandListener abCanvas)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget (this).maxLength) (TextField.aNY) font (jio (AllBinaryGameLayerManager.getBackgroundBasicColor ((jio (AllBinaryGameCanvas.getLayerManager abCanvas))))) (jio (AllBinaryGameLayerManager.getForegroundBasicColor ((jio (AllBinaryGameCanvas.getLayerManager abCanvas)))))))
        (fmap (\value_ -> javaCast value_ :: Animation.Animation) (CustomTextBoxIndexedAnimation.new_1 customTextBox))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: CustomTextBoxIndexedAnimationFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: CustomTextBoxIndexedAnimationFactory)) a1

setInitialScale_impl :: CustomTextBoxIndexedAnimationFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        let fontSize = (jget ((jget (this).scaleProperties)).scaleHeight)
        jset (this).scaleProperties (scaleProperties)
        when ((jget ((jget (this).scaleProperties)).scaleHeight) < 6) $ do
            jset ((jget (this).scaleProperties)).scaleHeight (fontSize)
        pure ()


