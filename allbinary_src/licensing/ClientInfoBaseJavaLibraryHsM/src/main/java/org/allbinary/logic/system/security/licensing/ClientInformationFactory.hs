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
-- package org.allbinary.logic.system.security.licensing
module ClientInformationFactory where

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
import qualified ClientInformation -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ClientInformationFactory = ClientInformationFactory
    { header_ :: JavaHeader
    }

instance JavaNull ClientInformationFactory where
    javaNull = javaNullRecord "ClientInformationFactory"

instance JavaEquals ClientInformationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ClientInformationFactory where
    (==) = jrecordEquals

instance JavaObjectClass ClientInformationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ClientInformationFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ClientInformationFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: ClientInformationFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ClientInformationFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ClientInformationFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> IO (ClientInformation.ClientInformation)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: ClientInformationFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (ClientInformation.ClientInformation)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: ClientInformationFactory))

getInstance_impl :: ClientInformationFactory -> IO (ClientInformation.ClientInformation)
getInstance_impl this = do
        logUtil <- (LogUtil.getInstance)
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF logUtil (jget (commonStrings).nOT_IMPLEMENTED) this (jget (commonStrings).gET_INSTANCE))
        stringUtil <- (StringUtil.getInstance)
        (ClientInformation.new_4 (jget (stringUtil).nULL_STRING) (jget (stringUtil).nULL_STRING) (jget (stringUtil).nULL_STRING) (jget (stringUtil).nULL_STRING))


