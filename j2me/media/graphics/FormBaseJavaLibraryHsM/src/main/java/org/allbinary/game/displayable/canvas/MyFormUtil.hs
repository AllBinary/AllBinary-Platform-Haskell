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
-- package org.allbinary.game.displayable.canvas
module MyFormUtil where

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
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified RectangleFactory -- org.allbinary.graphics.RectangleFactory
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified SWTJOGLProcessor -- org.allbinary.graphics.threed.SWTJOGLProcessor
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data MyFormUtil = MyFormUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , popupMenuRectangle :: IORef (Rectangle.Rectangle)
    }

instance JavaNull MyFormUtil where
    javaNull = javaNullRecord "MyFormUtil"

instance JavaEquals MyFormUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MyFormUtil where
    (==) = jrecordEquals

instance JavaObjectClass MyFormUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MyFormUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    popupMenuRectangle <- newIORef javaNull
    let this = MyFormUtil header_ logUtil commonStrings popupMenuRectangle
    jregisterLevel header_ this
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "getPopupMenuRectangle" (\() -> getPopupMenuRectangle_impl this)
    pure this

initFields_ :: MyFormUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.popupMenuRectangle (RectangleFactory.sINGLETON)
    pure ()

new_ :: IO MyFormUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MyFormUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (MyFormUtil)
getInstance = do
        pure (MyFormUtil.instance_)


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: MyFormUtil))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: MyFormUtil)) a1

updateMeasurement_impl :: MyFormUtil -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        displayInfo <- (DisplayInfoSingleton.getInstance)
        features <- (Features.getInstance)
        isOpenGL <- (Features.isDefault features (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL))
        let tOTAL_CHAR_WIDTH = (if ((jio (SWTJOGLProcessor.isJOGL ((jio (SWTJOGLProcessor.getInstance))))) && isOpenGL) then 2 else 3)
        width <- (MyFontProcessor.defaultStringWidth font tOTAL_CHAR_WIDTH)
        pointFactory <- (PointFactory.getInstance)
        if ((jio (DisplayInfoSingleton.getLastHeight displayInfo)) < 320) then do
            assignedValue <- (Rectangle.new_3 (jio (PointFactory.createXY pointFactory 0 25)) width ((((jio (Font.getHeight font)) * 4)) + 2))
            jset (this).popupMenuRectangle (assignedValue)
        else do
            assignedValue <- (Rectangle.new_3 (jio (PointFactory.createXY pointFactory 0 ((jio (DisplayInfoSingleton.getLastHalfHeight displayInfo)) - 70))) width (((jio (Font.getHeight font)) * 5)))
            jset (this).popupMenuRectangle (assignedValue)
        pure ()


getPopupMenuRectangle :: (JavaObjectClass this_) => this_ -> IO (Rectangle.Rectangle)
getPopupMenuRectangle object_ = jmethod object_ "getPopupMenuRectangle" (\() -> (getPopupMenuRectangle_impl (javaCast object_ :: MyFormUtil))) ()

getPopupMenuRectangle_super :: (JavaObjectClass this_) => this_ -> IO (Rectangle.Rectangle)
getPopupMenuRectangle_super object_ = (getPopupMenuRectangle_impl (javaCast object_ :: MyFormUtil))

getPopupMenuRectangle_impl :: MyFormUtil -> IO (Rectangle.Rectangle)
getPopupMenuRectangle_impl this = do
        pure ((jget (this).popupMenuRectangle))


