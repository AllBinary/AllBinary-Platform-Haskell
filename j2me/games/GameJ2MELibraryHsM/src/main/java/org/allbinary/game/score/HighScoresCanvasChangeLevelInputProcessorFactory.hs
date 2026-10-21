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
module HighScoresCanvasChangeLevelInputProcessorFactory where

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
import qualified HighScoresCanvasLevelChangeInputProcessor -- same package or java.lang
import qualified HighScoresCanvasInputProcessor -- same package or java.lang
import qualified HighScoresCanvas -- org.allbinary.game.score.displayable.HighScoresCanvas
import qualified HighScoresCanvasInputProcessorFactoryInterface

-- implements HighScoresCanvasInputProcessorFactoryInterface
data HighScoresCanvasChangeLevelInputProcessorFactory = HighScoresCanvasChangeLevelInputProcessorFactory
    { header_ :: JavaHeader
    }

instance JavaNull HighScoresCanvasChangeLevelInputProcessorFactory where
    javaNull = javaNullRecord "HighScoresCanvasChangeLevelInputProcessorFactory"

instance JavaEquals HighScoresCanvasChangeLevelInputProcessorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoresCanvasChangeLevelInputProcessorFactory where
    (==) = jrecordEquals

instance JavaObjectClass HighScoresCanvasChangeLevelInputProcessorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HighScoresCanvasChangeLevelInputProcessorFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = HighScoresCanvasChangeLevelInputProcessorFactory header_
    jregisterLevel header_ this
    HighScoresCanvasInputProcessorFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: HighScoresCanvasChangeLevelInputProcessorFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO HighScoresCanvasChangeLevelInputProcessorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HighScoresCanvasChangeLevelInputProcessorFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> HighScoresCanvas.HighScoresCanvas -> IO (HighScoresCanvasInputProcessor.HighScoresCanvasInputProcessor)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: HighScoresCanvasChangeLevelInputProcessorFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> HighScoresCanvas.HighScoresCanvas -> IO (HighScoresCanvasInputProcessor.HighScoresCanvasInputProcessor)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: HighScoresCanvasChangeLevelInputProcessorFactory)) a1

getInstance_impl :: HighScoresCanvasChangeLevelInputProcessorFactory -> HighScoresCanvas.HighScoresCanvas -> IO (HighScoresCanvasInputProcessor.HighScoresCanvasInputProcessor)
getInstance_impl this highScoresCanvas = do
        (fmap (\value_ -> javaCast value_ :: HighScoresCanvasInputProcessor.HighScoresCanvasInputProcessor) (HighScoresCanvasLevelChangeInputProcessor.new_1 highScoresCanvas))


