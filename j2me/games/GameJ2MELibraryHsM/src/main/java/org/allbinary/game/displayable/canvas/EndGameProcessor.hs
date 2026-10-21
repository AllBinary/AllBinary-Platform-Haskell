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
module EndGameProcessor (module EndGameProcessor, module Processor) where

import Processor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, gameStateFactory, gameCanvas, wAIT)
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
import qualified HighScores -- org.allbinary.game.score.HighScores
import qualified HighScoresHelperBase -- org.allbinary.game.score.HighScoresHelperBase
import qualified NullHighScoresSingletonFactory -- org.allbinary.game.score.NullHighScoresSingletonFactory
import qualified GameStateFactory -- org.allbinary.game.state.GameStateFactory
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable

data EndGameProcessor = EndGameProcessor
    { header_ :: JavaHeader
    , base :: Processor.Processor
    , gameStateFactory :: IORef (GameStateFactory.GameStateFactory)
    , gameCanvas :: IORef (AllBinaryGameCanvas.AllBinaryGameCanvas)
    , wAIT :: IORef (Int64)
    }

instance JavaNull EndGameProcessor where
    javaNull = javaNullRecord "EndGameProcessor"

instance JavaEquals EndGameProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EndGameProcessor where
    (==) = jrecordEquals

instance JavaObjectClass EndGameProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO EndGameProcessor
newRecord_ = do
    base <- Processor.newRecord_
    let header_ = base.header_
    gameStateFactory <- newIORef javaNull
    gameCanvas <- newIORef javaNull
    wAIT <- newIORef 0
    let this = EndGameProcessor header_ base gameStateFactory gameCanvas wAIT
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: EndGameProcessor -> IO ()
initFields_ this = do
    jset this.gameStateFactory =<< (GameStateFactory.getInstance)
    jset this.gameCanvas (javaNull)
    jset this.wAIT (5000)
    pure ()

new_1 :: AllBinaryGameCanvas.AllBinaryGameCanvas -> IO EndGameProcessor
new_1 gameCanvas = do
    this <- newRecord_
    init_1 this gameCanvas
    pure this

init_1 :: EndGameProcessor -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO ()
init_1 this gameCanvas = do
        Processor.init_ this.base
        initFields_ this
        jset (this).gameCanvas (gameCanvas)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: EndGameProcessor))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: EndGameProcessor))

process_impl :: EndGameProcessor -> IO (())
process_impl this = do
        when (jio (AllBinaryGameCanvas.isHighScoreSubmitted ((jget (this).gameCanvas)))) $ do
            when (jio (TimeDelayHelper.isElapsedTNT ((jio (AllBinaryGameCanvas.getGameStateTimeHelper ((jget (this).gameCanvas))))) (jget (this).wAIT))) $ do
                if ((jio (AllBinaryGameCanvas.getGameState ((jget (this).gameCanvas)))) == (jget ((jget (this).gameStateFactory)).sHOW_END_RESULT_GAME_STATE)) then do
                    let highScoresBase = (javaCast (jget ((jget (this).gameCanvas)).highScoresHelper) :: HighScoresHelperBase.HighScoresHelperBase)
                    highScores <- (HighScoresHelperBase.getSelectedHighScores highScoresBase)
                    when (highScores /= (jio (NullHighScoresSingletonFactory.getInstance))) $ do
                        Control.Monad.void (HighScoresHelperBase.selectHighScores highScoresBase)
                        Control.Monad.void (HighScoresPaintable.setHighScores ((jio (AllBinaryGameCanvas.getRealHighScoresPaintable ((jget (this).gameCanvas))))) highScores)
                        Control.Monad.void (AllBinaryGameCanvas.setGameState ((jget (this).gameCanvas)) (jget ((jget (this).gameStateFactory)).sHOW_HIGH_SCORE_GAME_STATE))
                        Control.Monad.void (AllBinaryGameCanvas.setHighScoresPaintable ((jget (this).gameCanvas)) (jio (AllBinaryGameCanvas.getRealHighScoresPaintable ((jget (this).gameCanvas)))))
                else when ((jio (AllBinaryGameCanvas.getGameState ((jget (this).gameCanvas)))) == (jget ((jget (this).gameStateFactory)).sHOW_HIGH_SCORE_GAME_STATE)) $ do
                    Control.Monad.void (AllBinaryGameCanvas.setGameState ((jget (this).gameCanvas)) (jget ((jget (this).gameStateFactory)).sHOW_END_RESULT_GAME_STATE))
                    Control.Monad.void (AllBinaryGameCanvas.setHighScoresPaintable ((jget (this).gameCanvas)) (jio (NullPaintable.getInstance)))
        pure ()


