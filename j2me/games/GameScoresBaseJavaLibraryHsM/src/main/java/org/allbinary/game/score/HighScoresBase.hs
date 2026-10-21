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
module HighScoresBase where

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
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified HighScoresFactoryInterface

-- implements HighScoresFactoryInterface
data HighScoresBase = HighScoresBase
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull HighScoresBase where
    javaNull = javaNullRecord "HighScoresBase"

instance JavaEquals HighScoresBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoresBase where
    (==) = jrecordEquals

instance JavaObjectClass HighScoresBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HighScoresBase
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    let this = HighScoresBase header_ commonStrings
    jregisterLevel header_ this
    HighScoresFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "fetchHighScores" (\() -> fetchHighScores_impl this)
    jregisterMethod header_ "fetchHighScoresPreload" (\() -> fetchHighScoresPreload_impl this)
    jregisterMethod header_ "createHighScoresHelper" (\() -> createHighScoresHelper_impl this)
    pure this

initFields_ :: HighScoresBase -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO HighScoresBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HighScoresBase -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


fetchHighScores :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> IO (())
fetchHighScores object_ a1 a2 = jmethod object_ "fetchHighScores" (\() -> (fetchHighScores_impl (javaCast object_ :: HighScoresBase))) () a1 a2

fetchHighScores_super :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> IO (())
fetchHighScores_super object_ a1 a2 = (fetchHighScores_impl (javaCast object_ :: HighScoresBase)) a1 a2

fetchHighScores_impl :: HighScoresBase -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> IO (())
fetchHighScores_impl this gameInfo highScoresResultsListener = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


fetchHighScoresPreload :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> Bool -> IO (())
fetchHighScoresPreload object_ a1 a2 a3 = jmethod object_ "fetchHighScoresPreload" (\() -> (fetchHighScoresPreload_impl (javaCast object_ :: HighScoresBase))) () a1 a2 a3

fetchHighScoresPreload_super :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> Bool -> IO (())
fetchHighScoresPreload_super object_ a1 a2 a3 = (fetchHighScoresPreload_impl (javaCast object_ :: HighScoresBase)) a1 a2 a3

fetchHighScoresPreload_impl :: HighScoresBase -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> Bool -> IO (())
fetchHighScoresPreload_impl this gameInfo highScoresResultsListener preload = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


createHighScoresHelper :: (JavaObjectClass this_) => this_ -> IO (HighScoresHelperBaseInterface.HighScoresHelperBaseInterface)
createHighScoresHelper object_ = jmethod object_ "createHighScoresHelper" (\() -> (createHighScoresHelper_impl (javaCast object_ :: HighScoresBase))) ()

createHighScoresHelper_super :: (JavaObjectClass this_) => this_ -> IO (HighScoresHelperBaseInterface.HighScoresHelperBaseInterface)
createHighScoresHelper_super object_ = (createHighScoresHelper_impl (javaCast object_ :: HighScoresBase))

createHighScoresHelper_impl :: HighScoresBase -> IO (HighScoresHelperBaseInterface.HighScoresHelperBaseInterface)
createHighScoresHelper_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


