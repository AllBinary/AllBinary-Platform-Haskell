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
-- package org.allbinary.graphics.form.item
module CustomTextBox (module CustomTextBox, module GameCommandCanvas) where

import GameCommandCanvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, submit, submit_super, submit_impl, onEventRaw, onEventRaw_super, onEventRaw_impl, keyPressed, keyPressed_super, keyPressed_impl, keyReleased, keyReleased_super, keyReleased_impl, keyRepeated, keyRepeated_super, keyRepeated_impl, keyPressedByDevice, keyPressedByDevice_super, keyPressedByDevice_impl, keyReleasedByDevice, keyReleasedByDevice_super, keyReleasedByDevice_impl, paint, paint_super, paint_impl, paintXY, paintXY_super, paintXY_impl, getTextFieldItem, getTextFieldItem_super, getTextFieldItem_impl, textFieldItem, inputFactory)
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
import qualified ABTextFieldItem -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified DisplayInfoSingleton -- same package or java.lang
import qualified GameInputStrings -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified GameCommandCanvas -- org.allbinary.game.displayable.canvas.GameCommandCanvas
import qualified Input -- org.allbinary.game.input.Input
import qualified InputFactory -- org.allbinary.game.input.InputFactory
import qualified PlatformKeyFactory -- org.allbinary.game.input.PlatformKeyFactory
import qualified RawKeyEventListener -- org.allbinary.game.input.event.RawKeyEventListener
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified TextItemVisitor -- org.allbinary.graphics.form.item.validation.TextItemVisitor
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps

-- implements RawKeyEventListener
data CustomTextBox = CustomTextBox
    { header_ :: JavaHeader
    , base :: GameCommandCanvas.GameCommandCanvas
    , textFieldItem :: IORef (ABTextFieldItem.ABTextFieldItem)
    , inputFactory :: IORef (InputFactory.InputFactory)
    }

instance JavaNull CustomTextBox where
    javaNull = javaNullRecord "CustomTextBox"

instance JavaEquals CustomTextBox where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomTextBox where
    (==) = jrecordEquals

instance JavaObjectClass CustomTextBox where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CustomTextBox
newRecord_ = do
    base <- GameCommandCanvas.newRecord_
    let header_ = base.header_
    textFieldItem <- newIORef javaNull
    inputFactory <- newIORef javaNull
    let this = CustomTextBox header_ base textFieldItem inputFactory
    jregisterLevel header_ this
    RawKeyEventListener.registerInterface_ header_
    jregisterMethod header_ "submit" (\() -> submit_impl this)
    jregisterMethod header_ "onEventRaw" (\() -> onEventRaw_impl this)
    jregisterMethod header_ "keyPressed" (\() -> keyPressed_impl this)
    jregisterMethod header_ "keyReleased" (\() -> keyReleased_impl this)
    jregisterMethod header_ "keyRepeated" (\() -> keyRepeated_impl this)
    jregisterMethod header_ "keyPressedByDevice" (\() -> keyPressedByDevice_impl this)
    jregisterMethod header_ "keyReleasedByDevice" (\() -> keyReleasedByDevice_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "getTextFieldItem" (\() -> getTextFieldItem_impl this)
    pure this

initFields_ :: CustomTextBox -> IO ()
initFields_ this = do
    jset this.textFieldItem (javaNull)
    jset this.inputFactory =<< (InputFactory.getInstance)
    pure ()

new_8 :: CommandListener.CommandListener -> String -> String -> Int -> Int -> Font.Font -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO CustomTextBox
new_8 cmdListener label text maxSize constraints font backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_8 this cmdListener label text maxSize constraints font backgroundBasicColor foregroundBasicColor
    pure this

init_8 :: CustomTextBox -> CommandListener.CommandListener -> String -> String -> Int -> Int -> Font.Font -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_8 this cmdListener label text maxSize constraints font backgroundBasicColor foregroundBasicColor = do
        GameCommandCanvas.init_4 this.base (cmdListener) (label) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        stringUtil <- (StringUtil.getInstance)
        textFieldItem <- (ABTextFieldItem.new_10 this (jio (TextItemVisitor.new_)) (jget (stringUtil).eMPTY_STRING) (jget (stringUtil).eMPTY_STRING) maxSize 0 (jget (stringUtil).eMPTY_STRING) font backgroundBasicColor foregroundBasicColor)
        Control.Monad.void (ABTextFieldItem.setString textFieldItem text)
        jset (this).textFieldItem (textFieldItem)
        Control.Monad.void (GameCommandCanvas.setTitle this label)
        pure ()


submit :: (JavaObjectClass this_) => this_ -> IO (())
submit object_ = jmethod object_ "submit" (\() -> (submit_impl (javaCast object_ :: CustomTextBox))) ()

submit_super :: (JavaObjectClass this_) => this_ -> IO (())
submit_super object_ = (submit_impl (javaCast object_ :: CustomTextBox))

submit_impl :: CustomTextBox -> IO (())
submit_impl this = do
        pure ()


onEventRaw :: (JavaObjectClass this_) => this_ -> Int -> Int -> Bool -> IO (())
onEventRaw object_ a1 a2 a3 = jmethod object_ "onEventRaw" (\() -> (onEventRaw_impl (javaCast object_ :: CustomTextBox))) () a1 a2 a3

onEventRaw_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Bool -> IO (())
onEventRaw_super object_ a1 a2 a3 = (onEventRaw_impl (javaCast object_ :: CustomTextBox)) a1 a2 a3

onEventRaw_impl :: CustomTextBox -> Int -> Int -> Bool -> IO (())
onEventRaw_impl this keyCode deviceId repeated = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.base.commonStrings)).sTART)))) keyCode))))) this "onEvent")
        Control.Monad.void (CustomTextBox.keyPressedByDevice this keyCode deviceId)
        pure ()


keyPressed :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPressed object_ a1 = jmethod object_ "keyPressed" (\() -> (keyPressed_impl (javaCast object_ :: CustomTextBox))) () a1

keyPressed_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPressed_super object_ a1 = (keyPressed_impl (javaCast object_ :: CustomTextBox)) a1

keyPressed_impl :: CustomTextBox -> Int -> IO (())
keyPressed_impl this keyCode = do
        Control.Monad.void (CustomTextBox.keyPressedByDevice this keyCode 0)
        pure ()


keyReleased :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyReleased object_ a1 = jmethod object_ "keyReleased" (\() -> (keyReleased_impl (javaCast object_ :: CustomTextBox))) () a1

keyReleased_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyReleased_super object_ a1 = (keyReleased_impl (javaCast object_ :: CustomTextBox)) a1

keyReleased_impl :: CustomTextBox -> Int -> IO (())
keyReleased_impl this keyCode = do
        Control.Monad.void (CustomTextBox.keyReleasedByDevice this keyCode 0)
        pure ()


keyRepeated :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyRepeated object_ a1 = jmethod object_ "keyRepeated" (\() -> (keyRepeated_impl (javaCast object_ :: CustomTextBox))) () a1

keyRepeated_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyRepeated_super object_ a1 = (keyRepeated_impl (javaCast object_ :: CustomTextBox)) a1

keyRepeated_impl :: CustomTextBox -> Int -> IO (())
keyRepeated_impl this keyCode = do
        Control.Monad.void (GameCommandCanvas.keyRepeatedByDevice this keyCode 0)
        pure ()


keyPressedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice object_ a1 a2 = jmethod object_ "keyPressedByDevice" (\() -> (keyPressedByDevice_impl (javaCast object_ :: CustomTextBox))) () a1 a2

keyPressedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice_super object_ a1 a2 = (keyPressedByDevice_impl (javaCast object_ :: CustomTextBox)) a1 a2

keyPressedByDevice_impl :: CustomTextBox -> Int -> Int -> IO (())
keyPressedByDevice_impl this keyCode deviceId = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.gameInputStrings)).kEY_PRESSED) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) keyCode))))) this (jget ((jget (this).base.gameInputStrings)).kEY_PRESSED))
            platformKeyFactory <- (PlatformKeyFactory.getInstance)
            input <- (InputFactory.getInstanceById ((jget (this).inputFactory)) keyCode)
            if (jio (PlatformKeyFactory.isSubmission platformKeyFactory input)) then do
                Control.Monad.void (CustomTextBox.submit this)
            else do
                Control.Monad.void (ABTextFieldItem.keyPressed ((jget (this).textFieldItem)) keyCode)
        pure ()


keyReleasedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyReleasedByDevice object_ a1 a2 = jmethod object_ "keyReleasedByDevice" (\() -> (keyReleasedByDevice_impl (javaCast object_ :: CustomTextBox))) () a1 a2

keyReleasedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyReleasedByDevice_super object_ a1 a2 = (keyReleasedByDevice_impl (javaCast object_ :: CustomTextBox)) a1 a2

keyReleasedByDevice_impl :: CustomTextBox -> Int -> Int -> IO (())
keyReleasedByDevice_impl this keyCode deviceId = do
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: CustomTextBox))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: CustomTextBox)) a1

paint_impl :: CustomTextBox -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (Graphics.setColor graphics (jget (this).base.backgroundColor))
        Control.Monad.void (Graphics.fillRect graphics 0 0 (jio (DisplayInfoSingleton.getLastWidth ((jget (this).base.base.displayInfo)))) (jio (DisplayInfoSingleton.getLastHeight ((jget (this).base.base.displayInfo)))))
        Control.Monad.void (Graphics.setColor graphics (jget (this).base.foregroundColor))
        when (Prelude.not (jio (J2MEUtil.isJ2ME))) $ do
            Control.Monad.void (Graphics.drawString graphics (jio (GameCommandCanvas.getTitle this)) 8 1 0)
        Control.Monad.void (CustomTextBox.paintXY this graphics 8 ((jio (Graphics.getHeight ((jio (Graphics.getFont graphics))))) + 2))
        Control.Monad.void (GameCommandCanvas.paint_super this.base graphics)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: CustomTextBox))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: CustomTextBox)) a1 a2 a3

paintXY_impl :: CustomTextBox -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (ABTextFieldItem.paintXY ((jget (this).textFieldItem)) graphics x y)
        pure ()


getTextFieldItem :: (JavaObjectClass this_) => this_ -> IO (ABTextFieldItem.ABTextFieldItem)
getTextFieldItem object_ = jmethod object_ "getTextFieldItem" (\() -> (getTextFieldItem_impl (javaCast object_ :: CustomTextBox))) ()

getTextFieldItem_super :: (JavaObjectClass this_) => this_ -> IO (ABTextFieldItem.ABTextFieldItem)
getTextFieldItem_super object_ = (getTextFieldItem_impl (javaCast object_ :: CustomTextBox))

getTextFieldItem_impl :: CustomTextBox -> IO (ABTextFieldItem.ABTextFieldItem)
getTextFieldItem_impl this = do
        pure ((jget (this).textFieldItem))


