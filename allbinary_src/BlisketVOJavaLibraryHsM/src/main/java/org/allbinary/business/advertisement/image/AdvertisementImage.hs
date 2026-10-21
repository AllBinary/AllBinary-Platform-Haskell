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
module AdvertisementImage where

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
import qualified AdvertisementImageInterface

-- implements AdvertisementImageInterface
data AdvertisementImage = AdvertisementImage
    { header_ :: JavaHeader
    , imageFileName :: IORef (String)
    , imageUrl :: IORef (String)
    , constraint :: IORef (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
    }

instance JavaNull AdvertisementImage where
    javaNull = javaNullRecord "AdvertisementImage"

instance JavaEquals AdvertisementImage where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementImage where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementImage where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AdvertisementImage
newRecord_ = do
    header_ <- newJavaHeader
    imageFileName <- newIORef ""
    imageUrl <- newIORef ""
    constraint <- newIORef javaNull
    let this = AdvertisementImage header_ imageFileName imageUrl constraint
    jregisterLevel header_ this
    AdvertisementImageInterface.registerInterface_ header_
    jregisterMethod header_ "getFileName" (\() -> getFileName_impl this)
    jregisterMethod header_ "getUrl" (\() -> getUrl_impl this)
    jregisterMethod header_ "getTwoDimensionalConstraint" (\() -> getTwoDimensionalConstraint_impl this)
    pure this

initFields_ :: AdvertisementImage -> IO ()
initFields_ this = do
    jset this.imageFileName ("")
    jset this.imageUrl ("")
    jset this.constraint (javaNull)
    pure ()

new_ :: IO AdvertisementImage
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AdvertisementImage -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getFileName :: (JavaObjectClass this_) => this_ -> IO (String)
getFileName object_ = jmethod object_ "getFileName" (\() -> (getFileName_impl (javaCast object_ :: AdvertisementImage))) ()

getFileName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFileName_super object_ = (getFileName_impl (javaCast object_ :: AdvertisementImage))

getFileName_impl :: AdvertisementImage -> IO (String)
getFileName_impl this = do
        pure ((jget (this).imageFileName))


getUrl :: (JavaObjectClass this_) => this_ -> IO (String)
getUrl object_ = jmethod object_ "getUrl" (\() -> (getUrl_impl (javaCast object_ :: AdvertisementImage))) ()

getUrl_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUrl_super object_ = (getUrl_impl (javaCast object_ :: AdvertisementImage))

getUrl_impl :: AdvertisementImage -> IO (String)
getUrl_impl this = do
        pure ((jget (this).imageUrl))


getTwoDimensionalConstraint :: (JavaObjectClass this_) => this_ -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionalConstraint object_ = jmethod object_ "getTwoDimensionalConstraint" (\() -> (getTwoDimensionalConstraint_impl (javaCast object_ :: AdvertisementImage))) ()

getTwoDimensionalConstraint_super :: (JavaObjectClass this_) => this_ -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionalConstraint_super object_ = (getTwoDimensionalConstraint_impl (javaCast object_ :: AdvertisementImage))

getTwoDimensionalConstraint_impl :: AdvertisementImage -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionalConstraint_impl this = do
        pure ((jget (this).constraint))


