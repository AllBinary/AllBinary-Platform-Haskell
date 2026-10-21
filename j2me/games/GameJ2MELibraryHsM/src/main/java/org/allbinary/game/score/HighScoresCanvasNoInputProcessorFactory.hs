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
module HighScoresCanvasNoInputProcessorFactory where

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
import qualified HighScoresCanvasInputProcessor -- same package or java.lang
import qualified HighScoresCanvas -- org.allbinary.game.score.displayable.HighScoresCanvas
import qualified HighScoresCanvasInputProcessorFactoryInterface

-- implements HighScoresCanvasInputProcessorFactoryInterface
data HighScoresCanvasNoInputProcessorFactory = HighScoresCanvasNoInputProcessorFactory
    { header_ :: JavaHeader
    }

instance JavaNull HighScoresCanvasNoInputProcessorFactory where
    javaNull = javaNullRecord "HighScoresCanvasNoInputProcessorFactory"

instance JavaEquals HighScoresCanvasNoInputProcessorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoresCanvasNoInputProcessorFactory where
    (==) = jrecordEquals

instance JavaObjectClass HighScoresCanvasNoInputProcessorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HighScoresCanvasNoInputProcessorFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = HighScoresCanvasNoInputProcessorFactory header_
    jregisterLevel header_ this
    HighScoresCanvasInputProcessorFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: HighScoresCanvasNoInputProcessorFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO HighScoresCanvasNoInputProcessorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HighScoresCanvasNoInputProcessorFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> HighScoresCanvas.HighScoresCanvas -> IO (HighScoresCanvasInputProcessor.HighScoresCanvasInputProcessor)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: HighScoresCanvasNoInputProcessorFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> HighScoresCanvas.HighScoresCanvas -> IO (HighScoresCanvasInputProcessor.HighScoresCanvasInputProcessor)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: HighScoresCanvasNoInputProcessorFactory)) a1

getInstance_impl :: HighScoresCanvasNoInputProcessorFactory -> HighScoresCanvas.HighScoresCanvas -> IO (HighScoresCanvasInputProcessor.HighScoresCanvasInputProcessor)
getInstance_impl this highScoresCanvas = do
        (HighScoresCanvasInputProcessor.new_1 highScoresCanvas)


