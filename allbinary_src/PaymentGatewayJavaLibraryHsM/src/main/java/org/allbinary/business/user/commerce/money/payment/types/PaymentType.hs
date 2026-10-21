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
-- package org.allbinary.business.user.commerce.money.payment.types
module PaymentType where

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
import qualified BasicPaymentType -- same package or java.lang
import qualified PaymentTypeUtil -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified PaymentGatewayData -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData
import qualified PaymentProcessorInterfaceFactoryInterface -- org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface
import qualified PaymentTransactionInterfaceFactoryInterface -- org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil

data PaymentType = PaymentType
    { header_ :: JavaHeader
    , basicPaymentType :: IORef (BasicPaymentType.BasicPaymentType)
    , paymentTransactionInterfaceFactoryInterface :: IORef (PaymentTransactionInterfaceFactoryInterface.PaymentTransactionInterfaceFactoryInterface)
    , paymentProcessorInterfaceFactoryInterface :: IORef (PaymentProcessorInterfaceFactoryInterface.PaymentProcessorInterfaceFactoryInterface)
    }

instance JavaNull PaymentType where
    javaNull = javaNullRecord "PaymentType"

instance JavaEquals PaymentType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentType where
    (==) = jrecordEquals

instance JavaObjectClass PaymentType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PaymentType
newRecord_ = do
    header_ <- newJavaHeader
    basicPaymentType <- newIORef javaNull
    paymentTransactionInterfaceFactoryInterface <- newIORef javaNull
    paymentProcessorInterfaceFactoryInterface <- newIORef javaNull
    let this = PaymentType header_ basicPaymentType paymentTransactionInterfaceFactoryInterface paymentProcessorInterfaceFactoryInterface
    jregisterLevel header_ this
    jregisterMethod header_ "getPaymentTransactionInterfaceFactoryInterface" (\() -> getPaymentTransactionInterfaceFactoryInterface_impl this)
    jregisterMethod header_ "getPaymentProcessorInterfaceFactoryInterface" (\() -> getPaymentProcessorInterfaceFactoryInterface_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "getBasicPaymentType" (\() -> getBasicPaymentType_impl this)
    pure this

initFields_ :: PaymentType -> IO ()
initFields_ this = do
    jset this.basicPaymentType (javaNull)
    jset this.paymentTransactionInterfaceFactoryInterface (javaNull)
    jset this.paymentProcessorInterfaceFactoryInterface (javaNull)
    pure ()

new_1 :: BasicPaymentType.BasicPaymentType -> IO PaymentType
new_1 basicPaymentType = do
    this <- newRecord_
    init_1 this basicPaymentType
    pure this

init_1 :: PaymentType -> BasicPaymentType.BasicPaymentType -> IO ()
init_1 this basicPaymentType = do
        initFields_ this
        jset (this).basicPaymentType (basicPaymentType)
        jset (this).paymentTransactionInterfaceFactoryInterface (javaNull)
        jset (this).paymentProcessorInterfaceFactoryInterface (javaNull)
        Control.Monad.void (PaymentTypeUtil.add ((jio (PaymentTypeUtil.getInstance))) this)
        pure ()

new_3 :: BasicPaymentType.BasicPaymentType -> PaymentTransactionInterfaceFactoryInterface.PaymentTransactionInterfaceFactoryInterface -> PaymentProcessorInterfaceFactoryInterface.PaymentProcessorInterfaceFactoryInterface -> IO PaymentType
new_3 basicPaymentType paymentTransactionInterfaceFactoryInterface paymentProcessorInterfaceFactoryInterface = do
    this <- newRecord_
    init_3 this basicPaymentType paymentTransactionInterfaceFactoryInterface paymentProcessorInterfaceFactoryInterface
    pure this

init_3 :: PaymentType -> BasicPaymentType.BasicPaymentType -> PaymentTransactionInterfaceFactoryInterface.PaymentTransactionInterfaceFactoryInterface -> PaymentProcessorInterfaceFactoryInterface.PaymentProcessorInterfaceFactoryInterface -> IO ()
init_3 this basicPaymentType paymentTransactionInterfaceFactoryInterface paymentProcessorInterfaceFactoryInterface = do
        initFields_ this
        jset (this).basicPaymentType (basicPaymentType)
        jset (this).paymentTransactionInterfaceFactoryInterface (paymentTransactionInterfaceFactoryInterface)
        jset (this).paymentProcessorInterfaceFactoryInterface (paymentProcessorInterfaceFactoryInterface)
        Control.Monad.void (PaymentTypeUtil.add ((jio (PaymentTypeUtil.getInstance))) this)
        pure ()


-- throws Exception
getPaymentTransactionInterfaceFactoryInterface :: (JavaObjectClass this_) => this_ -> IO (PaymentTransactionInterfaceFactoryInterface.PaymentTransactionInterfaceFactoryInterface)
getPaymentTransactionInterfaceFactoryInterface object_ = jmethod object_ "getPaymentTransactionInterfaceFactoryInterface" (\() -> (getPaymentTransactionInterfaceFactoryInterface_impl (javaCast object_ :: PaymentType))) ()

getPaymentTransactionInterfaceFactoryInterface_super :: (JavaObjectClass this_) => this_ -> IO (PaymentTransactionInterfaceFactoryInterface.PaymentTransactionInterfaceFactoryInterface)
getPaymentTransactionInterfaceFactoryInterface_super object_ = (getPaymentTransactionInterfaceFactoryInterface_impl (javaCast object_ :: PaymentType))

getPaymentTransactionInterfaceFactoryInterface_impl :: PaymentType -> IO (PaymentTransactionInterfaceFactoryInterface.PaymentTransactionInterfaceFactoryInterface)
getPaymentTransactionInterfaceFactoryInterface_impl this = do
        when ((jget (this).paymentTransactionInterfaceFactoryInterface) == javaNull) $ do
            javaThrow ((JavaException "Exception" "PaymentTransactionInterfaceFactoryInterface is Null"))
        pure ((jget (this).paymentTransactionInterfaceFactoryInterface))


-- throws Exception
getPaymentProcessorInterfaceFactoryInterface :: (JavaObjectClass this_) => this_ -> IO (PaymentProcessorInterfaceFactoryInterface.PaymentProcessorInterfaceFactoryInterface)
getPaymentProcessorInterfaceFactoryInterface object_ = jmethod object_ "getPaymentProcessorInterfaceFactoryInterface" (\() -> (getPaymentProcessorInterfaceFactoryInterface_impl (javaCast object_ :: PaymentType))) ()

getPaymentProcessorInterfaceFactoryInterface_super :: (JavaObjectClass this_) => this_ -> IO (PaymentProcessorInterfaceFactoryInterface.PaymentProcessorInterfaceFactoryInterface)
getPaymentProcessorInterfaceFactoryInterface_super object_ = (getPaymentProcessorInterfaceFactoryInterface_impl (javaCast object_ :: PaymentType))

getPaymentProcessorInterfaceFactoryInterface_impl :: PaymentType -> IO (PaymentProcessorInterfaceFactoryInterface.PaymentProcessorInterfaceFactoryInterface)
getPaymentProcessorInterfaceFactoryInterface_impl this = do
        when ((jget (this).paymentProcessorInterfaceFactoryInterface) == javaNull) $ do
            javaThrow ((JavaException "Exception" "PaymentProcessorInterfaceFactoryInterface is Null"))
        pure ((jget (this).paymentProcessorInterfaceFactoryInterface))


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: PaymentType))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: PaymentType))

toVector_impl :: PaymentType -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.addAllList vector (jio (BasicPaymentType.toVector ((jio (PaymentType.getBasicPaymentType this))))))
        when ((jget (this).paymentTransactionInterfaceFactoryInterface) /= javaNull) $ do
            Control.Monad.void (BasicArrayList.add vector (jio (Class.getName ((jio (jobjectGetClass (jget (this).paymentTransactionInterfaceFactoryInterface)))))))
        when ((jget (this).paymentProcessorInterfaceFactoryInterface) /= javaNull) $ do
            Control.Monad.void (BasicArrayList.add vector (jio (Class.getName ((jio (jobjectGetClass (jget (this).paymentProcessorInterfaceFactoryInterface)))))))
        pure (vector)


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: PaymentType))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: PaymentType))

toHashMap_impl :: PaymentType -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.putAll hashMap (jio (BasicPaymentType.toHashMap ((jio (PaymentType.getBasicPaymentType this))))))
        when ((jget (this).paymentTransactionInterfaceFactoryInterface) /= javaNull) $ do
            Control.Monad.void (HashMap.put hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.pAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE)) (jio (Class.getName ((jio (jobjectGetClass (jget (this).paymentTransactionInterfaceFactoryInterface)))))))
        when ((jget (this).paymentProcessorInterfaceFactoryInterface) /= javaNull) $ do
            Control.Monad.void (HashMap.put hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.pAYMENTPROCESSORINTERFACEFACTORYINTERFACE)) (jio (Class.getName ((jio (jobjectGetClass (jget (this).paymentProcessorInterfaceFactoryInterface)))))))
        pure (hashMap)


getBasicPaymentType :: (JavaObjectClass this_) => this_ -> IO (BasicPaymentType.BasicPaymentType)
getBasicPaymentType object_ = jmethod object_ "getBasicPaymentType" (\() -> (getBasicPaymentType_impl (javaCast object_ :: PaymentType))) ()

getBasicPaymentType_super :: (JavaObjectClass this_) => this_ -> IO (BasicPaymentType.BasicPaymentType)
getBasicPaymentType_super object_ = (getBasicPaymentType_impl (javaCast object_ :: PaymentType))

getBasicPaymentType_impl :: PaymentType -> IO (BasicPaymentType.BasicPaymentType)
getBasicPaymentType_impl this = do
        pure ((jget (this).basicPaymentType))


