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
-- package org.allbinary.game.paint
module FullScreenPaintable (module FullScreenPaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, paint, paint_super, paint_impl, displayInfo, myFontProcessor, fULLSCREEN_TEXT, anchor, y, beginWidth)
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
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified Paintable -- org.allbinary.graphics.paint.Paintable

-- implements UpdateMyFontInterface
data FullScreenPaintable = FullScreenPaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , displayInfo :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , fULLSCREEN_TEXT :: IORef (String)
    , anchor :: IORef (Int)
    , y :: IORef (Int)
    , beginWidth :: IORef (Int)
    }

instance JavaNull FullScreenPaintable where
    javaNull = javaNullRecord "FullScreenPaintable"

instance JavaEquals FullScreenPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FullScreenPaintable where
    (==) = jrecordEquals

instance JavaObjectClass FullScreenPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO FullScreenPaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    displayInfo <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    fULLSCREEN_TEXT <- newIORef ""
    anchor <- newIORef 0
    y <- newIORef 0
    beginWidth <- newIORef 0
    let this = FullScreenPaintable header_ base displayInfo myFontProcessor fULLSCREEN_TEXT anchor y beginWidth
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: FullScreenPaintable -> IO ()
initFields_ this = do
    jset this.displayInfo =<< (DisplayInfoSingleton.getInstance)
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.fULLSCREEN_TEXT ("F11 - Toggle Fullscreen")
    jset this.anchor ((jget Anchor.tOP_LEFT))
    jset this.y (0)
    jset this.beginWidth (0)
    pure ()


getInstance :: IO (FullScreenPaintable)
getInstance = do
        (new_)

new_ :: IO FullScreenPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FullScreenPaintable -> IO ()
init_ this = do
        Paintable.init_ this.base
        initFields_ this
        pure ()
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: FullScreenPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: FullScreenPaintable)) a1

updateMeasurement_impl :: FullScreenPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        jset (this).y ((4 * (jio (Font.getHeight font))))
        jset (this).beginWidth ((((jio (Font.stringWidth font (jget (this).fULLSCREEN_TEXT))) `Data.Bits.shiftR` 1)))
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: FullScreenPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: FullScreenPaintable)) a1

paint_impl :: FullScreenPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        halfWidth <- (DisplayInfoSingleton.getLastHalfWidth ((jget (this).displayInfo)))
        height <- (DisplayInfoSingleton.getLastHeight ((jget (this).displayInfo)))
        Control.Monad.void (Graphics.drawString graphics (jget (this).fULLSCREEN_TEXT) (halfWidth - (jget (this).beginWidth)) (height - (jget (this).y)) (jget (this).anchor))
        pure ()


