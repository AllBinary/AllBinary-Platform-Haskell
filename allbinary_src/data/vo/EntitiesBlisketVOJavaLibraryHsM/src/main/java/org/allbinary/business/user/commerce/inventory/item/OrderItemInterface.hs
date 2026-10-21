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
-- package org.allbinary.business.user.commerce.inventory.item
module OrderItemInterface (module OrderItemInterface, module ItemInterface) where

import ItemInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setGroup, setGroup_super, setGroup_impl, setTax, setTax_super, setTax_impl, setShippingType, setShippingType_super, setShippingType_impl, setShippingCost, setShippingCost_super, setShippingCost_impl, setShippingAddress, setShippingAddress_super, setShippingAddress_impl, setSpecial, setSpecial_super, setSpecial_impl, getGroup, getGroup_super, getGroup_impl, getTax, getTax_super, getTax_impl, getShippingType, getShippingType_super, getShippingType_impl, getShippingCost, getShippingCost_super, getShippingCost_impl, getShippingAddress, getShippingAddress_super, getShippingAddress_impl, getSpecial, getSpecial_super, getSpecial_impl, toString)
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
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress
import qualified ItemInterface

-- Java interface: the classes that implement it have these functions
data OrderItemInterface = OrderItemInterface
    { header_ :: JavaHeader
    }

instance JavaNull OrderItemInterface where
    javaNull = javaNullRecord "OrderItemInterface"

instance JavaEquals OrderItemInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderItemInterface where
    (==) = jrecordEquals

instance JavaObjectClass OrderItemInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> OrderItemInterface
fromHeader_ header = OrderItemInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (OrderItemInterface header)
    ItemInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setGroup :: (JavaObjectClass this_) => this_ -> String -> IO (())
setGroup object_ a1 = jmethod object_ "setGroup" (\() -> (setGroup_impl (javaCast object_ :: OrderItemInterface))) () a1

setGroup_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setGroup_super object_ a1 = (setGroup_impl (javaCast object_ :: OrderItemInterface)) a1

setGroup_impl :: OrderItemInterface -> String -> IO (())
setGroup_impl this value = javaAbstractMethod "setGroup"


setTax :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTax object_ a1 = jmethod object_ "setTax" (\() -> (setTax_impl (javaCast object_ :: OrderItemInterface))) () a1

setTax_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTax_super object_ a1 = (setTax_impl (javaCast object_ :: OrderItemInterface)) a1

setTax_impl :: OrderItemInterface -> String -> IO (())
setTax_impl this value = javaAbstractMethod "setTax"


setShippingType :: (JavaObjectClass this_) => this_ -> String -> IO (())
setShippingType object_ a1 = jmethod object_ "setShippingType" (\() -> (setShippingType_impl (javaCast object_ :: OrderItemInterface))) () a1

setShippingType_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setShippingType_super object_ a1 = (setShippingType_impl (javaCast object_ :: OrderItemInterface)) a1

setShippingType_impl :: OrderItemInterface -> String -> IO (())
setShippingType_impl this value = javaAbstractMethod "setShippingType"


setShippingCost :: (JavaObjectClass this_) => this_ -> String -> IO (())
setShippingCost object_ a1 = jmethod object_ "setShippingCost" (\() -> (setShippingCost_impl (javaCast object_ :: OrderItemInterface))) () a1

setShippingCost_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setShippingCost_super object_ a1 = (setShippingCost_impl (javaCast object_ :: OrderItemInterface)) a1

setShippingCost_impl :: OrderItemInterface -> String -> IO (())
setShippingCost_impl this value = javaAbstractMethod "setShippingCost"


setShippingAddress :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
setShippingAddress object_ a1 = jmethod object_ "setShippingAddress" (\() -> (setShippingAddress_impl (javaCast object_ :: OrderItemInterface))) () a1

setShippingAddress_super :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
setShippingAddress_super object_ a1 = (setShippingAddress_impl (javaCast object_ :: OrderItemInterface)) a1

setShippingAddress_impl :: OrderItemInterface -> StreetAddress.StreetAddress -> IO (())
setShippingAddress_impl this value = javaAbstractMethod "setShippingAddress"


setSpecial :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial object_ a1 = jmethod object_ "setSpecial" (\() -> (setSpecial_impl (javaCast object_ :: OrderItemInterface))) () a1

setSpecial_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial_super object_ a1 = (setSpecial_impl (javaCast object_ :: OrderItemInterface)) a1

setSpecial_impl :: OrderItemInterface -> String -> IO (())
setSpecial_impl this value = javaAbstractMethod "setSpecial"


getGroup :: (JavaObjectClass this_) => this_ -> IO (String)
getGroup object_ = jmethod object_ "getGroup" (\() -> (getGroup_impl (javaCast object_ :: OrderItemInterface))) ()

getGroup_super :: (JavaObjectClass this_) => this_ -> IO (String)
getGroup_super object_ = (getGroup_impl (javaCast object_ :: OrderItemInterface))

getGroup_impl :: OrderItemInterface -> IO (String)
getGroup_impl this = javaAbstractMethod "getGroup"


getTax :: (JavaObjectClass this_) => this_ -> IO (String)
getTax object_ = jmethod object_ "getTax" (\() -> (getTax_impl (javaCast object_ :: OrderItemInterface))) ()

getTax_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTax_super object_ = (getTax_impl (javaCast object_ :: OrderItemInterface))

getTax_impl :: OrderItemInterface -> IO (String)
getTax_impl this = javaAbstractMethod "getTax"


getShippingType :: (JavaObjectClass this_) => this_ -> IO (String)
getShippingType object_ = jmethod object_ "getShippingType" (\() -> (getShippingType_impl (javaCast object_ :: OrderItemInterface))) ()

getShippingType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getShippingType_super object_ = (getShippingType_impl (javaCast object_ :: OrderItemInterface))

getShippingType_impl :: OrderItemInterface -> IO (String)
getShippingType_impl this = javaAbstractMethod "getShippingType"


getShippingCost :: (JavaObjectClass this_) => this_ -> IO (String)
getShippingCost object_ = jmethod object_ "getShippingCost" (\() -> (getShippingCost_impl (javaCast object_ :: OrderItemInterface))) ()

getShippingCost_super :: (JavaObjectClass this_) => this_ -> IO (String)
getShippingCost_super object_ = (getShippingCost_impl (javaCast object_ :: OrderItemInterface))

getShippingCost_impl :: OrderItemInterface -> IO (String)
getShippingCost_impl this = javaAbstractMethod "getShippingCost"


getShippingAddress :: (JavaObjectClass this_) => this_ -> IO (StreetAddress.StreetAddress)
getShippingAddress object_ = jmethod object_ "getShippingAddress" (\() -> (getShippingAddress_impl (javaCast object_ :: OrderItemInterface))) ()

getShippingAddress_super :: (JavaObjectClass this_) => this_ -> IO (StreetAddress.StreetAddress)
getShippingAddress_super object_ = (getShippingAddress_impl (javaCast object_ :: OrderItemInterface))

getShippingAddress_impl :: OrderItemInterface -> IO (StreetAddress.StreetAddress)
getShippingAddress_impl this = javaAbstractMethod "getShippingAddress"


getSpecial :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial object_ = jmethod object_ "getSpecial" (\() -> (getSpecial_impl (javaCast object_ :: OrderItemInterface))) ()

getSpecial_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial_super object_ = (getSpecial_impl (javaCast object_ :: OrderItemInterface))

getSpecial_impl :: OrderItemInterface -> IO (String)
getSpecial_impl this = javaAbstractMethod "getSpecial"


