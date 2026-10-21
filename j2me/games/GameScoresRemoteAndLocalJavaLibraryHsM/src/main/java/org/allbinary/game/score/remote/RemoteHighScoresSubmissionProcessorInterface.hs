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
-- package org.allbinary.game.score.remote
module RemoteHighScoresSubmissionProcessorInterface where

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
import qualified RemoteHighScores -- same package or java.lang
import qualified HighScore -- org.allbinary.game.score.HighScore
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

-- Java interface: the classes that implement it have these functions
data RemoteHighScoresSubmissionProcessorInterface = RemoteHighScoresSubmissionProcessorInterface
    { header_ :: JavaHeader
    }

instance JavaNull RemoteHighScoresSubmissionProcessorInterface where
    javaNull = javaNullRecord "RemoteHighScoresSubmissionProcessorInterface"

instance JavaEquals RemoteHighScoresSubmissionProcessorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RemoteHighScoresSubmissionProcessorInterface where
    (==) = jrecordEquals

instance JavaObjectClass RemoteHighScoresSubmissionProcessorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> RemoteHighScoresSubmissionProcessorInterface
fromHeader_ header = RemoteHighScoresSubmissionProcessorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (RemoteHighScoresSubmissionProcessorInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


process :: (JavaObjectClass this_) => this_ -> RemoteHighScores.RemoteHighScores -> AbeClientInformationInterface.AbeClientInformationInterface -> HighScore.HighScore -> IO (())
process object_ a1 a2 a3 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: RemoteHighScoresSubmissionProcessorInterface))) () a1 a2 a3

process_super :: (JavaObjectClass this_) => this_ -> RemoteHighScores.RemoteHighScores -> AbeClientInformationInterface.AbeClientInformationInterface -> HighScore.HighScore -> IO (())
process_super object_ a1 a2 a3 = (process_impl (javaCast object_ :: RemoteHighScoresSubmissionProcessorInterface)) a1 a2 a3

process_impl :: RemoteHighScoresSubmissionProcessorInterface -> RemoteHighScores.RemoteHighScores -> AbeClientInformationInterface.AbeClientInformationInterface -> HighScore.HighScore -> IO (())
process_impl this remoteHighScores abeClientInformation highScore = javaAbstractMethod "process"


