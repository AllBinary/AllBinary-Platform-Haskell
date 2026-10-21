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
module HighScoreNamePersistanceSingleton where

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
import qualified ByteArrayInputStream -- java.io.ByteArrayInputStream
import qualified ByteArrayOutputStream -- java.io.ByteArrayOutputStream
import qualified DataInputStream -- java.io.DataInputStream
import qualified DataOutputStream -- java.io.DataOutputStream
import qualified RecordEnumeration -- javax.microedition.rms.RecordEnumeration
import qualified RecordStore -- javax.microedition.rms.RecordStore
import qualified RecordStoreException -- javax.microedition.rms.RecordStoreException
import qualified TsUtil -- org.allbinary.TsUtil
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified NullRecordComparator -- org.allbinary.game.configuration.persistance.NullRecordComparator
import qualified NullRecordFilter -- org.allbinary.game.configuration.persistance.NullRecordFilter
import qualified NullRecordStore -- org.allbinary.game.configuration.persistance.NullRecordStore
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified ExceptionUtil -- org.allbinary.logic.java.exception.ExceptionUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified PlatformRecordIdUtil -- org.allbinary.persistance.PlatformRecordIdUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data HighScoreNamePersistanceSingleton = HighScoreNamePersistanceSingleton
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , tsUtil :: IORef (TsUtil.TsUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , platformRecordIdUtil :: IORef (PlatformRecordIdUtil.PlatformRecordIdUtil)
    , rECORD_ID :: IORef (String)
    , name :: IORef (String)
    , nameBasicArrayList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull HighScoreNamePersistanceSingleton where
    javaNull = javaNullRecord "HighScoreNamePersistanceSingleton"

instance JavaEquals HighScoreNamePersistanceSingleton where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoreNamePersistanceSingleton where
    (==) = jrecordEquals

instance JavaObjectClass HighScoreNamePersistanceSingleton where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HighScoreNamePersistanceSingleton
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    tsUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    platformRecordIdUtil <- newIORef javaNull
    rECORD_ID <- newIORef ""
    name <- newIORef ""
    nameBasicArrayList <- newIORef javaNull
    let this = HighScoreNamePersistanceSingleton header_ logUtil tsUtil commonStrings platformRecordIdUtil rECORD_ID name nameBasicArrayList
    jregisterLevel header_ this
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "deleteAll" (\() -> deleteAll_impl this)
    jregisterMethod header_ "getRecordId" (\() -> getRecordId_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "getIds" (\() -> getIds_impl this)
    jregisterMethod header_ "load" (\() -> load_impl this)
    jregisterMethod header_ "save" (\() -> save_impl this)
    pure this

initFields_ :: HighScoreNamePersistanceSingleton -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tsUtil =<< (TsUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.platformRecordIdUtil =<< (PlatformRecordIdUtil.getInstance)
    jset this.rECORD_ID ("_SN")
    jset this.name ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.nameBasicArrayList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO HighScoreNamePersistanceSingleton
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HighScoreNamePersistanceSingleton -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (HighScoreNamePersistanceSingleton)
getInstance = do
        pure ((jget HighScoreNamePersistanceSingleton.sINGLETON))


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: HighScoreNamePersistanceSingleton))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: HighScoreNamePersistanceSingleton))

clear_impl :: HighScoreNamePersistanceSingleton -> IO (())
clear_impl this = do
        jset (this).name ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        pure ()


-- throws Exception
deleteAll :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> IO (())
deleteAll object_ a1 a2 = jmethod object_ "deleteAll" (\() -> (deleteAll_impl (javaCast object_ :: HighScoreNamePersistanceSingleton))) () a1 a2

deleteAll_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> IO (())
deleteAll_super object_ a1 a2 = (deleteAll_impl (javaCast object_ :: HighScoreNamePersistanceSingleton)) a1 a2

deleteAll_impl :: HighScoreNamePersistanceSingleton -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> IO (())
deleteAll_impl this abeClientInformation gameInfo = do
        size <- (BasicArrayList.size ((jget (this).nameBasicArrayList)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let integer = (javaCast (jindex ((jget ((jget (this).nameBasicArrayList)).objectArray)) (index)) :: Int)
            Control.Monad.void (HighScoreNamePersistanceSingleton.delete this abeClientInformation gameInfo (integer))
        Control.Monad.void (HighScoreNamePersistanceSingleton.clear this)
        pure ()


getRecordId :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (String)
getRecordId object_ a1 = jmethod object_ "getRecordId" (\() -> (getRecordId_impl (javaCast object_ :: HighScoreNamePersistanceSingleton))) () a1

getRecordId_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (String)
getRecordId_super object_ a1 = (getRecordId_impl (javaCast object_ :: HighScoreNamePersistanceSingleton)) a1

getRecordId_impl :: HighScoreNamePersistanceSingleton -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (String)
getRecordId_impl this abeClientInformation = do
        (PlatformRecordIdUtil.getRecordId ((jget (this).platformRecordIdUtil)) abeClientInformation (jget (this).rECORD_ID))


-- throws Exception
delete :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> Int -> IO (())
delete object_ a1 a2 a3 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: HighScoreNamePersistanceSingleton))) () a1 a2 a3

delete_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> Int -> IO (())
delete_super object_ a1 a2 a3 = (delete_impl (javaCast object_ :: HighScoreNamePersistanceSingleton)) a1 a2 a3

delete_impl :: HighScoreNamePersistanceSingleton -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> Int -> IO (())
delete_impl this abeClientInformation gameInfo deleteId = do
        recordStore <- newIORef ((javaCast (jget NullRecordStore.nULL_RECORD_STORE) :: RecordStore.RecordStore))
        flip finally (do
            when ((jget recordStore) /= javaNull) $ do
                Control.Monad.void (PreLogUtil.put "Closing RecordStore" this (jget ((jget (this).commonStrings)).delete))
                Control.Monad.void (RecordStore.closeRecordStore ((jget recordStore)))
            ) $ handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Deleting: "))) deleteId))))) this (jget ((jget (this).commonStrings)).delete))
            assignedValue <- (RecordStore.openRecordStore (jio (HighScoreNamePersistanceSingleton.getRecordId this abeClientInformation)) True)
            jset recordStore (assignedValue)
            Control.Monad.void (RecordStore.deleteRecord ((jget recordStore)) deleteId)
        pure ()


getIds :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getIds object_ = jmethod object_ "getIds" (\() -> (getIds_impl (javaCast object_ :: HighScoreNamePersistanceSingleton))) ()

getIds_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getIds_super object_ = (getIds_impl (javaCast object_ :: HighScoreNamePersistanceSingleton))

getIds_impl :: HighScoreNamePersistanceSingleton -> IO (BasicArrayList.BasicArrayList)
getIds_impl this = do
        pure ((jget (this).nameBasicArrayList))


load :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> IO (String)
load object_ a1 a2 = jmethod object_ "load" (\() -> (load_impl (javaCast object_ :: HighScoreNamePersistanceSingleton))) () a1 a2

load_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> IO (String)
load_super object_ a1 a2 = (load_impl (javaCast object_ :: HighScoreNamePersistanceSingleton)) a1 a2

load_impl :: HighScoreNamePersistanceSingleton -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> IO (String)
load_impl this abeClientInformation gameInfo = do
        recordStore <- newIORef ((javaCast (jget NullRecordStore.nULL_RECORD_STORE) :: RecordStore.RecordStore))
        flip finally (do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).lOAD) e)
                ) $ do
                when ((jget recordStore) /= javaNull) $ do
                    Control.Monad.void (PreLogUtil.put "Closing RecordStore" this (jget ((jget (this).commonStrings)).lOAD))
                    Control.Monad.void (RecordStore.closeRecordStore ((jget recordStore)))
            ) $ handle (\(e :: JavaException) -> do
            Control.Monad.void (HighScoreNamePersistanceSingleton.save this abeClientInformation gameInfo (jget (this).name))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).commonStrings)).eXCEPTION_LABEL)))) (jio (ExceptionUtil.getStackTrace ((jio (ExceptionUtil.getInstance))) e))))))) this (jget ((jget (this).commonStrings)).lOAD))
            ) $ do
            when ((jget (this).name) == (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)) $ do
                let lOADING_ID = "Loading id: "
                assignedValue <- (RecordStore.openRecordStore (jio (HighScoreNamePersistanceSingleton.getRecordId this abeClientInformation)) True)
                jset recordStore (assignedValue)
                recordEnum <- (RecordStore.enumerateRecords ((jget recordStore)) (jget NullRecordFilter.nULL_RECORD_FILTER) (NullRecordComparator.nULL_RECORD_COMPARATOR) True)
                smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
                recordAsBytes <- newIORef (javaNull)
                byteArrayInputStream <- newIORef (javaNull)
                inputStream <- newIORef (javaNull)
                fix $ \loop -> when (jio (RecordEnumeration.hasNextElement recordEnum)) $ javaIteration (loop) $ do
                    id <- (RecordEnumeration.nextRecordId recordEnum)
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) lOADING_ID))) id))))) this (jget ((jget (this).commonStrings)).lOAD))
                    assignedValue <- (TsUtil.getRecord ((jget (this).tsUtil)) (jget recordStore) id)
                    jset recordAsBytes (assignedValue)
                    assignedValue <- (ByteArrayInputStream.new_1 (jget recordAsBytes))
                    jset byteArrayInputStream (assignedValue)
                    assignedValue <- (DataInputStream.new_1 (jget byteArrayInputStream))
                    jset inputStream (assignedValue)
                    fix $ \loop -> when ((jio (DataInputStream.available ((jget inputStream)))) > 0) $ javaIteration (loop) $ do
                        assignedValue <- (DataInputStream.readUTF ((jget inputStream)))
                        jset (this).name (assignedValue)
                    Control.Monad.void (BasicArrayList.add ((jget (this).nameBasicArrayList)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory id)))
        pure ((jget (this).name))


save :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> String -> IO (())
save object_ a1 a2 a3 = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: HighScoreNamePersistanceSingleton))) () a1 a2 a3

save_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> String -> IO (())
save_super object_ a1 a2 a3 = (save_impl (javaCast object_ :: HighScoreNamePersistanceSingleton)) a1 a2 a3

save_impl :: HighScoreNamePersistanceSingleton -> AbeClientInformationInterface.AbeClientInformationInterface -> GameInfo.GameInfo -> String -> IO (())
save_impl this abeClientInformation gameInfo name = do
        recordStore <- newIORef ((javaCast (jget NullRecordStore.nULL_RECORD_STORE) :: RecordStore.RecordStore))
        flip finally (do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).sAVE) e)
                ) $ do
                when ((jget recordStore) /= javaNull) $ do
                    Control.Monad.void (PreLogUtil.put "Closing RecordStore" this (jget ((jget (this).commonStrings)).sAVE))
                    Control.Monad.void (RecordStore.closeRecordStore ((jget recordStore)))
            ) $ handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).sAVE) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Saving: "))) name))))) this (jget ((jget (this).commonStrings)).sAVE))
            assignedValue <- (RecordStore.openRecordStore (jio (HighScoreNamePersistanceSingleton.getRecordId this abeClientInformation)) True)
            jset recordStore (assignedValue)
            byteArrayOutputStream <- (ByteArrayOutputStream.new_)
            outputStream <- (DataOutputStream.new_1 byteArrayOutputStream)
            Control.Monad.void (DataOutputStream.writeUTF outputStream name)
            savedGameBytes <- (ByteArrayOutputStream.toByteArray byteArrayOutputStream)
            Control.Monad.void (RecordStore.addRecord ((jget recordStore)) savedGameBytes 0 (jlength savedGameBytes))
            jset (this).name (name)
        pure ()


