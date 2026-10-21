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
module NoShippingModule where

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
import qualified Money -- org.allbinary.business.user.commerce.money.Money
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ShippingInterface

-- implements ShippingInterface
data NoShippingModule = NoShippingModule
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , name :: IORef (String)
    , description :: IORef (String)
    }

instance JavaNull NoShippingModule where
    javaNull = javaNullRecord "NoShippingModule"

instance JavaEquals NoShippingModule where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoShippingModule where
    (==) = jrecordEquals

instance JavaObjectClass NoShippingModule where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NoShippingModule
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    name <- newIORef ""
    description <- newIORef ""
    let this = NoShippingModule header_ commonStrings name description
    jregisterLevel header_ this
    ShippingInterface.registerInterface_ header_
    jregisterMethod header_ "getCost" (\() -> getCost_impl this)
    jregisterMethod header_ "getDescription" (\() -> getDescription_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    pure this

initFields_ :: NoShippingModule -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.name ("No Shipping")
    jset this.description ("This shipping method is for items that are not shipped.")
    pure ()

new_ :: IO NoShippingModule
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoShippingModule -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getCost :: (JavaObjectClass this_) => this_ -> OrderInterface.OrderInterface -> IO (Money.Money)
getCost object_ a1 = jmethod object_ "getCost" (\() -> (getCost_impl (javaCast object_ :: NoShippingModule))) () a1

getCost_super :: (JavaObjectClass this_) => this_ -> OrderInterface.OrderInterface -> IO (Money.Money)
getCost_super object_ a1 = (getCost_impl (javaCast object_ :: NoShippingModule)) a1

getCost_impl :: NoShippingModule -> OrderInterface.OrderInterface -> IO (Money.Money)
getCost_impl this order = do
        (Money.new_)


getDescription :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription object_ = jmethod object_ "getDescription" (\() -> (getDescription_impl (javaCast object_ :: NoShippingModule))) ()

getDescription_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription_super object_ = (getDescription_impl (javaCast object_ :: NoShippingModule))

getDescription_impl :: NoShippingModule -> IO (String)
getDescription_impl this = do
        pure ((jget (this).description))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: NoShippingModule))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: NoShippingModule))

getName_impl :: NoShippingModule -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


