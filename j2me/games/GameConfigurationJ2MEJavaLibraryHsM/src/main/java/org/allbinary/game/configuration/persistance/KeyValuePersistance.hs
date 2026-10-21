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
module KeyValuePersistance (module KeyValuePersistance, module BasicPersitance) where

import BasicPersitance hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, loadAll, loadAll_super, loadAll_impl, loadAllSize, loadAllSize_super, loadAllSize_impl, save, save_super, save_impl, get, get_super, get_impl, tsUtil)
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
import qualified NullRecordStore -- same package or java.lang
import qualified NullRecordFilter -- same package or java.lang
import qualified NullRecordComparator -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified BasicArrayList -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified PersistanceStrings -- same package or java.lang
import qualified ByteArrayInputStream -- java.io.ByteArrayInputStream
import qualified ByteArrayOutputStream -- java.io.ByteArrayOutputStream
import qualified DataInputStream -- java.io.DataInputStream
import qualified DataOutputStream -- java.io.DataOutputStream
import qualified RecordEnumeration -- javax.microedition.rms.RecordEnumeration
import qualified RecordStore -- javax.microedition.rms.RecordStore
import qualified TsUtil -- org.allbinary.TsUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified HashtableUtil -- org.allbinary.util.HashtableUtil
import qualified BasicPersitance

data KeyValuePersistance = KeyValuePersistance
    { header_ :: JavaHeader
    , base :: BasicPersitance.BasicPersitance
    , tsUtil :: IORef (TsUtil.TsUtil)
    }

instance JavaNull KeyValuePersistance where
    javaNull = javaNullRecord "KeyValuePersistance"

instance JavaEquals KeyValuePersistance where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq KeyValuePersistance where
    (==) = jrecordEquals

instance JavaObjectClass KeyValuePersistance where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO KeyValuePersistance
newRecord_ = do
    base <- BasicPersitance.newRecord_
    let header_ = base.header_
    tsUtil <- newIORef javaNull
    let this = KeyValuePersistance header_ base tsUtil
    jregisterLevel header_ this
    jregisterMethod header_ "loadAll" (\() -> loadAll_impl this)
    jregisterMethod header_ "loadAllSize" (\() -> loadAllSize_impl this)
    jregisterMethod header_ "save" (\() -> save_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    pure this

initFields_ :: KeyValuePersistance -> IO ()
initFields_ this = do
    jset this.tsUtil =<< (TsUtil.getInstance)
    pure ()

new_1 :: String -> IO KeyValuePersistance
new_1 recordId = do
    this <- newRecord_
    init_1 this recordId
    pure this

init_1 :: KeyValuePersistance -> String -> IO ()
init_1 this recordId = do
        BasicPersitance.init_1 this.base (recordId)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
loadAll :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
loadAll object_ a1 = jmethod object_ "loadAll" (\() -> (loadAll_impl (javaCast object_ :: KeyValuePersistance))) () a1

loadAll_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
loadAll_super object_ a1 = (loadAll_impl (javaCast object_ :: KeyValuePersistance)) a1

loadAll_impl :: KeyValuePersistance -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
loadAll_impl this abeClientInformation = do
        Control.Monad.void (KeyValuePersistance.loadAllSize this abeClientInformation 1)
        pure ()


-- throws Exception
loadAllSize :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> Int -> IO (())
loadAllSize object_ a1 a2 = jmethod object_ "loadAllSize" (\() -> (loadAllSize_impl (javaCast object_ :: KeyValuePersistance))) () a1 a2

loadAllSize_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> Int -> IO (())
loadAllSize_super object_ a1 a2 = (loadAllSize_impl (javaCast object_ :: KeyValuePersistance)) a1 a2

loadAllSize_impl :: KeyValuePersistance -> AbeClientInformationInterface.AbeClientInformationInterface -> Int -> IO (())
loadAllSize_impl this abeClientInformation size = do
        recordStore <- newIORef ((javaCast (jget NullRecordStore.nULL_RECORD_STORE) :: RecordStore.RecordStore))
        flip finally (do
            when ((jget recordStore) /= javaNull) $ do
                Control.Monad.void (PreLogUtil.put (jget ((jget (this).base.persistanceStrings)).cLOSING_RECORDSTORE) this (jget ((jget (this).base.persistanceStrings)).lOAD_ALL))
                Control.Monad.void (RecordStore.closeRecordStore ((jget recordStore)))
            ) $ handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            assignedValue <- (RecordStore.openRecordStore (jio (BasicPersitance.getRecordId this abeClientInformation)) True)
            jset recordStore (assignedValue)
            recordEnum <- (RecordStore.enumerateRecords ((jget recordStore)) (jget NullRecordFilter.nULL_RECORD_FILTER) (NullRecordComparator.nULL_RECORD_COMPARATOR) True)
            hashtable <- newIORef (javaNull)
            name <- newIORef ("")
            value <- newIORef ("")
            smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
            stringBuffer <- (StringMaker.new_)
            recordAsBytes <- newIORef (javaNull)
            byteArrayInputStream <- newIORef (javaNull)
            inputStream <- newIORef (javaNull)
            fix $ \loop -> when (jio (RecordEnumeration.hasNextElement recordEnum)) $ javaIteration (loop) $ do
                id <- (RecordEnumeration.nextRecordId recordEnum)
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append stringBuffer (jget ((jget (this).base.persistanceStrings)).lOADING_ID)))) id))))) this (jget ((jget (this).base.persistanceStrings)).lOAD_ALL))
                assignedValue <- (TsUtil.getRecord ((jget (this).tsUtil)) (jget recordStore) id)
                jset recordAsBytes (assignedValue)
                when ((jget recordAsBytes) /= javaNull) $ do
                    assignedValue <- (ByteArrayInputStream.new_1 (jget recordAsBytes))
                    jset byteArrayInputStream (assignedValue)
                    assignedValue <- (DataInputStream.new_1 (jget byteArrayInputStream))
                    jset inputStream (assignedValue)
                    assignedValue <- (ABHashtable.new_)
                    jset hashtable (assignedValue)
                    forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                        assignedValue <- (DataInputStream.readUTF ((jget inputStream)))
                        jset name (assignedValue)
                        Control.Monad.void (DataInputStream.readUTF ((jget inputStream)))
                        assignedValue <- (DataInputStream.readUTF ((jget inputStream)))
                        jset value (assignedValue)
                        Control.Monad.void (ABHashtable.put ((jget hashtable)) (jget name) (jget value))
                    Control.Monad.void (BasicArrayList.add ((jget (this).base.valueList)) (jget hashtable))
                    Control.Monad.void (BasicArrayList.add ((jget (this).base.idList)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory id)))
        pure ()


-- throws Exception
save :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> ABHashtable.ABHashtable -> IO (())
save object_ a1 a2 = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: KeyValuePersistance))) () a1 a2

save_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> ABHashtable.ABHashtable -> IO (())
save_super object_ a1 a2 = (save_impl (javaCast object_ :: KeyValuePersistance)) a1 a2

save_impl :: KeyValuePersistance -> AbeClientInformationInterface.AbeClientInformationInterface -> ABHashtable.ABHashtable -> IO (())
save_impl this abeClientInformation hashtable = do
        recordStore <- newIORef ((javaCast (jget NullRecordStore.nULL_RECORD_STORE) :: RecordStore.RecordStore))
        flip finally (do
            when ((jget recordStore) /= javaNull) $ do
                Control.Monad.void (PreLogUtil.put (jget ((jget (this).base.persistanceStrings)).cLOSING_RECORDSTORE) this (jget ((jget (this).base.commonStrings)).sAVE))
                Control.Monad.void (RecordStore.closeRecordStore ((jget recordStore)))
            ) $ handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.persistanceStrings)).sAVING)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) hashtable))))))) this (jget ((jget (this).base.commonStrings)).sAVE))
            assignedValue <- (RecordStore.openRecordStore (jio (BasicPersitance.getRecordId this abeClientInformation)) True)
            jset recordStore (assignedValue)
            byteArrayOutputStream <- (ByteArrayOutputStream.new_)
            outputStream <- (DataOutputStream.new_1 byteArrayOutputStream)
            value <- newIORef ("")
            commonSeps <- (CommonSeps.getInstance)
            objectArray <- (HashtableUtil.getKeysAsArray ((jio (HashtableUtil.getInstance))) hashtable)
            anyType <- newIORef (javaNull)
            let size = (jlength objectArray)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (DataOutputStream.writeUTF outputStream (javaCast (jindex objectArray (index)) :: String))
                Control.Monad.void (DataOutputStream.writeUTF outputStream (jget (commonSeps).eQUALS))
                jset anyType ((javaCast (jindex objectArray (index)) :: Any.Any))
                jset value ((javaCast (jio (ABHashtable.get hashtable (jget anyType))) :: String))
                Control.Monad.void (DataOutputStream.writeUTF outputStream (jget value))
            tsUtil <- (TsUtil.getInstance)
            savedGameBytes <- (TsUtil.getByteArray tsUtil (jio (ByteArrayOutputStream.toString byteArrayOutputStream)))
            Control.Monad.void (RecordStore.addRecord ((jget recordStore)) savedGameBytes 0 (jlength savedGameBytes))
        pure ()


get :: (JavaObjectClass this_) => this_ -> Int -> IO (ABHashtable.ABHashtable)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: KeyValuePersistance))) () a1

get_super :: (JavaObjectClass this_) => this_ -> Int -> IO (ABHashtable.ABHashtable)
get_super object_ a1 = (get_impl (javaCast object_ :: KeyValuePersistance)) a1

get_impl :: KeyValuePersistance -> Int -> IO (ABHashtable.ABHashtable)
get_impl this index = do
        let hashtable = (javaCast (jindex ((jget ((jget (this).base.valueList)).objectArray)) (index)) :: ABHashtable.ABHashtable)
        pure (hashtable)


