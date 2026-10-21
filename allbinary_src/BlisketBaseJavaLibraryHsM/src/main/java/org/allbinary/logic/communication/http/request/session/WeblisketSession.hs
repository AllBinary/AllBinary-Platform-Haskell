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
module WeblisketSession where

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
import qualified HashMap -- java.util.HashMap
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified HttpSession -- javax.servlet.http.HttpSession
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified UserData -- org.allbinary.business.user.UserData
import qualified Basket -- org.allbinary.business.user.commerce.inventory.basket.Basket
import qualified Order -- org.allbinary.business.user.commerce.inventory.order.Order
import qualified OrderInterface -- org.allbinary.business.user.commerce.inventory.order.OrderInterface
import qualified PaymentGatewayData -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData
import qualified UserRole -- org.allbinary.business.user.role.UserRole
import qualified UserRoleB -- org.allbinary.business.user.role.UserRoleB
import qualified UserRoleData -- org.allbinary.business.user.role.UserRoleData
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified WeblisketSessionInterface

-- implements WeblisketSessionInterface
data WeblisketSession = WeblisketSession
    { header_ :: JavaHeader
    , session :: IORef (HttpSession.HttpSession)
    }

instance JavaNull WeblisketSession where
    javaNull = javaNullRecord "WeblisketSession"

instance JavaEquals WeblisketSession where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WeblisketSession where
    (==) = jrecordEquals

instance JavaObjectClass WeblisketSession where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO WeblisketSession
newRecord_ = do
    header_ <- newJavaHeader
    session <- newIORef javaNull
    let this = WeblisketSession header_ session
    jregisterLevel header_ this
    WeblisketSessionInterface.registerInterface_ header_
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    jregisterMethod header_ "setPassword" (\() -> setPassword_impl this)
    jregisterMethod header_ "setUserName" (\() -> setUserName_impl this)
    jregisterMethod header_ "setPaymentMethod" (\() -> setPaymentMethod_impl this)
    jregisterMethod header_ "setAuthenticated" (\() -> setAuthenticated_impl this)
    jregisterMethod header_ "setRole" (\() -> setRole_impl this)
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
    jregisterMethod header_ "getRole" (\() -> getRole_impl this)
    jregisterMethod header_ "getOrder" (\() -> getOrder_impl this)
    jregisterMethod header_ "setAuthenticated" (\() -> setAuthenticated_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "getCreationTime" (\() -> getCreationTime_impl this)
    jregisterMethod header_ "getLastAccessedTime" (\() -> getLastAccessedTime_impl this)
    jregisterMethod header_ "removeBasket" (\() -> removeBasket_impl this)
    pure this

initFields_ :: WeblisketSession -> IO ()
initFields_ this = do
    jset this.session (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO WeblisketSession
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: WeblisketSession -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        init_2 this (hashMap) (javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest)
        pure () -- this(...) is in the record above
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_2 :: HashMap.HashMap -> HttpServletRequest.HttpServletRequest -> IO WeblisketSession
new_2 hashMap httpServletRequest = do
    this <- newRecord_
    init_2 this hashMap httpServletRequest
    pure this

init_2 :: WeblisketSession -> HashMap.HashMap -> HttpServletRequest.HttpServletRequest -> IO ()
init_2 this hashMap httpServletRequest = do
        initFields_ this
        let propertiesHashMap = hashMap
        let request = httpServletRequest
        assignedValue <- (HttpServletRequest.getSession request True)
        jset (this).session (assignedValue)
        when ((jio (WeblisketSession.getStoreName this)) == javaNull) $ do
            Control.Monad.void (WeblisketSession.setStoreName this (javaCast (jio (HashMap.get propertiesHashMap (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String))
        pure ()


getId :: (JavaObjectClass this_) => this_ -> IO (String)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: WeblisketSession))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getId_super object_ = (getId_impl (javaCast object_ :: WeblisketSession))

getId_impl :: WeblisketSession -> IO (String)
getId_impl this = do
        (HttpSession.getId ((jget (this).session)))


setPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword object_ a1 = jmethod object_ "setPassword" (\() -> (setPassword_impl (javaCast object_ :: WeblisketSession))) () a1

setPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPassword_super object_ a1 = (setPassword_impl (javaCast object_ :: WeblisketSession)) a1

setPassword_impl :: WeblisketSession -> String -> IO (())
setPassword_impl this password = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (UserData.pASSWORD) password)
        pure ()


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: WeblisketSession))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: WeblisketSession)) a1

setUserName_impl :: WeblisketSession -> String -> IO (())
setUserName_impl this userName = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (UserData.uSERNAME) userName)
        pure ()


setPaymentMethod :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPaymentMethod object_ a1 = jmethod object_ "setPaymentMethod" (\() -> (setPaymentMethod_impl (javaCast object_ :: WeblisketSession))) () a1

setPaymentMethod_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPaymentMethod_super object_ a1 = (setPaymentMethod_impl (javaCast object_ :: WeblisketSession)) a1

setPaymentMethod_impl :: WeblisketSession -> String -> IO (())
setPaymentMethod_impl this value = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)) value)
        pure ()


setAuthenticated :: (JavaObjectClass this_) => this_ -> IO (())
setAuthenticated object_ = jmethod object_ "setAuthenticated" (\() -> (setAuthenticated_impl (javaCast object_ :: WeblisketSession))) ()

setAuthenticated_super :: (JavaObjectClass this_) => this_ -> IO (())
setAuthenticated_super object_ = (setAuthenticated_impl (javaCast object_ :: WeblisketSession))

setAuthenticated_impl :: WeblisketSession -> IO (())
setAuthenticated_impl this = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (WeblisketSessionData.aUTHENTICATED) (jget ((jio (BooleanFactory.getInstance))).tRUE_STRING))
        pure ()


setRole :: (JavaObjectClass this_) => this_ -> UserRole.UserRole -> IO (())
setRole object_ a1 = jmethod object_ "setRole" (\() -> (setRole_impl (javaCast object_ :: WeblisketSession))) () a1

setRole_super :: (JavaObjectClass this_) => this_ -> UserRole.UserRole -> IO (())
setRole_super object_ a1 = (setRole_impl (javaCast object_ :: WeblisketSession)) a1

setRole_impl :: WeblisketSession -> UserRole.UserRole -> IO (())
setRole_impl this aRole = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (UserRoleData.nAME) aRole)
        pure ()


setAttempts :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAttempts object_ a1 = jmethod object_ "setAttempts" (\() -> (setAttempts_impl (javaCast object_ :: WeblisketSession))) () a1

setAttempts_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAttempts_super object_ a1 = (setAttempts_impl (javaCast object_ :: WeblisketSession)) a1

setAttempts_impl :: WeblisketSession -> Int -> IO (())
setAttempts_impl this value = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (WeblisketSessionData.aTTEMPTS) value)
        pure ()


setTimeout :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeout object_ a1 = jmethod object_ "setTimeout" (\() -> (setTimeout_impl (javaCast object_ :: WeblisketSession))) () a1

setTimeout_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeout_super object_ a1 = (setTimeout_impl (javaCast object_ :: WeblisketSession)) a1

setTimeout_impl :: WeblisketSession -> String -> IO (())
setTimeout_impl this value = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (WeblisketSessionData.tIMEOUT) value)
        pure ()


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: WeblisketSession))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: WeblisketSession)) a1

setStoreName_impl :: WeblisketSession -> String -> IO (())
setStoreName_impl this value = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (jget ((jio (StoreFrontData.getInstance))).nAME) value)
        pure ()


getWebAppPath :: (JavaObjectClass this_) => this_ -> IO (String)
getWebAppPath object_ = jmethod object_ "getWebAppPath" (\() -> (getWebAppPath_impl (javaCast object_ :: WeblisketSession))) ()

getWebAppPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getWebAppPath_super object_ = (getWebAppPath_impl (javaCast object_ :: WeblisketSession))

getWebAppPath_impl :: WeblisketSession -> IO (String)
getWebAppPath_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).wEBAPPPATH))) :: String))


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: WeblisketSession))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: WeblisketSession))

getUserName_impl :: WeblisketSession -> IO (String)
getUserName_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (UserData.uSERNAME))) :: String))


getPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword object_ = jmethod object_ "getPassword" (\() -> (getPassword_impl (javaCast object_ :: WeblisketSession))) ()

getPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword_super object_ = (getPassword_impl (javaCast object_ :: WeblisketSession))

getPassword_impl :: WeblisketSession -> IO (String)
getPassword_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (UserData.pASSWORD))) :: String))


getPaymentMethod :: (JavaObjectClass this_) => this_ -> IO (String)
getPaymentMethod object_ = jmethod object_ "getPaymentMethod" (\() -> (getPaymentMethod_impl (javaCast object_ :: WeblisketSession))) ()

getPaymentMethod_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPaymentMethod_super object_ = (getPaymentMethod_impl (javaCast object_ :: WeblisketSession))

getPaymentMethod_impl :: WeblisketSession -> IO (String)
getPaymentMethod_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)))) :: String))


getAuthentication :: (JavaObjectClass this_) => this_ -> IO (String)
getAuthentication object_ = jmethod object_ "getAuthentication" (\() -> (getAuthentication_impl (javaCast object_ :: WeblisketSession))) ()

getAuthentication_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAuthentication_super object_ = (getAuthentication_impl (javaCast object_ :: WeblisketSession))

getAuthentication_impl :: WeblisketSession -> IO (String)
getAuthentication_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (WeblisketSessionData.aUTHENTICATED))) :: String))


getAttempts :: (JavaObjectClass this_) => this_ -> IO (Int)
getAttempts object_ = jmethod object_ "getAttempts" (\() -> (getAttempts_impl (javaCast object_ :: WeblisketSession))) ()

getAttempts_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAttempts_super object_ = (getAttempts_impl (javaCast object_ :: WeblisketSession))

getAttempts_impl :: WeblisketSession -> IO (Int)
getAttempts_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (WeblisketSessionData.aTTEMPTS))) :: Int))


getTimeout :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeout object_ = jmethod object_ "getTimeout" (\() -> (getTimeout_impl (javaCast object_ :: WeblisketSession))) ()

getTimeout_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeout_super object_ = (getTimeout_impl (javaCast object_ :: WeblisketSession))

getTimeout_impl :: WeblisketSession -> IO (String)
getTimeout_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (WeblisketSessionData.tIMEOUT))) :: String))


getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: WeblisketSession))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: WeblisketSession))

getStoreName_impl :: WeblisketSession -> IO (String)
getStoreName_impl this = do
        pure ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String))


-- throws Exception
getRole :: (JavaObjectClass this_) => this_ -> IO (UserRole.UserRole)
getRole object_ = jmethod object_ "getRole" (\() -> (getRole_impl (javaCast object_ :: WeblisketSession))) ()

getRole_super :: (JavaObjectClass this_) => this_ -> IO (UserRole.UserRole)
getRole_super object_ = (getRole_impl (javaCast object_ :: WeblisketSession))

getRole_impl :: WeblisketSession -> IO (UserRole.UserRole)
getRole_impl this = do
    javaCatchReturn $ do
        let userRole = (javaCast (jio (HttpSession.getAttribute ((jget (this).session)) (UserRoleData.nAME))) :: UserRole.UserRole)
        if (userRole /= javaNull) then do
            javaReturn =<< (UserRoleB.getRole (jio (BasicUserRole.getRole ((jio (UserRole.getBasicUserRole userRole))))))
        else do
            javaReturn (javaNull)


-- throws Exception
getOrder :: (JavaObjectClass this_) => this_ -> IO (OrderInterface.OrderInterface)
getOrder object_ = jmethod object_ "getOrder" (\() -> (getOrder_impl (javaCast object_ :: WeblisketSession))) ()

getOrder_super :: (JavaObjectClass this_) => this_ -> IO (OrderInterface.OrderInterface)
getOrder_super object_ = (getOrder_impl (javaCast object_ :: WeblisketSession))

getOrder_impl :: WeblisketSession -> IO (OrderInterface.OrderInterface)
getOrder_impl this = do
    javaCatchReturn $ do
        storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jio (WeblisketSession.getStoreName this))))
        basketName <- (StoreFrontInterface.getBasketName storeFrontInterface)
        if (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) basketName))) then do
            orderInterface <- newIORef ((javaCast (jio (HttpSession.getAttribute ((jget (this).session)) basketName)) :: OrderInterface.OrderInterface))
            when ((jget orderInterface) == javaNull) $ do
                jset orderInterface ((javaCast (jio (Order.new_1 (jio (Basket.new_)))) :: OrderInterface.OrderInterface))
            Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) basketName (jget orderInterface))
            javaReturn ((jget orderInterface))
        else do
            javaThrow ((JavaException "Exception" "Basket Name Not Found"))


-- Java overload of setAuthenticated with a different parameter count: give it a different name
setAuthenticated :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAuthenticated object_ a1 = jmethod object_ "setAuthenticated" (\() -> (setAuthenticated_impl (javaCast object_ :: WeblisketSession))) () a1

setAuthenticated_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setAuthenticated_super object_ a1 = (setAuthenticated_impl (javaCast object_ :: WeblisketSession)) a1

setAuthenticated_impl :: WeblisketSession -> Bool -> IO (())
setAuthenticated_impl this value = do
        Control.Monad.void (HttpSession.setAttribute ((jget (this).session)) (WeblisketSessionData.aUTHENTICATED) (jget ((jio (BooleanFactory.getInstance))).fALSE_STRING))
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: WeblisketSession))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: WeblisketSession))

clear_impl :: WeblisketSession -> IO (())
clear_impl this = do
        Control.Monad.void (HttpSession.removeAttribute ((jget (this).session)) (WeblisketSessionData.aUTHENTICATED))
        Control.Monad.void (HttpSession.removeAttribute ((jget (this).session)) (WeblisketSessionData.tIMEOUT))
        Control.Monad.void (HttpSession.removeAttribute ((jget (this).session)) (UserRoleData.nAME))
        Control.Monad.void (HttpSession.removeAttribute ((jget (this).session)) (UserData.uSERNAME))
        pure ()


getCreationTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getCreationTime object_ = jmethod object_ "getCreationTime" (\() -> (getCreationTime_impl (javaCast object_ :: WeblisketSession))) ()

getCreationTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getCreationTime_super object_ = (getCreationTime_impl (javaCast object_ :: WeblisketSession))

getCreationTime_impl :: WeblisketSession -> IO (Int64)
getCreationTime_impl this = do
        (HttpSession.getCreationTime ((jget (this).session)))


getLastAccessedTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getLastAccessedTime object_ = jmethod object_ "getLastAccessedTime" (\() -> (getLastAccessedTime_impl (javaCast object_ :: WeblisketSession))) ()

getLastAccessedTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getLastAccessedTime_super object_ = (getLastAccessedTime_impl (javaCast object_ :: WeblisketSession))

getLastAccessedTime_impl :: WeblisketSession -> IO (Int64)
getLastAccessedTime_impl this = do
        (HttpSession.getLastAccessedTime ((jget (this).session)))


removeBasket :: (JavaObjectClass this_) => this_ -> IO (())
removeBasket object_ = jmethod object_ "removeBasket" (\() -> (removeBasket_impl (javaCast object_ :: WeblisketSession))) ()

removeBasket_super :: (JavaObjectClass this_) => this_ -> IO (())
removeBasket_super object_ = (removeBasket_impl (javaCast object_ :: WeblisketSession))

removeBasket_impl :: WeblisketSession -> IO (())
removeBasket_impl this = do
        storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jio (WeblisketSession.getStoreName this))))
        basketName <- (StoreFrontInterface.getBasketName storeFrontInterface)
        when (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) basketName))) $ do
            Control.Monad.void (HttpSession.removeAttribute ((jget (this).session)) basketName)
        pure ()


