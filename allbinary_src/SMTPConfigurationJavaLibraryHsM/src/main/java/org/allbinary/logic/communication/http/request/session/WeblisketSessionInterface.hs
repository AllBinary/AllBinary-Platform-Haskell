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
-- package org.allbinary.logic.communication.http.request.session
module WeblisketSessionInterface where

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
import qualified OrderInterface -- org.allbinary.business.user.commerce.inventory.order.OrderInterface
import qualified UserRole -- org.allbinary.business.user.role.UserRole

-- Java interface: the classes that implement it have these functions
data WeblisketSessionInterface = WeblisketSessionInterface
    { header_ :: JavaHeader
    }

instance JavaNull WeblisketSessionInterface where
    javaNull = javaNullRecord "WeblisketSessionInterface"

instance JavaEquals WeblisketSessionInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WeblisketSessionInterface where
    (==) = jrecordEquals

instance JavaObjectClass WeblisketSessionInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> WeblisketSessionInterface
fromHeader_ header = WeblisketSessionInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (WeblisketSessionInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: WeblisketSessionInterface))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: WeblisketSessionInterface))

clear_impl :: WeblisketSessionInterface -> IO (())
clear_impl this = javaAbstractMethod "clear"


getAttempts :: (JavaObjectClass this_) => this_ -> IO (Int)
getAttempts object_ = jmethod object_ "getAttempts" (\() -> (getAttempts_impl (javaCast object_ :: WeblisketSessionInterface))) ()

getAttempts_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAttempts_super object_ = (getAttempts_impl (javaCast object_ :: WeblisketSessionInterface))

getAttempts_impl :: WeblisketSessionInterface -> IO (Int)
getAttempts_impl this = javaAbstractMethod "getAttempts"


getAuthentication :: (JavaObjectClass this_) => this_ -> IO (String)
getAuthentication object_ = jmethod object_ "getAuthentication" (\() -> (getAuthentication_impl (javaCast object_ :: WeblisketSessionInterface))) ()

getAuthentication_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAuthentication_super object_ = (getAuthentication_impl (javaCast object_ :: WeblisketSessionInterface))

getAuthentication_impl :: WeblisketSessionInterface -> IO (String)
getAuthentication_impl this = javaAbstractMethod "getAuthentication"


getCreationTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getCreationTime object_ = jmethod object_ "getCreationTime" (\() -> (getCreationTime_impl (javaCast object_ :: WeblisketSessionInterface))) ()

getCreationTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getCreationTime_super object_ = (getCreationTime_impl (javaCast object_ :: WeblisketSessionInterface))

getCreationTime_impl :: WeblisketSessionInterface -> IO (Int64)
getCreationTime_impl this = javaAbstractMethod "getCreationTime"


getId :: (JavaObjectClass this_) => this_ -> IO (String)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: WeblisketSessionInterface))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getId_super object_ = (getId_impl (javaCast object_ :: WeblisketSessionInterface))

getId_impl :: WeblisketSessionInterface -> IO (String)
getId_impl this = javaAbstractMethod "getId"


getLastAccessedTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getLastAccessedTime object_ = jmethod object_ "getLastAccessedTime" (\() -> (getLastAccessedTime_impl (javaCast object_ :: WeblisketSessionInterface))) ()

getLastAccessedTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getLastAccessedTime_super object_ = (getLastAccessedTime_impl (javaCast object_ :: WeblisketSessionInterface))

getLastAccessedTime_impl :: WeblisketSessionInterface -> IO (Int64)
getLastAccessedTime_impl this = javaAbstractMethod "getLastAccessedTime"


-- throws Exception
getOrder :: (JavaObjectClass this_) => this_ -> IO (OrderInterface.OrderInterface)
getOrder object_ = jmethod object_ "getOrder" (\() -> (getOrder_impl (javaCast object_ :: WeblisketSessionInterface))) ()

getOrder_super :: (JavaObjectClass this_) => this_ -> IO (OrderInterface.OrderInterface)
getOrder_super object_ = (getOrder_impl (javaCast object_ :: WeblisketSessionInterface))

getOrder_impl :: WeblisketSessionInterface -> IO (OrderInterface.OrderInterface)
getOrder_impl this = javaAbstractMethod "getOrder"


getPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword object_ = jmethod object_ "getPassword" (\() -> (getPassword_impl (javaCast object_ :: WeblisketSessionInterface))) ()

getPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword_super object_ = (getPassword_impl (javaCast object_ :: WeblisketSessionInterface))

getPassword_impl :: WeblisketSessionInterface -> IO (String)
getPassword_impl this = javaAbstractMethod "getPassword"


getPaymentMethod :: (JavaObjectClass this_) => this_ -> IO (String)
getPaymentMethod object_ = jmethod object_ "getPaymentMethod" (\() -> (getPaymentMethod_impl (javaCast object_ :: WeblisketSessionInterface))) ()

getPaymentMethod_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPaymentMethod_super object_ = (getPaymentMethod_impl (javaCast object_ :: WeblisketSessionInterface))

getPaymentMethod_impl :: WeblisketSessionInterface -> IO (String)
getPaymentMethod_impl this = javaAbstractMethod "getPaymentMethod"


-- throws Exception
getRole :: (JavaObjectClass this_) => this_ -> IO (UserRole.UserRole)
getRole object_ = jmethod object_ "getRole" (\() -> (getRole_impl (javaCast object_ :: WeblisketSessionInterface))) ()

getRole_super :: (JavaObjectClass this_) => this_ -> IO (UserRole.UserRole)
getRole_super object_ = (getRole_impl (javaCast object_ :: WeblisketSessionInterface))

getRole_impl :: WeblisketSessionInterface -> IO (UserRole.UserRole)
getRole_impl this = javaAbstractMethod "getRole"


getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: WeblisketSessionInterface))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: WeblisketSessionInterface))

getStoreName_impl :: WeblisketSessionInterface -> IO (String)
getStoreName_impl this = javaAbstractMethod "getStoreName"


getTimeout :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeout object_ = jmethod object_ "getTimeout" (\() -> (getTimeout_impl (javaCast object_ :: WeblisketSessionInterface))) ()

getTimeout_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeout_super object_ = (getTimeout_impl (javaCast object_ :: WeblisketSessionInterface))

getTimeout_impl :: WeblisketSessionInterface -> IO (String)
getTimeout_impl this = javaAbstractMethod "getTimeout"


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: WeblisketSessionInterface))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: WeblisketSessionInterface))

getUserName_impl :: WeblisketSessionInterface -> IO (String)
getUserName_impl this = javaAbstractMethod "getUserName"


getWebAppPath :: (JavaObjectClass this_) => this_ -> IO (String)
getWebAppPath object_ = jmethod object_ "getWebAppPath" (\() -> (getWebAppPath_impl (javaCast object_ :: WeblisketSessionInterface))) ()

getWebAppPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getWebAppPath_super object_ = (getWebAppPath_impl (javaCast object_ :: WeblisketSessionInterface))

getWebAppPath_impl :: WeblisketSessionInterface -> IO (String)
getWebAppPath_impl this = javaAbstractMethod "getWebAppPath"


removeBasket :: (JavaObjectClass this_) => this_ -> IO (())
removeBasket object_ = jmethod object_ "removeBasket" (\() -> (removeBasket_impl (javaCast object_ :: WeblisketSessionInterface))) ()

removeBasket_super :: (JavaObjectClass this_) => this_ -> IO (())
removeBasket_super object_ = (removeBasket_impl (javaCast object_ :: WeblisketSessionInterface))

removeBasket_impl :: WeblisketSessionInterface -> IO (())
removeBasket_impl this = javaAbstractMethod "removeBasket"


setAttempts :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAttempts object_ a1 = jmethod object_ "setAttempts" (\() -> (setAttempts_impl (javaCast object_ :: WeblisketSessionInterface))) () a1

setAttempts_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAttempts_super object_ a1 = (setAttempts_impl (javaCast object_ :: WeblisketSessionInterface)) a1

setAttempts_impl :: WeblisketSessionInterface -> Int -> IO (())
setAttempts_impl this value = javaAbstractMethod "setAttempts"


setAuthenticated :: (JavaObjectClass this_) => this_ -> IO (())
setAuthenticated object_ = jmethod object_ "setAuthenticated" (\() -> (setAuthenticated_impl (javaCast object_ :: WeblisketSessionInterface))) ()

setAuthenticated_super :: (JavaObjectClass this_) => this_ -> IO (())
setAuthenticated_super object_ = (setAuthenticated_impl (javaCast object_ :: WeblisketSessionInterface))

setAuthenticated_impl :: WeblisketSessionInterface -> IO (())
setAuthenticated_impl this = javaAbstractMethod "setAuthenticated"


-- Java overload of setAuthenticated with a different parameter count: give it a different name
setAuthenticated :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAuthenticated object_ a1 = jmethod object_ "setAuthenticated" (\() -> (setAuthenticated_impl (javaCast object_ :: WeblisketSessionInterface))) () a1

setAuthenticated_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAuthenticated_super object_ a1 = (setAuthenticated_impl (javaCast object_ :: WeblisketSessionInterface)) a1

setAuthenticated_impl :: WeblisketSessionInterface -> Bool -> IO (())
setAuthenticated_impl this value = javaAbstractMethod "setAuthenticated"


setPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword object_ a1 = jmethod object_ "setPassword" (\() -> (setPassword_impl (javaCast object_ :: WeblisketSessionInterface))) () a1

setPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword_super object_ a1 = (setPassword_impl (javaCast object_ :: WeblisketSessionInterface)) a1

setPassword_impl :: WeblisketSessionInterface -> String -> IO (())
setPassword_impl this password = javaAbstractMethod "setPassword"


setPaymentMethod :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPaymentMethod object_ a1 = jmethod object_ "setPaymentMethod" (\() -> (setPaymentMethod_impl (javaCast object_ :: WeblisketSessionInterface))) () a1

setPaymentMethod_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPaymentMethod_super object_ a1 = (setPaymentMethod_impl (javaCast object_ :: WeblisketSessionInterface)) a1

setPaymentMethod_impl :: WeblisketSessionInterface -> String -> IO (())
setPaymentMethod_impl this value = javaAbstractMethod "setPaymentMethod"


setRole :: (JavaObjectClass this_) => this_ -> UserRole.UserRole -> IO (())
setRole object_ a1 = jmethod object_ "setRole" (\() -> (setRole_impl (javaCast object_ :: WeblisketSessionInterface))) () a1

setRole_super :: (JavaObjectClass this_) => this_ -> UserRole.UserRole -> IO (())
setRole_super object_ a1 = (setRole_impl (javaCast object_ :: WeblisketSessionInterface)) a1

setRole_impl :: WeblisketSessionInterface -> UserRole.UserRole -> IO (())
setRole_impl this aRole = javaAbstractMethod "setRole"


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: WeblisketSessionInterface))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: WeblisketSessionInterface)) a1

setStoreName_impl :: WeblisketSessionInterface -> String -> IO (())
setStoreName_impl this value = javaAbstractMethod "setStoreName"


setTimeout :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeout object_ a1 = jmethod object_ "setTimeout" (\() -> (setTimeout_impl (javaCast object_ :: WeblisketSessionInterface))) () a1

setTimeout_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeout_super object_ a1 = (setTimeout_impl (javaCast object_ :: WeblisketSessionInterface)) a1

setTimeout_impl :: WeblisketSessionInterface -> String -> IO (())
setTimeout_impl this value = javaAbstractMethod "setTimeout"


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: WeblisketSessionInterface))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: WeblisketSessionInterface)) a1

setUserName_impl :: WeblisketSessionInterface -> String -> IO (())
setUserName_impl this userName = javaAbstractMethod "setUserName"


