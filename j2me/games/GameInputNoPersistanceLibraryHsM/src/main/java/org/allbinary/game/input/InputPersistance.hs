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

import BasicPersitance hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, loadAll, loadAll_super, loadAll_impl, save, save_super, save_impl, hashtableUtil)
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
import qualified Input -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified PersistanceStrings -- same package or java.lang
import qualified RecordEnumeration -- javax.microedition.rms.RecordEnumeration
import qualified RecordStore -- javax.microedition.rms.RecordStore
import qualified BasicPersitance -- org.allbinary.game.configuration.persistance.BasicPersitance
import qualified NullRecordComparator -- org.allbinary.game.configuration.persistance.NullRecordComparator
import qualified NullRecordFilter -- org.allbinary.game.configuration.persistance.NullRecordFilter
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified HashtableUtil -- org.allbinary.util.HashtableUtil
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data InputPersistance = InputPersistance
    { header_ :: JavaHeader
    , base :: BasicPersitance.BasicPersitance
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
    hashtableUtil <- newIORef javaNull
    let this = InputPersistance header_ base hashtableUtil
    jregisterLevel header_ this
    jregisterMethod header_ "loadAll" (\() -> loadAll_impl this)
    jregisterMethod header_ "save" (\() -> save_impl this)
    pure this

initFields_ :: InputPersistance -> IO ()
initFields_ this = do
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
        recordStore <- (RecordStore.openRecordStore (jio (BasicPersitance.getRecordId this abeClientInformation)) True)
        recordEnum <- (RecordStore.enumerateRecords recordStore (jget NullRecordFilter.nULL_RECORD_FILTER) (NullRecordComparator.nULL_RECORD_COMPARATOR) True)
        hashtable <- newIORef (javaNull)
        stringBuffer <- (StringMaker.new_)
        smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
        id <- newIORef (0)
        fix $ \loop -> when (jio (RecordEnumeration.hasNextElement recordEnum)) $ javaIteration (loop) $ do
            assignedValue <- (RecordEnumeration.nextRecordId recordEnum)
            jset id (assignedValue)
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append stringBuffer (jget ((jget (this).base.persistanceStrings)).lOADING_ID)))) (jget id)))))) this (jget ((jget (this).base.persistanceStrings)).lOAD_ALL))
            assignedValue <- (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
            jset hashtable (assignedValue)
            Control.Monad.void (BasicArrayList.add ((jget (this).base.valueList)) (jget hashtable))
            Control.Monad.void (BasicArrayList.add ((jget (this).base.idList)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory (jget id))))
        Control.Monad.void (RecordStore.closeRecordStore recordStore)
        pure ()


-- throws Exception
save :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> ABHashtable.ABHashtable -> IO (())
save object_ a1 a2 = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: InputPersistance))) () a1 a2

save_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> ABHashtable.ABHashtable -> IO (())
save_super object_ a1 a2 = (save_impl (javaCast object_ :: InputPersistance)) a1 a2

save_impl :: InputPersistance -> AbeClientInformationInterface.AbeClientInformationInterface -> ABHashtable.ABHashtable -> IO (())
save_impl this abeClientInformation hashtable = do
        Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.persistanceStrings)).nOT_SAVING)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) hashtable))))))) this (jget ((jget (this).base.commonStrings)).sAVE))
        recordStore <- (RecordStore.openRecordStore (jio (BasicPersitance.getRecordId this abeClientInformation)) True)
        gameActionInput <- newIORef (javaNull)
        list <- newIORef (javaNull)
        input <- newIORef (javaNull)
        inputObjectArray <- (HashtableUtil.getKeysAsArray ((jget (this).hashtableUtil)) hashtable)
        let size = (jlength inputObjectArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset gameActionInput ((javaCast (jindex inputObjectArray (index)) :: Input.Input))
            jset list ((javaCast (jio (ABHashtable.get hashtable (jindex inputObjectArray (index)))) :: BasicArrayList.BasicArrayList))
            forM_ [0 .. (jio (BasicArrayList.size ((jget list)))) - 1] $ \index2 -> javaIteration (pure ()) $ do
                jset input ((javaCast (jio (BasicArrayList.get ((jget list)) index2)) :: Input.Input))
        Control.Monad.void (RecordStore.closeRecordStore recordStore)
        pure ()


