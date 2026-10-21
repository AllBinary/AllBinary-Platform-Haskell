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
-- package org.allbinary.game.configuration.persistance
module BasicPersitance where

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
import qualified PersistanceStrings -- same package or java.lang
import qualified NullRecordStore -- same package or java.lang
import qualified RecordStore -- javax.microedition.rms.RecordStore
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified PlatformRecordIdUtil -- org.allbinary.persistance.PlatformRecordIdUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data BasicPersitance = BasicPersitance
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , persistanceStrings :: IORef (PersistanceStrings.PersistanceStrings)
    , platformRecordIdUtil :: IORef (PlatformRecordIdUtil.PlatformRecordIdUtil)
    , recordId :: IORef (String)
    , valueList :: IORef (BasicArrayList.BasicArrayList)
    , idList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull BasicPersitance where
    javaNull = javaNullRecord "BasicPersitance"

instance JavaEquals BasicPersitance where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicPersitance where
    (==) = jrecordEquals

instance JavaObjectClass BasicPersitance where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicPersitance
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    persistanceStrings <- newIORef javaNull
    platformRecordIdUtil <- newIORef javaNull
    recordId <- newIORef ""
    valueList <- newIORef javaNull
    idList <- newIORef javaNull
    let this = BasicPersitance header_ logUtil commonStrings persistanceStrings platformRecordIdUtil recordId valueList idList
    jregisterLevel header_ this
    jregisterMethod header_ "deleteRecoreStore" (\() -> deleteRecoreStore_impl this)
    jregisterMethod header_ "deleteAll" (\() -> deleteAll_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "getRecordId" (\() -> getRecordId_impl this)
    jregisterMethod header_ "getList" (\() -> getList_impl this)
    jregisterMethod header_ "getIds" (\() -> getIds_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    pure this

initFields_ :: BasicPersitance -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.persistanceStrings =<< (PersistanceStrings.getInstance)
    jset this.platformRecordIdUtil =<< (PlatformRecordIdUtil.getInstance)
    jset this.recordId (javaNull)
    jset this.valueList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.idList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_1 :: String -> IO BasicPersitance
new_1 recordId = do
    this <- newRecord_
    init_1 this recordId
    pure this

init_1 :: BasicPersitance -> String -> IO ()
init_1 this recordId = do
        initFields_ this
        jset (this).recordId (recordId)
        pure ()


-- throws Exception
deleteRecoreStore :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
deleteRecoreStore object_ a1 = jmethod object_ "deleteRecoreStore" (\() -> (deleteRecoreStore_impl (javaCast object_ :: BasicPersitance))) () a1

deleteRecoreStore_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
deleteRecoreStore_super object_ a1 = (deleteRecoreStore_impl (javaCast object_ :: BasicPersitance)) a1

deleteRecoreStore_impl :: BasicPersitance -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
deleteRecoreStore_impl this abeClientInformation = do
        Control.Monad.void (RecordStore.deleteRecordStore (jio (BasicPersitance.getRecordId this abeClientInformation)))
        pure ()


-- throws Exception
deleteAll :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
deleteAll object_ a1 = jmethod object_ "deleteAll" (\() -> (deleteAll_impl (javaCast object_ :: BasicPersitance))) () a1

deleteAll_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
deleteAll_super object_ a1 = (deleteAll_impl (javaCast object_ :: BasicPersitance)) a1

deleteAll_impl :: BasicPersitance -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
deleteAll_impl this abeClientInformation = do
        size <- (BasicArrayList.size ((jget (this).idList)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let integer = (javaCast (jindex ((jget ((jget (this).idList)).objectArray)) (index)) :: Int)
            Control.Monad.void (BasicPersitance.delete this abeClientInformation (integer))
        Control.Monad.void (BasicPersitance.clear this)
        pure ()


-- throws Exception
delete :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> Int -> IO (())
delete object_ a1 a2 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: BasicPersitance))) () a1 a2

delete_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> Int -> IO (())
delete_super object_ a1 a2 = (delete_impl (javaCast object_ :: BasicPersitance)) a1 a2

delete_impl :: BasicPersitance -> AbeClientInformationInterface.AbeClientInformationInterface -> Int -> IO (())
delete_impl this abeClientInformation deleteId = do
        recordStore <- newIORef ((javaCast (jget NullRecordStore.nULL_RECORD_STORE) :: RecordStore.RecordStore))
        flip finally (do
            when ((jget recordStore) /= javaNull) $ do
                Control.Monad.void (PreLogUtil.put (jget ((jget (this).persistanceStrings)).cLOSING_RECORDSTORE) this (jget ((jget (this).commonStrings)).delete))
                Control.Monad.void (RecordStore.closeRecordStore ((jget recordStore)))
            ) $ handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).persistanceStrings)).dELETING_WITH_ID)))) deleteId))))) this (jget ((jget (this).commonStrings)).delete))
            assignedValue <- (RecordStore.openRecordStore (jio (BasicPersitance.getRecordId this abeClientInformation)) True)
            jset recordStore (assignedValue)
            Control.Monad.void (RecordStore.deleteRecord ((jget recordStore)) deleteId)
        pure ()


getRecordId :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (String)
getRecordId object_ a1 = jmethod object_ "getRecordId" (\() -> (getRecordId_impl (javaCast object_ :: BasicPersitance))) () a1

getRecordId_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (String)
getRecordId_super object_ a1 = (getRecordId_impl (javaCast object_ :: BasicPersitance)) a1

getRecordId_impl :: BasicPersitance -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (String)
getRecordId_impl this abeClientInformation = do
        (PlatformRecordIdUtil.getRecordId ((jget (this).platformRecordIdUtil)) abeClientInformation (jget (this).recordId))


getList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList object_ = jmethod object_ "getList" (\() -> (getList_impl (javaCast object_ :: BasicPersitance))) ()

getList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList_super object_ = (getList_impl (javaCast object_ :: BasicPersitance))

getList_impl :: BasicPersitance -> IO (BasicArrayList.BasicArrayList)
getList_impl this = do
        pure ((jget (this).valueList))


getIds :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getIds object_ = jmethod object_ "getIds" (\() -> (getIds_impl (javaCast object_ :: BasicPersitance))) ()

getIds_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getIds_super object_ = (getIds_impl (javaCast object_ :: BasicPersitance))

getIds_impl :: BasicPersitance -> IO (BasicArrayList.BasicArrayList)
getIds_impl this = do
        pure ((jget (this).idList))


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: BasicPersitance))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: BasicPersitance))

clear_impl :: BasicPersitance -> IO (())
clear_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).valueList)))
        Control.Monad.void (BasicArrayList.clear ((jget (this).idList)))
        pure ()


