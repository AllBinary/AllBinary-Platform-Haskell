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
module BasicHighScoresFactory (module BasicHighScoresFactory, module HighScoresBase) where

import HighScoresBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, fetchHighScores, fetchHighScores_super, fetchHighScores_impl, fetchHighScoresPreload, fetchHighScoresPreload_super, fetchHighScoresPreload_impl, createHighScoresHelper, createHighScoresHelper_super, createHighScoresHelper_impl, loaded, loaded_super, loaded_impl, logUtil, abeClientInformation, softwareInformation, highScoresArray, tOP, sCORES, pERSONAL_HIGH_SCORES, wORLD_TOP_SCORES, fETCH)
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
import qualified HighScores -- same package or java.lang
import qualified HighScoresResultsListener -- same package or java.lang
import qualified RecordStoreHighScores -- same package or java.lang
import qualified ScoreComparator -- same package or java.lang
import qualified LastFetchHighScoresFactory -- same package or java.lang
import qualified HighScoresHelper2 -- same package or java.lang
import qualified HighScoresHelperBaseInterface -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified ARunnable -- org.allbinary.thread.ARunnable
import qualified BasicHighScoresGameInfoFactory -- org.allbinary.game.BasicHighScoresGameInfoFactory
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified GameType -- org.allbinary.game.GameType
import qualified GameTypeFactory -- org.allbinary.game.GameTypeFactory
import qualified RemoteHighScores -- org.allbinary.game.score.remote.RemoteHighScores
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified SoftwareInformation -- org.allbinary.logic.system.SoftwareInformation
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified SecondaryThreadPool -- org.allbinary.thread.SecondaryThreadPool
import qualified HighScoresBase

data BasicHighScoresFactory = BasicHighScoresFactory
    { header_ :: JavaHeader
    , base :: HighScoresBase.HighScoresBase
    , logUtil :: IORef (LogUtil.LogUtil)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , softwareInformation :: IORef (SoftwareInformation.SoftwareInformation)
    , highScoresArray :: IORef (JavaArray (HighScores.HighScores))
    , tOP :: IORef (String)
    , sCORES :: IORef (String)
    , pERSONAL_HIGH_SCORES :: IORef (String)
    , wORLD_TOP_SCORES :: IORef (String)
    , fETCH :: IORef (String)
    }

instance JavaNull BasicHighScoresFactory where
    javaNull = javaNullRecord "BasicHighScoresFactory"

instance JavaEquals BasicHighScoresFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicHighScoresFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicHighScoresFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicHighScoresFactory
newRecord_ = do
    base <- HighScoresBase.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    softwareInformation <- newIORef javaNull
    highScoresArray <- newIORef javaNull
    tOP <- newIORef ""
    sCORES <- newIORef ""
    pERSONAL_HIGH_SCORES <- newIORef ""
    wORLD_TOP_SCORES <- newIORef ""
    fETCH <- newIORef ""
    let this = BasicHighScoresFactory header_ base logUtil abeClientInformation softwareInformation highScoresArray tOP sCORES pERSONAL_HIGH_SCORES wORLD_TOP_SCORES fETCH
    jregisterLevel header_ this
    jregisterMethod header_ "fetchHighScores" (\() -> fetchHighScores_impl this)
    jregisterMethod header_ "fetchHighScoresPreload" (\() -> fetchHighScoresPreload_impl this)
    jregisterMethod header_ "createHighScoresHelper" (\() -> createHighScoresHelper_impl this)
    pure this

initFields_ :: BasicHighScoresFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.abeClientInformation (javaNull)
    jset this.softwareInformation (javaNull)
    jset this.highScoresArray ((jnewArray (2) javaNull))
    jset this.tOP ("Top")
    jset this.sCORES ("Scores")
    jset this.pERSONAL_HIGH_SCORES ("Personal Top Scores")
    jset this.wORLD_TOP_SCORES ("World Top Scores")
    jset this.fETCH ("fetchHighScores")
    pure ()

new_2 :: AbeClientInformationInterface.AbeClientInformationInterface -> SoftwareInformation.SoftwareInformation -> IO BasicHighScoresFactory
new_2 abeClientInformation softwareInformation = do
    this <- newRecord_
    init_2 this abeClientInformation softwareInformation
    pure this

init_2 :: BasicHighScoresFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> SoftwareInformation.SoftwareInformation -> IO ()
init_2 this abeClientInformation softwareInformation = do
        HighScoresBase.init_ this.base
        initFields_ this
        jset (this).abeClientInformation (abeClientInformation)
        jset (this).softwareInformation (softwareInformation)
        pure ()


fetchHighScores :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> IO (())
fetchHighScores object_ a1 a2 = jmethod object_ "fetchHighScores" (\() -> (fetchHighScores_impl (javaCast object_ :: BasicHighScoresFactory))) () a1 a2

fetchHighScores_super :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> IO (())
fetchHighScores_super object_ a1 a2 = (fetchHighScores_impl (javaCast object_ :: BasicHighScoresFactory)) a1 a2

fetchHighScores_impl :: BasicHighScoresFactory -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> IO (())
fetchHighScores_impl this gameInfo highScoresResultsListener = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Getting Remote/Local HighScores" this (jget (this).fETCH))
        Control.Monad.void (BasicHighScoresFactory.fetchHighScoresPreload this gameInfo highScoresResultsListener True)
        pure ()


fetchHighScoresPreload :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> Bool -> IO (())
fetchHighScoresPreload object_ a1 a2 a3 = jmethod object_ "fetchHighScoresPreload" (\() -> (fetchHighScoresPreload_impl (javaCast object_ :: BasicHighScoresFactory))) () a1 a2 a3

fetchHighScoresPreload_super :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> Bool -> IO (())
fetchHighScoresPreload_super object_ a1 a2 a3 = (fetchHighScoresPreload_impl (javaCast object_ :: BasicHighScoresFactory)) a1 a2 a3

fetchHighScoresPreload_impl :: BasicHighScoresFactory -> GameInfo.GameInfo -> HighScoresResultsListener.HighScoresResultsListener -> Bool -> IO (())
fetchHighScoresPreload_impl this gameInfo highScoresResultsListener preload = do
        Control.Monad.void (ThreadPool.runTask ((jio (SecondaryThreadPool.getInstance))) (javaCast (ARunnable.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-})))
        pure ()


createHighScoresHelper :: (JavaObjectClass this_) => this_ -> IO (HighScoresHelperBaseInterface.HighScoresHelperBaseInterface)
createHighScoresHelper object_ = jmethod object_ "createHighScoresHelper" (\() -> (createHighScoresHelper_impl (javaCast object_ :: BasicHighScoresFactory))) ()

createHighScoresHelper_super :: (JavaObjectClass this_) => this_ -> IO (HighScoresHelperBaseInterface.HighScoresHelperBaseInterface)
createHighScoresHelper_super object_ = (createHighScoresHelper_impl (javaCast object_ :: BasicHighScoresFactory))

createHighScoresHelper_impl :: BasicHighScoresFactory -> IO (HighScoresHelperBaseInterface.HighScoresHelperBaseInterface)
createHighScoresHelper_impl this = do
        (fmap (\value_ -> javaCast value_ :: HighScoresHelperBaseInterface.HighScoresHelperBaseInterface) (HighScoresHelper2.new_))


loaded :: Int -> IO (Bool)
loaded index2 = do
    javaCatchReturn $ do
        when (index2 >= 0) $ do
            javaReturn (True)
        pure (False)


