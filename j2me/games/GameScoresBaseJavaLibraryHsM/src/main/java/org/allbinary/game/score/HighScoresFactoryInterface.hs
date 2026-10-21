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
module HighScoresFactoryInterface where

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
import qualified HighScoresResultsListener -- same package or java.lang
import qualified HighScoresHelperBaseInterface -- same package or java.lang
import qualified GameInfo -- org.allbinary.game.GameInfo

-- Java interface: the classes that implement it have these functions
data HighScoresFactoryInterface = HighScoresFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull HighScoresFactoryInterface where
    javaNull = javaNullRecord "HighScoresFactoryInterface"

instance JavaEquals HighScoresFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoresFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass HighScoresFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> HighScoresFactoryInterface
fromHeader_ header = HighScoresFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (HighScoresFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


fetchHighScores :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> IO (())
fetchHighScores object_ a1 a2 = jmethod object_ "fetchHighScores" (\() -> (fetchHighScores_impl (javaCast object_ :: HighScoresFactoryInterface))) () a1 a2

fetchHighScores_super :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> IO (())
fetchHighScores_super object_ a1 a2 = (fetchHighScores_impl (javaCast object_ :: HighScoresFactoryInterface)) a1 a2

fetchHighScores_impl :: HighScoresFactoryInterface -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> IO (())
fetchHighScores_impl this gameInfo highScoresResultsListener = javaAbstractMethod "fetchHighScores"


fetchHighScoresPreload :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> Bool -> IO (())
fetchHighScoresPreload object_ a1 a2 a3 = jmethod object_ "fetchHighScoresPreload" (\() -> (fetchHighScoresPreload_impl (javaCast object_ :: HighScoresFactoryInterface))) () a1 a2 a3

fetchHighScoresPreload_super :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> Bool -> IO (())
fetchHighScoresPreload_super object_ a1 a2 a3 = (fetchHighScoresPreload_impl (javaCast object_ :: HighScoresFactoryInterface)) a1 a2 a3

fetchHighScoresPreload_impl :: HighScoresFactoryInterface -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> Bool -> IO (())
fetchHighScoresPreload_impl this gameInfo highScoresResultsListener preload = javaAbstractMethod "fetchHighScoresPreload"


createHighScoresHelper :: (JavaObjectClass this_) => this_ -> IO (HighScoresHelperBaseInterface.HighScoresHelperBaseInterface)
createHighScoresHelper object_ = jmethod object_ "createHighScoresHelper" (\() -> (createHighScoresHelper_impl (javaCast object_ :: HighScoresFactoryInterface))) ()

createHighScoresHelper_super :: (JavaObjectClass this_) => this_ -> IO (HighScoresHelperBaseInterface.HighScoresHelperBaseInterface)
createHighScoresHelper_super object_ = (createHighScoresHelper_impl (javaCast object_ :: HighScoresFactoryInterface))

createHighScoresHelper_impl :: HighScoresFactoryInterface -> IO (HighScoresHelperBaseInterface.HighScoresHelperBaseInterface)
createHighScoresHelper_impl this = javaAbstractMethod "createHighScoresHelper"


