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
-- package org.allbinary.graphics.displayable
module CanvasStrings where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil

data CanvasStrings = CanvasStrings
    { header_ :: JavaHeader
    , cONSTRUCTOR :: IORef (String)
    , pAUSE :: IORef (String)
    , uN_PAUSE :: IORef (String)
    , sET_FULL_SCREEN_MODE :: IORef (String)
    , sIZE_CHANGED :: IORef (String)
    , sCALED_IMAGES :: IORef (String)
    , pAINT :: IORef (String)
    , oN_DISPLAY_CHANGE_EVENT :: IORef (String)
    , uPDATE_MEASUREMENT :: IORef (String)
    , fD_WIDTH :: IORef (String)
    , fD_HEIGHT :: IORef (String)
    , eMPTY_CHILD_NAME_LIST :: IORef (BasicArrayList.BasicArrayList)
    , aBOUT :: IORef (String)
    , oPTIONS :: IORef (String)
    , fONT_ATLAS :: IORef (String)
    , oBJ_MODEL :: IORef (String)
    , mD2_MODEL :: IORef (String)
    , _PNG :: IORef (String)
    }

instance JavaNull CanvasStrings where
    javaNull = javaNullRecord "CanvasStrings"

instance JavaEquals CanvasStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CanvasStrings where
    (==) = jrecordEquals

instance JavaObjectClass CanvasStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CanvasStrings
newRecord_ = do
    header_ <- newJavaHeader
    cONSTRUCTOR <- newIORef ""
    pAUSE <- newIORef ""
    uN_PAUSE <- newIORef ""
    sET_FULL_SCREEN_MODE <- newIORef ""
    sIZE_CHANGED <- newIORef ""
    sCALED_IMAGES <- newIORef ""
    pAINT <- newIORef ""
    oN_DISPLAY_CHANGE_EVENT <- newIORef ""
    uPDATE_MEASUREMENT <- newIORef ""
    fD_WIDTH <- newIORef ""
    fD_HEIGHT <- newIORef ""
    eMPTY_CHILD_NAME_LIST <- newIORef javaNull
    aBOUT <- newIORef ""
    oPTIONS <- newIORef ""
    fONT_ATLAS <- newIORef ""
    oBJ_MODEL <- newIORef ""
    mD2_MODEL <- newIORef ""
    _PNG <- newIORef ""
    let this = CanvasStrings header_ cONSTRUCTOR pAUSE uN_PAUSE sET_FULL_SCREEN_MODE sIZE_CHANGED sCALED_IMAGES pAINT oN_DISPLAY_CHANGE_EVENT uPDATE_MEASUREMENT fD_WIDTH fD_HEIGHT eMPTY_CHILD_NAME_LIST aBOUT oPTIONS fONT_ATLAS oBJ_MODEL mD2_MODEL _PNG
    jregisterLevel header_ this
    pure this

initFields_ :: CanvasStrings -> IO ()
initFields_ this = do
    jset this.cONSTRUCTOR ("MyCanvas::MyCanvas")
    jset this.pAUSE ("MyCanvas::pause")
    jset this.uN_PAUSE ("MyCanvas::unPause")
    jset this.sET_FULL_SCREEN_MODE ("setFullScreenMode")
    jset this.sIZE_CHANGED ("sizeChanged")
    jset this.sCALED_IMAGES ("scaledImages")
    jset this.pAINT ("paint")
    jset this.oN_DISPLAY_CHANGE_EVENT ("onDisplayChangeEvent")
    jset this.uPDATE_MEASUREMENT ("updateMeasurement")
    jset this.fD_WIDTH (" font/display width: ")
    jset this.fD_HEIGHT (" font/display height: ")
    jset this.eMPTY_CHILD_NAME_LIST =<< (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
    jset this.aBOUT ("About")
    jset this.oPTIONS ("Options")
    jset this.fONT_ATLAS ("/font.png")
    jset this.oBJ_MODEL ("_obj")
    jset this.mD2_MODEL ("_md2")
    jset this._PNG (".png")
    pure ()

new_ :: IO CanvasStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CanvasStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CanvasStrings)
getInstance = do
        pure (CanvasStrings.instance_)


