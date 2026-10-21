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
module ShippingMethodsInterface where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified ShippingInterface -- org.allbinary.business.user.commerce.shipping.modules.ShippingInterface

-- Java interface: the classes that implement it have these functions
data ShippingMethodsInterface = ShippingMethodsInterface
    { header_ :: JavaHeader
    }

instance JavaNull ShippingMethodsInterface where
    javaNull = javaNullRecord "ShippingMethodsInterface"

instance JavaEquals ShippingMethodsInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShippingMethodsInterface where
    (==) = jrecordEquals

instance JavaObjectClass ShippingMethodsInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ShippingMethodsInterface
fromHeader_ header = ShippingMethodsInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ShippingMethodsInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


get :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: ShippingMethodsInterface))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
get_super object_ = (get_impl (javaCast object_ :: ShippingMethodsInterface))

get_impl :: ShippingMethodsInterface -> IO (BasicArrayList.BasicArrayList)
get_impl this = javaAbstractMethod "get"


-- throws Exception
getShippingInterface :: (JavaObjectClass this_) => this_ -> String -> IO (ShippingInterface.ShippingInterface)
getShippingInterface object_ a1 = jmethod object_ "getShippingInterface" (\() -> (getShippingInterface_impl (javaCast object_ :: ShippingMethodsInterface))) () a1

getShippingInterface_super :: (JavaObjectClass this_) => this_ -> String -> IO (ShippingInterface.ShippingInterface)
getShippingInterface_super object_ a1 = (getShippingInterface_impl (javaCast object_ :: ShippingMethodsInterface)) a1

getShippingInterface_impl :: ShippingMethodsInterface -> String -> IO (ShippingInterface.ShippingInterface)
getShippingInterface_impl this name = javaAbstractMethod "getShippingInterface"


-- throws Exception
getDefault :: (JavaObjectClass this_) => this_ -> IO (ShippingInterface.ShippingInterface)
getDefault object_ = jmethod object_ "getDefault" (\() -> (getDefault_impl (javaCast object_ :: ShippingMethodsInterface))) ()

getDefault_super :: (JavaObjectClass this_) => this_ -> IO (ShippingInterface.ShippingInterface)
getDefault_super object_ = (getDefault_impl (javaCast object_ :: ShippingMethodsInterface))

getDefault_impl :: ShippingMethodsInterface -> IO (ShippingInterface.ShippingInterface)
getDefault_impl this = javaAbstractMethod "getDefault"


