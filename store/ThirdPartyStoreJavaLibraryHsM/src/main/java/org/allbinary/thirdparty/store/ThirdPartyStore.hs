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
-- package org.allbinary.thirdparty.store
module ThirdPartyStore where

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
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

data ThirdPartyStore = ThirdPartyStore
    { header_ :: JavaHeader
    , authorized :: IORef (Bool)
    , name :: IORef (String)
    }

instance JavaNull ThirdPartyStore where
    javaNull = javaNullRecord "ThirdPartyStore"

instance JavaEquals ThirdPartyStore where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThirdPartyStore where
    (==) = jrecordEquals

instance JavaObjectClass ThirdPartyStore where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ThirdPartyStore
newRecord_ = do
    header_ <- newJavaHeader
    authorized <- newIORef False
    name <- newIORef ""
    let this = ThirdPartyStore header_ authorized name
    jregisterLevel header_ this
    jregisterMethod header_ "authorize" (\() -> authorize_impl this)
    jregisterMethod header_ "isAuthorized" (\() -> isAuthorized_impl this)
    jregisterMethod header_ "setAuthorized" (\() -> setAuthorized_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    pure this

initFields_ :: ThirdPartyStore -> IO ()
initFields_ this = do
    jset this.authorized (False)
    jset this.name (javaNull)
    pure ()

new_1 :: String -> IO ThirdPartyStore
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: ThirdPartyStore -> String -> IO ()
init_1 this name = do
        initFields_ this
        jset (this).name (name)
        pure ()


authorize :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
authorize object_ a1 = jmethod object_ "authorize" (\() -> (authorize_impl (javaCast object_ :: ThirdPartyStore))) () a1

authorize_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
authorize_super object_ a1 = (authorize_impl (javaCast object_ :: ThirdPartyStore)) a1

authorize_impl :: ThirdPartyStore -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
authorize_impl this clientInformationInterface = do
        pure ()


isAuthorized :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAuthorized object_ = jmethod object_ "isAuthorized" (\() -> (isAuthorized_impl (javaCast object_ :: ThirdPartyStore))) ()

isAuthorized_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAuthorized_super object_ = (isAuthorized_impl (javaCast object_ :: ThirdPartyStore))

isAuthorized_impl :: ThirdPartyStore -> IO (Bool)
isAuthorized_impl this = do
        pure ((jget (this).authorized))


setAuthorized :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAuthorized object_ a1 = jmethod object_ "setAuthorized" (\() -> (setAuthorized_impl (javaCast object_ :: ThirdPartyStore))) () a1

setAuthorized_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAuthorized_super object_ a1 = (setAuthorized_impl (javaCast object_ :: ThirdPartyStore)) a1

setAuthorized_impl :: ThirdPartyStore -> Bool -> IO (())
setAuthorized_impl this authorized = do
        jset (this).authorized (authorized)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: ThirdPartyStore))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: ThirdPartyStore))

getName_impl :: ThirdPartyStore -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


