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
module AdvertisementProduct where

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
import qualified AdvertisementProductInterface

-- implements AdvertisementProductInterface
data AdvertisementProduct = AdvertisementProduct
    { header_ :: JavaHeader
    , type_ :: IORef (String)
    , link :: IORef (String)
    , number :: IORef (Int)
    , constraint :: IORef (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
    }

instance JavaNull AdvertisementProduct where
    javaNull = javaNullRecord "AdvertisementProduct"

instance JavaEquals AdvertisementProduct where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementProduct where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementProduct where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AdvertisementProduct
newRecord_ = do
    header_ <- newJavaHeader
    type_ <- newIORef ""
    link <- newIORef ""
    number <- newIORef 0
    constraint <- newIORef javaNull
    let this = AdvertisementProduct header_ type_ link number constraint
    jregisterLevel header_ this
    AdvertisementProductInterface.registerInterface_ header_
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "getLink" (\() -> getLink_impl this)
    jregisterMethod header_ "getNumber" (\() -> getNumber_impl this)
    jregisterMethod header_ "getTwoDimensionalConstraint" (\() -> getTwoDimensionalConstraint_impl this)
    pure this

initFields_ :: AdvertisementProduct -> IO ()
initFields_ this = do
    jset this.type_ ("")
    jset this.link ("")
    jset this.number (0)
    jset this.constraint (javaNull)
    pure ()

new_ :: IO AdvertisementProduct
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AdvertisementProduct -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getType :: (JavaObjectClass this_) => this_ -> IO (String)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: AdvertisementProduct))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getType_super object_ = (getType_impl (javaCast object_ :: AdvertisementProduct))

getType_impl :: AdvertisementProduct -> IO (String)
getType_impl this = do
        pure ((jget (this).type_))


getLink :: (JavaObjectClass this_) => this_ -> IO (String)
getLink object_ = jmethod object_ "getLink" (\() -> (getLink_impl (javaCast object_ :: AdvertisementProduct))) ()

getLink_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLink_super object_ = (getLink_impl (javaCast object_ :: AdvertisementProduct))

getLink_impl :: AdvertisementProduct -> IO (String)
getLink_impl this = do
        pure ((jget (this).link))


getNumber :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumber object_ = jmethod object_ "getNumber" (\() -> (getNumber_impl (javaCast object_ :: AdvertisementProduct))) ()

getNumber_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumber_super object_ = (getNumber_impl (javaCast object_ :: AdvertisementProduct))

getNumber_impl :: AdvertisementProduct -> IO (Int)
getNumber_impl this = do
        pure ((jget (this).number))


getTwoDimensionalConstraint :: (JavaObjectClass this_) => this_ -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionalConstraint object_ = jmethod object_ "getTwoDimensionalConstraint" (\() -> (getTwoDimensionalConstraint_impl (javaCast object_ :: AdvertisementProduct))) ()

getTwoDimensionalConstraint_super :: (JavaObjectClass this_) => this_ -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionalConstraint_super object_ = (getTwoDimensionalConstraint_impl (javaCast object_ :: AdvertisementProduct))

getTwoDimensionalConstraint_impl :: AdvertisementProduct -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionalConstraint_impl this = do
        pure ((jget (this).constraint))


