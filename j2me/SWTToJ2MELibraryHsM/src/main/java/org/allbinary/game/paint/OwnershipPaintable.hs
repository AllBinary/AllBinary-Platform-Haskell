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
module OwnershipPaintable (module OwnershipPaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, setBasicColorP, setBasicColorP_super, setBasicColorP_impl, getBasicColorP, getBasicColorP_super, getBasicColorP_impl, paint, paint_super, paint_impl, logUtil, displayInfo, myFontProcessor, cOPYRIGHT, basicColor, color, anchor, cOPYRIGHT_Y, beginWidth)
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
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

-- implements UpdateMyFontInterface
data OwnershipPaintable = OwnershipPaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , logUtil :: IORef (LogUtil.LogUtil)
    , displayInfo :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , cOPYRIGHT :: IORef (String)
    , basicColor :: IORef (BasicColor.BasicColor)
    , color :: IORef (Int)
    , anchor :: IORef (Int)
    , cOPYRIGHT_Y :: IORef (Int)
    , beginWidth :: IORef (Int)
    }

instance JavaNull OwnershipPaintable where
    javaNull = javaNullRecord "OwnershipPaintable"

instance JavaEquals OwnershipPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OwnershipPaintable where
    (==) = jrecordEquals

instance JavaObjectClass OwnershipPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OwnershipPaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    displayInfo <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    cOPYRIGHT <- newIORef ""
    basicColor <- newIORef javaNull
    color <- newIORef 0
    anchor <- newIORef 0
    cOPYRIGHT_Y <- newIORef 0
    beginWidth <- newIORef 0
    let this = OwnershipPaintable header_ base logUtil displayInfo myFontProcessor cOPYRIGHT basicColor color anchor cOPYRIGHT_Y beginWidth
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "getBasicColorP" (\() -> getBasicColorP_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: OwnershipPaintable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.displayInfo =<< (DisplayInfoSingleton.getInstance)
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.cOPYRIGHT ("AllBinary Copyright (c) 2011")
    jset this.basicColor ((jget ((jio (BasicColorFactory.getInstance))).wHITE))
    jset this.color =<< (BasicColor.intValue ((jget (this).basicColor)))
    jset this.anchor ((jget Anchor.tOP_LEFT))
    jset this.cOPYRIGHT_Y (0)
    jset this.beginWidth (0)
    pure ()


getInstance :: IO (OwnershipPaintable)
getInstance = do
        (new_)

new_ :: IO OwnershipPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OwnershipPaintable -> IO ()
init_ this = do
        Paintable.init_ this.base
        initFields_ this
        pure ()
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: OwnershipPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: OwnershipPaintable)) a1

updateMeasurement_impl :: OwnershipPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        jset (this).cOPYRIGHT_Y ((2 * (jio (Font.getHeight font))))
        jset (this).beginWidth ((((jio (Font.stringWidth font (jget (this).cOPYRIGHT))) `Data.Bits.shiftR` 1)))
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: OwnershipPaintable))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: OwnershipPaintable)) a1

setBasicColorP_impl :: OwnershipPaintable -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        jset (this).basicColor (basicColor)
        assignedValue <- (BasicColor.intValue basicColor)
        jset (this).color (assignedValue)
        pure ()


getBasicColorP :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP object_ = jmethod object_ "getBasicColorP" (\() -> (getBasicColorP_impl (javaCast object_ :: OwnershipPaintable))) ()

getBasicColorP_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP_super object_ = (getBasicColorP_impl (javaCast object_ :: OwnershipPaintable))

getBasicColorP_impl :: OwnershipPaintable -> IO (BasicColor.BasicColor)
getBasicColorP_impl this = do
        pure ((jget (this).basicColor))


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: OwnershipPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: OwnershipPaintable)) a1

paint_impl :: OwnershipPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (Graphics.setColor graphics (jget (this).color))
        halfWidth <- (DisplayInfoSingleton.getLastHalfWidth ((jget (this).displayInfo)))
        height <- (DisplayInfoSingleton.getLastHeight ((jget (this).displayInfo)))
        Control.Monad.void (Graphics.drawString graphics (jget (this).cOPYRIGHT) (halfWidth - (jget (this).beginWidth)) (height - (jget (this).cOPYRIGHT_Y)) (jget (this).anchor))
        pure ()


