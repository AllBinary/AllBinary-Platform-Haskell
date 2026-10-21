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
-- package org.allbinary.graphics.paint
module SimpleTextPaintable (module SimpleTextPaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, paint, paint_super, paint_impl, setBasicColorP, setBasicColorP_super, setBasicColorP_impl, getBasicColorP, getBasicColorP_super, getBasicColorP_impl, setText, setText_super, setText_impl, getText, getText_super, getText_impl, displayInfoSingleton, updateMyFontProcessor, myFontProcessor, text, basicColor, topScoresWidth, fontHeight, anchor)
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
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified Paintable

-- implements UpdateMyFontInterface
data SimpleTextPaintable = SimpleTextPaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , displayInfoSingleton :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , updateMyFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , text :: IORef (String)
    , basicColor :: IORef (BasicColor.BasicColor)
    , topScoresWidth :: IORef (Int)
    , fontHeight :: IORef (Int)
    , anchor :: IORef (Int)
    }

instance JavaNull SimpleTextPaintable where
    javaNull = javaNullRecord "SimpleTextPaintable"

instance JavaEquals SimpleTextPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SimpleTextPaintable where
    (==) = jrecordEquals

instance JavaObjectClass SimpleTextPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SimpleTextPaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    displayInfoSingleton <- newIORef javaNull
    updateMyFontProcessor <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    text <- newIORef ""
    basicColor <- newIORef javaNull
    topScoresWidth <- newIORef 0
    fontHeight <- newIORef 0
    anchor <- newIORef 0
    let this = SimpleTextPaintable header_ base displayInfoSingleton updateMyFontProcessor myFontProcessor text basicColor topScoresWidth fontHeight anchor
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "getBasicColorP" (\() -> getBasicColorP_impl this)
    jregisterMethod header_ "setText" (\() -> setText_impl this)
    jregisterMethod header_ "getText" (\() -> getText_impl this)
    pure this

initFields_ :: SimpleTextPaintable -> IO ()
initFields_ this = do
    jset this.displayInfoSingleton =<< (DisplayInfoSingleton.getInstance)
    jset this.updateMyFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.myFontProcessor ((jget (this).updateMyFontProcessor))
    jset this.text (javaNull)
    jset this.basicColor (javaNull)
    jset this.topScoresWidth (0)
    jset this.fontHeight (0)
    jset this.anchor ((jget Anchor.tOP_LEFT))
    pure ()

new_2 :: String -> BasicColor.BasicColor -> IO SimpleTextPaintable
new_2 text basicColor = do
    this <- newRecord_
    init_2 this text basicColor
    pure this

init_2 :: SimpleTextPaintable -> String -> BasicColor.BasicColor -> IO ()
init_2 this text basicColor = do
        Paintable.init_ this.base
        initFields_ this
        jset (this).text (text)
        jset (this).basicColor (basicColor)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: SimpleTextPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: SimpleTextPaintable)) a1

updateMeasurement_impl :: SimpleTextPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        jset (this).topScoresWidth ((((jio (Font.stringWidth font (jget (this).text))) `Data.Bits.shiftR` 1)))
        assignedValue <- (Font.getHeight font)
        jset (this).fontHeight (assignedValue)
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: SimpleTextPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: SimpleTextPaintable)) a1

paint_impl :: SimpleTextPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        let width = (jindex ((jio (DisplayInfoSingleton.getLast ((jget (this).displayInfoSingleton))))) ((jget ((jget (this).displayInfoSingleton)).wIDTH)))
        Control.Monad.void (Graphics.setColor graphics (jio (BasicColor.intValue ((jio (SimpleTextPaintable.getBasicColorP this))))))
        Control.Monad.void (Graphics.drawString graphics (jget (this).text) (((width `Data.Bits.shiftR` 1)) - (jget (this).topScoresWidth)) (jget (this).fontHeight) (jget (this).anchor))
        pure ()


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: SimpleTextPaintable))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: SimpleTextPaintable)) a1

setBasicColorP_impl :: SimpleTextPaintable -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        jset (this).basicColor (basicColor)
        pure ()


getBasicColorP :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP object_ = jmethod object_ "getBasicColorP" (\() -> (getBasicColorP_impl (javaCast object_ :: SimpleTextPaintable))) ()

getBasicColorP_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP_super object_ = (getBasicColorP_impl (javaCast object_ :: SimpleTextPaintable))

getBasicColorP_impl :: SimpleTextPaintable -> IO (BasicColor.BasicColor)
getBasicColorP_impl this = do
        pure ((jget (this).basicColor))


setText :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText object_ a1 = jmethod object_ "setText" (\() -> (setText_impl (javaCast object_ :: SimpleTextPaintable))) () a1

setText_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText_super object_ a1 = (setText_impl (javaCast object_ :: SimpleTextPaintable)) a1

setText_impl :: SimpleTextPaintable -> String -> IO (())
setText_impl this text = do
        jset (this).text (text)
        jset (this).myFontProcessor ((jget (this).updateMyFontProcessor))
        pure ()


getText :: (JavaObjectClass this_) => this_ -> IO (String)
getText object_ = jmethod object_ "getText" (\() -> (getText_impl (javaCast object_ :: SimpleTextPaintable))) ()

getText_super :: (JavaObjectClass this_) => this_ -> IO (String)
getText_super object_ = (getText_impl (javaCast object_ :: SimpleTextPaintable))

getText_impl :: SimpleTextPaintable -> IO (String)
getText_impl this = do
        pure ((jget (this).text))


