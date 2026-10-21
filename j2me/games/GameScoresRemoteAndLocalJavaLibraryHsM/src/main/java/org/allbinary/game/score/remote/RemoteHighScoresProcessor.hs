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
module RemoteHighScoresProcessor where

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
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified GameInfoData -- org.allbinary.game.GameInfoData
import qualified GameConfigurationCentral -- org.allbinary.game.configuration.GameConfigurationCentral
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified XmlRpcAbeClient -- org.allbinary.logic.communication.xmlrpc.XmlRpcAbeClient
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified NoCrypt -- org.allbinary.logic.system.security.crypt.jcehelper.NoCrypt
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified HashtableUtil -- org.allbinary.util.HashtableUtil
import qualified RemoteHighScoresProcessorInterface

-- implements RemoteHighScoresProcessorInterface
data RemoteHighScoresProcessor = RemoteHighScoresProcessor
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , noCrypt :: IORef (NoCrypt.NoCrypt)
    }

instance JavaNull RemoteHighScoresProcessor where
    javaNull = javaNullRecord "RemoteHighScoresProcessor"

instance JavaEquals RemoteHighScoresProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RemoteHighScoresProcessor where
    (==) = jrecordEquals

instance JavaObjectClass RemoteHighScoresProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RemoteHighScoresProcessor
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    noCrypt <- newIORef javaNull
    let this = RemoteHighScoresProcessor header_ logUtil commonStrings noCrypt
    jregisterLevel header_ this
    RemoteHighScoresProcessorInterface.registerInterface_ header_
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: RemoteHighScoresProcessor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.noCrypt =<< (NoCrypt.new_)
    pure ()

new_ :: IO RemoteHighScoresProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RemoteHighScoresProcessor -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> RemoteHighScores.RemoteHighScores -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> IO (())
process object_ a1 a2 a3 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: RemoteHighScoresProcessor))) () a1 a2 a3

process_super :: (JavaObjectClass this_) => this_ -> RemoteHighScores.RemoteHighScores -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> IO (())
process_super object_ a1 a2 a3 = (process_impl (javaCast object_ :: RemoteHighScoresProcessor)) a1 a2 a3

process_impl :: RemoteHighScoresProcessor -> RemoteHighScores.RemoteHighScores -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> IO (())
process_impl this remoteHighScores abeClientInformation gameInfo = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Begin Remote HighScores Retrieval" this (jget ((jget (this).commonStrings)).pROCESS))
        gameInfoData <- (GameInfoData.getInstance)
        hashtable <- (AbeClientInformationInterface.toHashtable abeClientInformation)
        Control.Monad.void (HashtableUtil.putAll ((jio (HashtableUtil.getInstance))) (jio (GameInfo.toHashtable gameInfo)) hashtable)
        Control.Monad.void (ABHashtable.put hashtable (jget (gameInfoData).sOFTWARE_INFORMATION) (jio (SoftwareInformation.toString ((jio (RemoteHighScores.getSoftwareInformation remoteHighScores))))))
        Control.Monad.void (ABHashtable.put hashtable (jget (remoteHighScores).aSCENDING) (javaToString (jio (RemoteHighScores.getAscending remoteHighScores))))
        displayInfoSingleton <- (DisplayInfoSingleton.getInstance)
        Control.Monad.void (ABHashtable.put hashtable (jget (displayInfoSingleton).oRIENTATION) (jio (BooleanFactory.toStringb ((jio (BooleanFactory.getInstance))) (jio (DisplayInfoSingleton.isPortrait displayInfoSingleton)))))
        Control.Monad.void (ABHashtable.put hashtable (jget ((jio (RemoteHighScoresData.getInstance))).gAME_CONFIGURATION) (jio (GameConfigurationCentral.toString ((jio (GameConfigurationCentral.getInstance))))))
        when (jget XmlRpcAbeClient.isOnline) $ do
            let resultHashtable = (javaCast (jio (XmlRpcRemoteHighScoresClient.get ((jio (XmlRpcRemoteHighScoresClient.new_3 abeClientInformation "highscoresservicessl.php" "HighScoresService.process"))) hashtable (jget (this).noCrypt))) :: ABHashtable.ABHashtable)
            Control.Monad.void (RemoteHighScores.update remoteHighScores resultHashtable)
        pure ()


