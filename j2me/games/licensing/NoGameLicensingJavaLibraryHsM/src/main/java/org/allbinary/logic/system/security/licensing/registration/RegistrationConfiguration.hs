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
-- package org.allbinary.logic.system.security.licensing.registration
module RegistrationConfiguration where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data RegistrationConfiguration = RegistrationConfiguration
    { header_ :: JavaHeader
    , registrationCode :: IORef (String)
    , nAME :: IORef (String)
    }

instance JavaNull RegistrationConfiguration where
    javaNull = javaNullRecord "RegistrationConfiguration"

instance JavaEquals RegistrationConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RegistrationConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass RegistrationConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

newRecord_ :: IO RegistrationConfiguration
newRecord_ = do
    header_ <- newJavaHeader
    registrationCode <- newIORef ""
    nAME <- newIORef ""
    let this = RegistrationConfiguration header_ registrationCode nAME
    jregisterLevel header_ this
    jregisterMethod header_ "read" (\() -> read_impl this)
    jregisterMethod header_ "write" (\() -> write_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "setRegistrationCode" (\() -> setRegistrationCode_impl this)
    jregisterMethod header_ "getRegistrationCode" (\() -> getRegistrationCode_impl this)
    pure this

initFields_ :: RegistrationConfiguration -> IO ()
initFields_ this = do
    jset this.registrationCode ("No Registration Code")
    jset this.nAME ("registrationid")
    pure ()

new_ :: IO RegistrationConfiguration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RegistrationConfiguration -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (RegistrationConfiguration)
getInstance = do
        pure (RegistrationConfiguration.sINGLETON)


-- throws Exception
read :: (JavaObjectClass this_) => this_ -> IO (())
read object_ = jmethod object_ "read" (\() -> (read_impl (javaCast object_ :: RegistrationConfiguration))) ()

read_super :: (JavaObjectClass this_) => this_ -> IO (())
read_super object_ = (read_impl (javaCast object_ :: RegistrationConfiguration))

read_impl :: RegistrationConfiguration -> IO (())
read_impl this = do
        pure ()


-- throws Exception
write :: (JavaObjectClass this_) => this_ -> IO (())
write object_ = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: RegistrationConfiguration))) ()

write_super :: (JavaObjectClass this_) => this_ -> IO (())
write_super object_ = (write_impl (javaCast object_ :: RegistrationConfiguration))

write_impl :: RegistrationConfiguration -> IO (())
write_impl this = do
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: RegistrationConfiguration))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: RegistrationConfiguration))

toString_impl :: RegistrationConfiguration -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Registration Code: "))) (jio (RegistrationConfiguration.getRegistrationCode this))))))


setRegistrationCode :: (JavaObjectClass this_) => this_ -> String -> IO (())
setRegistrationCode object_ a1 = jmethod object_ "setRegistrationCode" (\() -> (setRegistrationCode_impl (javaCast object_ :: RegistrationConfiguration))) () a1

setRegistrationCode_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setRegistrationCode_super object_ a1 = (setRegistrationCode_impl (javaCast object_ :: RegistrationConfiguration)) a1

setRegistrationCode_impl :: RegistrationConfiguration -> String -> IO (())
setRegistrationCode_impl this registrationCode = do
        jset (this).registrationCode (registrationCode)
        pure ()


getRegistrationCode :: (JavaObjectClass this_) => this_ -> IO (String)
getRegistrationCode object_ = jmethod object_ "getRegistrationCode" (\() -> (getRegistrationCode_impl (javaCast object_ :: RegistrationConfiguration))) ()

getRegistrationCode_super :: (JavaObjectClass this_) => this_ -> IO (String)
getRegistrationCode_super object_ = (getRegistrationCode_impl (javaCast object_ :: RegistrationConfiguration))

getRegistrationCode_impl :: RegistrationConfiguration -> IO (String)
getRegistrationCode_impl this = do
        pure ((jget (this).registrationCode))


