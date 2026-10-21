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
-- package org.allbinary.graphics.draw
module KeyValueDrawCharArray where

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
import qualified CharArrayFactory -- org.allbinary.logic.java.character.CharArrayFactory
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor

-- implements UpdateMyFontInterface
data KeyValueDrawCharArray = KeyValueDrawCharArray
    { header_ :: JavaHeader
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , lABEL :: IORef (String)
    , labelX :: IORef (Int)
    , valueX :: IORef (Int)
    , value :: IORef (JavaArray (Char))
    , len :: IORef (Int)
    }

instance JavaNull KeyValueDrawCharArray where
    javaNull = javaNullRecord "KeyValueDrawCharArray"

instance JavaEquals KeyValueDrawCharArray where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq KeyValueDrawCharArray where
    (==) = jrecordEquals

instance JavaObjectClass KeyValueDrawCharArray where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO KeyValueDrawCharArray
newRecord_ = do
    header_ <- newJavaHeader
    myFontProcessor <- newIORef javaNull
    lABEL <- newIORef ""
    labelX <- newIORef 0
    valueX <- newIORef 0
    value <- newIORef javaNull
    len <- newIORef 0
    let this = KeyValueDrawCharArray header_ myFontProcessor lABEL labelX valueX value len
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: KeyValueDrawCharArray -> IO ()
initFields_ this = do
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.lABEL (javaNull)
    jset this.labelX (0)
    jset this.valueX (0)
    jset this.value =<< (CharArrayFactory.getZeroCharArray ((jio (CharArrayFactory.getInstance))))
    jset this.len (0)
    pure ()

new_2 :: String -> Int -> IO KeyValueDrawCharArray
new_2 label x = do
    this <- newRecord_
    init_2 this label x
    pure this

init_2 :: KeyValueDrawCharArray -> String -> Int -> IO ()
init_2 this label x = do
        initFields_ this
        jset (this).lABEL (label)
        jset (this).labelX (x)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: KeyValueDrawCharArray))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: KeyValueDrawCharArray)) a1

updateMeasurement_impl :: KeyValueDrawCharArray -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        let labelWidth = ((jio (Graphics.stringWidth ((jio (Graphics.getFont graphics))) (jget (this).lABEL))) - (Prelude.length (jget (this).lABEL)))
        jset (this).valueX ((labelWidth + (jget (this).labelX)))
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> IO (())
paint object_ a1 a2 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: KeyValueDrawCharArray))) () a1 a2

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> IO (())
paint_super object_ a1 a2 = (paint_impl (javaCast object_ :: KeyValueDrawCharArray)) a1 a2

paint_impl :: KeyValueDrawCharArray -> Graphics.Graphics -> Int -> IO (())
paint_impl this graphics y = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (Graphics.drawString graphics (jget (this).lABEL) (jget (this).labelX) y 0)
        Control.Monad.void (Graphics.drawChars graphics (jget (this).value) 0 (jget (this).len) (jget (this).valueX) y 0)
        pure ()


update :: (JavaObjectClass this_) => this_ -> JavaArray (Char) -> Int -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: KeyValueDrawCharArray))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> JavaArray (Char) -> Int -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: KeyValueDrawCharArray)) a1 a2

update_impl :: KeyValueDrawCharArray -> JavaArray (Char) -> Int -> IO (())
update_impl this value len = do
        jset (this).value (value)
        jset (this).len (len)
        pure ()


