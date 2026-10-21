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
-- package org.allbinary.canvas
module RunnableCanvasRefreshHelper (module RunnableCanvasRefreshHelper, module Processor) where

import Processor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, runnableCanvas)
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
import qualified MyCanvas -- org.allbinary.graphics.displayable.MyCanvas
import qualified Processor

data RunnableCanvasRefreshHelper = RunnableCanvasRefreshHelper
    { header_ :: JavaHeader
    , base :: Processor.Processor
    , runnableCanvas :: IORef (MyCanvas.MyCanvas)
    }

instance JavaNull RunnableCanvasRefreshHelper where
    javaNull = javaNullRecord "RunnableCanvasRefreshHelper"

instance JavaEquals RunnableCanvasRefreshHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RunnableCanvasRefreshHelper where
    (==) = jrecordEquals

instance JavaObjectClass RunnableCanvasRefreshHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RunnableCanvasRefreshHelper
newRecord_ = do
    base <- Processor.newRecord_
    let header_ = base.header_
    runnableCanvas <- newIORef javaNull
    let this = RunnableCanvasRefreshHelper header_ base runnableCanvas
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: RunnableCanvasRefreshHelper -> IO ()
initFields_ this = do
    jset this.runnableCanvas (javaNull)
    pure ()

new_1 :: MyCanvas.MyCanvas -> IO RunnableCanvasRefreshHelper
new_1 runnableCanvas = do
    this <- newRecord_
    init_1 this runnableCanvas
    pure this

init_1 :: RunnableCanvasRefreshHelper -> MyCanvas.MyCanvas -> IO ()
init_1 this runnableCanvas = do
        Processor.init_ this.base
        initFields_ this
        jset (this).runnableCanvas (runnableCanvas)
        pure ()


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: RunnableCanvasRefreshHelper))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: RunnableCanvasRefreshHelper))

process_impl :: RunnableCanvasRefreshHelper -> IO (())
process_impl this = do
        Control.Monad.void (MyCanvas.repaint ((jget (this).runnableCanvas)))
        pure ()


