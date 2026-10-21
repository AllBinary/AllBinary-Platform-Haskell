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
module RemoteHighScores (module RemoteHighScores, module HighScores) where

import HighScores hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getInstancePreload, getInstancePreload_super, getInstancePreload_impl, addHighScore, addHighScore_super, addHighScore_impl, update, update_super, update_impl, setAscending, setAscending_super, setAscending_impl, getAscending, getAscending_super, getAscending_impl, getSoftwareInformation, getSoftwareInformation_super, getSoftwareInformation_impl, logUtil, enumerationUtil, hashTable, abeClientInformation, softwareInformation, ascending, aSCENDING)
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
import qualified RemoteHighScoresProcessorFactory -- same package or java.lang
import qualified RemoteHighScoresSubmissionProcessorFactory -- same package or java.lang
import qualified RemoteHighScoresData -- same package or java.lang
import qualified Enumeration -- java.util.Enumeration
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified HighScore -- org.allbinary.game.score.HighScore
import qualified HighScores -- org.allbinary.game.score.HighScores
import qualified RemoteErrorHighScoresSingletonFactory -- org.allbinary.game.score.RemoteErrorHighScoresSingletonFactory
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified SoftwareInformation -- org.allbinary.logic.system.SoftwareInformation
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified EnumerationUtil -- org.allbinary.util.EnumerationUtil

data RemoteHighScores = RemoteHighScores
    { header_ :: JavaHeader
    , base :: HighScores.HighScores
    , logUtil :: IORef (LogUtil.LogUtil)
    , enumerationUtil :: IORef (EnumerationUtil.EnumerationUtil)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , softwareInformation :: IORef (SoftwareInformation.SoftwareInformation)
    , ascending :: IORef (Bool)
    , aSCENDING :: IORef (String)
    }

instance JavaNull RemoteHighScores where
    javaNull = javaNullRecord "RemoteHighScores"

instance JavaEquals RemoteHighScores where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RemoteHighScores where
    (==) = jrecordEquals

instance JavaObjectClass RemoteHighScores where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE hashTable #-}
hashTable = unsafePerformIO ((StdUtil.createHashtable ((jio (StdUtil.getInstance)))))

newRecord_ :: IO RemoteHighScores
newRecord_ = do
    base <- HighScores.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    enumerationUtil <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    softwareInformation <- newIORef javaNull
    ascending <- newIORef javaNull
    aSCENDING <- newIORef ""
    let this = RemoteHighScores header_ base logUtil enumerationUtil abeClientInformation softwareInformation ascending aSCENDING
    jregisterLevel header_ this
    jregisterMethod header_ "addHighScore" (\() -> addHighScore_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "setAscending" (\() -> setAscending_impl this)
    jregisterMethod header_ "getAscending" (\() -> getAscending_impl this)
    jregisterMethod header_ "getSoftwareInformation" (\() -> getSoftwareInformation_impl this)
    pure this

initFields_ :: RemoteHighScores -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.enumerationUtil =<< (EnumerationUtil.getInstance)
    jset this.abeClientInformation (javaNull)
    jset this.softwareInformation (javaNull)
    jset this.ascending (javaNull)
    jset this.aSCENDING ("ASCENDING")
    pure ()

new_7 :: AbeClientInformationInterface.AbeClientInformationInterface -> SoftwareInformation.SoftwareInformation -> GameInfo.GameInfo -> String -> String -> Bool -> Bool -> IO RemoteHighScores
new_7 abeClientInformation softwareInformation gameInfo heading columnTwoHeading ascending preload = do
    this <- newRecord_
    init_7 this abeClientInformation softwareInformation gameInfo heading columnTwoHeading ascending preload
    pure this

init_7 :: RemoteHighScores -> AbeClientInformationInterface.AbeClientInformationInterface -> SoftwareInformation.SoftwareInformation -> GameInfo.GameInfo -> String -> String -> Bool -> Bool -> IO ()
init_7 this abeClientInformation softwareInformation gameInfo heading columnTwoHeading ascending preload = do
        HighScores.init_3 this.base (jio (GameInfo.toString gameInfo)) (heading) (columnTwoHeading)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).abeClientInformation (abeClientInformation)
        jset (this).softwareInformation (softwareInformation)
        Control.Monad.void (RemoteHighScores.setAscending this ascending)
        when preload $ do
            Control.Monad.void (RemoteHighScoresProcessorInterface.process ((jio (RemoteHighScoresProcessorFactory.getInstance))) this (jget (this).abeClientInformation) gameInfo)
        pure ()


getInstance :: AbeClientInformationInterface.AbeClientInformationInterface -> SoftwareInformation.SoftwareInformation -> GameInfo.GameInfo -> String -> String -> Bool -> IO (HighScores.HighScores)
getInstance abeClientInformation softwareInformation gameInfo heading columnTwoHeading isAscending = do
        (RemoteHighScores.getInstancePreload abeClientInformation softwareInformation gameInfo heading columnTwoHeading isAscending True)


getInstancePreload :: AbeClientInformationInterface.AbeClientInformationInterface -> SoftwareInformation.SoftwareInformation -> GameInfo.GameInfo -> String -> String -> Bool -> Bool -> IO (HighScores.HighScores)
getInstancePreload abeClientInformation softwareInformation gameInfo heading columnTwoHeading isAscending preload = do
        logUtil <- (LogUtil.getInstance)
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) (jio (RemoteErrorHighScoresSingletonFactory.getInstance)) (jget (commonStrings).gET_INSTANCE) e)
            (RemoteErrorHighScoresSingletonFactory.getInstance)
            ) $ do
            highScores <- newIORef ((javaCast (jio (get RemoteHighScores.hashTable gameInfo)) :: HighScores.HighScores))
            when ((jget highScores) == javaNull) $ do
                assignedValue <- (fmap (\value_ -> javaCast value_ :: HighScores.HighScores) (new_7 abeClientInformation softwareInformation gameInfo heading columnTwoHeading isAscending preload))
                jset highScores (assignedValue)
                Control.Monad.void (put RemoteHighScores.hashTable gameInfo (jget highScores))
            pure ((jget highScores))


addHighScore :: (JavaObjectClass this_) => this_ -> HighScore.HighScore -> IO (())
addHighScore object_ a1 = jmethod object_ "addHighScore" (\() -> (addHighScore_impl (javaCast object_ :: RemoteHighScores))) () a1

addHighScore_super :: (JavaObjectClass this_) => this_ -> HighScore.HighScore -> IO (())
addHighScore_super object_ a1 = (addHighScore_impl (javaCast object_ :: RemoteHighScores)) a1

addHighScore_impl :: RemoteHighScores -> HighScore.HighScore -> IO (())
addHighScore_impl this newHighScore = do
        Control.Monad.void (RemoteHighScoresSubmissionProcessorInterface.process ((jio (RemoteHighScoresSubmissionProcessorFactory.getInstance))) this (jget (this).abeClientInformation) newHighScore)
        pure ()


update :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: RemoteHighScores))) () a1

update_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: RemoteHighScores)) a1

update_impl :: RemoteHighScores -> ABHashtable.ABHashtable -> IO (())
update_impl this hashtable = do
        Control.Monad.void (BasicArrayList.clear ((jio (HighScores.getList this))))
        let vector = (javaCast (jio (ABHashtable.get hashtable (javaCast (jget ((jio (RemoteHighScoresData.getInstance))).hIGH_SCORES) :: Any.Any))) :: BasicArrayList.BasicArrayList)
        if (vector /= javaNull) then do
            size <- (BasicArrayList.size vector)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let highScoreVector = (javaCast (jio (BasicArrayList.get vector index)) :: BasicArrayList.BasicArrayList)
                let displayName = (javaCast (jio (BasicArrayList.get highScoreVector 0)) :: String)
                let score = (javaCast (jio (BasicArrayList.get highScoreVector 1)) :: String)
                let longScore = (Prelude.read score)
                highScore <- (HighScore.new_4 (Prelude.negate 1) displayName javaNull longScore)
                Control.Monad.void (BasicArrayList.add ((jio (HighScores.getList this))) highScore)
        else do
            nEXT_ELEMENT <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).nEXT)))) "Element: "))))
            commonStrings <- (CommonStrings.getInstance)
            enumeration <- (ABHashtable.elements hashtable)
            nextElement <- newIORef (javaNull)
            fix $ \loop -> when (jio (EnumerationUtil.hasMoreElements ((jget (this).enumerationUtil)) enumeration)) $ javaIteration (loop) $ do
                assignedValue <- (EnumerationUtil.nextElement ((jget (this).enumerationUtil)) enumeration)
                jset nextElement (assignedValue)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (nEXT_ELEMENT ++ javaToString (jget nextElement)) this (jget (commonStrings).pROCESS))
        pure ()


setAscending :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAscending object_ a1 = jmethod object_ "setAscending" (\() -> (setAscending_impl (javaCast object_ :: RemoteHighScores))) () a1

setAscending_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAscending_super object_ a1 = (setAscending_impl (javaCast object_ :: RemoteHighScores)) a1

setAscending_impl :: RemoteHighScores -> Bool -> IO (())
setAscending_impl this ascending = do
        jset (this).ascending (ascending)
        pure ()


getAscending :: (JavaObjectClass this_) => this_ -> IO (Bool)
getAscending object_ = jmethod object_ "getAscending" (\() -> (getAscending_impl (javaCast object_ :: RemoteHighScores))) ()

getAscending_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
getAscending_super object_ = (getAscending_impl (javaCast object_ :: RemoteHighScores))

getAscending_impl :: RemoteHighScores -> IO (Bool)
getAscending_impl this = do
        pure ((jget (this).ascending))


getSoftwareInformation :: (JavaObjectClass this_) => this_ -> IO (SoftwareInformation.SoftwareInformation)
getSoftwareInformation object_ = jmethod object_ "getSoftwareInformation" (\() -> (getSoftwareInformation_impl (javaCast object_ :: RemoteHighScores))) ()

getSoftwareInformation_super :: (JavaObjectClass this_) => this_ -> IO (SoftwareInformation.SoftwareInformation)
getSoftwareInformation_super object_ = (getSoftwareInformation_impl (javaCast object_ :: RemoteHighScores))

getSoftwareInformation_impl :: RemoteHighScores -> IO (SoftwareInformation.SoftwareInformation)
getSoftwareInformation_impl this = do
        pure ((jget (this).softwareInformation))


