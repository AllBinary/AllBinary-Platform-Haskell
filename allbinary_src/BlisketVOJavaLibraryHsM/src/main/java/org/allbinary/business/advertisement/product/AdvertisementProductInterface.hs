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
-- package org.allbinary.business.advertisement.product
module AdvertisementProductInterface where

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
import qualified TwoDimensionalConstraintInterface -- org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface

-- Java interface: the classes that implement it have these functions
data AdvertisementProductInterface = AdvertisementProductInterface
    { header_ :: JavaHeader
    }

instance JavaNull AdvertisementProductInterface where
    javaNull = javaNullRecord "AdvertisementProductInterface"

instance JavaEquals AdvertisementProductInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementProductInterface where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementProductInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AdvertisementProductInterface
fromHeader_ header = AdvertisementProductInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AdvertisementProductInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getType :: (JavaObjectClass this_) => this_ -> IO (String)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: AdvertisementProductInterface))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getType_super object_ = (getType_impl (javaCast object_ :: AdvertisementProductInterface))

getType_impl :: AdvertisementProductInterface -> IO (String)
getType_impl this = javaAbstractMethod "getType"


getLink :: (JavaObjectClass this_) => this_ -> IO (String)
getLink object_ = jmethod object_ "getLink" (\() -> (getLink_impl (javaCast object_ :: AdvertisementProductInterface))) ()

getLink_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLink_super object_ = (getLink_impl (javaCast object_ :: AdvertisementProductInterface))

getLink_impl :: AdvertisementProductInterface -> IO (String)
getLink_impl this = javaAbstractMethod "getLink"


getNumber :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumber object_ = jmethod object_ "getNumber" (\() -> (getNumber_impl (javaCast object_ :: AdvertisementProductInterface))) ()

getNumber_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumber_super object_ = (getNumber_impl (javaCast object_ :: AdvertisementProductInterface))

getNumber_impl :: AdvertisementProductInterface -> IO (Int)
getNumber_impl this = javaAbstractMethod "getNumber"


getTwoDimensionalConstraint :: (JavaObjectClass this_) => this_ -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionalConstraint object_ = jmethod object_ "getTwoDimensionalConstraint" (\() -> (getTwoDimensionalConstraint_impl (javaCast object_ :: AdvertisementProductInterface))) ()

getTwoDimensionalConstraint_super :: (JavaObjectClass this_) => this_ -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionalConstraint_super object_ = (getTwoDimensionalConstraint_impl (javaCast object_ :: AdvertisementProductInterface))

getTwoDimensionalConstraint_impl :: AdvertisementProductInterface -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionalConstraint_impl this = javaAbstractMethod "getTwoDimensionalConstraint"


