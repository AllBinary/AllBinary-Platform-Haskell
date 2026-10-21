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
module ShippingInterface where

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

-- Java interface: the classes that implement it have these functions
data ShippingInterface = ShippingInterface
    { header_ :: JavaHeader
    }

instance JavaNull ShippingInterface where
    javaNull = javaNullRecord "ShippingInterface"

instance JavaEquals ShippingInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShippingInterface where
    (==) = jrecordEquals

instance JavaObjectClass ShippingInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ShippingInterface
fromHeader_ header = ShippingInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ShippingInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getCost :: (JavaObjectClass this_) => this_ -> OrderInterface.OrderInterface -> IO (Money.Money)
getCost object_ a1 = jmethod object_ "getCost" (\() -> (getCost_impl (javaCast object_ :: ShippingInterface))) () a1

getCost_super :: (JavaObjectClass this_) => this_ -> OrderInterface.OrderInterface -> IO (Money.Money)
getCost_super object_ a1 = (getCost_impl (javaCast object_ :: ShippingInterface)) a1

getCost_impl :: ShippingInterface -> OrderInterface.OrderInterface -> IO (Money.Money)
getCost_impl this order = javaAbstractMethod "getCost"


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: ShippingInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: ShippingInterface))

getName_impl :: ShippingInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


getDescription :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription object_ = jmethod object_ "getDescription" (\() -> (getDescription_impl (javaCast object_ :: ShippingInterface))) ()

getDescription_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDescription_super object_ = (getDescription_impl (javaCast object_ :: ShippingInterface))

getDescription_impl :: ShippingInterface -> IO (String)
getDescription_impl this = javaAbstractMethod "getDescription"


