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
-- package org.allbinary.business.user.commerce.shipping
module ShippingMethods where

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
import qualified ShippingMethodsFactory -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified ShippingInterface -- org.allbinary.business.user.commerce.shipping.modules.ShippingInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ShippingMethodsInterface

-- implements ShippingMethodsInterface
data ShippingMethods = ShippingMethods
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , shippingVector :: IORef (BasicArrayList.BasicArrayList)
    , defaultShippingMethodInterface :: IORef (ShippingInterface.ShippingInterface)
    }

instance JavaNull ShippingMethods where
    javaNull = javaNullRecord "ShippingMethods"

instance JavaEquals ShippingMethods where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShippingMethods where
    (==) = jrecordEquals

instance JavaObjectClass ShippingMethods where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ShippingMethods
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    shippingVector <- newIORef javaNull
    defaultShippingMethodInterface <- newIORef javaNull
    let this = ShippingMethods header_ logUtil commonStrings shippingVector defaultShippingMethodInterface
    jregisterLevel header_ this
    ShippingMethodsInterface.registerInterface_ header_
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getShippingInterface" (\() -> getShippingInterface_impl this)
    jregisterMethod header_ "getDefault" (\() -> getDefault_impl this)
    pure this

initFields_ :: ShippingMethods -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.shippingVector (javaNull)
    jset this.defaultShippingMethodInterface (javaNull)
    pure ()

new_2 :: AbeClientInformationInterface.AbeClientInformationInterface -> StoreFrontInterface.StoreFrontInterface -> IO ShippingMethods
new_2 abeClientInformation storeFrontInterface = do
    this <- newRecord_
    init_2 this abeClientInformation storeFrontInterface
    pure this

init_2 :: ShippingMethods -> AbeClientInformationInterface.AbeClientInformationInterface -> StoreFrontInterface.StoreFrontInterface -> IO ()
init_2 this abeClientInformation storeFrontInterface = do
        initFields_ this
        assignedValue <- (ShippingMethodsFactory.getDefaultInstance ((jio (ShippingMethodsFactory.new_2 abeClientInformation storeFrontInterface))))
        jset (this).defaultShippingMethodInterface (assignedValue)
        assignedValue <- (ShippingMethodsFactory.getInstance ((jio (ShippingMethodsFactory.new_2 abeClientInformation storeFrontInterface))))
        jset (this).shippingVector (assignedValue)
        pure ()


get :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: ShippingMethods))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
get_super object_ = (get_impl (javaCast object_ :: ShippingMethods))

get_impl :: ShippingMethods -> IO (BasicArrayList.BasicArrayList)
get_impl this = do
        pure ((jget (this).shippingVector))


-- throws Exception
getShippingInterface :: (JavaObjectClass this_) => this_ -> String -> IO (ShippingInterface.ShippingInterface)
getShippingInterface object_ a1 = jmethod object_ "getShippingInterface" (\() -> (getShippingInterface_impl (javaCast object_ :: ShippingMethods))) () a1

getShippingInterface_super :: (JavaObjectClass this_) => this_ -> String -> IO (ShippingInterface.ShippingInterface)
getShippingInterface_super object_ a1 = (getShippingInterface_impl (javaCast object_ :: ShippingMethods)) a1

getShippingInterface_impl :: ShippingMethods -> String -> IO (ShippingInterface.ShippingInterface)
getShippingInterface_impl this name = do
        shipping <- newIORef (javaNull)
        size <- (BasicArrayList.size ((jget (this).shippingVector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset shipping ((javaCast (jio (BasicArrayList.get ((jget (this).shippingVector)) index)) :: ShippingInterface.ShippingInterface))
            when ((Prelude.fromEnum (Prelude.compare name (jio (ShippingInterface.getName ((jget shipping))))) - 1) == 0) $ do
                javaReturn ((jget shipping))
        let error = ("Error Finding Shipping: " ++ name)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sHIPPINGERROR))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getShippingInterface(String name)")
        javaThrow ((JavaException "Exception" error))


-- throws Exception
getDefault :: (JavaObjectClass this_) => this_ -> IO (ShippingInterface.ShippingInterface)
getDefault object_ = jmethod object_ "getDefault" (\() -> (getDefault_impl (javaCast object_ :: ShippingMethods))) ()

getDefault_super :: (JavaObjectClass this_) => this_ -> IO (ShippingInterface.ShippingInterface)
getDefault_super object_ = (getDefault_impl (javaCast object_ :: ShippingMethods))

getDefault_impl :: ShippingMethods -> IO (ShippingInterface.ShippingInterface)
getDefault_impl this = do
        pure ((jget (this).defaultShippingMethodInterface))


