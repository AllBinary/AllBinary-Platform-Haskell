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
-- package org.allbinary.game.score.displayable
module HighScoresCanvas (module HighScoresCanvas, module GameCommandCanvas) where

import GameCommandCanvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initCommands, initCommands_super, initCommands_impl, open, open_super, open_impl, close, close_super, close_impl, paint, paint_super, paint_impl, executeUpdate, executeUpdate_super, executeUpdate_impl, getHighScoresPaintable, getHighScoresPaintable_super, getHighScoresPaintable_impl, setHighScoresArray, setHighScoresArray_super, setHighScoresArray_impl, updateCommand, updateCommand_super, updateCommand_impl, getGameInfo, getGameInfo_super, getGameInfo_impl, setPaintable, setPaintable_super, setPaintable_impl, nAME, paintable, highScoreCommandsFactory, waitPaintable, highScoresPaintable, highScoresFactoryInterface, colorFillPaintable, highScoresHelper, gameInfo, highScoresCanvasInputProcessor, currentCommand, hasPainted)
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
import qualified RepaintBehavior -- same package or java.lang
import qualified StringUtil -- same package or java.lang
import qualified ItemPaintable -- same package or java.lang
import qualified Command -- javax.microedition.lcdui.Command
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory
import qualified GameCommandCanvas -- org.allbinary.game.displayable.canvas.GameCommandCanvas
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified ColorFillBasePaintable -- org.allbinary.game.paint.ColorFillBasePaintable
import qualified ColorFillPaintableFactory -- org.allbinary.game.paint.ColorFillPaintableFactory
import qualified HighScoreCommandsFactory -- org.allbinary.game.score.HighScoreCommandsFactory
import qualified HighScores -- org.allbinary.game.score.HighScores
import qualified HighScoresCanvasInputProcessor -- org.allbinary.game.score.HighScoresCanvasInputProcessor
import qualified HighScoresCanvasInputProcessorFactoryInterface -- org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface
import qualified HighScoresFactoryInterface -- org.allbinary.game.score.HighScoresFactoryInterface
import qualified HighScoresHelperBase -- org.allbinary.game.score.HighScoresHelperBase
import qualified HighScoresPaintable -- org.allbinary.game.score.HighScoresPaintable
import qualified HighScoresResultsListener -- org.allbinary.game.score.HighScoresResultsListener
import qualified NoHighScoresFactory -- org.allbinary.game.score.NoHighScoresFactory
import qualified NullHighScoresSingletonFactory -- org.allbinary.game.score.NullHighScoresSingletonFactory
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified SimpleTextPaintable -- org.allbinary.graphics.paint.SimpleTextPaintable
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ARunnable -- org.allbinary.thread.ARunnable
import qualified SecondaryThreadPool -- org.allbinary.thread.SecondaryThreadPool
import qualified ABSystemWrapper -- org.allbinary.logic.ABSystemWrapper

-- implements HighScoresResultsListener
data HighScoresCanvas = HighScoresCanvas
    { header_ :: JavaHeader
    , base :: GameCommandCanvas.GameCommandCanvas
    , paintable :: IORef (Paintable.Paintable)
    , highScoreCommandsFactory :: IORef (HighScoreCommandsFactory.HighScoreCommandsFactory)
    , waitPaintable :: IORef (SimpleTextPaintable.SimpleTextPaintable)
    , highScoresPaintable :: IORef (HighScoresPaintable.HighScoresPaintable)
    , highScoresFactoryInterface :: IORef (HighScoresFactoryInterface.HighScoresFactoryInterface)
    , colorFillPaintable :: IORef (ColorFillBasePaintable.ColorFillBasePaintable)
    , highScoresHelper :: IORef (HighScoresHelperBase.HighScoresHelperBase)
    , gameInfo :: IORef (GameInfo.GameInfo)
    , highScoresCanvasInputProcessor :: IORef (HighScoresCanvasInputProcessor.HighScoresCanvasInputProcessor)
    , currentCommand :: IORef (Command.Command)
    , hasPainted :: IORef (Bool)
    }

instance JavaNull HighScoresCanvas where
    javaNull = javaNullRecord "HighScoresCanvas"

instance JavaEquals HighScoresCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoresCanvas where
    (==) = jrecordEquals

instance JavaObjectClass HighScoresCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "HighScoresCanvas"

newRecord_ :: IO HighScoresCanvas
newRecord_ = do
    base <- GameCommandCanvas.newRecord_
    let header_ = base.header_
    paintable <- newIORef javaNull
    highScoreCommandsFactory <- newIORef javaNull
    waitPaintable <- newIORef javaNull
    highScoresPaintable <- newIORef javaNull
    highScoresFactoryInterface <- newIORef javaNull
    colorFillPaintable <- newIORef javaNull
    highScoresHelper <- newIORef javaNull
    gameInfo <- newIORef javaNull
    highScoresCanvasInputProcessor <- newIORef javaNull
    currentCommand <- newIORef javaNull
    hasPainted <- newIORef False
    let this = HighScoresCanvas header_ base paintable highScoreCommandsFactory waitPaintable highScoresPaintable highScoresFactoryInterface colorFillPaintable highScoresHelper gameInfo highScoresCanvasInputProcessor currentCommand hasPainted
    jregisterLevel header_ this
    HighScoresResultsListener.registerInterface_ header_
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    jregisterMethod header_ "open" (\() -> open_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "executeUpdate" (\() -> executeUpdate_impl this)
    jregisterMethod header_ "getHighScoresPaintable" (\() -> getHighScoresPaintable_impl this)
    jregisterMethod header_ "setHighScoresArray" (\() -> setHighScoresArray_impl this)
    jregisterMethod header_ "updateCommand" (\() -> updateCommand_impl this)
    jregisterMethod header_ "getGameInfo" (\() -> getGameInfo_impl this)
    jregisterMethod header_ "setPaintable" (\() -> setPaintable_impl this)
    pure this

initFields_ :: HighScoresCanvas -> IO ()
initFields_ this = do
    jset this.paintable =<< (NullPaintable.getInstance)
    jset this.highScoreCommandsFactory =<< (HighScoreCommandsFactory.getInstance)
    jset this.waitPaintable =<< (SimpleTextPaintable.new_2 (jget ((jget (this).base.base.commonStrings)).pLEASE_WAIT_FOR_SERVER) (jget ((jio (BasicColorFactory.getInstance))).wHITE))
    jset this.highScoresPaintable (javaNull)
    jset this.highScoresFactoryInterface (javaNull)
    jset this.colorFillPaintable (javaNull)
    jset this.highScoresHelper =<< (HighScoresHelperBase.new_)
    jset this.gameInfo (javaNull)
    jset this.highScoresCanvasInputProcessor (javaNull)
    jset this.currentCommand ((jindex ((jget ((jget (this).highScoreCommandsFactory)).hIGH_SCORE_COMMANDS)) (0)))
    jset this.hasPainted (False)
    pure ()

new_6 :: CommandListener.CommandListener -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> GameInfo.GameInfo -> HighScoresPaintable.HighScoresPaintable -> HighScoresFactoryInterface.HighScoresFactoryInterface -> HighScoresCanvasInputProcessorFactoryInterface.HighScoresCanvasInputProcessorFactoryInterface -> IO HighScoresCanvas
new_6 commandListener allBinaryGameLayerManager gameInfo paintable highScoresFactoryInterface highScoresCanvasInputProcessorFactoryInterface = do
    this <- newRecord_
    init_6 this commandListener allBinaryGameLayerManager gameInfo paintable highScoresFactoryInterface highScoresCanvasInputProcessorFactoryInterface
    pure this

init_6 :: HighScoresCanvas -> CommandListener.CommandListener -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> GameInfo.GameInfo -> HighScoresPaintable.HighScoresPaintable -> HighScoresFactoryInterface.HighScoresFactoryInterface -> HighScoresCanvasInputProcessorFactoryInterface.HighScoresCanvasInputProcessorFactoryInterface -> IO ()
init_6 this commandListener allBinaryGameLayerManager gameInfo paintable highScoresFactoryInterface highScoresCanvasInputProcessorFactoryInterface = do
        GameCommandCanvas.init_4 this.base (commandListener) (HighScoresCanvas.nAME) (jio (AllBinaryGameLayerManager.getBackgroundBasicColor allBinaryGameLayerManager)) (jio (AllBinaryGameLayerManager.getForegroundBasicColor allBinaryGameLayerManager))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.commonStrings)).cONSTRUCTOR))
        jset (this).highScoresPaintable (paintable)
        jset (this).highScoresFactoryInterface (highScoresFactoryInterface)
        assignedValue <- (HighScoresCanvasInputProcessorFactoryInterface.getInstance highScoresCanvasInputProcessorFactoryInterface this)
        jset (this).highScoresCanvasInputProcessor (assignedValue)
        jset (this).gameInfo (gameInfo)
        Control.Monad.void (SimpleTextPaintable.setBasicColorP ((jget (this).waitPaintable)) (jio (AllBinaryGameLayerManager.getForegroundBasicColor allBinaryGameLayerManager)))
        Control.Monad.void (HighScoresPaintable.setBasicColorP ((jio (HighScoresCanvas.getHighScoresPaintable this))) (jio (AllBinaryGameLayerManager.getForegroundBasicColor allBinaryGameLayerManager)))
        assignedValue <- (ColorFillPaintableFactory.getInstance ((jio (ColorFillPaintableFactory.getInstance))) (jio (AllBinaryGameLayerManager.getBackgroundBasicColor allBinaryGameLayerManager)) False)
        jset (this).colorFillPaintable (assignedValue)
        if ((jio (HighScoresHelperBase.getHighScoresArray ((jget (this).highScoresHelper)))) == (jget ((jio (NoHighScoresFactory.getInstance))).nO_HIGH_SCORES)) then do
            Control.Monad.void (HighScoresCanvas.setPaintable this (jget (this).waitPaintable))
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Show HighScores that are already loaded" this (jget ((jget (this).base.base.commonStrings)).cONSTRUCTOR))
            Control.Monad.void (HighScoresCanvas.updateCommand this (jget (this).currentCommand))
            Control.Monad.void (HighScoresCanvas.setPaintable this (jio (HighScoresCanvas.getHighScoresPaintable this)))
        -- Java nested class HighScoreRunnable: move it to its own module

        Control.Monad.void (ThreadPool.runTask ((jio (SecondaryThreadPool.getInstance))) (jio (HighScoreRunnable.new_1 this)))
        pure ()


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: HighScoresCanvas))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: HighScoresCanvas)) a1

initCommands_impl :: HighScoresCanvas -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        Control.Monad.void (GameCommandCanvas.removeAllCommands this)
        Control.Monad.void (GameCommandCanvas.addCommand this (jget ((jio (GameCommandsFactory.getInstance))).cLOSE_AND_SHOW_GAME_CANVAS))
        Control.Monad.void (GameCommandCanvas.setCommandListener this cmdListener)
        pure ()


open :: (JavaObjectClass this_) => this_ -> IO (())
open object_ = jmethod object_ "open" (\() -> (open_impl (javaCast object_ :: HighScoresCanvas))) ()

open_super :: (JavaObjectClass this_) => this_ -> IO (())
open_super object_ = (open_impl (javaCast object_ :: HighScoresCanvas))

open_impl :: HighScoresCanvas -> IO (())
open_impl this = do
        Control.Monad.void (GameCommandCanvas.open_super this.base)
        Control.Monad.void (HighScoresCanvasInputProcessor.open ((jget (this).highScoresCanvasInputProcessor)))
        pure ()


-- throws Exception
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: HighScoresCanvas))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: HighScoresCanvas))

close_impl :: HighScoresCanvas -> IO (())
close_impl this = do
        Control.Monad.void (GameCommandCanvas.close_super this.base)
        Control.Monad.void (HighScoresCanvasInputProcessor.close ((jget (this).highScoresCanvasInputProcessor)))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: HighScoresCanvas))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: HighScoresCanvas)) a1

paint_impl :: HighScoresCanvas -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (ColorFillBasePaintable.paint ((jget (this).colorFillPaintable)) graphics)
        Control.Monad.void (Paintable.paint ((jget (this).paintable)) graphics)
        when ((jtoObject (jget (this).waitPaintable)) /= (jtoObject (jget (this).paintable))) $ do
            Control.Monad.void (HighScoresCanvasInputProcessor.paint ((jget (this).highScoresCanvasInputProcessor)) graphics)
        Control.Monad.void (GameCommandCanvas.paint_super this.base graphics)
        jset (this).hasPainted (True)
        pure ()


executeUpdate :: (JavaObjectClass this_) => this_ -> IO (())
executeUpdate object_ = jmethod object_ "executeUpdate" (\() -> (executeUpdate_impl (javaCast object_ :: HighScoresCanvas))) ()

executeUpdate_super :: (JavaObjectClass this_) => this_ -> IO (())
executeUpdate_super object_ = (executeUpdate_impl (javaCast object_ :: HighScoresCanvas))

executeUpdate_impl :: HighScoresCanvas -> IO (())
executeUpdate_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.commonStrings)).uPDATE) e)
            ) $ do
            Control.Monad.void (HighScoresFactoryInterface.fetchHighScores ((jget (this).highScoresFactoryInterface)) (jio (HighScoresCanvas.getGameInfo this)) this)
        pure ()


getHighScoresPaintable :: (JavaObjectClass this_) => this_ -> IO (HighScoresPaintable.HighScoresPaintable)
getHighScoresPaintable object_ = jmethod object_ "getHighScoresPaintable" (\() -> (getHighScoresPaintable_impl (javaCast object_ :: HighScoresCanvas))) ()

getHighScoresPaintable_super :: (JavaObjectClass this_) => this_ -> IO (HighScoresPaintable.HighScoresPaintable)
getHighScoresPaintable_super object_ = (getHighScoresPaintable_impl (javaCast object_ :: HighScoresCanvas))

getHighScoresPaintable_impl :: HighScoresCanvas -> IO (HighScoresPaintable.HighScoresPaintable)
getHighScoresPaintable_impl this = do
        pure ((jget (this).highScoresPaintable))


setHighScoresArray :: (JavaObjectClass this_) => this_ -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray object_ a1 = jmethod object_ "setHighScoresArray" (\() -> (setHighScoresArray_impl (javaCast object_ :: HighScoresCanvas))) () a1

setHighScoresArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray_super object_ a1 = (setHighScoresArray_impl (javaCast object_ :: HighScoresCanvas)) a1

setHighScoresArray_impl :: HighScoresCanvas -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray_impl this highScoresArray = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.commonStrings)).uPDATE) e)
            ) $ do
            if (highScoresArray /= javaNull) then do
                Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.base.commonStrings)).sTART)))) (jlength highScoresArray)))))) this "setHighScoresArray")
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this "setHighScoresArray")
            Control.Monad.void (HighScoresHelperBase.setHighScoresArray ((jget (this).highScoresHelper)) highScoresArray)
            Control.Monad.void (HighScoresCanvas.updateCommand this (jget (this).currentCommand))
            Control.Monad.void (HighScoresCanvas.setPaintable this (jio (HighScoresCanvas.getHighScoresPaintable this)))
        pure ()


-- throws Exception
updateCommand :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
updateCommand object_ a1 = jmethod object_ "updateCommand" (\() -> (updateCommand_impl (javaCast object_ :: HighScoresCanvas))) () a1

updateCommand_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
updateCommand_super object_ a1 = (updateCommand_impl (javaCast object_ :: HighScoresCanvas)) a1

updateCommand_impl :: HighScoresCanvas -> Command.Command -> IO (())
updateCommand_impl this command = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.base.commonStrings)).sTART)))) (jio (StringUtil.toString ((jget (this).base.base.stringUtil)) command))))))) this (jget ((jget (this).base.base.commonStrings)).uPDATE))
        gameCommandsFactory <- (GameCommandsFactory.getInstance)
        when (jio (HighScoreCommandsFactory.isHighScoreCommand ((jget (this).highScoreCommandsFactory)) command)) $ do
            index <- (HighScoreCommandsFactory.getIndex ((jget (this).highScoreCommandsFactory)) command)
            nextIndex <- newIORef ((index + 1))
            highScoresArray <- (HighScoresHelperBase.getHighScoresArray ((jget (this).highScoresHelper)))
            when ((jget nextIndex) >= (jlength highScoresArray)) $ do
                jset nextIndex (0)
            if ((jlength highScoresArray) > 0) then do
                Control.Monad.void (HighScoresPaintable.setHighScores ((jio (HighScoresCanvas.getHighScoresPaintable this))) (jindex highScoresArray (index)))
            else do
                Control.Monad.void (HighScoresPaintable.setHighScores ((jio (HighScoresCanvas.getHighScoresPaintable this))) (jio (NullHighScoresSingletonFactory.getInstance)))
            when (index /= (jget nextIndex)) $ do
                Control.Monad.void (GameCommandCanvas.removeAllCommands this)
                Control.Monad.void (GameCommandCanvas.addCommand this (jget (gameCommandsFactory).cLOSE_AND_SHOW_GAME_CANVAS))
                Control.Monad.void (GameCommandCanvas.addCommand this (jindex ((jget ((jget (this).highScoreCommandsFactory)).hIGH_SCORE_COMMANDS)) ((jget nextIndex))))
        jset (this).currentCommand (command)
        Control.Monad.void (HighScoresCanvas.close this)
        Control.Monad.void (GameCommandCanvas.initMenu_super this.base)
        Control.Monad.void (HighScoresCanvas.open this)
        Control.Monad.void (RepaintBehavior.onChangeRepaint ((jget (this).base.repaintBehavior)) this)
        pure ()


getGameInfo :: (JavaObjectClass this_) => this_ -> IO (GameInfo.GameInfo)
getGameInfo object_ = jmethod object_ "getGameInfo" (\() -> (getGameInfo_impl (javaCast object_ :: HighScoresCanvas))) ()

getGameInfo_super :: (JavaObjectClass this_) => this_ -> IO (GameInfo.GameInfo)
getGameInfo_super object_ = (getGameInfo_impl (javaCast object_ :: HighScoresCanvas))

getGameInfo_impl :: HighScoresCanvas -> IO (GameInfo.GameInfo)
getGameInfo_impl this = do
        pure ((jget (this).gameInfo))


setPaintable :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setPaintable object_ a1 = jmethod object_ "setPaintable" (\() -> (setPaintable_impl (javaCast object_ :: HighScoresCanvas))) () a1

setPaintable_super :: (JavaObjectClass this_) => this_ -> Paintable.Paintable -> IO (())
setPaintable_super object_ a1 = (setPaintable_impl (javaCast object_ :: HighScoresCanvas)) a1

setPaintable_impl :: HighScoresCanvas -> Paintable.Paintable -> IO (())
setPaintable_impl this paintable = do
        jset (this).paintable (paintable)
        Control.Monad.void (RepaintBehavior.onChangeRepaint ((jget (this).base.repaintBehavior)) this)
        pure ()


