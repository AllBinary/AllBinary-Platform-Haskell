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
module PCGameInputMapping (module PCGameInputMapping, module PersistentInputMapping) where

import PersistentInputMapping hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, isDelete, isDelete_super, isDelete_impl, isSystemInput, isSystemInput_super, isSystemInput_impl)
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
import qualified PCKeyFactory -- same package or java.lang
import qualified Input -- same package or java.lang
import qualified GamePersistanceStrings -- org.allbinary.game.configuration.persistance.GamePersistanceStrings
import qualified PersistentInputMapping -- org.allbinary.game.input.mapping.PersistentInputMapping
import qualified BasicTouchInputFactory -- org.allbinary.input.motion.button.BasicTouchInputFactory
import qualified TouchMotionGestureFactory -- org.allbinary.input.motion.gesture.TouchMotionGestureFactory
import qualified TrackballMotionGestureFactory -- org.allbinary.input.motion.gesture.TrackballMotionGestureFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

data PCGameInputMapping = PCGameInputMapping
    { header_ :: JavaHeader
    , base :: PersistentInputMapping.PersistentInputMapping
    }

instance JavaNull PCGameInputMapping where
    javaNull = javaNullRecord "PCGameInputMapping"

instance JavaEquals PCGameInputMapping where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PCGameInputMapping where
    (==) = jrecordEquals

instance JavaObjectClass PCGameInputMapping where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PCGameInputMapping
newRecord_ = do
    base <- PersistentInputMapping.newRecord_
    let header_ = base.header_
    let this = PCGameInputMapping header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isDelete" (\() -> isDelete_impl this)
    jregisterMethod header_ "isSystemInput" (\() -> isSystemInput_impl this)
    pure this

initFields_ :: PCGameInputMapping -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PCGameInputMapping
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PCGameInputMapping -> IO ()
init_ this = do
        PersistentInputMapping.init_1 this.base (jget ((jio (GamePersistanceStrings.getInstance))).sAVED_INPUT_CONFIGURATION_RECORD_ID)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: PCGameInputMapping))) () a1

init_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: PCGameInputMapping)) a1

init_impl :: PCGameInputMapping -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
init_impl this abeClientInformation = do
        Control.Monad.void (putF ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget (this).base.commonStrings)).iNIT))
        Control.Monad.void (PCKeyFactory.getInstance)
        Control.Monad.void (TouchMotionGestureFactory.getInstance)
        Control.Monad.void (TrackballMotionGestureFactory.getInstance)
        Control.Monad.void (BasicTouchInputFactory.getInstance)
        Control.Monad.void (PersistentInputMapping.init_super this.base abeClientInformation)
        when (((jio (PersistentInputMapping.getTotalMapped this)) == 0) || (jio (PersistentInputMapping.isDefaultNew this))) $ do
            Control.Monad.void (PersistentInputMapping.addMapping ((jio (PersistentInputMapping.getInputMapping this))) (jio (PersistentInputMapping.getDefault this)))
            Control.Monad.void (PersistentInputMapping.save this abeClientInformation)
        pure ()


isDelete :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDelete object_ a1 = jmethod object_ "isDelete" (\() -> (isDelete_impl (javaCast object_ :: PCGameInputMapping))) () a1

isDelete_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isDelete_super object_ a1 = (isDelete_impl (javaCast object_ :: PCGameInputMapping)) a1

isDelete_impl :: PCGameInputMapping -> Input.Input -> IO (Bool)
isDelete_impl this input = do
    javaCatchReturn $ do
        if (input == (jget ((jio (PCKeyFactory.getInstance))).dEL)) then do
            javaReturn (True)
        else do
            javaReturn (False)


isSystemInput :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isSystemInput object_ a1 = jmethod object_ "isSystemInput" (\() -> (isSystemInput_impl (javaCast object_ :: PCGameInputMapping))) () a1

isSystemInput_super :: (JavaObjectClass this_) => this_ -> Input.Input -> IO (Bool)
isSystemInput_super object_ a1 = (isSystemInput_impl (javaCast object_ :: PCGameInputMapping)) a1

isSystemInput_impl :: PCGameInputMapping -> Input.Input -> IO (Bool)
isSystemInput_impl this input = do
        pure (False)


