{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.persistance
module PlatformRecordIdUtil where

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
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

data PlatformRecordIdUtil = PlatformRecordIdUtil
    { header_ :: JavaHeader
    , pLATFORM_SHORT_NAME :: IORef (String)
    }

instance JavaNull PlatformRecordIdUtil where
    javaNull = javaNullRecord "PlatformRecordIdUtil"

instance JavaEquals PlatformRecordIdUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlatformRecordIdUtil where
    (==) = jrecordEquals

instance JavaObjectClass PlatformRecordIdUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PlatformRecordIdUtil
newRecord_ = do
    header_ <- newJavaHeader
    pLATFORM_SHORT_NAME <- newIORef ""
    let this = PlatformRecordIdUtil header_ pLATFORM_SHORT_NAME
    jregisterLevel header_ this
    jregisterMethod header_ "getRecordId" (\() -> getRecordId_impl this)
    pure this

initFields_ :: PlatformRecordIdUtil -> IO ()
initFields_ this = do
    jset this.pLATFORM_SHORT_NAME ("HTML")
    pure ()

new_ :: IO PlatformRecordIdUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PlatformRecordIdUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PlatformRecordIdUtil)
getInstance = do
        pure (PlatformRecordIdUtil.instance_)


getRecordId :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO (String)
getRecordId object_ a1 a2 = jmethod object_ "getRecordId" (\() -> (getRecordId_impl (javaCast object_ :: PlatformRecordIdUtil))) () a1 a2

getRecordId_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO (String)
getRecordId_super object_ a1 a2 = (getRecordId_impl (javaCast object_ :: PlatformRecordIdUtil)) a1 a2

getRecordId_impl :: PlatformRecordIdUtil -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO (String)
getRecordId_impl this abeClientInformation baseRecordId = do
        (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (AbeClientInformationInterface.toShortString abeClientInformation))))) (jget ((jio (CommonSeps.getInstance))).uNDERSCORE)))) (jget (this).pLATFORM_SHORT_NAME)))) baseRecordId))))


