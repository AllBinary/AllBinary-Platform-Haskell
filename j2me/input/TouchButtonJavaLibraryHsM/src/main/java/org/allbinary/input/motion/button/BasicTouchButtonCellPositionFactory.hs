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
-- package org.allbinary.input.motion.button
module BasicTouchButtonCellPositionFactory where

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
import qualified TouchButtonLocationHelper -- same package or java.lang
import qualified CellPosition -- org.allbinary.graphics.CellPosition
import qualified CellPositionFactory -- org.allbinary.graphics.CellPositionFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data BasicTouchButtonCellPositionFactory = BasicTouchButtonCellPositionFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , tOP_RIGHT :: IORef (CellPosition.CellPosition)
    , tOP_LEFT :: IORef (CellPosition.CellPosition)
    , sECOND_FROM_TOP_LEFT :: IORef (CellPosition.CellPosition)
    , sECOND_FROM_TOP_RIGHT :: IORef (CellPosition.CellPosition)
    , tOP_SECOND_FROM_LEFT :: IORef (CellPosition.CellPosition)
    , tOP_SECOND_FROM_RIGHT :: IORef (CellPosition.CellPosition)
    , bOTTOM_RIGHT :: IORef (CellPosition.CellPosition)
    , bOTTOM_SECOND_FROM_RIGHT :: IORef (CellPosition.CellPosition)
    , sECOND_FROM_BOTTOM_RIGHT :: IORef (CellPosition.CellPosition)
    , tHIRD_FROM_BOTTOM_RIGHT :: IORef (CellPosition.CellPosition)
    , fOURTH_FROM_BOTTOM_RIGHT :: IORef (CellPosition.CellPosition)
    , sECOND_FROM_BOTTOM_SECOND_FROM_RIGHT :: IORef (CellPosition.CellPosition)
    , sECOND_FROM_BOTTOM_THIRD_FROM_RIGHT :: IORef (CellPosition.CellPosition)
    , sECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT :: IORef (CellPosition.CellPosition)
    , bOTTOM_THIRD_FROM_RIGHT :: IORef (CellPosition.CellPosition)
    , bOTTOM_FOURTH_FROM_RIGHT :: IORef (CellPosition.CellPosition)
    , bOTTOM_SECOND_FROM_LEFT :: IORef (CellPosition.CellPosition)
    , sECOND_FROM_BOTTOM_LEFT :: IORef (CellPosition.CellPosition)
    , tHIRD_FROM_BOTTOM_LEFT :: IORef (CellPosition.CellPosition)
    , bOTTOM_LEFT :: IORef (CellPosition.CellPosition)
    , sECOND_FROM_BOTTOM_SECOND_FROM_LEFT :: IORef (CellPosition.CellPosition)
    }

instance JavaNull BasicTouchButtonCellPositionFactory where
    javaNull = javaNullRecord "BasicTouchButtonCellPositionFactory"

instance JavaEquals BasicTouchButtonCellPositionFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicTouchButtonCellPositionFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicTouchButtonCellPositionFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicTouchButtonCellPositionFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    tOP_RIGHT <- newIORef javaNull
    tOP_LEFT <- newIORef javaNull
    sECOND_FROM_TOP_LEFT <- newIORef javaNull
    sECOND_FROM_TOP_RIGHT <- newIORef javaNull
    tOP_SECOND_FROM_LEFT <- newIORef javaNull
    tOP_SECOND_FROM_RIGHT <- newIORef javaNull
    bOTTOM_RIGHT <- newIORef javaNull
    bOTTOM_SECOND_FROM_RIGHT <- newIORef javaNull
    sECOND_FROM_BOTTOM_RIGHT <- newIORef javaNull
    tHIRD_FROM_BOTTOM_RIGHT <- newIORef javaNull
    fOURTH_FROM_BOTTOM_RIGHT <- newIORef javaNull
    sECOND_FROM_BOTTOM_SECOND_FROM_RIGHT <- newIORef javaNull
    sECOND_FROM_BOTTOM_THIRD_FROM_RIGHT <- newIORef javaNull
    sECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT <- newIORef javaNull
    bOTTOM_THIRD_FROM_RIGHT <- newIORef javaNull
    bOTTOM_FOURTH_FROM_RIGHT <- newIORef javaNull
    bOTTOM_SECOND_FROM_LEFT <- newIORef javaNull
    sECOND_FROM_BOTTOM_LEFT <- newIORef javaNull
    tHIRD_FROM_BOTTOM_LEFT <- newIORef javaNull
    bOTTOM_LEFT <- newIORef javaNull
    sECOND_FROM_BOTTOM_SECOND_FROM_LEFT <- newIORef javaNull
    let this = BasicTouchButtonCellPositionFactory header_ logUtil commonStrings tOP_RIGHT tOP_LEFT sECOND_FROM_TOP_LEFT sECOND_FROM_TOP_RIGHT tOP_SECOND_FROM_LEFT tOP_SECOND_FROM_RIGHT bOTTOM_RIGHT bOTTOM_SECOND_FROM_RIGHT sECOND_FROM_BOTTOM_RIGHT tHIRD_FROM_BOTTOM_RIGHT fOURTH_FROM_BOTTOM_RIGHT sECOND_FROM_BOTTOM_SECOND_FROM_RIGHT sECOND_FROM_BOTTOM_THIRD_FROM_RIGHT sECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT bOTTOM_THIRD_FROM_RIGHT bOTTOM_FOURTH_FROM_RIGHT bOTTOM_SECOND_FROM_LEFT sECOND_FROM_BOTTOM_LEFT tHIRD_FROM_BOTTOM_LEFT bOTTOM_LEFT sECOND_FROM_BOTTOM_SECOND_FROM_LEFT
    jregisterLevel header_ this
    pure this

initFields_ :: BasicTouchButtonCellPositionFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.tOP_RIGHT (javaNull)
    jset this.tOP_LEFT (javaNull)
    jset this.sECOND_FROM_TOP_LEFT (javaNull)
    jset this.sECOND_FROM_TOP_RIGHT (javaNull)
    jset this.tOP_SECOND_FROM_LEFT (javaNull)
    jset this.tOP_SECOND_FROM_RIGHT (javaNull)
    jset this.bOTTOM_RIGHT (javaNull)
    jset this.bOTTOM_SECOND_FROM_RIGHT (javaNull)
    jset this.sECOND_FROM_BOTTOM_RIGHT (javaNull)
    jset this.tHIRD_FROM_BOTTOM_RIGHT (javaNull)
    jset this.fOURTH_FROM_BOTTOM_RIGHT (javaNull)
    jset this.sECOND_FROM_BOTTOM_SECOND_FROM_RIGHT (javaNull)
    jset this.sECOND_FROM_BOTTOM_THIRD_FROM_RIGHT (javaNull)
    jset this.sECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT (javaNull)
    jset this.bOTTOM_THIRD_FROM_RIGHT (javaNull)
    jset this.bOTTOM_FOURTH_FROM_RIGHT (javaNull)
    jset this.bOTTOM_SECOND_FROM_LEFT (javaNull)
    jset this.sECOND_FROM_BOTTOM_LEFT (javaNull)
    jset this.tHIRD_FROM_BOTTOM_LEFT (javaNull)
    jset this.bOTTOM_LEFT (javaNull)
    jset this.sECOND_FROM_BOTTOM_SECOND_FROM_LEFT (javaNull)
    pure ()

new_ :: IO BasicTouchButtonCellPositionFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicTouchButtonCellPositionFactory -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        touchButtonLocationHelper <- (TouchButtonLocationHelper.new_)
        cellPositionFactory <- (CellPositionFactory.getInstance)
        Control.Monad.void (CellPositionFactory.init cellPositionFactory (jio (TouchButtonLocationHelper.getTotalColumns touchButtonLocationHelper)) (jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)))
        assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory 0 0)
        jset (this).tOP_LEFT (assignedValue)
        assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory ((jio (TouchButtonLocationHelper.getTotalColumns touchButtonLocationHelper)) - 1) 0)
        jset (this).tOP_RIGHT (assignedValue)
        assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory 0 ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) - 1))
        jset (this).bOTTOM_LEFT (assignedValue)
        assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory ((jio (TouchButtonLocationHelper.getTotalColumns touchButtonLocationHelper)) - 1) ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) - 1))
        jset (this).bOTTOM_RIGHT (assignedValue)
        assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory ((jio (TouchButtonLocationHelper.getTotalColumns touchButtonLocationHelper)) - 2) ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) - 1))
        jset (this).bOTTOM_SECOND_FROM_RIGHT (assignedValue)
        assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory ((jio (TouchButtonLocationHelper.getTotalColumns touchButtonLocationHelper)) - 1) ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) - 2))
        jset (this).sECOND_FROM_BOTTOM_RIGHT (assignedValue)
        assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory ((jio (TouchButtonLocationHelper.getTotalColumns touchButtonLocationHelper)) - 2) ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) - 2))
        jset (this).sECOND_FROM_BOTTOM_SECOND_FROM_RIGHT (assignedValue)
        assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory 1 ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) - 1))
        jset (this).bOTTOM_SECOND_FROM_LEFT (assignedValue)
        assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory 0 ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) - 2))
        jset (this).sECOND_FROM_BOTTOM_LEFT (assignedValue)
        assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory 1 ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) - 2))
        jset (this).sECOND_FROM_BOTTOM_SECOND_FROM_LEFT (assignedValue)
        if ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) > 2) then do
            assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory 0 1)
            jset (this).sECOND_FROM_TOP_LEFT (assignedValue)
            assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory ((jio (TouchButtonLocationHelper.getTotalColumns touchButtonLocationHelper)) - 1) 1)
            jset (this).sECOND_FROM_TOP_RIGHT (assignedValue)
        else do
            jset (this).sECOND_FROM_TOP_LEFT ((jget (cellPositionFactory).nONE))
            jset (this).sECOND_FROM_TOP_RIGHT ((jget (cellPositionFactory).nONE))
        if ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) >= 4) then do
            assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory ((jio (TouchButtonLocationHelper.getTotalColumns touchButtonLocationHelper)) - 1) ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) - 3))
            jset (this).tHIRD_FROM_BOTTOM_RIGHT (assignedValue)
            assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory ((jio (TouchButtonLocationHelper.getTotalColumns touchButtonLocationHelper)) - 1) ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) - 4))
            jset (this).fOURTH_FROM_BOTTOM_RIGHT (assignedValue)
            assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory 0 ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) - 3))
            jset (this).tHIRD_FROM_BOTTOM_LEFT (assignedValue)
        else do
            jset (this).tHIRD_FROM_BOTTOM_RIGHT ((jget (cellPositionFactory).nONE))
            jset (this).fOURTH_FROM_BOTTOM_RIGHT ((jget (cellPositionFactory).nONE))
            jset (this).tHIRD_FROM_BOTTOM_LEFT ((jget (cellPositionFactory).nONE))
        if ((jio (TouchButtonLocationHelper.getTotalColumns touchButtonLocationHelper)) >= 4) then do
            assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory ((jio (TouchButtonLocationHelper.getTotalColumns touchButtonLocationHelper)) - 3) ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) - 2))
            jset (this).sECOND_FROM_BOTTOM_THIRD_FROM_RIGHT (assignedValue)
            assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory ((jio (TouchButtonLocationHelper.getTotalColumns touchButtonLocationHelper)) - 4) ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) - 2))
            jset (this).sECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT (assignedValue)
            assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory ((jio (TouchButtonLocationHelper.getTotalColumns touchButtonLocationHelper)) - 3) ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) - 1))
            jset (this).bOTTOM_THIRD_FROM_RIGHT (assignedValue)
            assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory ((jio (TouchButtonLocationHelper.getTotalColumns touchButtonLocationHelper)) - 4) ((jio (TouchButtonLocationHelper.getTotalRows touchButtonLocationHelper)) - 1))
            jset (this).bOTTOM_FOURTH_FROM_RIGHT (assignedValue)
            assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory 1 0)
            jset (this).tOP_SECOND_FROM_LEFT (assignedValue)
            assignedValue <- (CellPositionFactory.getInstanceColRow cellPositionFactory ((jio (TouchButtonLocationHelper.getTotalColumns touchButtonLocationHelper)) - 2) 0)
            jset (this).tOP_SECOND_FROM_RIGHT (assignedValue)
        else do
            jset (this).sECOND_FROM_BOTTOM_THIRD_FROM_RIGHT ((jget (cellPositionFactory).nONE))
            jset (this).sECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT ((jget (cellPositionFactory).nONE))
            jset (this).bOTTOM_THIRD_FROM_RIGHT ((jget (cellPositionFactory).nONE))
            jset (this).bOTTOM_FOURTH_FROM_RIGHT ((jget (cellPositionFactory).nONE))
            jset (this).tOP_SECOND_FROM_LEFT ((jget (cellPositionFactory).nONE))
            jset (this).tOP_SECOND_FROM_RIGHT ((jget (cellPositionFactory).nONE))
        pure ()


