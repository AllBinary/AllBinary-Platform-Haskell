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
module CheatGameInputProcessor (module CheatGameInputProcessor, module PlayerGameInput) where

import PlayerGameInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, update, update_super, update_impl, pROCESS_GAME, gameCanvas, inputProcessor, gameKeyFactory)
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
import qualified Any -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified GameKey -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified GameKeyFactory -- org.allbinary.game.input.GameKeyFactory
import qualified PlayerGameInput -- org.allbinary.game.input.PlayerGameInput
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified GameKeyEventUtil -- org.allbinary.game.input.event.GameKeyEventUtil
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified SpecialGameInputFactory -- org.allbinary.game.layer.special.SpecialGameInputFactory
import qualified SpecialGameInputInterface -- org.allbinary.game.layer.special.SpecialGameInputInterface
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data CheatGameInputProcessor = CheatGameInputProcessor
    { header_ :: JavaHeader
    , base :: PlayerGameInput.PlayerGameInput
    , pROCESS_GAME :: IORef (String)
    , gameCanvas :: IORef (AllBinaryGameCanvas.AllBinaryGameCanvas)
    , gameKeyFactory :: IORef (GameKeyFactory.GameKeyFactory)
    }

instance JavaNull CheatGameInputProcessor where
    javaNull = javaNullRecord "CheatGameInputProcessor"

instance JavaEquals CheatGameInputProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CheatGameInputProcessor where
    (==) = jrecordEquals

instance JavaObjectClass CheatGameInputProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE inputProcessor #-}
inputProcessor = unsafePerformIO (newIORef ((javaCast SpecialGameInputFactory.nO_SPECIAL_GAME_INPUT :: SpecialGameInputInterface.SpecialGameInputInterface)))

newRecord_ :: IO CheatGameInputProcessor
newRecord_ = do
    base <- PlayerGameInput.newRecord_
    let header_ = base.header_
    pROCESS_GAME <- newIORef ""
    gameCanvas <- newIORef javaNull
    gameKeyFactory <- newIORef javaNull
    let this = CheatGameInputProcessor header_ base pROCESS_GAME gameCanvas gameKeyFactory
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: CheatGameInputProcessor -> IO ()
initFields_ this = do
    jset this.pROCESS_GAME ("processGame")
    jset this.gameCanvas (javaNull)
    jset this.gameKeyFactory =<< (GameKeyFactory.getInstance)
    pure ()

new_1 :: AllBinaryGameCanvas.AllBinaryGameCanvas -> IO CheatGameInputProcessor
new_1 gameCanvas = do
    this <- newRecord_
    init_1 this gameCanvas
    pure this

init_1 :: CheatGameInputProcessor -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO ()
init_1 this gameCanvas = do
        PlayerGameInput.init_3 this.base (jio (BasicArrayListD.new_)) (jio (BasicArrayListD.new_)) (Prelude.negate 1)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).gameCanvas (gameCanvas)
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: CheatGameInputProcessor))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: CheatGameInputProcessor))

update_impl :: CheatGameInputProcessor -> IO (())
update_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.commonStrings)).uPDATE) e)
            ) $ do
            gameLayerManager <- (AllBinaryGameCanvas.getLayerManager ((jget (this).gameCanvas)))
            list <- (PlayerGameInput.getGameKeyEventList this)
            size <- (BasicArrayList.size list)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let anyType = (jindex ((jget (list).objectArray)) (index))
                key <- (GameKeyEventUtil.getKey anyType)
                if (key == (jio (GameKey.getId ((jget ((jget (this).gameKeyFactory)).lEVEL_DOWN))))) then do
                    Control.Monad.void (strafeLeft ((jget CheatGameInputProcessor.inputProcessor)))
                    throwIO JavaBreak
                else when (key == (jio (GameKey.getId ((jget ((jget (this).gameKeyFactory)).lEVEL_UP))))) $ do
                    Control.Monad.void (strafeRight ((jget CheatGameInputProcessor.inputProcessor)))
                    throwIO JavaBreak
                if (key == (jio (GameKey.getId ((jget ((jget (this).gameKeyFactory)).lEFT))))) then do
                    Control.Monad.void (left ((jget CheatGameInputProcessor.inputProcessor)))
                    throwIO JavaBreak
                else if (key == (jio (GameKey.getId ((jget ((jget (this).gameKeyFactory)).rIGHT))))) then do
                    Control.Monad.void (right ((jget CheatGameInputProcessor.inputProcessor)))
                    throwIO JavaBreak
                else if (key == (jio (GameKey.getId ((jget ((jget (this).gameKeyFactory)).uP))))) then do
                    Control.Monad.void (up ((jget CheatGameInputProcessor.inputProcessor)))
                    throwIO JavaBreak
                else if (key == (jio (GameKey.getId ((jget ((jget (this).gameKeyFactory)).dOWN))))) then do
                    Control.Monad.void (down ((jget CheatGameInputProcessor.inputProcessor)))
                    throwIO JavaBreak
                else if (key == (jio (GameKey.getId ((jget ((jget (this).gameKeyFactory)).kEY_NUM1))))) then do
                    Control.Monad.void (special1 ((jget CheatGameInputProcessor.inputProcessor)) gameLayerManager (GameKeyEvent.nONE))
                    throwIO JavaBreak
                else when (key == (jio (GameKey.getId ((jget ((jget (this).gameKeyFactory)).kEY_NUM3))))) $ do
                    Control.Monad.void (special2 ((jget CheatGameInputProcessor.inputProcessor)) gameLayerManager (GameKeyEvent.nONE))
                    throwIO JavaBreak
            Control.Monad.void (BasicArrayList.clear list)
        pure ()


