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
-- package org.allbinary.business.user.commerce.money.payment.gateway
module PaymentGatewayPrimaryKey where

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
import qualified PaymentGateway -- same package or java.lang
import qualified StoreFront -- org.allbinary.business.context.modules.storefront.StoreFront
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified Serializable

-- implements Serializable
data PaymentGatewayPrimaryKey = PaymentGatewayPrimaryKey
    { header_ :: JavaHeader
    , storeName :: IORef (String)
    , name :: IORef (String)
    }

instance JavaNull PaymentGatewayPrimaryKey where
    javaNull = javaNullRecord "PaymentGatewayPrimaryKey"

instance JavaEquals PaymentGatewayPrimaryKey where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentGatewayPrimaryKey where
    (==) = jrecordEquals

instance JavaObjectClass PaymentGatewayPrimaryKey where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PaymentGatewayPrimaryKey
newRecord_ = do
    header_ <- newJavaHeader
    storeName <- newIORef ""
    name <- newIORef ""
    let this = PaymentGatewayPrimaryKey header_ storeName name
    jregisterLevel header_ this
    Serializable.registerInterface_ header_
    jregisterMethod header_ "getStoreName" (\() -> getStoreName_impl this)
    jregisterMethod header_ "setStoreName" (\() -> setStoreName_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: PaymentGatewayPrimaryKey -> IO ()
initFields_ this = do
    jset this.storeName ("")
    jset this.name ("")
    pure ()

new_2 :: String -> String -> IO PaymentGatewayPrimaryKey
new_2 storeName gatewayName = do
    this <- newRecord_
    init_2 this storeName gatewayName
    pure this

init_2 :: PaymentGatewayPrimaryKey -> String -> String -> IO ()
init_2 this storeName gatewayName = do
        initFields_ this
        Control.Monad.void (PaymentGatewayPrimaryKey.setStoreName this storeName)
        Control.Monad.void (PaymentGatewayPrimaryKey.setName this gatewayName)
        pure ()


getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: PaymentGatewayPrimaryKey))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: PaymentGatewayPrimaryKey))

getStoreName_impl :: PaymentGatewayPrimaryKey -> IO (String)
getStoreName_impl this = do
        pure ((jget (this).storeName))


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: PaymentGatewayPrimaryKey))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: PaymentGatewayPrimaryKey)) a1

setStoreName_impl :: PaymentGatewayPrimaryKey -> String -> IO (())
setStoreName_impl this storeName = do
        jset (this).storeName (storeName)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: PaymentGatewayPrimaryKey))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: PaymentGatewayPrimaryKey))

getName_impl :: PaymentGatewayPrimaryKey -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: PaymentGatewayPrimaryKey))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: PaymentGatewayPrimaryKey)) a1

setName_impl :: PaymentGatewayPrimaryKey -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: PaymentGatewayPrimaryKey))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: PaymentGatewayPrimaryKey))

toString_impl :: PaymentGatewayPrimaryKey -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (getName "PaymentGatewayPrimaryKey")))
        Control.Monad.void (StringMaker.append stringBuffer (jio (getName "StoreFront")))
        Control.Monad.void (StringMaker.append stringBuffer " =")
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayPrimaryKey.getStoreName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (getName "PaymentGateway")))
        Control.Monad.void (StringMaker.append stringBuffer "=")
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayPrimaryKey.getName this)))
        (StringMaker.toString stringBuffer)


