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
module StartIntermissionProcessor (module StartIntermissionProcessor, module Processor) where

import Processor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, logUtil, commonStrings, gameCanvas, wAIT)
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
import qualified AllBinaryGameCanvas -- same package or java.lang
import qualified Processor -- org.allbinary.canvas.Processor
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data StartIntermissionProcessor = StartIntermissionProcessor
    { header_ :: JavaHeader
    , base :: Processor.Processor
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , gameCanvas :: IORef (AllBinaryGameCanvas.AllBinaryGameCanvas)
    , wAIT :: IORef (Int64)
    }

instance JavaNull StartIntermissionProcessor where
    javaNull = javaNullRecord "StartIntermissionProcessor"

instance JavaEquals StartIntermissionProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StartIntermissionProcessor where
    (==) = jrecordEquals

instance JavaObjectClass StartIntermissionProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StartIntermissionProcessor
newRecord_ = do
    base <- Processor.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    gameCanvas <- newIORef javaNull
    wAIT <- newIORef 0
    let this = StartIntermissionProcessor header_ base logUtil commonStrings gameCanvas wAIT
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: StartIntermissionProcessor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.gameCanvas (javaNull)
    jset this.wAIT (5000)
    pure ()

new_1 :: AllBinaryGameCanvas.AllBinaryGameCanvas -> IO StartIntermissionProcessor
new_1 gameCanvas = do
    this <- newRecord_
    init_1 this gameCanvas
    pure this

init_1 :: StartIntermissionProcessor -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO ()
init_1 this gameCanvas = do
        Processor.init_ this.base
        initFields_ this
        jset (this).gameCanvas (gameCanvas)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: StartIntermissionProcessor))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: StartIntermissionProcessor))

process_impl :: StartIntermissionProcessor -> IO (())
process_impl this = do
        when (jio (IntermissionInterface.isElapsedTNT ((jio (IntermissionInterface.getTimeDelayHelper ((jio (AllBinaryGameCanvas.getStartIntermissionInterface ((jget (this).gameCanvas)))))))) (jget (this).wAIT))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Intermission End" this (jget ((jget (this).commonStrings)).pROCESS))
            Control.Monad.void (IntermissionInterface.setEnabled ((jio (AllBinaryGameCanvas.getStartIntermissionInterface ((jget (this).gameCanvas))))) False)
        pure ()


