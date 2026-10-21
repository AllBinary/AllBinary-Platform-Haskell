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
module BasicUserRole where

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
import qualified BasicUserRoles -- same package or java.lang
import qualified BasicArrayList -- same package or java.lang
import qualified Serializable -- java.io.Serializable

-- implements Serializable
data BasicUserRole = BasicUserRole
    { header_ :: JavaHeader
    , m_int_RoleId :: IORef (Int)
    , role :: IORef (String)
    , displayValue :: IORef (String)
    , sessionTimeout :: IORef (Int64)
    , sessionInactivityTimeout :: IORef (Int64)
    }

instance JavaNull BasicUserRole where
    javaNull = javaNullRecord "BasicUserRole"

instance JavaEquals BasicUserRole where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicUserRole where
    (==) = jrecordEquals

instance JavaObjectClass BasicUserRole where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicUserRole
newRecord_ = do
    header_ <- newJavaHeader
    m_int_RoleId <- newIORef 0
    role <- newIORef ""
    displayValue <- newIORef ""
    sessionTimeout <- newIORef 0
    sessionInactivityTimeout <- newIORef 0
    let this = BasicUserRole header_ m_int_RoleId role displayValue sessionTimeout sessionInactivityTimeout
    jregisterLevel header_ this
    Serializable.registerInterface_ header_
    jregisterMethod header_ "getRoleId" (\() -> getRoleId_impl this)
    jregisterMethod header_ "getRole" (\() -> getRole_impl this)
    jregisterMethod header_ "getSessionTimeout" (\() -> getSessionTimeout_impl this)
    jregisterMethod header_ "getSessionInactivityTimeout" (\() -> getSessionInactivityTimeout_impl this)
    jregisterMethod header_ "equals" (\() -> equals_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: BasicUserRole -> IO ()
initFields_ this = do
    jset this.m_int_RoleId (0)
    jset this.role (javaNull)
    jset this.displayValue (javaNull)
    jset this.sessionTimeout (0)
    jset this.sessionInactivityTimeout (0)
    pure ()

new_4 :: String -> Int -> Int64 -> Int64 -> IO BasicUserRole
new_4 aRole a_int_RoleId aSessionTimeout aSessionInactivityTimeout = do
    this <- newRecord_
    init_4 this aRole a_int_RoleId aSessionTimeout aSessionInactivityTimeout
    pure this

init_4 :: BasicUserRole -> String -> Int -> Int64 -> Int64 -> IO ()
init_4 this aRole a_int_RoleId aSessionTimeout aSessionInactivityTimeout = do
        init_5 this (aRole) (aRole) (a_int_RoleId) (aSessionTimeout) (aSessionInactivityTimeout)
        pure () -- this(...) is in the record above
        pure ()

new_5 :: String -> String -> Int -> Int64 -> Int64 -> IO BasicUserRole
new_5 aRole aDisplayValue a_int_RoleId aSessionTimeout aSessionInactivityTimeout = do
    this <- newRecord_
    init_5 this aRole aDisplayValue a_int_RoleId aSessionTimeout aSessionInactivityTimeout
    pure this

init_5 :: BasicUserRole -> String -> String -> Int -> Int64 -> Int64 -> IO ()
init_5 this aRole aDisplayValue a_int_RoleId aSessionTimeout aSessionInactivityTimeout = do
        initFields_ this
        jset (this).m_int_RoleId (a_int_RoleId)
        jset (this).role (aRole)
        jset (this).displayValue (aDisplayValue)
        jset (this).sessionTimeout (aSessionTimeout)
        jset (this).sessionInactivityTimeout (aSessionInactivityTimeout)
        Control.Monad.void (BasicArrayList.add ((jget ((jio (BasicUserRoles.getInstance))).roleVector)) this)
        pure ()


getRoleId :: (JavaObjectClass this_) => this_ -> IO (Int)
getRoleId object_ = jmethod object_ "getRoleId" (\() -> (getRoleId_impl (javaCast object_ :: BasicUserRole))) ()

getRoleId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRoleId_super object_ = (getRoleId_impl (javaCast object_ :: BasicUserRole))

getRoleId_impl :: BasicUserRole -> IO (Int)
getRoleId_impl this = do
        pure ((jget (this).m_int_RoleId))


getRole :: (JavaObjectClass this_) => this_ -> IO (String)
getRole object_ = jmethod object_ "getRole" (\() -> (getRole_impl (javaCast object_ :: BasicUserRole))) ()

getRole_super :: (JavaObjectClass this_) => this_ -> IO (String)
getRole_super object_ = (getRole_impl (javaCast object_ :: BasicUserRole))

getRole_impl :: BasicUserRole -> IO (String)
getRole_impl this = do
        pure ((jget (this).role))


getSessionTimeout :: (JavaObjectClass this_) => this_ -> IO (Int64)
getSessionTimeout object_ = jmethod object_ "getSessionTimeout" (\() -> (getSessionTimeout_impl (javaCast object_ :: BasicUserRole))) ()

getSessionTimeout_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getSessionTimeout_super object_ = (getSessionTimeout_impl (javaCast object_ :: BasicUserRole))

getSessionTimeout_impl :: BasicUserRole -> IO (Int64)
getSessionTimeout_impl this = do
        pure ((jget (this).sessionTimeout))


getSessionInactivityTimeout :: (JavaObjectClass this_) => this_ -> IO (Int64)
getSessionInactivityTimeout object_ = jmethod object_ "getSessionInactivityTimeout" (\() -> (getSessionInactivityTimeout_impl (javaCast object_ :: BasicUserRole))) ()

getSessionInactivityTimeout_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getSessionInactivityTimeout_super object_ = (getSessionInactivityTimeout_impl (javaCast object_ :: BasicUserRole))

getSessionInactivityTimeout_impl :: BasicUserRole -> IO (Int64)
getSessionInactivityTimeout_impl this = do
        pure ((jget (this).sessionInactivityTimeout))


equals :: (JavaObjectClass this_) => this_ -> BasicUserRole -> IO (Bool)
equals object_ a1 = jmethod object_ "equals" (\() -> (equals_impl (javaCast object_ :: BasicUserRole))) () a1

equals_super :: (JavaObjectClass this_) => this_ -> BasicUserRole -> IO (Bool)
equals_super object_ a1 = (equals_impl (javaCast object_ :: BasicUserRole)) a1

equals_impl :: BasicUserRole -> BasicUserRole -> IO (Bool)
equals_impl this basicUserRole = do
    javaCatchReturn $ do
        when ((jio (BasicUserRole.getRoleId this)) == (jio (BasicUserRole.getRoleId basicUserRole))) $ do
            javaReturn (True)
        pure (False)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BasicUserRole))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BasicUserRole))

toString_impl :: BasicUserRole -> IO (String)
toString_impl this = do
        (BasicUserRole.getRole this)


