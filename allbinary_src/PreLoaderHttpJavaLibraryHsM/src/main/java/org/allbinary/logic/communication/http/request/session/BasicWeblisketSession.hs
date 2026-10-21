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
module BasicWeblisketSession where

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
import qualified WeblisketSessionData -- same package or java.lang
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified HttpSession -- javax.servlet.http.HttpSession
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified UserData -- org.allbinary.business.user.UserData
import qualified PaymentGatewayData -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData
import qualified BasicUserRole -- org.allbinary.business.user.role.BasicUserRole
import qualified BasicUserRoleData -- org.allbinary.business.user.role.BasicUserRoleData
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory

data BasicWeblisketSession = BasicWeblisketSession
    { header_ :: JavaHeader
    , session :: IORef (HttpSession.HttpSession)
    , pageContext :: IORef (PageContext.PageContext)
    }

instance JavaNull BasicWeblisketSession where
    javaNull = javaNullRecord "BasicWeblisketSession"

instance JavaEquals BasicWeblisketSession where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicWeblisketSession where
    (==) = jrecordEquals

instance JavaObjectClass BasicWeblisketSession where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicWeblisketSession
newRecord_ = do
    header_ <- newJavaHeader
    session <- newIORef javaNull
    pageContext <- newIORef javaNull
    let this = BasicWeblisketSession header_ session pageContext
    jregisterLevel header_ this
    jregisterMethod header_ "setRole" (\() -> setRole_impl this)
    jregisterMethod header_ "getRole" (\() -> getRole_impl this)
    jregisterMethod header_ "setPassword" (\() -> setPassword_impl this)
    jregisterMethod header_ "setUserName" (\() -> setUserName_impl this)
    jregisterMethod header_ "setPaymentMethod" (\() -> setPaymentMethod_impl this)
    jregisterMethod header_ "setAuthenticated" (\() -> setAuthenticated_impl this)
    jregisterMethod header_ "setAttempts" (\() -> setAttempts_impl this)
    jregisterMethod header_ "setTimeout" (\() -> setTimeout_impl this)
    jregisterMethod header_ "setStoreName" (\() -> setStoreName_impl this)
    jregisterMethod header_ "getWebAppPath" (\() -> getWebAppPath_impl this)
    jregisterMethod header_ "getUserName" (\() -> getUserName_impl this)
    jregisterMethod header_ "getPassword" (\() -> getPassword_impl this)
    jregisterMethod header_ "getPaymentMethod" (\() -> getPaymentMethod_impl this)
    jregisterMethod header_ "getAuthentication" (\() -> getAuthentication_impl this)
    jregisterMethod header_ "getAttempts" (\() -> getAttempts_impl this)
    jregisterMethod header_ "getTimeout" (\() -> getTimeout_impl this)
    jregisterMethod header_ "getStoreName" (\() -> getStoreName_impl this)
    jregisterMethod header_ "setAuthenticated" (\() -> setAuthenticated_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "getCreationTime" (\() -> getCreationTime_impl this)
    jregisterMethod header_ "getLastAccessedTime" (\() -> getLastAccessedTime_impl this)
    pure this

initFields_ :: BasicWeblisketSession -> IO ()
initFields_ this = do
    jset this.session (javaNull)
    jset this.pageContext (javaNull)
    pure ()

new_1 :: PageContext.PageContext -> IO BasicWeblisketSession
new_1 pageContext = do
    this <- newRecord_
    init_1 this pageContext
    pure this

init_1 :: BasicWeblisketSession -> PageContext.PageContext -> IO ()
init_1 this pageContext = do
        initFields_ this
        jset (this).pageContext (pageContext)
        let request = (javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest)
        assignedValue <- (HttpServletRequest.getSession request True)
        jset (this).session (assignedValue)
        pure ()


setRole :: (JavaObjectClass this_) => this_ -> BasicUserRole.BasicUserRole -> IO (())
setRole object_ a1 = jmethod object_ "setRole" (\() -> (setRole_impl (javaCast object_ :: BasicWeblisketSession))) () a1

setRole_super :: (JavaObjectClass this_) => this_ -> BasicUserRole.BasicUserRole -> IO (())
setRole_super object_ a1 = (setRole_impl (javaCast object_ :: BasicWeblisketSession)) a1

setRole_impl :: BasicWeblisketSession -> BasicUserRole.BasicUserRole -> IO (())
setRole_impl this aRole = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (BasicUserRoleData.nAME) aRole)
        pure ()


getRole :: (JavaObjectClass this_) => this_ -> IO (BasicUserRole.BasicUserRole)
getRole object_ = jmethod object_ "getRole" (\() -> (getRole_impl (javaCast object_ :: BasicWeblisketSession))) ()

getRole_super :: (JavaObjectClass this_) => this_ -> IO (BasicUserRole.BasicUserRole)
getRole_super object_ = (getRole_impl (javaCast object_ :: BasicWeblisketSession))

getRole_impl :: BasicWeblisketSession -> IO (BasicUserRole.BasicUserRole)
getRole_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (BasicUserRoleData.nAME))) :: BasicUserRole.BasicUserRole))


setPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword object_ a1 = jmethod object_ "setPassword" (\() -> (setPassword_impl (javaCast object_ :: BasicWeblisketSession))) () a1

setPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword_super object_ a1 = (setPassword_impl (javaCast object_ :: BasicWeblisketSession)) a1

setPassword_impl :: BasicWeblisketSession -> String -> IO (())
setPassword_impl this password = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (UserData.pASSWORD) password)
        pure ()


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: BasicWeblisketSession))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: BasicWeblisketSession)) a1

setUserName_impl :: BasicWeblisketSession -> String -> IO (())
setUserName_impl this userName = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (UserData.uSERNAME) userName)
        pure ()


setPaymentMethod :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPaymentMethod object_ a1 = jmethod object_ "setPaymentMethod" (\() -> (setPaymentMethod_impl (javaCast object_ :: BasicWeblisketSession))) () a1

setPaymentMethod_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPaymentMethod_super object_ a1 = (setPaymentMethod_impl (javaCast object_ :: BasicWeblisketSession)) a1

setPaymentMethod_impl :: BasicWeblisketSession -> String -> IO (())
setPaymentMethod_impl this value = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)) value)
        pure ()


setAuthenticated :: (JavaObjectClass this_) => this_ -> IO (())
setAuthenticated object_ = jmethod object_ "setAuthenticated" (\() -> (setAuthenticated_impl (javaCast object_ :: BasicWeblisketSession))) ()

setAuthenticated_super :: (JavaObjectClass this_) => this_ -> IO (())
setAuthenticated_super object_ = (setAuthenticated_impl (javaCast object_ :: BasicWeblisketSession))

setAuthenticated_impl :: BasicWeblisketSession -> IO (())
setAuthenticated_impl this = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (WeblisketSessionData.aUTHENTICATED) (jget ((jio (BooleanFactory.getInstance))).tRUE_STRING))
        pure ()


setAttempts :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAttempts object_ a1 = jmethod object_ "setAttempts" (\() -> (setAttempts_impl (javaCast object_ :: BasicWeblisketSession))) () a1

setAttempts_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAttempts_super object_ a1 = (setAttempts_impl (javaCast object_ :: BasicWeblisketSession)) a1

setAttempts_impl :: BasicWeblisketSession -> Int -> IO (())
setAttempts_impl this value = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (WeblisketSessionData.aTTEMPTS) value)
        pure ()


setTimeout :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeout object_ a1 = jmethod object_ "setTimeout" (\() -> (setTimeout_impl (javaCast object_ :: BasicWeblisketSession))) () a1

setTimeout_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeout_super object_ a1 = (setTimeout_impl (javaCast object_ :: BasicWeblisketSession)) a1

setTimeout_impl :: BasicWeblisketSession -> String -> IO (())
setTimeout_impl this value = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (WeblisketSessionData.tIMEOUT) value)
        pure ()


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: BasicWeblisketSession))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: BasicWeblisketSession)) a1

setStoreName_impl :: BasicWeblisketSession -> String -> IO (())
setStoreName_impl this value = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (jget ((jio (StoreFrontData.getInstance))).nAME) value)
        pure ()


getWebAppPath :: (JavaObjectClass this_) => this_ -> IO (String)
getWebAppPath object_ = jmethod object_ "getWebAppPath" (\() -> (getWebAppPath_impl (javaCast object_ :: BasicWeblisketSession))) ()

getWebAppPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getWebAppPath_super object_ = (getWebAppPath_impl (javaCast object_ :: BasicWeblisketSession))

getWebAppPath_impl :: BasicWeblisketSession -> IO (String)
getWebAppPath_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).wEBAPPPATH))) :: String))


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: BasicWeblisketSession))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: BasicWeblisketSession))

getUserName_impl :: BasicWeblisketSession -> IO (String)
getUserName_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (UserData.uSERNAME))) :: String))


getPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword object_ = jmethod object_ "getPassword" (\() -> (getPassword_impl (javaCast object_ :: BasicWeblisketSession))) ()

getPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword_super object_ = (getPassword_impl (javaCast object_ :: BasicWeblisketSession))

getPassword_impl :: BasicWeblisketSession -> IO (String)
getPassword_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (UserData.pASSWORD))) :: String))


getPaymentMethod :: (JavaObjectClass this_) => this_ -> IO (String)
getPaymentMethod object_ = jmethod object_ "getPaymentMethod" (\() -> (getPaymentMethod_impl (javaCast object_ :: BasicWeblisketSession))) ()

getPaymentMethod_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPaymentMethod_super object_ = (getPaymentMethod_impl (javaCast object_ :: BasicWeblisketSession))

getPaymentMethod_impl :: BasicWeblisketSession -> IO (String)
getPaymentMethod_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)))) :: String))


getAuthentication :: (JavaObjectClass this_) => this_ -> IO (String)
getAuthentication object_ = jmethod object_ "getAuthentication" (\() -> (getAuthentication_impl (javaCast object_ :: BasicWeblisketSession))) ()

getAuthentication_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAuthentication_super object_ = (getAuthentication_impl (javaCast object_ :: BasicWeblisketSession))

getAuthentication_impl :: BasicWeblisketSession -> IO (String)
getAuthentication_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (WeblisketSessionData.aUTHENTICATED))) :: String))


getAttempts :: (JavaObjectClass this_) => this_ -> IO (Int)
getAttempts object_ = jmethod object_ "getAttempts" (\() -> (getAttempts_impl (javaCast object_ :: BasicWeblisketSession))) ()

getAttempts_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAttempts_super object_ = (getAttempts_impl (javaCast object_ :: BasicWeblisketSession))

getAttempts_impl :: BasicWeblisketSession -> IO (Int)
getAttempts_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (WeblisketSessionData.aTTEMPTS))) :: Int))


getTimeout :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeout object_ = jmethod object_ "getTimeout" (\() -> (getTimeout_impl (javaCast object_ :: BasicWeblisketSession))) ()

getTimeout_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeout_super object_ = (getTimeout_impl (javaCast object_ :: BasicWeblisketSession))

getTimeout_impl :: BasicWeblisketSession -> IO (String)
getTimeout_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (WeblisketSessionData.tIMEOUT))) :: String))


getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: BasicWeblisketSession))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: BasicWeblisketSession))

getStoreName_impl :: BasicWeblisketSession -> IO (String)
getStoreName_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String))


-- Java overload of setAuthenticated with a different parameter count: give it a different name
setAuthenticated :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAuthenticated object_ a1 = jmethod object_ "setAuthenticated" (\() -> (setAuthenticated_impl (javaCast object_ :: BasicWeblisketSession))) () a1

setAuthenticated_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAuthenticated_super object_ a1 = (setAuthenticated_impl (javaCast object_ :: BasicWeblisketSession)) a1

setAuthenticated_impl :: BasicWeblisketSession -> Bool -> IO (())
setAuthenticated_impl this value = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (WeblisketSessionData.aUTHENTICATED) (jget ((jio (BooleanFactory.getInstance))).fALSE_STRING))
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: BasicWeblisketSession))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: BasicWeblisketSession))

clear_impl :: BasicWeblisketSession -> IO (())
clear_impl this = do
        Control.Monad.void (HttpSession.removeAttribute ((jget (this).session)) (WeblisketSessionData.aUTHENTICATED))
        Control.Monad.void (HttpSession.removeAttribute ((jget (this).session)) (WeblisketSessionData.tIMEOUT))
        Control.Monad.void (HttpSession.removeAttribute ((jget (this).session)) (BasicUserRoleData.nAME))
        Control.Monad.void (HttpSession.removeAttribute ((jget (this).session)) (UserData.uSERNAME))
        pure ()


getCreationTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getCreationTime object_ = jmethod object_ "getCreationTime" (\() -> (getCreationTime_impl (javaCast object_ :: BasicWeblisketSession))) ()

getCreationTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getCreationTime_super object_ = (getCreationTime_impl (javaCast object_ :: BasicWeblisketSession))

getCreationTime_impl :: BasicWeblisketSession -> IO (Int64)
getCreationTime_impl this = do
        (HttpSession.getCreationTime ((jget (this).session)))


getLastAccessedTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getLastAccessedTime object_ = jmethod object_ "getLastAccessedTime" (\() -> (getLastAccessedTime_impl (javaCast object_ :: BasicWeblisketSession))) ()

getLastAccessedTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getLastAccessedTime_super object_ = (getLastAccessedTime_impl (javaCast object_ :: BasicWeblisketSession))

getLastAccessedTime_impl :: BasicWeblisketSession -> IO (Int64)
getLastAccessedTime_impl this = do
        lastAccessedTime <- (HttpSession.getLastAccessedTime ((jget (this).session)))
        pure (lastAccessedTime)


