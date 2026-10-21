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
-- package org.allbinary.animation.text
module CustomTextAnimation (module CustomTextAnimation, module TextAnimation) where

import TextAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paintXY, paintXY_super, paintXY_impl, setScale, setScale_super, setScale_impl, setText, setText_super, setText_impl, getText, getText_super, getText_impl, getWidth, getWidth_super, getWidth_impl, getFontHeight, getFontHeight_super, getFontHeight_impl, fontDebugFactory, fontSize, font, lastText, hasChanged, textWidth)
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
import qualified MyFontProcessor -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified FontDebugFactory -- org.allbinary.graphics.font.FontDebugFactory
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified TextAnimation
import qualified TextInterface

-- implements TextInterface
data CustomTextAnimation = CustomTextAnimation
    { header_ :: JavaHeader
    , base :: TextAnimation.TextAnimation
    , fontDebugFactory :: IORef (FontDebugFactory.FontDebugFactory)
    , fontSize :: IORef (Int)
    , font :: IORef (Font.Font)
    , lastText :: IORef (String)
    , hasChanged :: IORef (Bool)
    , textWidth :: IORef (Int)
    }

instance JavaNull CustomTextAnimation where
    javaNull = javaNullRecord "CustomTextAnimation"

instance JavaEquals CustomTextAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomTextAnimation where
    (==) = jrecordEquals

instance JavaObjectClass CustomTextAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CustomTextAnimation
newRecord_ = do
    base <- TextAnimation.newRecord_
    let header_ = base.header_
    fontDebugFactory <- newIORef javaNull
    fontSize <- newIORef 0
    font <- newIORef javaNull
    lastText <- newIORef ""
    hasChanged <- newIORef False
    textWidth <- newIORef 0
    let this = CustomTextAnimation header_ base fontDebugFactory fontSize font lastText hasChanged textWidth
    jregisterLevel header_ this
    TextInterface.registerInterface_ header_
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "setScale" (\() -> setScale_impl this)
    jregisterMethod header_ "setText" (\() -> setText_impl this)
    jregisterMethod header_ "getText" (\() -> getText_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "getFontHeight" (\() -> getFontHeight_impl this)
    pure this

initFields_ :: CustomTextAnimation -> IO ()
initFields_ this = do
    jset this.fontDebugFactory =<< (FontDebugFactory.getInstance)
    jset this.fontSize (0)
    jset this.font (javaNull)
    jset this.lastText ((jget ((jio (StringUtil.getInstance))).iNIT_STRING))
    jset this.hasChanged (True)
    jset this.textWidth (0)
    pure ()

new_3 :: String -> Int -> AnimationBehavior.AnimationBehavior -> IO CustomTextAnimation
new_3 text fontSize animationBehavior = do
    this <- newRecord_
    init_3 this text fontSize animationBehavior
    pure this

init_3 :: CustomTextAnimation -> String -> Int -> AnimationBehavior.AnimationBehavior -> IO ()
init_3 this text fontSize animationBehavior = do
        TextAnimation.init_2 this.base (text) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).fontSize (fontSize)
        assignedValue <- (Font.getFont (Font.fACE_SYSTEM) (Font.sTYLE_PLAIN) fontSize)
        jset (this).font (assignedValue)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: CustomTextAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: CustomTextAnimation)) a1 a2 a3

paintXY_impl :: CustomTextAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).base.myFontProcessor)) graphics)
        existingFont <- (Graphics.getFont graphics)
        Control.Monad.void (FontDebugFactory.setFont ((jget (this).fontDebugFactory)) (jget (this).font) graphics)
        Control.Monad.void (TextAnimation.paintXYNoUpdate_super this.base graphics x y)
        Control.Monad.void (FontDebugFactory.setFont ((jget (this).fontDebugFactory)) existingFont graphics)
        pure ()


setScale :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setScale object_ a1 a2 = jmethod object_ "setScale" (\() -> (setScale_impl (javaCast object_ :: CustomTextAnimation))) () a1 a2

setScale_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setScale_super object_ a1 a2 = (setScale_impl (javaCast object_ :: CustomTextAnimation)) a1 a2

setScale_impl :: CustomTextAnimation -> Float -> Float -> IO (())
setScale_impl this scaleX scaleY = do
        when (scaleX /= scaleY) $ do
            javaThrow ((JavaException "RuntimeException" ""))
        jset (this).hasChanged (True)
        assignedValue <- (Font.getFont (Font.fACE_SYSTEM) (Font.sTYLE_PLAIN) (Prelude.truncate (((Prelude.fromIntegral (jget (this).fontSize)) * scaleX))))
        jset (this).font (assignedValue)
        pure ()


setText :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText object_ a1 = jmethod object_ "setText" (\() -> (setText_impl (javaCast object_ :: CustomTextAnimation))) () a1

setText_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText_super object_ a1 = (setText_impl (javaCast object_ :: CustomTextAnimation)) a1

setText_impl :: CustomTextAnimation -> String -> IO (())
setText_impl this text = do
        when ((jget (this).lastText) /= text) $ do
            jset (this).hasChanged (True)
            jset (this).lastText (text)
            Control.Monad.void (TextAnimation.setText_super this.base text)
        pure ()


getText :: (JavaObjectClass this_) => this_ -> IO (String)
getText object_ = jmethod object_ "getText" (\() -> (getText_impl (javaCast object_ :: CustomTextAnimation))) ()

getText_super :: (JavaObjectClass this_) => this_ -> IO (String)
getText_super object_ = (getText_impl (javaCast object_ :: CustomTextAnimation))

getText_impl :: CustomTextAnimation -> IO (String)
getText_impl this = do
        pure ((jget (this).lastText))


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: CustomTextAnimation))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: CustomTextAnimation))

getWidth_impl :: CustomTextAnimation -> IO (Int)
getWidth_impl this = do
        when (jget (this).hasChanged) $ do
            assignedValue <- (Font.stringWidth ((jget (this).font)) (jindex ((jget (this).base.textArrayP)) (0)))
            jset (this).textWidth (assignedValue)
            jset (this).hasChanged (False)
        pure ((jget (this).textWidth))


getFontHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getFontHeight object_ = jmethod object_ "getFontHeight" (\() -> (getFontHeight_impl (javaCast object_ :: CustomTextAnimation))) ()

getFontHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFontHeight_super object_ = (getFontHeight_impl (javaCast object_ :: CustomTextAnimation))

getFontHeight_impl :: CustomTextAnimation -> IO (Int)
getFontHeight_impl this = do
        (Font.getHeight ((jget (this).font)))


