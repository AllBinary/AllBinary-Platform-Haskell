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
-- package org.allbinary.game.score
module HighScoresCanvasInputProcessor (module HighScoresCanvasInputProcessor, module PlayerGameInput) where

import PlayerGameInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, open, open_super, open_impl, close, close_super, close_impl, onPressGameKeyEvent, onPressGameKeyEvent_super, onPressGameKeyEvent_impl, onDownGameKeyEvent, onDownGameKeyEvent_super, onDownGameKeyEvent_impl, onUpGameKeyEvent, onUpGameKeyEvent_super, onUpGameKeyEvent_impl, paint, paint_super, paint_impl, getHighScoresCanvas, getHighScoresCanvas_super, getHighScoresCanvas_impl, highScoresCanvas)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified PlayerGameInput -- org.allbinary.game.input.PlayerGameInput
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified HighScoresCanvas -- org.allbinary.game.score.displayable.HighScoresCanvas
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data HighScoresCanvasInputProcessor = HighScoresCanvasInputProcessor
    { header_ :: JavaHeader
    , base :: PlayerGameInput.PlayerGameInput
    , highScoresCanvas :: IORef (HighScoresCanvas.HighScoresCanvas)
    }

instance JavaNull HighScoresCanvasInputProcessor where
    javaNull = javaNullRecord "HighScoresCanvasInputProcessor"

instance JavaEquals HighScoresCanvasInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoresCanvasInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass HighScoresCanvasInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HighScoresCanvasInputProcessor
newRecord_ = do
    base <- PlayerGameInput.newRecord_
    let header_ = base.header_
    highScoresCanvas <- newIORef javaNull
    let this = HighScoresCanvasInputProcessor header_ base highScoresCanvas
    jregisterLevel header_ this
    jregisterMethod header_ "open" (\() -> open_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "onPressGameKeyEvent" (\() -> onPressGameKeyEvent_impl this)
    jregisterMethod header_ "onDownGameKeyEvent" (\() -> onDownGameKeyEvent_impl this)
    jregisterMethod header_ "onUpGameKeyEvent" (\() -> onUpGameKeyEvent_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "getHighScoresCanvas" (\() -> getHighScoresCanvas_impl this)
    pure this

initFields_ :: HighScoresCanvasInputProcessor -> IO ()
initFields_ this = do
    jset this.highScoresCanvas (javaNull)
    pure ()

new_1 :: HighScoresCanvas.HighScoresCanvas -> IO HighScoresCanvasInputProcessor
new_1 highScoresCanvas = do
    this <- newRecord_
    init_1 this highScoresCanvas
    pure this

init_1 :: HighScoresCanvasInputProcessor -> HighScoresCanvas.HighScoresCanvas -> IO ()
init_1 this highScoresCanvas = do
        PlayerGameInput.init_3 this.base (jio (BasicArrayListD.new_)) (jio (BasicArrayListD.new_)) (Prelude.negate 1)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).highScoresCanvas (highScoresCanvas)
        pure ()


open :: (JavaObjectClass this_) => this_ -> IO (())
open object_ = jmethod object_ "open" (\() -> (open_impl (javaCast object_ :: HighScoresCanvasInputProcessor))) ()

open_super :: (JavaObjectClass this_) => this_ -> IO (())
open_super object_ = (open_impl (javaCast object_ :: HighScoresCanvasInputProcessor))

open_impl :: HighScoresCanvasInputProcessor -> IO (())
open_impl this = do
        pure ()


close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: HighScoresCanvasInputProcessor))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: HighScoresCanvasInputProcessor))

close_impl :: HighScoresCanvasInputProcessor -> IO (())
close_impl this = do
        pure ()


onPressGameKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onPressGameKeyEvent object_ a1 = jmethod object_ "onPressGameKeyEvent" (\() -> (onPressGameKeyEvent_impl (javaCast object_ :: HighScoresCanvasInputProcessor))) () a1

onPressGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onPressGameKeyEvent_super object_ a1 = (onPressGameKeyEvent_impl (javaCast object_ :: HighScoresCanvasInputProcessor)) a1

onPressGameKeyEvent_impl :: HighScoresCanvasInputProcessor -> GameKeyEvent.GameKeyEvent -> IO (())
onPressGameKeyEvent_impl this gameKeyEvent = do
        Control.Monad.void (PlayerGameInput.onPressGameKeyEvent_super this.base gameKeyEvent)
        Control.Monad.void (PlayerGameInput.update this)
        pure ()


onDownGameKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onDownGameKeyEvent object_ a1 = jmethod object_ "onDownGameKeyEvent" (\() -> (onDownGameKeyEvent_impl (javaCast object_ :: HighScoresCanvasInputProcessor))) () a1

onDownGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onDownGameKeyEvent_super object_ a1 = (onDownGameKeyEvent_impl (javaCast object_ :: HighScoresCanvasInputProcessor)) a1

onDownGameKeyEvent_impl :: HighScoresCanvasInputProcessor -> GameKeyEvent.GameKeyEvent -> IO (())
onDownGameKeyEvent_impl this gameKeyEvent = do
        Control.Monad.void (PlayerGameInput.onDownGameKeyEvent_super this.base gameKeyEvent)
        Control.Monad.void (PlayerGameInput.update this)
        pure ()


onUpGameKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onUpGameKeyEvent object_ a1 = jmethod object_ "onUpGameKeyEvent" (\() -> (onUpGameKeyEvent_impl (javaCast object_ :: HighScoresCanvasInputProcessor))) () a1

onUpGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onUpGameKeyEvent_super object_ a1 = (onUpGameKeyEvent_impl (javaCast object_ :: HighScoresCanvasInputProcessor)) a1

onUpGameKeyEvent_impl :: HighScoresCanvasInputProcessor -> GameKeyEvent.GameKeyEvent -> IO (())
onUpGameKeyEvent_impl this gameKeyEvent = do
        Control.Monad.void (PlayerGameInput.onUpGameKeyEvent_super this.base gameKeyEvent)
        Control.Monad.void (PlayerGameInput.update this)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: HighScoresCanvasInputProcessor))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: HighScoresCanvasInputProcessor)) a1

paint_impl :: HighScoresCanvasInputProcessor -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


getHighScoresCanvas :: (JavaObjectClass this_) => this_ -> IO (HighScoresCanvas.HighScoresCanvas)
getHighScoresCanvas object_ = jmethod object_ "getHighScoresCanvas" (\() -> (getHighScoresCanvas_impl (javaCast object_ :: HighScoresCanvasInputProcessor))) ()

getHighScoresCanvas_super :: (JavaObjectClass this_) => this_ -> IO (HighScoresCanvas.HighScoresCanvas)
getHighScoresCanvas_super object_ = (getHighScoresCanvas_impl (javaCast object_ :: HighScoresCanvasInputProcessor))

getHighScoresCanvas_impl :: HighScoresCanvasInputProcessor -> IO (HighScoresCanvas.HighScoresCanvas)
getHighScoresCanvas_impl this = do
        pure ((jget (this).highScoresCanvas))


