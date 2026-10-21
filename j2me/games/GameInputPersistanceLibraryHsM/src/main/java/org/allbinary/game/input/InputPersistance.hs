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
-- package org.allbinary.game.input
module InputPersistance (module InputPersistance, module BasicPersitance) where

import BasicPersitance hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, loadAll, loadAll_super, loadAll_impl, save, save_super, save_impl, tsUtil, hashtableUtil)
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
import qualified Input -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified GameKeyMappingFactory -- same package or java.lang
import qualified InputFactory -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified PersistanceStrings -- same package or java.lang
import qualified ByteArrayInputStream -- java.io.ByteArrayInputStream
import qualified ByteArrayOutputStream -- java.io.ByteArrayOutputStream
import qualified DataInputStream -- java.io.DataInputStream
import qualified DataOutputStream -- java.io.DataOutputStream
import qualified RecordEnumeration -- javax.microedition.rms.RecordEnumeration
import qualified RecordStore -- javax.microedition.rms.RecordStore
import qualified TsUtil -- org.allbinary.TsUtil
import qualified BasicPersitance -- org.allbinary.game.configuration.persistance.BasicPersitance
import qualified NullRecordComparator -- org.allbinary.game.configuration.persistance.NullRecordComparator
import qualified NullRecordFilter -- org.allbinary.game.configuration.persistance.NullRecordFilter
import qualified NullRecordStore -- org.allbinary.game.configuration.persistance.NullRecordStore
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified HashtableUtil -- org.allbinary.util.HashtableUtil
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data InputPersistance = InputPersistance
    { header_ :: JavaHeader
    , base :: BasicPersitance.BasicPersitance
    , tsUtil :: IORef (TsUtil.TsUtil)
    , hashtableUtil :: IORef (HashtableUtil.HashtableUtil)
    }

instance JavaNull InputPersistance where
    javaNull = javaNullRecord "InputPersistance"

instance JavaEquals InputPersistance where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputPersistance where
    (==) = jrecordEquals

instance JavaObjectClass InputPersistance where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InputPersistance
newRecord_ = do
    base <- BasicPersitance.newRecord_
    let header_ = base.header_
    tsUtil <- newIORef javaNull
    hashtableUtil <- newIORef javaNull
    let this = InputPersistance header_ base tsUtil hashtableUtil
    jregisterLevel header_ this
    jregisterMethod header_ "loadAll" (\() -> loadAll_impl this)
    jregisterMethod header_ "save" (\() -> save_impl this)
    pure this

initFields_ :: InputPersistance -> IO ()
initFields_ this = do
    jset this.tsUtil =<< (TsUtil.getInstance)
    jset this.hashtableUtil =<< (HashtableUtil.getInstance)
    pure ()

new_1 :: String -> IO InputPersistance
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: InputPersistance -> String -> IO ()
init_1 this name = do
        BasicPersitance.init_1 this.base (name)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
loadAll :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
loadAll object_ a1 = jmethod object_ "loadAll" (\() -> (loadAll_impl (javaCast object_ :: InputPersistance))) () a1

loadAll_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
loadAll_super object_ a1 = (loadAll_impl (javaCast object_ :: InputPersistance)) a1

loadAll_impl :: InputPersistance -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
loadAll_impl this abeClientInformation = do
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
            gameActionInputId <- newIORef (0)
            inputId <- newIORef (0)
            gameActionInput <- newIORef (javaNull)
            input <- newIORef (javaNull)
            hashtable <- newIORef (javaNull)
            gameKeyFactory <- (GameKeyMappingFactory.getInstance)
            stringBuffer <- (StringMaker.new_)
            inputFactory <- (InputFactory.getInstance)
            smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
            stdUtil <- (StdUtil.getInstance)
            recordAsBytes <- newIORef (javaNull)
            byteArrayInputStream <- newIORef (javaNull)
            inputStream <- newIORef (javaNull)
            fix $ \loop -> when (jio (RecordEnumeration.hasNextElement recordEnum)) $ javaIteration (loop) $ do
                id <- (RecordEnumeration.nextRecordId recordEnum)
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append stringBuffer (jget ((jget (this).base.persistanceStrings)).lOADING_ID)))) id))))) this (jget ((jget (this).base.persistanceStrings)).lOAD_ALL))
                assignedValue <- (TsUtil.getRecord ((jget (this).tsUtil)) (jget recordStore) id)
                jset recordAsBytes (assignedValue)
                if ((jget recordAsBytes) /= javaNull) then do
                    assignedValue <- (ByteArrayInputStream.new_1 (jget recordAsBytes))
                    jset byteArrayInputStream (assignedValue)
                    assignedValue <- (DataInputStream.new_1 (jget byteArrayInputStream))
                    jset inputStream (assignedValue)
                    assignedValue <- (StdUtil.createHashtable stdUtil)
                    jset hashtable (assignedValue)
                    value <- newIORef (0)
                    fix $ \loop -> when ((jio (DataInputStream.available ((jget inputStream)))) > 0) $ javaIteration (loop) $ do
                        gameActionInputIdAsString <- (DataInputStream.readUTF ((jget inputStream)))
                        jset value ((Prelude.read gameActionInputIdAsString))
                        jset gameActionInputId ((Prelude.fromIntegral (jget value)))
                        Control.Monad.void (DataInputStream.readUTF ((jget inputStream)))
                        jset value ((Prelude.read (jio (DataInputStream.readUTF ((jget inputStream))))))
                        jset inputId ((Prelude.fromIntegral (jget value)))
                        assignedValue <- (GameKeyMappingFactory.getGameKey gameKeyFactory (Prelude.fromIntegral (jget gameActionInputId)))
                        jset gameActionInput (assignedValue)
                        assignedValue <- (InputFactory.getInstanceById inputFactory (Prelude.fromIntegral (jget inputId)))
                        jset input (assignedValue)
                        if (((jget input) == (jget (inputFactory).nO_INPUT)) || ((jget gameActionInput) == javaNull)) then do
                            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                            when ((jget input) == (jget (inputFactory).nO_INPUT)) $ do
                                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.persistanceStrings)).eRROR_LOADING_ID))
                                Control.Monad.void (StringMaker.appendlong stringBuffer (jget inputId))
                                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.persistanceStrings)).gAME_ACTION_INPUT))
                                Control.Monad.void (StringMaker.appendlong stringBuffer (jget gameActionInputId))
                                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.persistanceStrings)).lOAD_ALL))
                            when ((jget gameActionInput) == javaNull) $ do
                                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.persistanceStrings)).eRROR_LOADING))
                                Control.Monad.void (StringMaker.appendlong stringBuffer (jget gameActionInputId))
                                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.persistanceStrings)).iD))
                                Control.Monad.void (StringMaker.appendlong stringBuffer (jget inputId))
                                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.persistanceStrings)).lOAD_ALL))
                        else do
                            pure ()
                        Control.Monad.void (ABHashtable.put ((jget hashtable)) (jget input) (jget gameActionInput))
                    Control.Monad.void (BasicArrayList.add ((jget (this).base.valueList)) (jget hashtable))
                    Control.Monad.void (BasicArrayList.add ((jget (this).base.idList)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory id)))
                else do
                    pure ()
        pure ()


-- throws Exception
save :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> ABHashtable.ABHashtable -> IO (())
save object_ a1 a2 = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: InputPersistance))) () a1 a2

save_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> ABHashtable.ABHashtable -> IO (())
save_super object_ a1 a2 = (save_impl (javaCast object_ :: InputPersistance)) a1 a2

save_impl :: InputPersistance -> AbeClientInformationInterface.AbeClientInformationInterface -> ABHashtable.ABHashtable -> IO (())
save_impl this abeClientInformation hashtable = do
        recordStore <- newIORef ((javaCast (jget NullRecordStore.nULL_RECORD_STORE) :: RecordStore.RecordStore))
        flip finally (do
            when ((jget recordStore) /= javaNull) $ do
                Control.Monad.void (PreLogUtil.put (jget ((jget (this).base.persistanceStrings)).cLOSING_RECORDSTORE) this (jget ((jget (this).base.commonStrings)).sAVE))
                Control.Monad.void (RecordStore.closeRecordStore ((jget recordStore)))
            ) $ handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jget ((jget (this).base.persistanceStrings)).sAVING)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) hashtable))))))) this (jget ((jget (this).base.commonStrings)).sAVE))
            assignedValue <- (RecordStore.openRecordStore (jio (BasicPersitance.getRecordId this abeClientInformation)) True)
            jset recordStore (assignedValue)
            byteArrayOutputStream <- (ByteArrayOutputStream.new_)
            outputStream <- (DataOutputStream.new_1 byteArrayOutputStream)
            gameActionInput <- newIORef (javaNull)
            list <- newIORef (javaNull)
            input <- newIORef (javaNull)
            savedGameBytes <- newIORef (javaNull)
            commonSeps <- (CommonSeps.getInstance)
            smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
            inputObjectArray <- (HashtableUtil.getKeysAsArray ((jget (this).hashtableUtil)) hashtable)
            let size = (jlength inputObjectArray)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset gameActionInput ((javaCast (jindex inputObjectArray (index)) :: Input.Input))
                jset list ((javaCast (jio (ABHashtable.get hashtable (javaCast (jindex inputObjectArray (index)) :: Any.Any))) :: BasicArrayList.BasicArrayList))
                forM_ [0 .. (jio (BasicArrayList.size ((jget list)))) - 1] $ \index2 -> javaIteration (pure ()) $ do
                    let gameActionInputIdAsString = (javaToString (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory (jio (Input.getId ((jget gameActionInput)))))))
                    Control.Monad.void (DataOutputStream.writeUTF outputStream gameActionInputIdAsString)
                    Control.Monad.void (DataOutputStream.writeUTF outputStream (jget (commonSeps).eQUALS))
                    jset input ((javaCast (jindex ((jget ((jget list)).objectArray)) (index2)) :: Input.Input))
                    let inputIdAsString = (javaToString (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory (jio (Input.getId ((jget input)))))))
                    Control.Monad.void (DataOutputStream.writeUTF outputStream inputIdAsString)
            assignedValue <- (ByteArrayOutputStream.toByteArray byteArrayOutputStream)
            jset savedGameBytes (assignedValue)
            Control.Monad.void (RecordStore.addRecord ((jget recordStore)) (jget savedGameBytes) 0 (jlength (jget savedGameBytes)))
        pure ()


