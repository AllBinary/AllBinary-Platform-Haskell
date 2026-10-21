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
module BasicPaymentType where

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
import qualified BasicPaymentTypeUtil -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified PaymentGatewayData -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData
import qualified PaymentGatewayInterfaceFactoryInterface -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface
import qualified PaymentGatewayDomNodeFactoryInterface -- org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified Replace -- org.allbinary.logic.string.regex.replace.Replace
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data BasicPaymentType = BasicPaymentType
    { header_ :: JavaHeader
    , name :: IORef (String)
    , value :: IORef (String)
    , paymentGatewayInterfaceFactoryInterface :: IORef (PaymentGatewayInterfaceFactoryInterface.PaymentGatewayInterfaceFactoryInterface)
    , paymentGatewayDomNodeFactoryInterface :: IORef (PaymentGatewayDomNodeFactoryInterface.PaymentGatewayDomNodeFactoryInterface)
    }

instance JavaNull BasicPaymentType where
    javaNull = javaNullRecord "BasicPaymentType"

instance JavaEquals BasicPaymentType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicPaymentType where
    (==) = jrecordEquals

instance JavaObjectClass BasicPaymentType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicPaymentType
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    value <- newIORef ""
    paymentGatewayInterfaceFactoryInterface <- newIORef javaNull
    paymentGatewayDomNodeFactoryInterface <- newIORef javaNull
    let this = BasicPaymentType header_ name value paymentGatewayInterfaceFactoryInterface paymentGatewayDomNodeFactoryInterface
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getValue" (\() -> getValue_impl this)
    jregisterMethod header_ "getPaymentGatewayInterfaceFactoryInterface" (\() -> getPaymentGatewayInterfaceFactoryInterface_impl this)
    jregisterMethod header_ "getPaymentGatewayDomNodeFactoryInterface" (\() -> getPaymentGatewayDomNodeFactoryInterface_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: BasicPaymentType -> IO ()
initFields_ this = do
    jset this.name ("")
    jset this.value ("")
    jset this.paymentGatewayInterfaceFactoryInterface (javaNull)
    jset this.paymentGatewayDomNodeFactoryInterface (javaNull)
    pure ()

new_1 :: String -> IO BasicPaymentType
new_1 paymentMethod = do
    this <- newRecord_
    init_1 this paymentMethod
    pure this

init_1 :: BasicPaymentType -> String -> IO ()
init_1 this paymentMethod = do
        initFields_ this
        Control.Monad.void (BasicPaymentType.init this paymentMethod)
        pure ()

new_3 :: String -> PaymentGatewayInterfaceFactoryInterface.PaymentGatewayInterfaceFactoryInterface -> PaymentGatewayDomNodeFactoryInterface.PaymentGatewayDomNodeFactoryInterface -> IO BasicPaymentType
new_3 paymentMethod paymentGatewayInterfaceFactoryInterface paymentGatewayDomNodeFactoryInterface = do
    this <- newRecord_
    init_3 this paymentMethod paymentGatewayInterfaceFactoryInterface paymentGatewayDomNodeFactoryInterface
    pure this

init_3 :: BasicPaymentType -> String -> PaymentGatewayInterfaceFactoryInterface.PaymentGatewayInterfaceFactoryInterface -> PaymentGatewayDomNodeFactoryInterface.PaymentGatewayDomNodeFactoryInterface -> IO ()
init_3 this paymentMethod paymentGatewayInterfaceFactoryInterface paymentGatewayDomNodeFactoryInterface = do
        initFields_ this
        Control.Monad.void (BasicPaymentType.init this paymentMethod)
        jset (this).paymentGatewayInterfaceFactoryInterface (paymentGatewayInterfaceFactoryInterface)
        jset (this).paymentGatewayDomNodeFactoryInterface (paymentGatewayDomNodeFactoryInterface)
        pure ()


init :: (JavaObjectClass this_) => this_ -> String -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BasicPaymentType))) () a1

init_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: BasicPaymentType)) a1

init_impl :: BasicPaymentType -> String -> IO (())
init_impl this paymentMethod = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        let uNDERSCORE = "_"
        Control.Monad.void (HashMap.put hashMap (jget ((jio (CommonSeps.getInstance))).sPACE) uNDERSCORE)
        Control.Monad.void (HashMap.put hashMap (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP) uNDERSCORE)
        Control.Monad.void (HashMap.put hashMap "-" uNDERSCORE)
        replace <- (Replace.new_1 hashMap)
        assignedValue <- (Replace.all replace paymentMethod)
        jset (this).name (assignedValue)
        jset (this).value (paymentMethod)
        Control.Monad.void (BasicPaymentTypeUtil.add ((jio (BasicPaymentTypeUtil.getInstance))) this)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: BasicPaymentType))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: BasicPaymentType))

getName_impl :: BasicPaymentType -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getValue :: (JavaObjectClass this_) => this_ -> IO (String)
getValue object_ = jmethod object_ "getValue" (\() -> (getValue_impl (javaCast object_ :: BasicPaymentType))) ()

getValue_super :: (JavaObjectClass this_) => this_ -> IO (String)
getValue_super object_ = (getValue_impl (javaCast object_ :: BasicPaymentType))

getValue_impl :: BasicPaymentType -> IO (String)
getValue_impl this = do
        pure ((jget (this).value))


-- throws Exception
getPaymentGatewayInterfaceFactoryInterface :: (JavaObjectClass this_) => this_ -> IO (PaymentGatewayInterfaceFactoryInterface.PaymentGatewayInterfaceFactoryInterface)
getPaymentGatewayInterfaceFactoryInterface object_ = jmethod object_ "getPaymentGatewayInterfaceFactoryInterface" (\() -> (getPaymentGatewayInterfaceFactoryInterface_impl (javaCast object_ :: BasicPaymentType))) ()

getPaymentGatewayInterfaceFactoryInterface_super :: (JavaObjectClass this_) => this_ -> IO (PaymentGatewayInterfaceFactoryInterface.PaymentGatewayInterfaceFactoryInterface)
getPaymentGatewayInterfaceFactoryInterface_super object_ = (getPaymentGatewayInterfaceFactoryInterface_impl (javaCast object_ :: BasicPaymentType))

getPaymentGatewayInterfaceFactoryInterface_impl :: BasicPaymentType -> IO (PaymentGatewayInterfaceFactoryInterface.PaymentGatewayInterfaceFactoryInterface)
getPaymentGatewayInterfaceFactoryInterface_impl this = do
        when ((jget (this).paymentGatewayInterfaceFactoryInterface) == javaNull) $ do
            javaThrow ((JavaException "Exception" "PaymentGatewayInterfaceFactoryInterface is Null"))
        pure ((jget (this).paymentGatewayInterfaceFactoryInterface))


-- throws Exception
getPaymentGatewayDomNodeFactoryInterface :: (JavaObjectClass this_) => this_ -> IO (PaymentGatewayDomNodeFactoryInterface.PaymentGatewayDomNodeFactoryInterface)
getPaymentGatewayDomNodeFactoryInterface object_ = jmethod object_ "getPaymentGatewayDomNodeFactoryInterface" (\() -> (getPaymentGatewayDomNodeFactoryInterface_impl (javaCast object_ :: BasicPaymentType))) ()

getPaymentGatewayDomNodeFactoryInterface_super :: (JavaObjectClass this_) => this_ -> IO (PaymentGatewayDomNodeFactoryInterface.PaymentGatewayDomNodeFactoryInterface)
getPaymentGatewayDomNodeFactoryInterface_super object_ = (getPaymentGatewayDomNodeFactoryInterface_impl (javaCast object_ :: BasicPaymentType))

getPaymentGatewayDomNodeFactoryInterface_impl :: BasicPaymentType -> IO (PaymentGatewayDomNodeFactoryInterface.PaymentGatewayDomNodeFactoryInterface)
getPaymentGatewayDomNodeFactoryInterface_impl this = do
        when ((jget (this).paymentGatewayDomNodeFactoryInterface) == javaNull) $ do
            javaThrow ((JavaException "Exception" "PaymentGatewayDomNodeFactoryInterface is Null"))
        pure ((jget (this).paymentGatewayDomNodeFactoryInterface))


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: BasicPaymentType))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: BasicPaymentType))

getKey_impl :: BasicPaymentType -> IO (Any.Any)
getKey_impl this = do
        (fmap jtoObject (BasicPaymentType.getName this))


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: BasicPaymentType))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: BasicPaymentType))

toVector_impl :: BasicPaymentType -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add vector (jget (this).name))
        Control.Monad.void (BasicArrayList.add vector (jget (this).value))
        pure (vector)


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: BasicPaymentType))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: BasicPaymentType))

toHashMap_impl :: BasicPaymentType -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)) (jget (this).name))
        Control.Monad.void (HashMap.put hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.vALUE)) (jget (this).value))
        pure (hashMap)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BasicPaymentType))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BasicPaymentType))

toString_impl :: BasicPaymentType -> IO (String)
toString_impl this = do
        pure ((jget (this).name))


