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
module RecordStoreHighScores (module RecordStoreHighScores, module HighScores) where

import HighScores hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getRecordId, getRecordId_super, getRecordId_impl, addHighScore, addHighScore_super, addHighScore_impl, removeLowestHighScore, removeLowestHighScore_super, removeLowestHighScore_impl, load, load_super, load_impl, isTooManyHighScores, isTooManyHighScores_super, isTooManyHighScores_impl, isBestScore, isBestScore_super, isBestScore_impl, toString, toString_super, toString_impl, hashTable, logUtil, commonStrings, platformRecordIdUtil, tsUtil, rECORD_ID, mAXHIGHSCORES, gameInfo, abeClientInformation, recordComparatorInterface)
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
import qualified HighScore -- same package or java.lang
import qualified ScoreComparator -- same package or java.lang
import qualified ByteArrayInputStream -- java.io.ByteArrayInputStream
import qualified DataInputStream -- java.io.DataInputStream
import qualified EOFException -- java.io.EOFException
import qualified IOException -- java.io.IOException
import qualified RecordComparator -- javax.microedition.rms.RecordComparator
import qualified RecordEnumeration -- javax.microedition.rms.RecordEnumeration
import qualified RecordStore -- javax.microedition.rms.RecordStore
import qualified RecordStoreException -- javax.microedition.rms.RecordStoreException
import qualified RecordStoreNotFoundException -- javax.microedition.rms.RecordStoreNotFoundException
import qualified TsUtil -- org.allbinary.TsUtil
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified NullRecordComparator -- org.allbinary.game.configuration.persistance.NullRecordComparator
import qualified NullRecordFilter -- org.allbinary.game.configuration.persistance.NullRecordFilter
import qualified NullRecordStore -- org.allbinary.game.configuration.persistance.NullRecordStore
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified PlatformRecordIdUtil -- org.allbinary.persistance.PlatformRecordIdUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HighScores

data RecordStoreHighScores = RecordStoreHighScores
    { header_ :: JavaHeader
    , base :: HighScores.HighScores
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , platformRecordIdUtil :: IORef (PlatformRecordIdUtil.PlatformRecordIdUtil)
    , tsUtil :: IORef (TsUtil.TsUtil)
    , rECORD_ID :: IORef (String)
    , mAXHIGHSCORES :: IORef (Int)
    , gameInfo :: IORef (GameInfo.GameInfo)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , recordComparatorInterface :: IORef (RecordComparator.RecordComparator)
    }

instance JavaNull RecordStoreHighScores where
    javaNull = javaNullRecord "RecordStoreHighScores"

instance JavaEquals RecordStoreHighScores where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RecordStoreHighScores where
    (==) = jrecordEquals

instance JavaObjectClass RecordStoreHighScores where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE hashTable #-}
hashTable = unsafePerformIO ((StdUtil.createHashtable ((jio (StdUtil.getInstance)))))

newRecord_ :: IO RecordStoreHighScores
newRecord_ = do
    base <- HighScores.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    platformRecordIdUtil <- newIORef javaNull
    tsUtil <- newIORef javaNull
    rECORD_ID <- newIORef ""
    mAXHIGHSCORES <- newIORef 0
    gameInfo <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    recordComparatorInterface <- newIORef javaNull
    let this = RecordStoreHighScores header_ base logUtil commonStrings platformRecordIdUtil tsUtil rECORD_ID mAXHIGHSCORES gameInfo abeClientInformation recordComparatorInterface
    jregisterLevel header_ this
    jregisterMethod header_ "getRecordId" (\() -> getRecordId_impl this)
    jregisterMethod header_ "addHighScore" (\() -> addHighScore_impl this)
    jregisterMethod header_ "removeLowestHighScore" (\() -> removeLowestHighScore_impl this)
    jregisterMethod header_ "load" (\() -> load_impl this)
    jregisterMethod header_ "isTooManyHighScores" (\() -> isTooManyHighScores_impl this)
    jregisterMethod header_ "isBestScore" (\() -> isBestScore_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: RecordStoreHighScores -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.platformRecordIdUtil =<< (PlatformRecordIdUtil.getInstance)
    jset this.tsUtil =<< (TsUtil.getInstance)
    jset this.rECORD_ID ("_HS")
    jset this.mAXHIGHSCORES (100)
    jset this.gameInfo (javaNull)
    jset this.abeClientInformation (javaNull)
    jset this.recordComparatorInterface (javaNull)
    pure ()

new_6 :: AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> String -> String -> String -> RecordComparator.RecordComparator -> IO RecordStoreHighScores
new_6 abeClientInformation gameInfo name heading columnTwoHeading recordComparatorInterface = do
    this <- newRecord_
    init_6 this abeClientInformation gameInfo name heading columnTwoHeading recordComparatorInterface
    pure this

init_6 :: RecordStoreHighScores -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> String -> String -> String -> RecordComparator.RecordComparator -> IO ()
init_6 this abeClientInformation gameInfo name heading columnTwoHeading recordComparatorInterface = do
        HighScores.init_3 this.base (name) (heading) (columnTwoHeading)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).abeClientInformation (abeClientInformation)
        jset (this).gameInfo (gameInfo)
        jset (this).recordComparatorInterface (recordComparatorInterface)
        Control.Monad.void (RecordStoreHighScores.load this)
        pure ()


getInstance :: AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> String -> String -> String -> RecordComparator.RecordComparator -> IO (HighScores.HighScores)
getInstance abeClientInformation gameInfo highScoreName heading columnTwoHeading recordComparatorInterface = do
    javaCatchReturn $ do
        highScoresCanBeNull <- (get RecordStoreHighScores.hashTable (javaCast highScoreName :: Any.Any))
        when (highScoresCanBeNull == javaNull) $ do
            highScores <- (fmap (\value_ -> javaCast value_ :: HighScores.HighScores) (new_6 abeClientInformation gameInfo highScoreName heading columnTwoHeading recordComparatorInterface))
            Control.Monad.void (put RecordStoreHighScores.hashTable (jio (HighScores.getName highScores)) highScores)
            javaReturn (highScores)
        pure ((javaCast highScoresCanBeNull :: HighScores.HighScores))


getRecordId :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (String)
getRecordId object_ a1 = jmethod object_ "getRecordId" (\() -> (getRecordId_impl (javaCast object_ :: RecordStoreHighScores))) () a1

getRecordId_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (String)
getRecordId_super object_ a1 = (getRecordId_impl (javaCast object_ :: RecordStoreHighScores)) a1

getRecordId_impl :: RecordStoreHighScores -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (String)
getRecordId_impl this abeClientInformation = do
        (PlatformRecordIdUtil.getRecordId ((jget (this).platformRecordIdUtil)) abeClientInformation (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonSeps.getInstance))).uNDERSCORE)))) (jio (HighScores.getName this))))) (jget (this).rECORD_ID)))))))


addHighScore :: (JavaObjectClass this_) => this_ -> HighScore.HighScore -> IO (())
addHighScore object_ a1 = jmethod object_ "addHighScore" (\() -> (addHighScore_impl (javaCast object_ :: RecordStoreHighScores))) () a1

addHighScore_super :: (JavaObjectClass this_) => this_ -> HighScore.HighScore -> IO (())
addHighScore_super object_ a1 = (addHighScore_impl (javaCast object_ :: RecordStoreHighScores)) a1

addHighScore_impl :: RecordStoreHighScores -> HighScore.HighScore -> IO (())
addHighScore_impl this newHighScore = do
        recordStore <- newIORef ((javaCast (jget NullRecordStore.nULL_RECORD_STORE) :: RecordStore.RecordStore))
        flip finally (do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).aDD) e)
                ) $ do
                when ((jget recordStore) /= javaNull) $ do
                    Control.Monad.void (PreLogUtil.put "Closing RecordStore" this (jget ((jget (this).commonStrings)).aDD))
                    Control.Monad.void (RecordStore.closeRecordStore ((jget recordStore)))
            ) $ handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).aDD) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.new_))) "Adding HighScore: "))) (jio (HighScore.getScore newHighScore))))))) this (jget ((jget (this).commonStrings)).aDD))
            when (jio (RecordStoreHighScores.isTooManyHighScores this)) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Removing Lowest Score" this (jget ((jget (this).commonStrings)).aDD))
                Control.Monad.void (RecordStoreHighScores.removeLowestHighScore this)
            assignedValue <- (RecordStore.openRecordStore (jio (RecordStoreHighScores.getRecordId this (jget (this).abeClientInformation))) True)
            jset recordStore (assignedValue)
            highScoreBytes <- (HighScore.getAsBytes newHighScore)
            recordId <- (RecordStore.addRecord ((jget recordStore)) highScoreBytes 0 (jlength highScoreBytes))
            Control.Monad.void (RecordStoreHighScores.load this)
        pure ()


removeLowestHighScore :: (JavaObjectClass this_) => this_ -> IO (())
removeLowestHighScore object_ = jmethod object_ "removeLowestHighScore" (\() -> (removeLowestHighScore_impl (javaCast object_ :: RecordStoreHighScores))) ()

removeLowestHighScore_super :: (JavaObjectClass this_) => this_ -> IO (())
removeLowestHighScore_super object_ = (removeLowestHighScore_impl (javaCast object_ :: RecordStoreHighScores))

removeLowestHighScore_impl :: RecordStoreHighScores -> IO (())
removeLowestHighScore_impl this = do
        recordStore <- newIORef ((javaCast (jget NullRecordStore.nULL_RECORD_STORE) :: RecordStore.RecordStore))
        flip finally (do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "removeLowestHighScore" e)
                ) $ do
                when ((jget recordStore) /= javaNull) $ do
                    Control.Monad.void (PreLogUtil.put "Closing RecordStore" this "removeLowestHighScore")
                    Control.Monad.void (RecordStore.closeRecordStore ((jget recordStore)))
            ) $ handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "removeLowestHighScore" e)
            ) $ do
            assignedValue <- (RecordStore.openRecordStore (jio (RecordStoreHighScores.getRecordId this (jget (this).abeClientInformation))) True)
            jset recordStore (assignedValue)
            recordEnum <- (RecordStore.enumerateRecords ((jget recordStore)) (jget NullRecordFilter.nULL_RECORD_FILTER) (NullRecordComparator.nULL_RECORD_COMPARATOR) True)
            let scoreComparator = ((javaCast (jget (this).recordComparatorInterface) :: ScoreComparator.ScoreComparator))
            bestHighScore <- newIORef =<< (HighScore.new_4 (Prelude.negate 1) "none" (GameInfo.nONE) (jio (ScoreComparator.getBestScore scoreComparator)))
            recordAsBytes <- newIORef (javaNull)
            byteArrayInputStream <- newIORef (javaNull)
            inputStream <- newIORef (javaNull)
            fix $ \loop -> when (jio (RecordEnumeration.hasNextElement recordEnum)) $ javaIteration (loop) $ do
                id <- (RecordEnumeration.nextRecordId recordEnum)
                assignedValue <- (TsUtil.getRecord ((jget (this).tsUtil)) (jget recordStore) id)
                jset recordAsBytes (assignedValue)
                when ((jget recordAsBytes) /= javaNull) $ do
                    assignedValue <- (ByteArrayInputStream.new_1 (jget recordAsBytes))
                    jset byteArrayInputStream (assignedValue)
                    assignedValue <- (DataInputStream.new_1 (jget byteArrayInputStream))
                    jset inputStream (assignedValue)
                    name <- (DataInputStream.readUTF ((jget inputStream)))
                    nextScore <- (DataInputStream.readLong ((jget inputStream)))
                    nextCurrentHighScore <- (HighScore.new_4 id name (GameInfo.nONE) nextScore)
                    when ((jio (RecordComparator.compare ((jget (this).recordComparatorInterface)) (jio (HighScore.getAsBytes nextCurrentHighScore)) (jio (HighScore.getAsBytes ((jget bestHighScore)))))) == RecordComparator.fOLLOWS) $ do
                        jset bestHighScore (nextCurrentHighScore)
            when ((jio (HighScore.getId ((jget bestHighScore)))) /= (Prelude.negate 1)) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.new_))) "Removing Lowest HighScore: "))) (jio (HighScore.getScore ((jget bestHighScore))))))))) this (jget ((jget (this).commonStrings)).lOAD))
                Control.Monad.void (RecordStore.deleteRecord ((jget recordStore)) (jio (HighScore.getId ((jget bestHighScore)))))
        pure ()


load :: (JavaObjectClass this_) => this_ -> IO (())
load object_ = jmethod object_ "load" (\() -> (load_impl (javaCast object_ :: RecordStoreHighScores))) ()

load_super :: (JavaObjectClass this_) => this_ -> IO (())
load_super object_ = (load_impl (javaCast object_ :: RecordStoreHighScores))

load_impl :: RecordStoreHighScores -> IO (())
load_impl this = do
        recordStore <- newIORef ((javaCast (jget NullRecordStore.nULL_RECORD_STORE) :: RecordStore.RecordStore))
        flip finally (do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).lOAD) e)
                ) $ do
                when ((jget recordStore) /= javaNull) $ do
                    Control.Monad.void (PreLogUtil.put "Closing RecordStore" this (jget ((jget (this).commonStrings)).lOAD))
                    Control.Monad.void (RecordStore.closeRecordStore ((jget recordStore)))
            ) $ handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "No High Scores" this (jget ((jget (this).commonStrings)).lOAD) e)
            ) $ do
            assignedValue <- (RecordStore.openRecordStore (jio (RecordStoreHighScores.getRecordId this (jget (this).abeClientInformation))) True)
            jset recordStore (assignedValue)
            Control.Monad.void (HighScores.setList this (javaCast (jio (BasicArrayListD.new_))))
            recordEnum <- (RecordStore.enumerateRecords ((jget recordStore)) (jget NullRecordFilter.nULL_RECORD_FILTER) (NullRecordComparator.nULL_RECORD_COMPARATOR) True)
            recordAsBytes <- newIORef (javaNull)
            byteArrayInputStream <- newIORef (javaNull)
            inputStream <- newIORef (javaNull)
            fix $ \loop -> when (jio (RecordEnumeration.hasNextElement recordEnum)) $ javaIteration (loop) $ do
                id <- (RecordEnumeration.nextRecordId recordEnum)
                assignedValue <- (TsUtil.getRecord ((jget (this).tsUtil)) (jget recordStore) id)
                jset recordAsBytes (assignedValue)
                when ((jget recordAsBytes) /= javaNull) $ do
                    assignedValue <- (ByteArrayInputStream.new_1 (jget recordAsBytes))
                    jset byteArrayInputStream (assignedValue)
                    assignedValue <- (DataInputStream.new_1 (jget byteArrayInputStream))
                    jset inputStream (assignedValue)
                    handle (\(e :: JavaException) -> do
                        Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "EOF" this (jget ((jget (this).commonStrings)).lOAD) e)
                        javaThrow (e)
                        ) $ do
                        name <- (DataInputStream.readUTF ((jget inputStream)))
                        score <- (DataInputStream.readLong ((jget inputStream)))
                        newHighScore <- (HighScore.new_4 id name (GameInfo.nONE) score)
                        list <- (HighScores.getList this)
                        size <- (BasicArrayList.size list)
                        lastIndex <- newIORef (size)
                        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                            let highScore = (javaCast (jindex ((jget (list).objectArray)) (index)) :: HighScore.HighScore)
                            when ((jio (RecordComparator.compare ((jget (this).recordComparatorInterface)) (jio (HighScore.getAsBytes newHighScore)) (jio (HighScore.getAsBytes highScore)))) == RecordComparator.pRECEDES) $ do
                                jset lastIndex (index)
                                throwIO JavaBreak
                        Control.Monad.void (BasicArrayList.addAt list (jget lastIndex) newHighScore)
        pure ()


isTooManyHighScores :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTooManyHighScores object_ = jmethod object_ "isTooManyHighScores" (\() -> (isTooManyHighScores_impl (javaCast object_ :: RecordStoreHighScores))) ()

isTooManyHighScores_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTooManyHighScores_super object_ = (isTooManyHighScores_impl (javaCast object_ :: RecordStoreHighScores))

isTooManyHighScores_impl :: RecordStoreHighScores -> IO (Bool)
isTooManyHighScores_impl this = do
    javaCatchReturn $ do
        if (((jio (HighScores.getList this)) /= javaNull) && ((jio (BasicArrayList.size ((jio (HighScores.getList this))))) < (jget (this).mAXHIGHSCORES))) then do
            javaReturn (False)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "HighScores RecordStore Max Reached: "))) (jget (this).mAXHIGHSCORES)))))) this "isTooManyHighScores")
            javaReturn (True)


-- throws Exception
isBestScore :: (JavaObjectClass this_) => this_ -> HighScore.HighScore -> IO (Bool)
isBestScore object_ a1 = jmethod object_ "isBestScore" (\() -> (isBestScore_impl (javaCast object_ :: RecordStoreHighScores))) () a1

isBestScore_super :: (JavaObjectClass this_) => this_ -> HighScore.HighScore -> IO (Bool)
isBestScore_super object_ a1 = (isBestScore_impl (javaCast object_ :: RecordStoreHighScores)) a1

isBestScore_impl :: RecordStoreHighScores -> HighScore.HighScore -> IO (Bool)
isBestScore_impl this newHighScore = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).aDD) e)
            javaThrow (e)
            ) $ do
            if (Prelude.not (jio (RecordStoreHighScores.isTooManyHighScores this))) then do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Slot Available for a High Score" this "isBestScore")
                javaReturn (True)
            else do
                list <- (HighScores.getList this)
                size <- (BasicArrayList.size list)
                forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                    let highScore = (javaCast (jindex ((jget (list).objectArray)) (index)) :: HighScore.HighScore)
                    when ((jio (RecordComparator.compare ((jget (this).recordComparatorInterface)) (jio (HighScore.getAsBytes newHighScore)) (jio (HighScore.getAsBytes highScore)))) == RecordComparator.fOLLOWS) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Obtained a High Score" this "isBestScore")
                        javaReturn (True)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Not a High Score" this "isBestScore")
            pure (False)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: RecordStoreHighScores))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: RecordStoreHighScores))

toString_impl :: RecordStoreHighScores -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (HighScores.toString_super this.base)))
        list <- (HighScores.getList this)
        size <- (BasicArrayList.size list)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let highScore = (javaCast (jindex ((jget (list).objectArray)) (index)) :: HighScore.HighScore)
            Control.Monad.void (StringMaker.append stringBuffer (jio (HighScore.getScoreString highScore)))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).cOMMA_SEP))
        (StringMaker.toString stringBuffer)


