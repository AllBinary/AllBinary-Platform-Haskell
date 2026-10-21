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
module CustomTextAnimationFactory where

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
import qualified CustomTextAnimation -- same package or java.lang
import qualified AdjustCustomTextAnimation -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties

-- implements AnimationInterfaceFactoryInterface
data CustomTextAnimationFactory = CustomTextAnimationFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , animationBehaviorFactory :: IORef (AnimationBehaviorFactory.AnimationBehaviorFactory)
    , basicColor :: IORef (BasicColor.BasicColor)
    , text :: IORef (String)
    , initScaleHeight :: IORef (Int)
    , dx :: IORef (Int)
    , dy :: IORef (Int)
    , font :: IORef (Font.Font)
    , scaleProperties :: IORef (ScaleProperties.ScaleProperties)
    }

instance JavaNull CustomTextAnimationFactory where
    javaNull = javaNullRecord "CustomTextAnimationFactory"

instance JavaEquals CustomTextAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomTextAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass CustomTextAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CustomTextAnimationFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    animationBehaviorFactory <- newIORef javaNull
    basicColor <- newIORef javaNull
    text <- newIORef ""
    initScaleHeight <- newIORef 0
    dx <- newIORef 0
    dy <- newIORef 0
    font <- newIORef javaNull
    scaleProperties <- newIORef javaNull
    let this = CustomTextAnimationFactory header_ logUtil animationBehaviorFactory basicColor text initScaleHeight dx dy font scaleProperties
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    pure this

initFields_ :: CustomTextAnimationFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.animationBehaviorFactory (javaNull)
    jset this.basicColor ((jget ((jio (BasicColorFactory.getInstance))).bLACK))
    jset this.text (javaNull)
    jset this.initScaleHeight (0)
    jset this.dx (0)
    jset this.dy (0)
    jset this.font (javaNull)
    jset this.scaleProperties (javaNull)
    pure ()


createDXY :: String -> Int -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (CustomTextAnimationFactory)
createDXY text fontSize dx dy animationBehaviorFactory = do
        customTextAnimationFactory <- (new_3 text fontSize animationBehaviorFactory)
        jset (customTextAnimationFactory).dx (dx)
        jset (customTextAnimationFactory).dy (dy)
        pure (customTextAnimationFactory)

new_3 :: String -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO CustomTextAnimationFactory
new_3 text fontSize animationBehaviorFactory = do
    this <- newRecord_
    init_3 this text fontSize animationBehaviorFactory
    pure this

init_3 :: CustomTextAnimationFactory -> String -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_3 this text fontSize animationBehaviorFactory = do
        initFields_ this
        assignedValue <- (ScaleProperties.new_)
        jset (this).scaleProperties (assignedValue)
        jset (this).text (text)
        jset ((jget (this).scaleProperties)).scaleHeight ((fontSize - ((fontSize `quot` 4))))
        jset (this).initScaleHeight ((jget ((jget (this).scaleProperties)).scaleHeight))
        jset (this).animationBehaviorFactory (animationBehaviorFactory)
        assignedValue <- (Font.getFont (Font.fACE_SYSTEM) (Font.sTYLE_PLAIN) (jget (this).initScaleHeight))
        jset (this).font (assignedValue)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: CustomTextAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: CustomTextAnimationFactory)) a1

getInstance_impl :: CustomTextAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        customTextAnimation <- newIORef (javaNull)
        if (((jget (this).dx) /= 0) || ((jget (this).dy) /= 0)) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: CustomTextAnimation.CustomTextAnimation) (AdjustCustomTextAnimation.new_5 (jget (this).text) (jget ((jget (this).scaleProperties)).scaleHeight) (jget (this).dx) (jget (this).dy) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).animationBehaviorFactory))))))
            jset customTextAnimation (assignedValue)
        else do
            assignedValue <- (CustomTextAnimation.new_3 (jget (this).text) (jget ((jget (this).scaleProperties)).scaleHeight) (jio (AnimationBehaviorFactory.getOrCreateInstance ((jget (this).animationBehaviorFactory)))))
            jset customTextAnimation (assignedValue)
        Control.Monad.void (CustomTextAnimation.setBasicColorP ((jget customTextAnimation)) (jget (this).basicColor))
        pure ((javaCast (jget customTextAnimation) :: Animation.Animation))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: CustomTextAnimationFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: CustomTextAnimationFactory)) a1

setInitialScale_impl :: CustomTextAnimationFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        pure ()


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: CustomTextAnimationFactory))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: CustomTextAnimationFactory))

getWidth_impl :: CustomTextAnimationFactory -> IO (Int)
getWidth_impl this = do
        (Font.stringWidth ((jget (this).font)) (jget (this).text))


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: CustomTextAnimationFactory))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: CustomTextAnimationFactory))

getHeight_impl :: CustomTextAnimationFactory -> IO (Int)
getHeight_impl this = do
        (Font.getHeight ((jget (this).font)))


