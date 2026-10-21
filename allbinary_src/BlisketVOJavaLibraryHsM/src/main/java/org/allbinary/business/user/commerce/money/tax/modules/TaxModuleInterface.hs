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
-- package org.allbinary.business.user.commerce.money.tax.modules
module TaxModuleInterface where

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
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress

-- Java interface: the classes that implement it have these functions
data TaxModuleInterface = TaxModuleInterface
    { header_ :: JavaHeader
    }

instance JavaNull TaxModuleInterface where
    javaNull = javaNullRecord "TaxModuleInterface"

instance JavaEquals TaxModuleInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TaxModuleInterface where
    (==) = jrecordEquals

instance JavaObjectClass TaxModuleInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TaxModuleInterface
fromHeader_ header = TaxModuleInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TaxModuleInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getTaxRate :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> StoreFrontInterface.StoreFrontInterface -> IO (Float)
getTaxRate object_ a1 a2 = jmethod object_ "getTaxRate" (\() -> (getTaxRate_impl (javaCast object_ :: TaxModuleInterface))) () a1 a2

getTaxRate_super :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> StoreFrontInterface.StoreFrontInterface -> IO (Float)
getTaxRate_super object_ a1 a2 = (getTaxRate_impl (javaCast object_ :: TaxModuleInterface)) a1 a2

getTaxRate_impl :: TaxModuleInterface -> StreetAddress.StreetAddress -> StoreFrontInterface.StoreFrontInterface -> IO (Float)
getTaxRate_impl this streetAddress storeFrontInterface = javaAbstractMethod "getTaxRate"


-- throws Exception
isValid :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> StoreFrontInterface.StoreFrontInterface -> IO (Bool)
isValid object_ a1 a2 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: TaxModuleInterface))) () a1 a2

isValid_super :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> StoreFrontInterface.StoreFrontInterface -> IO (Bool)
isValid_super object_ a1 a2 = (isValid_impl (javaCast object_ :: TaxModuleInterface)) a1 a2

isValid_impl :: TaxModuleInterface -> StreetAddress.StreetAddress -> StoreFrontInterface.StoreFrontInterface -> IO (Bool)
isValid_impl this streetAddress storeFrontInterface = javaAbstractMethod "isValid"


