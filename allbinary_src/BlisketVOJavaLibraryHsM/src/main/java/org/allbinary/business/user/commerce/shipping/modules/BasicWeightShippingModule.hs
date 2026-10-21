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
-- package org.allbinary.business.user.commerce.shipping.modules
module BasicWeightShippingModule where

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
import qualified BasketInterface -- org.allbinary.business.user.commerce.inventory.basket.BasketInterface
import qualified OrderInterface -- org.allbinary.business.user.commerce.inventory.order.OrderInterface
import qualified Money -- org.allbinary.business.user.commerce.money.Money
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ShippingInterface

-- implements ShippingInterface
data BasicWeightShippingModule = BasicWeightShippingModule
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , name :: IORef (String)
    , description :: IORef (String)
    }

instance JavaNull BasicWeightShippingModule where
    javaNull = javaNullRecord "BasicWeightShippingModule"

instance JavaEquals BasicWeightShippingModule where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicWeightShippingModule where
    (==) = jrecordEquals

instance JavaObjectClass BasicWeightShippingModule where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicWeightShippingModule
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    name <- newIORef ""
    description <- newIORef ""
    let this = BasicWeightShippingModule header_ commonStrings name description
    jregisterLevel header_ this
    ShippingInterface.registerInterface_ header_
    jregisterMethod header_ "getCost" (\() -> getCost_impl this)
    jregisterMethod header_ "getDescription" (\() -> getDescription_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    pure this

initFields_ :: BasicWeightShippingModule -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.name ("Basic Shipping (5 to 7 working days)")
    jset this.description ("We will soon provide a variety of shipping methods.")
    pure ()

new_ :: IO BasicWeightShippingModule
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicWeightShippingModule -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getCost :: (JavaObjectClass this_) => this_ -> OrderInterface.OrderInterface -> IO (Money.Money)
getCost object_ a1 = jmethod object_ "getCost" (\() -> (getCost_impl (javaCast object_ :: BasicWeightShippingModule))) () a1

getCost_super :: (JavaObjectClass this_) => this_ -> OrderInterface.OrderInterface -> IO (Money.Money)
getCost_super object_ a1 = (getCost_impl (javaCast object_ :: BasicWeightShippingModule)) a1

getCost_impl :: BasicWeightShippingModule -> OrderInterface.OrderInterface -> IO (Money.Money)
getCost_impl this order = do
        basket <- (OrderInterface.getBasket order)
        money <- (Money.new_)
        Control.Monad.void (Money.add money (jio (BasketInterface.getTotalWeight basket)))
        Control.Monad.void (Money.multiply money 1)
        Control.Monad.void (Money.add money "3.50")
        pure (money)


getDescription :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription object_ = jmethod object_ "getDescription" (\() -> (getDescription_impl (javaCast object_ :: BasicWeightShippingModule))) ()

getDescription_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription_super object_ = (getDescription_impl (javaCast object_ :: BasicWeightShippingModule))

getDescription_impl :: BasicWeightShippingModule -> IO (String)
getDescription_impl this = do
        pure ((jget (this).description))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: BasicWeightShippingModule))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: BasicWeightShippingModule))

getName_impl :: BasicWeightShippingModule -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


