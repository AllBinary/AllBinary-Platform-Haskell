{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
-- package org.allbinary.game.layer.item
module RTSLayerTextAnimation (module RTSLayerTextAnimation, module Animation) where

import Animation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, paintXY, paintXY_super, paintXY_impl, image, text, myFontProcessor, fontHeight)
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
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image
import qualified Animation -- org.allbinary.animation.Animation
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor

-- implements UpdateMyFontInterface
data RTSLayerTextAnimation = RTSLayerTextAnimation
    { header_ :: JavaHeader
    , base :: Animation.Animation
    , image :: IORef (Image.Image)
    , text :: IORef (String)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , fontHeight :: IORef (Int)
    }

instance JavaNull RTSLayerTextAnimation where
    javaNull = javaNullRecord "RTSLayerTextAnimation"

instance JavaEquals RTSLayerTextAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSLayerTextAnimation where
    (==) = jrecordEquals

instance JavaObjectClass RTSLayerTextAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RTSLayerTextAnimation
newRecord_ = do
    base <- Animation.newRecord_
    let header_ = base.header_
    image <- newIORef javaNull
    text <- newIORef ""
    myFontProcessor <- newIORef javaNull
    fontHeight <- newIORef 0
    let this = RTSLayerTextAnimation header_ base image text myFontProcessor fontHeight
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: RTSLayerTextAnimation -> IO ()
initFields_ this = do
    jset this.image (javaNull)
    jset this.text (javaNull)
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.fontHeight (0)
    pure ()

new_2 :: String -> Image.Image -> IO RTSLayerTextAnimation
new_2 text image = do
    this <- newRecord_
    init_2 this text image
    pure this

init_2 :: RTSLayerTextAnimation -> String -> Image.Image -> IO ()
init_2 this text image = do
        Animation.init_ this.base
        initFields_ this
        jset (this).text (text)
        jset (this).image (image)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: RTSLayerTextAnimation))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: RTSLayerTextAnimation)) a1

updateMeasurement_impl :: RTSLayerTextAnimation -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        assignedValue <- (Font.getHeight font)
        jset (this).fontHeight (assignedValue)
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: RTSLayerTextAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: RTSLayerTextAnimation)) a1 a2 a3

paintXY_impl :: RTSLayerTextAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (Animation.paintXY_super this.base graphics x y)
        let adjustedCostY = ((jio (Image.getHeight ((jget (this).image)))) - (jget (this).fontHeight))
        Control.Monad.void (Graphics.drawString graphics (jget (this).text) x (y + adjustedCostY) 0)
        pure ()


