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
module PaymentGatewayInterfaceFactory where

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
import qualified PaymentGatewayData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified BasicPaymentType -- org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType
import qualified BasicPaymentTypeUtil -- org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified RequestParams -- org.allbinary.logic.communication.http.request.RequestParams
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified PaymentGatewayInterfaceFactoryInterface

-- implements PaymentGatewayInterfaceFactoryInterface
data PaymentGatewayInterfaceFactory = PaymentGatewayInterfaceFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull PaymentGatewayInterfaceFactory where
    javaNull = javaNullRecord "PaymentGatewayInterfaceFactory"

instance JavaEquals PaymentGatewayInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentGatewayInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass PaymentGatewayInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PaymentGatewayInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = PaymentGatewayInterfaceFactory header_ logUtil
    jregisterLevel header_ this
    PaymentGatewayInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance_overload1" (\() -> getInstance_overload1_impl this)
    jregisterMethod header_ "getInstance_overload2" (\() -> getInstance_overload2_impl this)
    jregisterMethod header_ "getInstance_overload3" (\() -> getInstance_overload3_impl this)
    pure this

initFields_ :: PaymentGatewayInterfaceFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO PaymentGatewayInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PaymentGatewayInterfaceFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getInstance this a1
    | jisInstanceOf a1 (javaNull :: HttpServletRequest.HttpServletRequest) = getInstance_overload1 this (javaCast a1 :: HttpServletRequest.HttpServletRequest)
    | jisInstanceOf a1 (javaNull :: BasicPaymentType.BasicPaymentType) = getInstance_overload2 this (javaCast a1 :: BasicPaymentType.BasicPaymentType)
    | jisInstanceOf a1 (javaNull :: HashMap.HashMap) = getInstance_overload3 this (javaCast a1 :: HashMap.HashMap)
    | otherwise = getInstance_overload3 this (javaCast a1 :: HashMap.HashMap)

-- throws Exception
getInstance_overload1 :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getInstance_overload1 object_ a1 = jmethod object_ "getInstance_overload1" (\() -> (getInstance_overload1_impl (javaCast object_ :: PaymentGatewayInterfaceFactory))) () a1

getInstance_overload1_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getInstance_overload1_super object_ a1 = (getInstance_overload1_impl (javaCast object_ :: PaymentGatewayInterfaceFactory)) a1

getInstance_overload1_impl :: PaymentGatewayInterfaceFactory -> HttpServletRequest.HttpServletRequest -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getInstance_overload1_impl this httpServletRequest = do
        commonStrings <- (CommonStrings.getInstance)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pAYMENTERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "getInstance(HttpServletRequest)" e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pAYMENT))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Getting" this (jget (commonStrings).gET_INSTANCE))
            (PaymentGatewayInterfaceFactory.getInstance this (jio (RequestParams.toHashMap ((jio (RequestParams.new_1 httpServletRequest))))))


-- throws Exception
getInstance_overload2 :: (JavaObjectClass this_) => this_ -> BasicPaymentType.BasicPaymentType -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getInstance_overload2 object_ a1 = jmethod object_ "getInstance_overload2" (\() -> (getInstance_overload2_impl (javaCast object_ :: PaymentGatewayInterfaceFactory))) () a1

getInstance_overload2_super :: (JavaObjectClass this_) => this_ -> BasicPaymentType.BasicPaymentType -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getInstance_overload2_super object_ a1 = (getInstance_overload2_impl (javaCast object_ :: PaymentGatewayInterfaceFactory)) a1

getInstance_overload2_impl :: PaymentGatewayInterfaceFactory -> BasicPaymentType.BasicPaymentType -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getInstance_overload2_impl this paymentType = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)) (jio (BasicPaymentType.getName paymentType)))
        (PaymentGatewayInterfaceFactory.getInstance this hashMap)


-- throws Exception
getInstance_overload3 :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getInstance_overload3 object_ a1 = jmethod object_ "getInstance_overload3" (\() -> (getInstance_overload3_impl (javaCast object_ :: PaymentGatewayInterfaceFactory))) () a1

getInstance_overload3_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getInstance_overload3_super object_ a1 = (getInstance_overload3_impl (javaCast object_ :: PaymentGatewayInterfaceFactory)) a1

getInstance_overload3_impl :: PaymentGatewayInterfaceFactory -> HashMap.HashMap -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getInstance_overload3_impl this hashMap = do
        commonStrings <- (CommonStrings.getInstance)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pAYMENTERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            javaThrow (e)
            ) $ do
            let gatewayName = (javaCast (jio (HashMap.get hashMap (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)))) :: String)
            paymentType <- (BasicPaymentTypeUtil.get ((jio (BasicPaymentTypeUtil.getInstance))) gatewayName)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pAYMENT))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("Getting PaymentGatewayInterface for PaymentType: " ++ (jio (BasicPaymentType.getName paymentType))) ++ " with: ") ++ javaToString hashMap) this (jget (commonStrings).gET_INSTANCE))
            paymentGatewayInterfaceFactoryInterface <- (BasicPaymentType.getPaymentGatewayInterfaceFactoryInterface paymentType)
            (PaymentGatewayInterfaceFactoryInterface.getInstance paymentGatewayInterfaceFactoryInterface hashMap)


