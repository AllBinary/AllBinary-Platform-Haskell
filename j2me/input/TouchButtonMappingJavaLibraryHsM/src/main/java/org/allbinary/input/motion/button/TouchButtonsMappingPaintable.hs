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
module TouchButtonsMappingPaintable (module TouchButtonsMappingPaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, createPaintableTable, createPaintableTable_super, createPaintableTable_impl, paint, paint_super, paint_impl, logUtil, foregroundColor, paintableTable, touchButtonLocationHelper)
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
import qualified CommonButtons -- same package or java.lang
import qualified TouchButton -- same package or java.lang
import qualified BasicTouchInputFactory -- same package or java.lang
import qualified TouchButtonBlankResource -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified CellPositionFactory -- org.allbinary.graphics.CellPositionFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data TouchButtonsMappingPaintable = TouchButtonsMappingPaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , logUtil :: IORef (LogUtil.LogUtil)
    , foregroundColor :: IORef (Int)
    , paintableTable :: IORef (JavaArray (JavaArray (Paintable.Paintable)))
    , touchButtonLocationHelper :: IORef (TouchButtonLocationHelper.TouchButtonLocationHelper)
    }

instance JavaNull TouchButtonsMappingPaintable where
    javaNull = javaNullRecord "TouchButtonsMappingPaintable"

instance JavaEquals TouchButtonsMappingPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonsMappingPaintable where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonsMappingPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TouchButtonsMappingPaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    foregroundColor <- newIORef 0
    paintableTable <- newIORef javaNull
    touchButtonLocationHelper <- newIORef javaNull
    let this = TouchButtonsMappingPaintable header_ base logUtil foregroundColor paintableTable touchButtonLocationHelper
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "createPaintableTable" (\() -> createPaintableTable_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: TouchButtonsMappingPaintable -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.foregroundColor (0)
    jset this.paintableTable ((jnewArray2 (0) (0) javaNull))
    jset this.touchButtonLocationHelper =<< (TouchButtonLocationHelper.new_)
    pure ()

new_1 :: BasicColor.BasicColor -> IO TouchButtonsMappingPaintable
new_1 basicColor = do
    this <- newRecord_
    init_1 this basicColor
    pure this

init_1 :: TouchButtonsMappingPaintable -> BasicColor.BasicColor -> IO ()
init_1 this basicColor = do
        Paintable.init_ this.base
        initFields_ this
        assignedValue <- (BasicColor.intValue basicColor)
        jset (this).foregroundColor (assignedValue)
        Control.Monad.void (TouchButtonsMappingPaintable.init this)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: TouchButtonsMappingPaintable))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: TouchButtonsMappingPaintable))

init_impl :: TouchButtonsMappingPaintable -> IO (())
init_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "updateRectangle" e)
            ) $ do
            assignedValue <- (TouchButtonsMappingPaintable.createPaintableTable this)
            jset (this).paintableTable (assignedValue)
        pure ()


-- throws Exception
createPaintableTable :: (JavaObjectClass this_) => this_ -> IO (JavaArray (JavaArray (Paintable.Paintable)))
createPaintableTable object_ = jmethod object_ "createPaintableTable" (\() -> (createPaintableTable_impl (javaCast object_ :: TouchButtonsMappingPaintable))) ()

createPaintableTable_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (JavaArray (Paintable.Paintable)))
createPaintableTable_super object_ = (createPaintableTable_impl (javaCast object_ :: TouchButtonsMappingPaintable))

createPaintableTable_impl :: TouchButtonsMappingPaintable -> IO (JavaArray (JavaArray (Paintable.Paintable)))
createPaintableTable_impl this = do
        totalColumns <- (TouchButtonLocationHelper.getTotalColumns ((jget (this).touchButtonLocationHelper)))
        totalRows <- (TouchButtonLocationHelper.getTotalRows ((jget (this).touchButtonLocationHelper)))
        let paintableTable = (jnewArray2 (totalColumns) (totalRows) javaNull)
        cellPositionFactory <- (CellPositionFactory.getInstance)
        commonButtons <- (CommonButtons.getInstance)
        forM_ [(totalColumns - 1), (totalColumns - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            forM_ [(totalRows - 1), (totalRows - 1) + (-1) .. 0] $ \rowIndex -> javaIteration (pure ()) $ do
                assignedValue <- (TouchButton.createButton (jget ((jio (BasicTouchInputFactory.getInstance))).nONE) (jio (TouchButtonBlankResource.getInstance)) (jget (commonButtons).nORMAL_BUTTON) (jio (CellPositionFactory.getInstanceColRow cellPositionFactory index rowIndex)) (jio (TouchButtonLocationHelper.getColumnsRemainderHalf ((jget (this).touchButtonLocationHelper)))) (jio (TouchButtonLocationHelper.getRowsRemainderHalf ((jget (this).touchButtonLocationHelper)))))
                jsetIndex ((jindex ((jget (this).paintableTable)) (index))) (rowIndex) (assignedValue)
        pure (paintableTable)


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: TouchButtonsMappingPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: TouchButtonsMappingPaintable)) a1

paint_impl :: TouchButtonsMappingPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        totalColumns <- (TouchButtonLocationHelper.getTotalColumns ((jget (this).touchButtonLocationHelper)))
        totalRows <- (TouchButtonLocationHelper.getTotalRows ((jget (this).touchButtonLocationHelper)))
        forM_ [(totalColumns - 1), (totalColumns - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            forM_ [(totalRows - 1), (totalRows - 1) + (-1) .. 0] $ \rowIndex -> javaIteration (pure ()) $ do
                Control.Monad.void (paint ((jindex ((jindex ((jget (this).paintableTable)) (index))) (rowIndex))) graphics)
        pure ()


