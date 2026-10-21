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
-- package org.allbinary.game.input.mapping
module PersistentInputMapping where

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
import qualified InputToGameKeyMapping -- same package or java.lang
import qualified Enumeration -- java.util.Enumeration
import qualified GamePersistanceStrings -- org.allbinary.game.configuration.persistance.GamePersistanceStrings
import qualified Input -- org.allbinary.game.input.Input
import qualified InputPersistance -- org.allbinary.game.input.InputPersistance
import qualified InputMappingEvent -- org.allbinary.game.input.mapping.event.InputMappingEvent
import qualified InputMappingEventListenerInterface -- org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface
import qualified NullInputMappingEventListener -- org.allbinary.game.input.mapping.event.NullInputMappingEventListener
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified EnumerationUtil -- org.allbinary.util.EnumerationUtil

data PersistentInputMapping = PersistentInputMapping
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , enumerationUtil :: IORef (EnumerationUtil.EnumerationUtil)
    , inputMapping :: IORef (InputToGameKeyMapping.InputToGameKeyMapping)
    , inputMappingEventListenerInterface :: IORef (InputMappingEventListenerInterface.InputMappingEventListenerInterface)
    , inputPersistance :: IORef (InputPersistance.InputPersistance)
    , inputMappingEvent :: IORef (InputMappingEvent.InputMappingEvent)
    }

instance JavaNull PersistentInputMapping where
    javaNull = javaNullRecord "PersistentInputMapping"

instance JavaEquals PersistentInputMapping where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PersistentInputMapping where
    (==) = jrecordEquals

instance JavaObjectClass PersistentInputMapping where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PersistentInputMapping
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    enumerationUtil <- newIORef javaNull
    inputMapping <- newIORef javaNull
    inputMappingEventListenerInterface <- newIORef javaNull
    inputPersistance <- newIORef javaNull
    inputMappingEvent <- newIORef javaNull
    let this = PersistentInputMapping header_ logUtil commonStrings enumerationUtil inputMapping inputMappingEventListenerInterface inputPersistance inputMappingEvent
    jregisterLevel header_ this
    jregisterMethod header_ "getTotalMapped" (\() -> getTotalMapped_impl this)
    jregisterMethod header_ "isDefaultNew" (\() -> isDefaultNew_impl this)
    jregisterMethod header_ "getDefault" (\() -> getDefault_impl this)
    jregisterMethod header_ "setDefault" (\() -> setDefault_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "save" (\() -> save_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "setInputMappingEventListenerInterface" (\() -> setInputMappingEventListenerInterface_impl this)
    jregisterMethod header_ "getInputMappingEventListenerInterface" (\() -> getInputMappingEventListenerInterface_impl this)
    jregisterMethod header_ "getInputMapping" (\() -> getInputMapping_impl this)
    jregisterMethod header_ "isDelete" (\() -> isDelete_impl this)
    jregisterMethod header_ "isSystemInput" (\() -> isSystemInput_impl this)
    pure this

initFields_ :: PersistentInputMapping -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.enumerationUtil =<< (EnumerationUtil.getInstance)
    jset this.inputMapping =<< (InputToGameKeyMapping.new_)
    jset this.inputMappingEventListenerInterface ((javaCast NullInputMappingEventListener.nULL_INPUT_MAPPING_EVENT_LISTENER :: InputMappingEventListenerInterface.InputMappingEventListenerInterface))
    jset this.inputPersistance (javaNull)
    jset this.inputMappingEvent =<< (InputMappingEvent.new_1 this)
    pure ()


getNullInstance :: IO (PersistentInputMapping)
getNullInstance = do
        when ((jget PersistentInputMapping.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_1 (jget ((jio (GamePersistanceStrings.getInstance))).sAVED_INPUT_CONFIGURATION_RECORD_ID))
            jset PersistentInputMapping.instance_ (assignedValue)
        pure ((javaCast (jget PersistentInputMapping.instance_) :: PersistentInputMapping))

new_1 :: String -> IO PersistentInputMapping
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: PersistentInputMapping -> String -> IO ()
init_1 this name = do
        initFields_ this
        assignedValue <- (InputPersistance.new_1 name)
        jset (this).inputPersistance (assignedValue)
        pure ()


getTotalMapped :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalMapped object_ = jmethod object_ "getTotalMapped" (\() -> (getTotalMapped_impl (javaCast object_ :: PersistentInputMapping))) ()

getTotalMapped_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalMapped_super object_ = (getTotalMapped_impl (javaCast object_ :: PersistentInputMapping))

getTotalMapped_impl :: PersistentInputMapping -> IO (Int)
getTotalMapped_impl this = do
        (ABHashtable.size ((jio (InputToGameKeyMapping.getHashtable ((jio (PersistentInputMapping.getInputMapping this)))))))


isDefaultNew :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDefaultNew object_ = jmethod object_ "isDefaultNew" (\() -> (isDefaultNew_impl (javaCast object_ :: PersistentInputMapping))) ()

isDefaultNew_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDefaultNew_super object_ = (isDefaultNew_impl (javaCast object_ :: PersistentInputMapping))

isDefaultNew_impl :: PersistentInputMapping -> IO (Bool)
isDefaultNew_impl this = do
        pure (False)


getDefault :: (JavaObjectClass this_) => this_ -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getDefault object_ = jmethod object_ "getDefault" (\() -> (getDefault_impl (javaCast object_ :: PersistentInputMapping))) ()

getDefault_super :: (JavaObjectClass this_) => this_ -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getDefault_super object_ = (getDefault_impl (javaCast object_ :: PersistentInputMapping))

getDefault_impl :: PersistentInputMapping -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getDefault_impl this = do
        (InputToGameKeyMapping.getNullInstance)


-- throws Exception
setDefault :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
setDefault object_ a1 = jmethod object_ "setDefault" (\() -> (setDefault_impl (javaCast object_ :: PersistentInputMapping))) () a1

setDefault_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
setDefault_super object_ a1 = (setDefault_impl (javaCast object_ :: PersistentInputMapping)) a1

setDefault_impl :: PersistentInputMapping -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
setDefault_impl this abeClientInformation = do
        Control.Monad.void (InputToGameKeyMapping.removeAll ((jio (PersistentInputMapping.getInputMapping this))))
        Control.Monad.void (InputToGameKeyMapping.addMapping ((jio (PersistentInputMapping.getInputMapping this))) (jio (PersistentInputMapping.getDefault this)))
        Control.Monad.void (PersistentInputMapping.save this abeClientInformation)
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: PersistentInputMapping))) () a1

update_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: PersistentInputMapping)) a1

update_impl :: PersistentInputMapping -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
update_impl this abeClientInformation = do
        Control.Monad.void (InputPersistance.deleteAll ((jget (this).inputPersistance)) abeClientInformation)
        Control.Monad.void (PersistentInputMapping.save this abeClientInformation)
        pure ()


-- throws Exception
save :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
save object_ a1 = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: PersistentInputMapping))) () a1

save_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
save_super object_ a1 = (save_impl (javaCast object_ :: PersistentInputMapping)) a1

save_impl :: PersistentInputMapping -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
save_impl this abeClientInformation = do
        Control.Monad.void (InputPersistance.save ((jget (this).inputPersistance)) abeClientInformation (jio (InputToGameKeyMapping.getHashtable ((jio (PersistentInputMapping.getInputMapping this))))))
        Control.Monad.void (InputMappingEvent.setInputToGameKeyMapping ((jget (this).inputMappingEvent)) (jio (PersistentInputMapping.getInputMapping this)))
        when ((jio (PersistentInputMapping.getInputMappingEventListenerInterface this)) /= javaNull) $ do
            Control.Monad.void (InputMappingEventListenerInterface.onInputMappingEvent ((jio (PersistentInputMapping.getInputMappingEventListenerInterface this))) (jget (this).inputMappingEvent))
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: PersistentInputMapping))) () a1

init_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: PersistentInputMapping)) a1

init_impl :: PersistentInputMapping -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
init_impl this abeClientInformation = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).iNIT))
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).iNIT) e)
            Control.Monad.void (InputPersistance.deleteRecoreStore ((jget (this).inputPersistance)) abeClientInformation)
            Control.Monad.void (PersistentInputMapping.setDefault this abeClientInformation)
            Control.Monad.void (InputPersistance.loadAll ((jget (this).inputPersistance)) abeClientInformation)
            ) $ do
            Control.Monad.void (InputPersistance.loadAll ((jget (this).inputPersistance)) abeClientInformation)
        list <- (InputPersistance.getList ((jget (this).inputPersistance)))
        totalMappedTo <- newIORef (0)
        size <- (BasicArrayList.size list)
        hashtable <- newIORef (javaNull)
        enumeration <- newIORef (javaNull)
        mappedToInput <- newIORef (javaNull)
        gameActionInput <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset hashtable ((javaCast (jindex ((jget (list).objectArray)) (index)) :: ABHashtable.ABHashtable))
            assignedValue <- (ABHashtable.keys ((jget hashtable)))
            jset enumeration (assignedValue)
            fix $ \loop -> when (jio (EnumerationUtil.hasMoreElements ((jget (this).enumerationUtil)) (jget enumeration))) $ javaIteration (loop) $ do
                jset mappedToInput ((javaCast (jio (EnumerationUtil.nextElement ((jget (this).enumerationUtil)) (jget enumeration))) :: Input.Input))
                jset gameActionInput ((javaCast (jio (ABHashtable.get ((jget hashtable)) (jget mappedToInput))) :: Input.Input))
                jset totalMappedTo ((jget totalMappedTo) + 1)
                Control.Monad.void (InputToGameKeyMapping.add ((jio (PersistentInputMapping.getInputMapping this))) (jget gameActionInput) (jget mappedToInput))
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "End - Total Loaded Keys Mapped: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (PersistentInputMapping.getTotalMapped this)))
        Control.Monad.void (StringMaker.append stringBuffer " to: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jget totalMappedTo))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).commonStrings)).iNIT))
        pure ()


setInputMappingEventListenerInterface :: (JavaObjectClass this_) => this_ -> InputMappingEventListenerInterface.InputMappingEventListenerInterface -> IO (())
setInputMappingEventListenerInterface object_ a1 = jmethod object_ "setInputMappingEventListenerInterface" (\() -> (setInputMappingEventListenerInterface_impl (javaCast object_ :: PersistentInputMapping))) () a1

setInputMappingEventListenerInterface_super :: (JavaObjectClass this_) => this_ -> InputMappingEventListenerInterface.InputMappingEventListenerInterface -> IO (())
setInputMappingEventListenerInterface_super object_ a1 = (setInputMappingEventListenerInterface_impl (javaCast object_ :: PersistentInputMapping)) a1

setInputMappingEventListenerInterface_impl :: PersistentInputMapping -> InputMappingEventListenerInterface.InputMappingEventListenerInterface -> IO (())
setInputMappingEventListenerInterface_impl this inputMappingEventListenerInterface = do
        jset (this).inputMappingEventListenerInterface (inputMappingEventListenerInterface)
        pure ()


getInputMappingEventListenerInterface :: (JavaObjectClass this_) => this_ -> IO (InputMappingEventListenerInterface.InputMappingEventListenerInterface)
getInputMappingEventListenerInterface object_ = jmethod object_ "getInputMappingEventListenerInterface" (\() -> (getInputMappingEventListenerInterface_impl (javaCast object_ :: PersistentInputMapping))) ()

getInputMappingEventListenerInterface_super :: (JavaObjectClass this_) => this_ -> IO (InputMappingEventListenerInterface.InputMappingEventListenerInterface)
getInputMappingEventListenerInterface_super object_ = (getInputMappingEventListenerInterface_impl (javaCast object_ :: PersistentInputMapping))

getInputMappingEventListenerInterface_impl :: PersistentInputMapping -> IO (InputMappingEventListenerInterface.InputMappingEventListenerInterface)
getInputMappingEventListenerInterface_impl this = do
        pure ((jget (this).inputMappingEventListenerInterface))


getInputMapping :: (JavaObjectClass this_) => this_ -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getInputMapping object_ = jmethod object_ "getInputMapping" (\() -> (getInputMapping_impl (javaCast object_ :: PersistentInputMapping))) ()

getInputMapping_super :: (JavaObjectClass this_) => this_ -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getInputMapping_super object_ = (getInputMapping_impl (javaCast object_ :: PersistentInputMapping))

getInputMapping_impl :: PersistentInputMapping -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getInputMapping_impl this = do
        pure ((jget (this).inputMapping))


-- throws Exception
isDelete :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDelete object_ a1 = jmethod object_ "isDelete" (\() -> (isDelete_impl (javaCast object_ :: PersistentInputMapping))) () a1

isDelete_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDelete_super object_ a1 = (isDelete_impl (javaCast object_ :: PersistentInputMapping)) a1

isDelete_impl :: PersistentInputMapping -> Input.Input -> IO (Bool)
isDelete_impl this input = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))


-- throws Exception
isSystemInput :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isSystemInput object_ a1 = jmethod object_ "isSystemInput" (\() -> (isSystemInput_impl (javaCast object_ :: PersistentInputMapping))) () a1

isSystemInput_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isSystemInput_super object_ a1 = (isSystemInput_impl (javaCast object_ :: PersistentInputMapping)) a1

isSystemInput_impl :: PersistentInputMapping -> Input.Input -> IO (Bool)
isSystemInput_impl this input = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))


