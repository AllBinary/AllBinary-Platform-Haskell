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
-- package org.allbinary.business.advertisement.area
module AdvertisementAreaConstraintsInterface where

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
import qualified DisplayInBrowserContraintsInterface -- org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface
import qualified TwoDimensionalConstraintInterface -- org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface

-- Java interface: the classes that implement it have these functions
data AdvertisementAreaConstraintsInterface = AdvertisementAreaConstraintsInterface
    { header_ :: JavaHeader
    }

instance JavaNull AdvertisementAreaConstraintsInterface where
    javaNull = javaNullRecord "AdvertisementAreaConstraintsInterface"

instance JavaEquals AdvertisementAreaConstraintsInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementAreaConstraintsInterface where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementAreaConstraintsInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AdvertisementAreaConstraintsInterface
fromHeader_ header = AdvertisementAreaConstraintsInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AdvertisementAreaConstraintsInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getDisplayInBrowserContraints :: (JavaObjectClass this_) => this_ -> IO (DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface)
getDisplayInBrowserContraints object_ = jmethod object_ "getDisplayInBrowserContraints" (\() -> (getDisplayInBrowserContraints_impl (javaCast object_ :: AdvertisementAreaConstraintsInterface))) ()

getDisplayInBrowserContraints_super :: (JavaObjectClass this_) => this_ -> IO (DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface)
getDisplayInBrowserContraints_super object_ = (getDisplayInBrowserContraints_impl (javaCast object_ :: AdvertisementAreaConstraintsInterface))

getDisplayInBrowserContraints_impl :: AdvertisementAreaConstraintsInterface -> IO (DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface)
getDisplayInBrowserContraints_impl this = javaAbstractMethod "getDisplayInBrowserContraints"


getTwoDimensionContraints :: (JavaObjectClass this_) => this_ -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionContraints object_ = jmethod object_ "getTwoDimensionContraints" (\() -> (getTwoDimensionContraints_impl (javaCast object_ :: AdvertisementAreaConstraintsInterface))) ()

getTwoDimensionContraints_super :: (JavaObjectClass this_) => this_ -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionContraints_super object_ = (getTwoDimensionContraints_impl (javaCast object_ :: AdvertisementAreaConstraintsInterface))

getTwoDimensionContraints_impl :: AdvertisementAreaConstraintsInterface -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionContraints_impl this = javaAbstractMethod "getTwoDimensionContraints"


