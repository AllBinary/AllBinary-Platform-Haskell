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
module PaymentGatewayEncryptedMapping where

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
import qualified PaymentGatewayInterface -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface

-- implements TableMappingInterface
data PaymentGatewayEncryptedMapping = PaymentGatewayEncryptedMapping
    { header_ :: JavaHeader
    , paymentGatewayInterface :: IORef (PaymentGatewayInterface.PaymentGatewayInterface)
    }

instance JavaNull PaymentGatewayEncryptedMapping where
    javaNull = javaNullRecord "PaymentGatewayEncryptedMapping"

instance JavaEquals PaymentGatewayEncryptedMapping where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentGatewayEncryptedMapping where
    (==) = jrecordEquals

instance JavaObjectClass PaymentGatewayEncryptedMapping where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PaymentGatewayEncryptedMapping
newRecord_ = do
    header_ <- newJavaHeader
    paymentGatewayInterface <- newIORef javaNull
    let this = PaymentGatewayEncryptedMapping header_ paymentGatewayInterface
    jregisterLevel header_ this
    TableMappingInterface.registerInterface_ header_
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    pure this

initFields_ :: PaymentGatewayEncryptedMapping -> IO ()
initFields_ this = do
    jset this.paymentGatewayInterface (javaNull)
    pure ()

new_1 :: PaymentGatewayInterface.PaymentGatewayInterface -> IO PaymentGatewayEncryptedMapping
new_1 paymentGatewayInterface = do
    this <- newRecord_
    init_1 this paymentGatewayInterface
    pure this

init_1 :: PaymentGatewayEncryptedMapping -> PaymentGatewayInterface.PaymentGatewayInterface -> IO ()
init_1 this paymentGatewayInterface = do
        initFields_ this
        jset (this).paymentGatewayInterface (paymentGatewayInterface)
        pure ()


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: PaymentGatewayEncryptedMapping))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: PaymentGatewayEncryptedMapping))

toHashMap_impl :: PaymentGatewayEncryptedMapping -> IO (HashMap.HashMap)
toHashMap_impl this = do
        (PaymentGatewayInterface.toHashMap ((jget (this).paymentGatewayInterface)) True)


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: PaymentGatewayEncryptedMapping))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: PaymentGatewayEncryptedMapping))

toVector_impl :: PaymentGatewayEncryptedMapping -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        (PaymentGatewayInterface.toVector ((jget (this).paymentGatewayInterface)) True)


-- throws Exception
getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: PaymentGatewayEncryptedMapping))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: PaymentGatewayEncryptedMapping))

getKey_impl :: PaymentGatewayEncryptedMapping -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (javaCast (jio (PaymentGatewayInterface.getKey ((jget (this).paymentGatewayInterface)))) :: Any.Any)))


