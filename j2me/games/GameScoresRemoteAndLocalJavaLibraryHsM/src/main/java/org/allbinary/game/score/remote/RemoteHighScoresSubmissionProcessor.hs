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
module RemoteHighScoresSubmissionProcessor where

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
import qualified Any -- same package or java.lang
import qualified RemoteHighScoresData -- same package or java.lang
import qualified XmlRpcRemoteHighScoresClient -- same package or java.lang
import qualified RemoteHighScores -- same package or java.lang
import qualified GameInfoData -- org.allbinary.game.GameInfoData
import qualified GameConfigurationCentral -- org.allbinary.game.configuration.GameConfigurationCentral
import qualified HighScore -- org.allbinary.game.score.HighScore
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified XmlRpcAbeClient -- org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified NoCrypt -- org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified HashtableUtil -- org.allbinary.util.HashtableUtil
import qualified RemoteHighScoresSubmissionProcessorInterface

-- implements RemoteHighScoresSubmissionProcessorInterface
data RemoteHighScoresSubmissionProcessor = RemoteHighScoresSubmissionProcessor
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , noCrypt :: IORef (NoCrypt.NoCrypt)
    }

instance JavaNull RemoteHighScoresSubmissionProcessor where
    javaNull = javaNullRecord "RemoteHighScoresSubmissionProcessor"

instance JavaEquals RemoteHighScoresSubmissionProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RemoteHighScoresSubmissionProcessor where
    (==) = jrecordEquals

instance JavaObjectClass RemoteHighScoresSubmissionProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RemoteHighScoresSubmissionProcessor
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    noCrypt <- newIORef javaNull
    let this = RemoteHighScoresSubmissionProcessor header_ logUtil commonStrings noCrypt
    jregisterLevel header_ this
    RemoteHighScoresSubmissionProcessorInterface.registerInterface_ header_
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: RemoteHighScoresSubmissionProcessor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.noCrypt =<< (NoCrypt.new_)
    pure ()

new_ :: IO RemoteHighScoresSubmissionProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RemoteHighScoresSubmissionProcessor -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


process :: (JavaObjectClass this_) => this_ -> RemoteHighScores.RemoteHighScores -> AbeClientInformationInterface.AbeClientInformationInterface -> HighScore.HighScore -> IO (())
process object_ a1 a2 a3 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: RemoteHighScoresSubmissionProcessor))) () a1 a2 a3

process_super :: (JavaObjectClass this_) => this_ -> RemoteHighScores.RemoteHighScores -> AbeClientInformationInterface.AbeClientInformationInterface -> HighScore.HighScore -> IO (())
process_super object_ a1 a2 a3 = (process_impl (javaCast object_ :: RemoteHighScoresSubmissionProcessor)) a1 a2 a3

process_impl :: RemoteHighScoresSubmissionProcessor -> RemoteHighScores.RemoteHighScores -> AbeClientInformationInterface.AbeClientInformationInterface -> HighScore.HighScore -> IO (())
process_impl this remoteHighScores abeClientInformation highScore = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).pROCESS) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Begin Remote HighScores Submission" this (jget ((jget (this).commonStrings)).pROCESS))
            gameInfoData <- (GameInfoData.getInstance)
            hashtable <- (AbeClientInformationInterface.toHashtable abeClientInformation)
            Control.Monad.void (HashtableUtil.putAll ((jio (HashtableUtil.getInstance))) (jio (GameInfo.toHashtable ((jio (HighScore.getGameInfo highScore))))) hashtable)
            Control.Monad.void (ABHashtable.put hashtable (jget ((jio (RemoteHighScoresData.getInstance))).cUSTOMER_USER_NAME) "None")
            Control.Monad.void (ABHashtable.put hashtable (jget ((jio (RemoteHighScoresData.getInstance))).dISPLAY_NAME) (jio (HighScore.getName highScore)))
            Control.Monad.void (ABHashtable.put hashtable (jget (gameInfoData).sOFTWARE_INFORMATION) (jio (SoftwareInformation.toString ((jio (RemoteHighScores.getSoftwareInformation remoteHighScores))))))
            Control.Monad.void (ABHashtable.put hashtable (jget (remoteHighScores).aSCENDING) (javaToString (jio (RemoteHighScores.getAscending remoteHighScores))))
            displayInfoSingleton <- (DisplayInfoSingleton.getInstance)
            Control.Monad.void (ABHashtable.put hashtable (jget (displayInfoSingleton).oRIENTATION) (jio (BooleanFactory.toStringb ((jio (BooleanFactory.getInstance))) (jio (DisplayInfoSingleton.isPortrait displayInfoSingleton)))))
            Control.Monad.void (ABHashtable.put hashtable (jget ((jio (RemoteHighScoresData.getInstance))).gAME_CONFIGURATION) (jio (GameConfigurationCentral.toString ((jio (GameConfigurationCentral.getInstance))))))
            Control.Monad.void (ABHashtable.put hashtable (jget ((jio (RemoteHighScoresData.getInstance))).sCORE) (javaToString (jio (HighScore.getScore highScore))))
            when (jget XmlRpcAbeClient.isOnline) $ do
                let resultHashtable = (javaCast (jio (XmlRpcRemoteHighScoresClient.get ((jio (XmlRpcRemoteHighScoresClient.new_3 abeClientInformation "highscoresubmissionservicessl.php" "HighScoreSubmissionService.process"))) hashtable (jget (this).noCrypt))) :: ABHashtable.ABHashtable)
                Control.Monad.void (RemoteHighScores.update remoteHighScores resultHashtable)
        pure ()


