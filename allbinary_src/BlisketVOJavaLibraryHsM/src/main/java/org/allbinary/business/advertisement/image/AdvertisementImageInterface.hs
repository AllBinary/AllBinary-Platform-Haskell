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
-- package org.allbinary.business.advertisement.image
module AdvertisementImageInterface where

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
data AdvertisementImageInterface = AdvertisementImageInterface
    { header_ :: JavaHeader
    }

instance JavaNull AdvertisementImageInterface where
    javaNull = javaNullRecord "AdvertisementImageInterface"

instance JavaEquals AdvertisementImageInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementImageInterface where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementImageInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AdvertisementImageInterface
fromHeader_ header = AdvertisementImageInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AdvertisementImageInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getFileName :: (JavaObjectClass this_) => this_ -> IO (String)
getFileName object_ = jmethod object_ "getFileName" (\() -> (getFileName_impl (javaCast object_ :: AdvertisementImageInterface))) ()

getFileName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFileName_super object_ = (getFileName_impl (javaCast object_ :: AdvertisementImageInterface))

getFileName_impl :: AdvertisementImageInterface -> IO (String)
getFileName_impl this = javaAbstractMethod "getFileName"


getUrl :: (JavaObjectClass this_) => this_ -> IO (String)
getUrl object_ = jmethod object_ "getUrl" (\() -> (getUrl_impl (javaCast object_ :: AdvertisementImageInterface))) ()

getUrl_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUrl_super object_ = (getUrl_impl (javaCast object_ :: AdvertisementImageInterface))

getUrl_impl :: AdvertisementImageInterface -> IO (String)
getUrl_impl this = javaAbstractMethod "getUrl"


getTwoDimensionalConstraint :: (JavaObjectClass this_) => this_ -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionalConstraint object_ = jmethod object_ "getTwoDimensionalConstraint" (\() -> (getTwoDimensionalConstraint_impl (javaCast object_ :: AdvertisementImageInterface))) ()

getTwoDimensionalConstraint_super :: (JavaObjectClass this_) => this_ -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionalConstraint_super object_ = (getTwoDimensionalConstraint_impl (javaCast object_ :: AdvertisementImageInterface))

getTwoDimensionalConstraint_impl :: AdvertisementImageInterface -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionalConstraint_impl this = javaAbstractMethod "getTwoDimensionalConstraint"


