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
module DemoCanvasBasicStartInputProcessor (module DemoCanvasBasicStartInputProcessor, module BasicMenuInputProcessor) where

import BasicMenuInputProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processInputList, processInputList_super, processInputList_impl)
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
import qualified LogUtil -- same package or java.lang
import qualified NullCanvas -- javax.microedition.lcdui.NullCanvas
import qualified RunnableCanvas -- org.allbinary.canvas.RunnableCanvas
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory
import qualified GameInputStrings -- org.allbinary.game.input.GameInputStrings
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicMenuInputProcessor

data DemoCanvasBasicStartInputProcessor = DemoCanvasBasicStartInputProcessor
    { header_ :: JavaHeader
    , base :: BasicMenuInputProcessor.BasicMenuInputProcessor
    }

instance JavaNull DemoCanvasBasicStartInputProcessor where
    javaNull = javaNullRecord "DemoCanvasBasicStartInputProcessor"

instance JavaEquals DemoCanvasBasicStartInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DemoCanvasBasicStartInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass DemoCanvasBasicStartInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DemoCanvasBasicStartInputProcessor
newRecord_ = do
    base <- BasicMenuInputProcessor.newRecord_
    let header_ = base.header_
    let this = DemoCanvasBasicStartInputProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "processInputList" (\() -> processInputList_impl this)
    pure this

initFields_ :: DemoCanvasBasicStartInputProcessor -> IO ()
initFields_ this = do
    pure ()

new_2 :: BasicArrayList.BasicArrayList -> RunnableCanvas.RunnableCanvas -> IO DemoCanvasBasicStartInputProcessor
new_2 gameKeyEventList gameCanvas = do
    this <- newRecord_
    init_2 this gameKeyEventList gameCanvas
    pure this

init_2 :: DemoCanvasBasicStartInputProcessor -> BasicArrayList.BasicArrayList -> RunnableCanvas.RunnableCanvas -> IO ()
init_2 this gameKeyEventList gameCanvas = do
        BasicMenuInputProcessor.init_3 this.base (gameKeyEventList) (Prelude.negate 1) (gameCanvas)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
processInputList :: (JavaObjectClass this_) => this_ -> IO (Int)
processInputList object_ = jmethod object_ "processInputList" (\() -> (processInputList_impl (javaCast object_ :: DemoCanvasBasicStartInputProcessor))) ()

processInputList_super :: (JavaObjectClass this_) => this_ -> IO (Int)
processInputList_super object_ = (processInputList_impl (javaCast object_ :: DemoCanvasBasicStartInputProcessor))

processInputList_impl :: DemoCanvasBasicStartInputProcessor -> IO (Int)
processInputList_impl this = do
        list <- (BasicMenuInputProcessor.getGameKeyEventList this)
        size <- (BasicArrayList.size list)
        gameKeyEvent <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset gameKeyEvent ((javaCast (jindex ((jget (list).objectArray)) (index)) :: GameKeyEvent.GameKeyEvent))
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Start GameKey: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jget gameKeyEvent)))))))) this (jget ((jio (GameInputStrings.getInstance))).pROCESS_INPUT))
        Control.Monad.void (CommandListener.commandAction ((jio (MyCanvas.getCustomCommandListener ((jio (BasicMenuInputProcessor.getCanvas this)))))) (jget ((jio (GameCommandsFactory.getInstance))).sTART_COMMAND) (NullCanvas.nULL_CANVAS))
        pure (size)


