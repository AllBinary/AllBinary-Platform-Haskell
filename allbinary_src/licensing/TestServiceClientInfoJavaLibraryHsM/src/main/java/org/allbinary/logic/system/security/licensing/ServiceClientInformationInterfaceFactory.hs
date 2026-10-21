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
-- package org.allbinary.logic.system.security.licensing
module ServiceClientInformationInterfaceFactory where

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
import qualified TestClientInformation -- same package or java.lang
import qualified AbeClientInformationInterface -- same package or java.lang

data ServiceClientInformationInterfaceFactory = ServiceClientInformationInterfaceFactory
    { header_ :: JavaHeader
    }

instance JavaNull ServiceClientInformationInterfaceFactory where
    javaNull = javaNullRecord "ServiceClientInformationInterfaceFactory"

instance JavaEquals ServiceClientInformationInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ServiceClientInformationInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass ServiceClientInformationInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((TestClientInformation.new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ServiceClientInformationInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ServiceClientInformationInterfaceFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: ServiceClientInformationInterfaceFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ServiceClientInformationInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ServiceClientInformationInterfaceFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AbeClientInformationInterface.AbeClientInformationInterface)
getInstance = do
        pure ((javaCast ServiceClientInformationInterfaceFactory.instance_ :: AbeClientInformationInterface.AbeClientInformationInterface))


