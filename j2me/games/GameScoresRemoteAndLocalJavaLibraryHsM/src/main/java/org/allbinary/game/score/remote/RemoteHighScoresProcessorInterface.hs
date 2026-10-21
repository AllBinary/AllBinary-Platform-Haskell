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
module RemoteHighScoresProcessorInterface where

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
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

-- Java interface: the classes that implement it have these functions
data RemoteHighScoresProcessorInterface = RemoteHighScoresProcessorInterface
    { header_ :: JavaHeader
    }

instance JavaNull RemoteHighScoresProcessorInterface where
    javaNull = javaNullRecord "RemoteHighScoresProcessorInterface"

instance JavaEquals RemoteHighScoresProcessorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RemoteHighScoresProcessorInterface where
    (==) = jrecordEquals

instance JavaObjectClass RemoteHighScoresProcessorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> RemoteHighScoresProcessorInterface
fromHeader_ header = RemoteHighScoresProcessorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (RemoteHighScoresProcessorInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> RemoteHighScores.RemoteHighScores -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> IO (())
process object_ a1 a2 a3 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: RemoteHighScoresProcessorInterface))) () a1 a2 a3

process_super :: (JavaObjectClass this_) => this_ -> RemoteHighScores.RemoteHighScores -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> IO (())
process_super object_ a1 a2 a3 = (process_impl (javaCast object_ :: RemoteHighScoresProcessorInterface)) a1 a2 a3

process_impl :: RemoteHighScoresProcessorInterface -> RemoteHighScores.RemoteHighScores -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> IO (())
process_impl this remoteHighScores abeClientInformation gameInfo = javaAbstractMethod "process"


