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
module PlatformInputMappingFactory where

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
import qualified MotionJ2MEGameInputMapping -- same package or java.lang
import qualified PersistentInputMapping -- org.allbinary.game.input.mapping.PersistentInputMapping
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data PlatformInputMappingFactory = PlatformInputMappingFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , inputToGameKeyMapping :: IORef (PersistentInputMapping.PersistentInputMapping)
    }

instance JavaNull PlatformInputMappingFactory where
    javaNull = javaNullRecord "PlatformInputMappingFactory"

instance JavaEquals PlatformInputMappingFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlatformInputMappingFactory where
    (==) = jrecordEquals

instance JavaObjectClass PlatformInputMappingFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PlatformInputMappingFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    inputToGameKeyMapping <- newIORef javaNull
    let this = PlatformInputMappingFactory header_ logUtil inputToGameKeyMapping
    jregisterLevel header_ this
    jregisterMethod header_ "getPersistentInputMappingInstance" (\() -> getPersistentInputMappingInstance_impl this)
    pure this

initFields_ :: PlatformInputMappingFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.inputToGameKeyMapping =<< (PersistentInputMapping.getNullInstance)
    pure ()

new_ :: IO PlatformInputMappingFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PlatformInputMappingFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PlatformInputMappingFactory)
getInstance = do
        pure (PlatformInputMappingFactory.instance_)


getPersistentInputMappingInstance :: (JavaObjectClass this_) => this_ -> IO (PersistentInputMapping.PersistentInputMapping)
getPersistentInputMappingInstance object_ = jmethod object_ "getPersistentInputMappingInstance" (\() -> (getPersistentInputMappingInstance_impl (javaCast object_ :: PlatformInputMappingFactory))) ()

getPersistentInputMappingInstance_super :: (JavaObjectClass this_) => this_ -> IO (PersistentInputMapping.PersistentInputMapping)
getPersistentInputMappingInstance_super object_ = (getPersistentInputMappingInstance_impl (javaCast object_ :: PlatformInputMappingFactory))

getPersistentInputMappingInstance_impl :: PlatformInputMappingFactory -> IO (PersistentInputMapping.PersistentInputMapping)
getPersistentInputMappingInstance_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            ) $ do
            when ((jget (this).inputToGameKeyMapping) == (jio (PersistentInputMapping.getNullInstance))) $ do
                assignedValue <- (fmap (\value_ -> javaCast value_ :: PersistentInputMapping.PersistentInputMapping) (MotionJ2MEGameInputMapping.new_))
                jset (this).inputToGameKeyMapping (assignedValue)
        pure ((jget (this).inputToGameKeyMapping))


