{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
-- package org.allbinary.game.layer
module MultiSelectPaintable (module MultiSelectPaintable, module SelectionHudPaintable) where

import SelectionHudPaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, update, update_super, update_impl, clear, clear_super, clear_impl, paint, paint_super, paint_impl, rootNameList, totalCharArray, rootNamesString, tOTAL, backgroundColor, totalWidth, textLine2Y)
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
import qualified RTSLayer -- same package or java.lang
import qualified BasicColor -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified SelectionHudPaintable

data MultiSelectPaintable = MultiSelectPaintable
    { header_ :: JavaHeader
    , base :: SelectionHudPaintable.SelectionHudPaintable
    , rootNameList :: IORef (BasicArrayList.BasicArrayList)
    , totalCharArray :: IORef (JavaArray (Char))
    , rootNamesString :: IORef (String)
    , tOTAL :: IORef (String)
    , backgroundColor :: IORef (Int)
    , totalWidth :: IORef (Int)
    , textLine2Y :: IORef (Int)
    }

instance JavaNull MultiSelectPaintable where
    javaNull = javaNullRecord "MultiSelectPaintable"

instance JavaEquals MultiSelectPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MultiSelectPaintable where
    (==) = jrecordEquals

instance JavaObjectClass MultiSelectPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MultiSelectPaintable
newRecord_ = do
    base <- SelectionHudPaintable.newRecord_
    let header_ = base.header_
    rootNameList <- newIORef javaNull
    totalCharArray <- newIORef javaNull
    rootNamesString <- newIORef ""
    tOTAL <- newIORef ""
    backgroundColor <- newIORef 0
    totalWidth <- newIORef 0
    textLine2Y <- newIORef 0
    let this = MultiSelectPaintable header_ base rootNameList totalCharArray rootNamesString tOTAL backgroundColor totalWidth textLine2Y
    jregisterLevel header_ this
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: MultiSelectPaintable -> IO ()
initFields_ this = do
    jset this.rootNameList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.totalCharArray ((jget ((jio (NullUtil.getInstance))).nULL_CHAR_ARRAY))
    jset this.rootNamesString ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.tOTAL ("Total Selected: ")
    jset this.backgroundColor =<< (BasicColor.intValue ((jget ((jio (BasicColorFactory.getInstance))).gREY)))
    jset this.totalWidth (0)
    jset this.textLine2Y (0)
    pure ()

new_ :: IO MultiSelectPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MultiSelectPaintable -> IO ()
init_ this = do
        SelectionHudPaintable.init_ this.base
        initFields_ this
        pure ()
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: MultiSelectPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: MultiSelectPaintable)) a1

updateMeasurement_impl :: MultiSelectPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        Control.Monad.void (SelectionHudPaintable.updateMeasurement_super this.base graphics)
        font <- (Graphics.getFont graphics)
        assignedValue <- (Font.stringWidth font (jget (this).tOTAL))
        jset (this).totalWidth (assignedValue)
        jset (this).textLine2Y ((((jget (this).base.y) + (jio (Font.getHeight font)))))
        pure ()


update :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: MultiSelectPaintable))) () a1

update_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: MultiSelectPaintable)) a1

update_impl :: MultiSelectPaintable -> BasicArrayList.BasicArrayList -> IO (())
update_impl this list = do
        Control.Monad.void (MultiSelectPaintable.clear this)
        size <- (BasicArrayList.size list)
        assignedValue <- (PrimitiveLongUtil.getCharArray ((jio (SelectionHudPaintable.getPrimitiveLongUtil this))) size)
        jset (this).totalCharArray (assignedValue)
        forM_ [((jio (BasicArrayList.size list)) - 1), ((jio (BasicArrayList.size list)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let rtsLayer = (javaCast (jio (BasicArrayList.get list index)) :: RTSLayer.RTSLayer)
            when (Prelude.not (jio (BasicArrayList.contains ((jget (this).rootNameList)) (jio (RTSLayer.getRootName rtsLayer))))) $ do
                Control.Monad.void (BasicArrayList.add ((jget (this).rootNameList)) (jio (RTSLayer.getRootName rtsLayer)))
        let cOMMA_SEP = (jget ((jio (CommonSeps.getInstance))).cOMMA_SEP)
        stringBuffer <- (StringMaker.new_)
        forM_ [((jio (BasicArrayList.size ((jget (this).rootNameList)))) - 1), ((jio (BasicArrayList.size ((jget (this).rootNameList)))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let rootName = (javaCast (jio (BasicArrayList.get ((jget (this).rootNameList)) index)) :: String)
            Control.Monad.void (StringMaker.append stringBuffer rootName)
            when (index /= 0) $ do
                Control.Monad.void (StringMaker.append stringBuffer cOMMA_SEP)
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).rootNamesString (assignedValue)
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: MultiSelectPaintable))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: MultiSelectPaintable))

clear_impl :: MultiSelectPaintable -> IO (())
clear_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).rootNameList)))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: MultiSelectPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: MultiSelectPaintable)) a1

paint_impl :: MultiSelectPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (Graphics.setColor graphics (jget (this).backgroundColor))
        Control.Monad.void (Graphics.drawRect graphics (jio (SelectionHudPaintable.getX this)) (jget (this).base.y) (jio (SelectionHudPaintable.getWidth this)) (jio (SelectionHudPaintable.getHeight this)))
        Control.Monad.void (Graphics.setColor graphics (jio (SelectionHudPaintable.getColor this)))
        Control.Monad.void (Graphics.drawString graphics (jget (this).tOTAL) (jget (this).base.textX) (jget (this).base.y) 0)
        Control.Monad.void (Graphics.drawChars graphics (jget (this).totalCharArray) 0 (jio (PrimitiveLongUtil.getCurrentTotalDigits ((jio (SelectionHudPaintable.getPrimitiveLongUtil this))))) ((jget (this).base.textX) + (jget (this).totalWidth)) (jget (this).base.y) 0)
        Control.Monad.void (Graphics.drawString graphics (jget (this).rootNamesString) (jget (this).base.textX) (jget (this).textLine2Y) 0)
        pure ()


