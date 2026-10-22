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
module HighScoresCanvasLevelChangeInputProcessor (module HighScoresCanvasLevelChangeInputProcessor, module HighScoresCanvasInputProcessor) where

import HighScoresCanvasInputProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, open, open_super, open_impl, close, close_super, close_impl, update, update_super, update_impl, paint, paint_super, paint_impl, displayInfoSingleton, iNSTRUCTIONS, myFontProcessor, anchor, fontHeight)
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
import qualified Any -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified GameKeyEventHandler -- org.allbinary.game.input.event.GameKeyEventHandler
import qualified GameKeyEventUtil -- org.allbinary.game.input.event.GameKeyEventUtil
import qualified HighScoresCanvas -- org.allbinary.game.score.displayable.HighScoresCanvas
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified HighScoresCanvasInputProcessor

-- implements UpdateMyFontInterface
data HighScoresCanvasLevelChangeInputProcessor = HighScoresCanvasLevelChangeInputProcessor
    { header_ :: JavaHeader
    , base :: HighScoresCanvasInputProcessor.HighScoresCanvasInputProcessor
    , displayInfoSingleton :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , iNSTRUCTIONS :: IORef (String)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , anchor :: IORef (Int)
    , fontHeight :: IORef (Int)
    }

instance JavaNull HighScoresCanvasLevelChangeInputProcessor where
    javaNull = javaNullRecord "HighScoresCanvasLevelChangeInputProcessor"

instance JavaEquals HighScoresCanvasLevelChangeInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoresCanvasLevelChangeInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass HighScoresCanvasLevelChangeInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HighScoresCanvasLevelChangeInputProcessor
newRecord_ = do
    base <- HighScoresCanvasInputProcessor.newRecord_
    let header_ = base.header_
    displayInfoSingleton <- newIORef javaNull
    iNSTRUCTIONS <- newIORef ""
    myFontProcessor <- newIORef javaNull
    anchor <- newIORef 0
    fontHeight <- newIORef 0
    let this = HighScoresCanvasLevelChangeInputProcessor header_ base displayInfoSingleton iNSTRUCTIONS myFontProcessor anchor fontHeight
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "open" (\() -> open_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: HighScoresCanvasLevelChangeInputProcessor -> IO ()
initFields_ this = do
    jset this.displayInfoSingleton =<< (DisplayInfoSingleton.getInstance)
    jset this.iNSTRUCTIONS ("(Right = Next Track, Left = Previous Track)")
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.anchor ((jget Anchor.tOP_LEFT))
    jset this.fontHeight (0)
    pure ()

new_1 :: HighScoresCanvas.HighScoresCanvas -> IO HighScoresCanvasLevelChangeInputProcessor
new_1 highScoresCanvas = do
    this <- newRecord_
    init_1 this highScoresCanvas
    pure this

init_1 :: HighScoresCanvasLevelChangeInputProcessor -> HighScoresCanvas.HighScoresCanvas -> IO ()
init_1 this highScoresCanvas = do
        HighScoresCanvasInputProcessor.init_1 this.base (highScoresCanvas)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: HighScoresCanvasLevelChangeInputProcessor))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: HighScoresCanvasLevelChangeInputProcessor)) a1

updateMeasurement_impl :: HighScoresCanvasLevelChangeInputProcessor -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        assignedValue <- (Font.getHeight font)
        jset (this).fontHeight (assignedValue)
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


open :: (JavaObjectClass this_) => this_ -> IO (())
open object_ = jmethod object_ "open" (\() -> (open_impl (javaCast object_ :: HighScoresCanvasLevelChangeInputProcessor))) ()

open_super :: (JavaObjectClass this_) => this_ -> IO (())
open_super object_ = (open_impl (javaCast object_ :: HighScoresCanvasLevelChangeInputProcessor))

open_impl :: HighScoresCanvasLevelChangeInputProcessor -> IO (())
open_impl this = do
        Control.Monad.void (GameKeyEventHandler.addListener ((jio (GameKeyEventHandler.getInstance))) (javaCast this))
        pure ()


close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: HighScoresCanvasLevelChangeInputProcessor))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: HighScoresCanvasLevelChangeInputProcessor))

close_impl :: HighScoresCanvasLevelChangeInputProcessor -> IO (())
close_impl this = do
        Control.Monad.void (GameKeyEventHandler.removeListener ((jio (GameKeyEventHandler.getInstance))) (javaCast this))
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: HighScoresCanvasLevelChangeInputProcessor))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: HighScoresCanvasLevelChangeInputProcessor))

update_impl :: HighScoresCanvasLevelChangeInputProcessor -> IO (())
update_impl this = do
        list <- (HighScoresCanvasInputProcessor.getGameKeyEventList this)
        size <- (BasicArrayList.size list)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let anyType = (jindex ((jget (list).objectArray)) (index))
            key <- (GameKeyEventUtil.getKey anyType)
            if (key == Canvas.rIGHT) then do
                Control.Monad.void (GameInfo.nextGameLevel ((jio (HighScoresCanvas.getGameInfo ((jio (HighScoresCanvasInputProcessor.getHighScoresCanvas this)))))))
            else when (key == Canvas.lEFT) $ do
                Control.Monad.void (GameInfo.previousGameLevel ((jio (HighScoresCanvas.getGameInfo ((jio (HighScoresCanvasInputProcessor.getHighScoresCanvas this)))))))
            Control.Monad.void (HighScoresCanvas.executeUpdate ((jio (HighScoresCanvasInputProcessor.getHighScoresCanvas this))))
        Control.Monad.void (BasicArrayList.clear list)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: HighScoresCanvasLevelChangeInputProcessor))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: HighScoresCanvasLevelChangeInputProcessor)) a1

paint_impl :: HighScoresCanvasLevelChangeInputProcessor -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        width <- (DisplayInfoSingleton.getLastWidth ((jget (this).displayInfoSingleton)))
        let topScoresWidth = (((jio (Graphics.stringWidth ((jio (Graphics.getFont graphics))) (jget (this).iNSTRUCTIONS))) `Data.Bits.shiftR` 1))
        Control.Monad.void (Graphics.drawString graphics (jget (this).iNSTRUCTIONS) (((width `Data.Bits.shiftR` 1)) - topScoresWidth) ((jget (this).fontHeight) * 2) (jget (this).anchor))
        pure ()


