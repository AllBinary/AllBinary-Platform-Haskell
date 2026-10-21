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
-- package org.allbinary.business.user.role
module UserRole where

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
import qualified BasicUserRole -- same package or java.lang
import qualified Serializable -- java.io.Serializable
import qualified UserFactoryInterface -- org.allbinary.business.user.UserFactoryInterface

-- implements Serializable
data UserRole = UserRole
    { header_ :: JavaHeader
    , basicUserRole :: IORef (BasicUserRole.BasicUserRole)
    , userFactoryInterface :: IORef (UserFactoryInterface.UserFactoryInterface)
    }

instance JavaNull UserRole where
    javaNull = javaNullRecord "UserRole"

instance JavaEquals UserRole where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserRole where
    (==) = jrecordEquals

instance JavaObjectClass UserRole where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO UserRole
newRecord_ = do
    header_ <- newJavaHeader
    basicUserRole <- newIORef javaNull
    userFactoryInterface <- newIORef javaNull
    let this = UserRole header_ basicUserRole userFactoryInterface
    jregisterLevel header_ this
    Serializable.registerInterface_ header_
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getBasicUserRole" (\() -> getBasicUserRole_impl this)
    jregisterMethod header_ "getUserFactory" (\() -> getUserFactory_impl this)
    jregisterMethod header_ "getSessionTimeout" (\() -> getSessionTimeout_impl this)
    jregisterMethod header_ "getSessionInactivityTimeout" (\() -> getSessionInactivityTimeout_impl this)
    pure this

initFields_ :: UserRole -> IO ()
initFields_ this = do
    jset this.basicUserRole (javaNull)
    jset this.userFactoryInterface (javaNull)
    pure ()

new_2 :: BasicUserRole.BasicUserRole -> UserFactoryInterface.UserFactoryInterface -> IO UserRole
new_2 aBasicUserRole aUserFactoryInterface = do
    this <- newRecord_
    init_2 this aBasicUserRole aUserFactoryInterface
    pure this

init_2 :: UserRole -> BasicUserRole.BasicUserRole -> UserFactoryInterface.UserFactoryInterface -> IO ()
init_2 this aBasicUserRole aUserFactoryInterface = do
        initFields_ this
        jset (this).basicUserRole (aBasicUserRole)
        jset (this).userFactoryInterface (aUserFactoryInterface)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: UserRole))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: UserRole))

toString_impl :: UserRole -> IO (String)
toString_impl this = do
        (BasicUserRole.toString ((jget (this).basicUserRole)))


getBasicUserRole :: (JavaObjectClass this_) => this_ -> IO (BasicUserRole.BasicUserRole)
getBasicUserRole object_ = jmethod object_ "getBasicUserRole" (\() -> (getBasicUserRole_impl (javaCast object_ :: UserRole))) ()

getBasicUserRole_super :: (JavaObjectClass this_) => this_ -> IO (BasicUserRole.BasicUserRole)
getBasicUserRole_super object_ = (getBasicUserRole_impl (javaCast object_ :: UserRole))

getBasicUserRole_impl :: UserRole -> IO (BasicUserRole.BasicUserRole)
getBasicUserRole_impl this = do
        pure ((jget (this).basicUserRole))


-- throws Exception
getUserFactory :: (JavaObjectClass this_) => this_ -> IO (UserFactoryInterface.UserFactoryInterface)
getUserFactory object_ = jmethod object_ "getUserFactory" (\() -> (getUserFactory_impl (javaCast object_ :: UserRole))) ()

getUserFactory_super :: (JavaObjectClass this_) => this_ -> IO (UserFactoryInterface.UserFactoryInterface)
getUserFactory_super object_ = (getUserFactory_impl (javaCast object_ :: UserRole))

getUserFactory_impl :: UserRole -> IO (UserFactoryInterface.UserFactoryInterface)
getUserFactory_impl this = do
        pure ((jget (this).userFactoryInterface))


getSessionTimeout :: (JavaObjectClass this_) => this_ -> IO (Int64)
getSessionTimeout object_ = jmethod object_ "getSessionTimeout" (\() -> (getSessionTimeout_impl (javaCast object_ :: UserRole))) ()

getSessionTimeout_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getSessionTimeout_super object_ = (getSessionTimeout_impl (javaCast object_ :: UserRole))

getSessionTimeout_impl :: UserRole -> IO (Int64)
getSessionTimeout_impl this = do
        (BasicUserRole.getSessionTimeout ((jget (this).basicUserRole)))


getSessionInactivityTimeout :: (JavaObjectClass this_) => this_ -> IO (Int64)
getSessionInactivityTimeout object_ = jmethod object_ "getSessionInactivityTimeout" (\() -> (getSessionInactivityTimeout_impl (javaCast object_ :: UserRole))) ()

getSessionInactivityTimeout_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getSessionInactivityTimeout_super object_ = (getSessionInactivityTimeout_impl (javaCast object_ :: UserRole))

getSessionInactivityTimeout_impl :: UserRole -> IO (Int64)
getSessionInactivityTimeout_impl this = do
        (BasicUserRole.getSessionInactivityTimeout ((jget (this).basicUserRole)))


