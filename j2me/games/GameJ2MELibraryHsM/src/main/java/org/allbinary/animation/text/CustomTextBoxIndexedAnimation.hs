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
module CustomTextBoxIndexedAnimation (module CustomTextBoxIndexedAnimation, module IndexedAnimation) where

import IndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setBasicColorP, setBasicColorP_super, setBasicColorP_impl, setBackgroundBasicColorP, setBackgroundBasicColorP_super, setBackgroundBasicColorP_impl, setTextWithOnMeasure, setTextWithOnMeasure_super, setTextWithOnMeasure_impl, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, setText, setText_super, setText_impl, getText, getText_super, getText_impl, onEventRaw, onEventRaw_super, onEventRaw_impl, getFontHeight, getFontHeight_super, getFontHeight_impl, paintXY, paintXY_super, paintXY_impl, paintThreedXYZ, paintThreedXYZ_super, paintThreedXYZ_impl, customTextBox, lastText, hasChanged, textChangeListener)
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
import qualified TextChangeListener -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified RawKeyEventListener -- org.allbinary.game.input.event.RawKeyEventListener
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified CustomTextBox -- org.allbinary.graphics.form.item.CustomTextBox
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified TextInterface

-- implements RawKeyEventListener
-- implements UpdateMyFontInterface
-- implements TextInterface
data CustomTextBoxIndexedAnimation = CustomTextBoxIndexedAnimation
    { header_ :: JavaHeader
    , base :: IndexedAnimation.IndexedAnimation
    , customTextBox :: IORef (CustomTextBox.CustomTextBox)
    , lastText :: IORef (String)
    , hasChanged :: IORef (Bool)
    , textChangeListener :: IORef (TextChangeListener.TextChangeListener)
    }

instance JavaNull CustomTextBoxIndexedAnimation where
    javaNull = javaNullRecord "CustomTextBoxIndexedAnimation"

instance JavaEquals CustomTextBoxIndexedAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomTextBoxIndexedAnimation where
    (==) = jrecordEquals

instance JavaObjectClass CustomTextBoxIndexedAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CustomTextBoxIndexedAnimation
newRecord_ = do
    base <- IndexedAnimation.newRecord_
    let header_ = base.header_
    customTextBox <- newIORef javaNull
    lastText <- newIORef ""
    hasChanged <- newIORef False
    textChangeListener <- newIORef javaNull
    let this = CustomTextBoxIndexedAnimation header_ base customTextBox lastText hasChanged textChangeListener
    jregisterLevel header_ this
    RawKeyEventListener.registerInterface_ header_
    UpdateMyFontInterface.registerInterface_ header_
    TextInterface.registerInterface_ header_
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "setBackgroundBasicColorP" (\() -> setBackgroundBasicColorP_impl this)
    jregisterMethod header_ "setTextWithOnMeasure" (\() -> setTextWithOnMeasure_impl this)
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "setText" (\() -> setText_impl this)
    jregisterMethod header_ "getText" (\() -> getText_impl this)
    jregisterMethod header_ "onEventRaw" (\() -> onEventRaw_impl this)
    jregisterMethod header_ "getFontHeight" (\() -> getFontHeight_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "paintThreedXYZ" (\() -> paintThreedXYZ_impl this)
    pure this

initFields_ :: CustomTextBoxIndexedAnimation -> IO ()
initFields_ this = do
    jset this.customTextBox (javaNull)
    jset this.lastText ((jget ((jio (StringUtil.getInstance))).iNIT_STRING))
    jset this.hasChanged (True)
    jset this.textChangeListener =<< (TextChangeListener.getInstance)
    pure ()

new_1 :: CustomTextBox.CustomTextBox -> IO CustomTextBoxIndexedAnimation
new_1 customTextBox = do
    this <- newRecord_
    init_1 this customTextBox
    pure this

init_1 :: CustomTextBoxIndexedAnimation -> CustomTextBox.CustomTextBox -> IO ()
init_1 this customTextBox = do
        IndexedAnimation.init_1 this.base (jio (AnimationBehavior.getInstance))
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).customTextBox (customTextBox)
        pure ()


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: CustomTextBoxIndexedAnimation))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: CustomTextBoxIndexedAnimation)) a1

setBasicColorP_impl :: CustomTextBoxIndexedAnimation -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        Control.Monad.void (ABTextFieldItem.setForegroundBasicColorP ((jio (CustomTextBox.getTextFieldItem ((jget (this).customTextBox))))) basicColor)
        pure ()


setBackgroundBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColorP object_ a1 = jmethod object_ "setBackgroundBasicColorP" (\() -> (setBackgroundBasicColorP_impl (javaCast object_ :: CustomTextBoxIndexedAnimation))) () a1

setBackgroundBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColorP_super object_ a1 = (setBackgroundBasicColorP_impl (javaCast object_ :: CustomTextBoxIndexedAnimation)) a1

setBackgroundBasicColorP_impl :: CustomTextBoxIndexedAnimation -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColorP_impl this basicColor = do
        Control.Monad.void (ABTextFieldItem.setBackgroundBasicColorP ((jio (CustomTextBox.getTextFieldItem ((jget (this).customTextBox))))) basicColor)
        pure ()


setTextWithOnMeasure :: (JavaObjectClass this_) => this_ -> String -> TextChangeListener.TextChangeListener -> IO (())
setTextWithOnMeasure object_ a1 a2 = jmethod object_ "setTextWithOnMeasure" (\() -> (setTextWithOnMeasure_impl (javaCast object_ :: CustomTextBoxIndexedAnimation))) () a1 a2

setTextWithOnMeasure_super :: (JavaObjectClass this_) => this_ -> String -> TextChangeListener.TextChangeListener -> IO (())
setTextWithOnMeasure_super object_ a1 a2 = (setTextWithOnMeasure_impl (javaCast object_ :: CustomTextBoxIndexedAnimation)) a1 a2

setTextWithOnMeasure_impl :: CustomTextBoxIndexedAnimation -> String -> TextChangeListener.TextChangeListener -> IO (())
setTextWithOnMeasure_impl this text textChangeListener = do
        Control.Monad.void (CustomTextBoxIndexedAnimation.setText this text)
        jset (this).textChangeListener (textChangeListener)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: CustomTextBoxIndexedAnimation))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: CustomTextBoxIndexedAnimation)) a1

updateMeasurement_impl :: CustomTextBoxIndexedAnimation -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        Control.Monad.void (TextChangeListener.onMeasure ((jget (this).textChangeListener)))
        assignedValue <- (TextChangeListener.getInstance)
        jset (this).textChangeListener (assignedValue)
        pure ()


setText :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText object_ a1 = jmethod object_ "setText" (\() -> (setText_impl (javaCast object_ :: CustomTextBoxIndexedAnimation))) () a1

setText_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText_super object_ a1 = (setText_impl (javaCast object_ :: CustomTextBoxIndexedAnimation)) a1

setText_impl :: CustomTextBoxIndexedAnimation -> String -> IO (())
setText_impl this text = do
        when ((jget (this).lastText) /= text) $ do
            jset (this).hasChanged (True)
            jset (this).lastText (text)
            Control.Monad.void (ABTextFieldItem.setString ((jio (CustomTextBox.getTextFieldItem ((jget (this).customTextBox))))) text)
        pure ()


getText :: (JavaObjectClass this_) => this_ -> IO (String)
getText object_ = jmethod object_ "getText" (\() -> (getText_impl (javaCast object_ :: CustomTextBoxIndexedAnimation))) ()

getText_super :: (JavaObjectClass this_) => this_ -> IO (String)
getText_super object_ = (getText_impl (javaCast object_ :: CustomTextBoxIndexedAnimation))

getText_impl :: CustomTextBoxIndexedAnimation -> IO (String)
getText_impl this = do
        (ABTextFieldItem.getString ((jio (CustomTextBox.getTextFieldItem ((jget (this).customTextBox))))))


onEventRaw :: (JavaObjectClass this_) => this_ -> Int -> Int -> Bool -> IO (())
onEventRaw object_ a1 a2 a3 = jmethod object_ "onEventRaw" (\() -> (onEventRaw_impl (javaCast object_ :: CustomTextBoxIndexedAnimation))) () a1 a2 a3

onEventRaw_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Bool -> IO (())
onEventRaw_super object_ a1 a2 a3 = (onEventRaw_impl (javaCast object_ :: CustomTextBoxIndexedAnimation)) a1 a2 a3

onEventRaw_impl :: CustomTextBoxIndexedAnimation -> Int -> Int -> Bool -> IO (())
onEventRaw_impl this keyCode deviceId repeated = do
        Control.Monad.void (CustomTextBox.onEventRaw ((jget (this).customTextBox)) keyCode deviceId repeated)
        pure ()


getFontHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getFontHeight object_ = jmethod object_ "getFontHeight" (\() -> (getFontHeight_impl (javaCast object_ :: CustomTextBoxIndexedAnimation))) ()

getFontHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFontHeight_super object_ = (getFontHeight_impl (javaCast object_ :: CustomTextBoxIndexedAnimation))

getFontHeight_impl :: CustomTextBoxIndexedAnimation -> IO (Int)
getFontHeight_impl this = do
        (ABTextFieldItem.getFontHeight ((jio (CustomTextBox.getTextFieldItem ((jget (this).customTextBox))))))


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: CustomTextBoxIndexedAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: CustomTextBoxIndexedAnimation)) a1 a2 a3

paintXY_impl :: CustomTextBoxIndexedAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (CustomTextBox.paintXY ((jget (this).customTextBox)) graphics x y)
        pure ()


paintThreedXYZ :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ object_ a1 a2 a3 a4 = jmethod object_ "paintThreedXYZ" (\() -> (paintThreedXYZ_impl (javaCast object_ :: CustomTextBoxIndexedAnimation))) () a1 a2 a3 a4

paintThreedXYZ_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_super object_ a1 a2 a3 a4 = (paintThreedXYZ_impl (javaCast object_ :: CustomTextBoxIndexedAnimation)) a1 a2 a3 a4

paintThreedXYZ_impl :: CustomTextBoxIndexedAnimation -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_impl this graphics x y z = do
        pure ()


