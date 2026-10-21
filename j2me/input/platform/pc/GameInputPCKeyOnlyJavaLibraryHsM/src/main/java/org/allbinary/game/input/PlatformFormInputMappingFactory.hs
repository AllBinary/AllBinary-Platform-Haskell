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
module PlatformFormInputMappingFactory where

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
import qualified PCKeyFactory -- same package or java.lang
import qualified GameKeyFactory -- same package or java.lang
import qualified InputToGameKeyMapping -- org.allbinary.game.input.mapping.InputToGameKeyMapping
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data PlatformFormInputMappingFactory = PlatformFormInputMappingFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , inputToGameKeyMapping :: IORef (InputToGameKeyMapping.InputToGameKeyMapping)
    }

instance JavaNull PlatformFormInputMappingFactory where
    javaNull = javaNullRecord "PlatformFormInputMappingFactory"

instance JavaEquals PlatformFormInputMappingFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlatformFormInputMappingFactory where
    (==) = jrecordEquals

instance JavaObjectClass PlatformFormInputMappingFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PlatformFormInputMappingFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    inputToGameKeyMapping <- newIORef javaNull
    let this = PlatformFormInputMappingFactory header_ logUtil inputToGameKeyMapping
    jregisterLevel header_ this
    jregisterMethod header_ "getOrCreate" (\() -> getOrCreate_impl this)
    pure this

initFields_ :: PlatformFormInputMappingFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.inputToGameKeyMapping =<< (InputToGameKeyMapping.getNullInstance)
    pure ()

new_ :: IO PlatformFormInputMappingFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PlatformFormInputMappingFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PlatformFormInputMappingFactory)
getInstance = do
        when ((jget PlatformFormInputMappingFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset PlatformFormInputMappingFactory.instance_ (assignedValue)
        pure ((javaCast (jget PlatformFormInputMappingFactory.instance_) :: PlatformFormInputMappingFactory))


getOrCreate :: (JavaObjectClass this_) => this_ -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getOrCreate object_ = jmethod object_ "getOrCreate" (\() -> (getOrCreate_impl (javaCast object_ :: PlatformFormInputMappingFactory))) ()

getOrCreate_super :: (JavaObjectClass this_) => this_ -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getOrCreate_super object_ = (getOrCreate_impl (javaCast object_ :: PlatformFormInputMappingFactory))

getOrCreate_impl :: PlatformFormInputMappingFactory -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getOrCreate_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            ) $ do
            when ((jget (this).inputToGameKeyMapping) == (jio (InputToGameKeyMapping.getNullInstance))) $ do
                pcKeyFactory <- (PCKeyFactory.getInstance)
                inputToGameKeyMapping <- (InputToGameKeyMapping.new_)
                gameKeyFactory <- (GameKeyFactory.getInstance)
                Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).uP) (jget (pcKeyFactory).dPAD_UP))
                Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).dOWN) (jget (pcKeyFactory).dPAD_DOWN))
                Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).lEFT) (jget (pcKeyFactory).dPAD_LEFT))
                Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).rIGHT) (jget (pcKeyFactory).dPAD_RIGHT))
                Control.Monad.void (InputToGameKeyMapping.add inputToGameKeyMapping (jget (gameKeyFactory).kEY_NUM1) (jget (pcKeyFactory).eNTER))
                jset (this).inputToGameKeyMapping (inputToGameKeyMapping)
        pure ((jget (this).inputToGameKeyMapping))


