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
-- package org.allbinary.business.advertisement.search
module AdvertisementSearchInterface where

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
import qualified HashMap -- java.util.HashMap
import qualified AdvertisementCategoryInterface -- org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface
import qualified AdvertisementWebsiteInterface -- org.allbinary.business.advertisement.search.website.AdvertisementWebsiteInterface
import qualified PriceConstraintInterface -- org.allbinary.logic.control.contraints.price.PriceConstraintInterface
import qualified TwoDimensionalConstraintInterface -- org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface

-- Java interface: the classes that implement it have these functions
data AdvertisementSearchInterface = AdvertisementSearchInterface
    { header_ :: JavaHeader
    }

instance JavaNull AdvertisementSearchInterface where
    javaNull = javaNullRecord "AdvertisementSearchInterface"

instance JavaEquals AdvertisementSearchInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementSearchInterface where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementSearchInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AdvertisementSearchInterface
fromHeader_ header = AdvertisementSearchInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AdvertisementSearchInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getWebSite :: (JavaObjectClass this_) => this_ -> IO (AdvertisementWebsiteInterface.AdvertisementWebsiteInterface)
getWebSite object_ = jmethod object_ "getWebSite" (\() -> (getWebSite_impl (javaCast object_ :: AdvertisementSearchInterface))) ()

getWebSite_super :: (JavaObjectClass this_) => this_ -> IO (AdvertisementWebsiteInterface.AdvertisementWebsiteInterface)
getWebSite_super object_ = (getWebSite_impl (javaCast object_ :: AdvertisementSearchInterface))

getWebSite_impl :: AdvertisementSearchInterface -> IO (AdvertisementWebsiteInterface.AdvertisementWebsiteInterface)
getWebSite_impl this = javaAbstractMethod "getWebSite"


getCategory :: (JavaObjectClass this_) => this_ -> IO (AdvertisementCategoryInterface.AdvertisementCategoryInterface)
getCategory object_ = jmethod object_ "getCategory" (\() -> (getCategory_impl (javaCast object_ :: AdvertisementSearchInterface))) ()

getCategory_super :: (JavaObjectClass this_) => this_ -> IO (AdvertisementCategoryInterface.AdvertisementCategoryInterface)
getCategory_super object_ = (getCategory_impl (javaCast object_ :: AdvertisementSearchInterface))

getCategory_impl :: AdvertisementSearchInterface -> IO (AdvertisementCategoryInterface.AdvertisementCategoryInterface)
getCategory_impl this = javaAbstractMethod "getCategory"


getSizeConstraints :: (JavaObjectClass this_) => this_ -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getSizeConstraints object_ = jmethod object_ "getSizeConstraints" (\() -> (getSizeConstraints_impl (javaCast object_ :: AdvertisementSearchInterface))) ()

getSizeConstraints_super :: (JavaObjectClass this_) => this_ -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getSizeConstraints_super object_ = (getSizeConstraints_impl (javaCast object_ :: AdvertisementSearchInterface))

getSizeConstraints_impl :: AdvertisementSearchInterface -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getSizeConstraints_impl this = javaAbstractMethod "getSizeConstraints"


getPricingConstraints :: (JavaObjectClass this_) => this_ -> IO (PriceConstraintInterface.PriceConstraintInterface)
getPricingConstraints object_ = jmethod object_ "getPricingConstraints" (\() -> (getPricingConstraints_impl (javaCast object_ :: AdvertisementSearchInterface))) ()

getPricingConstraints_super :: (JavaObjectClass this_) => this_ -> IO (PriceConstraintInterface.PriceConstraintInterface)
getPricingConstraints_super object_ = (getPricingConstraints_impl (javaCast object_ :: AdvertisementSearchInterface))

getPricingConstraints_impl :: AdvertisementSearchInterface -> IO (PriceConstraintInterface.PriceConstraintInterface)
getPricingConstraints_impl this = javaAbstractMethod "getPricingConstraints"


getPageNumber :: (JavaObjectClass this_) => this_ -> IO (Int)
getPageNumber object_ = jmethod object_ "getPageNumber" (\() -> (getPageNumber_impl (javaCast object_ :: AdvertisementSearchInterface))) ()

getPageNumber_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getPageNumber_super object_ = (getPageNumber_impl (javaCast object_ :: AdvertisementSearchInterface))

getPageNumber_impl :: AdvertisementSearchInterface -> IO (Int)
getPageNumber_impl this = javaAbstractMethod "getPageNumber"


getProductsPerPage :: (JavaObjectClass this_) => this_ -> IO (Int)
getProductsPerPage object_ = jmethod object_ "getProductsPerPage" (\() -> (getProductsPerPage_impl (javaCast object_ :: AdvertisementSearchInterface))) ()

getProductsPerPage_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getProductsPerPage_super object_ = (getProductsPerPage_impl (javaCast object_ :: AdvertisementSearchInterface))

getProductsPerPage_impl :: AdvertisementSearchInterface -> IO (Int)
getProductsPerPage_impl this = javaAbstractMethod "getProductsPerPage"


getSearchParams :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getSearchParams object_ = jmethod object_ "getSearchParams" (\() -> (getSearchParams_impl (javaCast object_ :: AdvertisementSearchInterface))) ()

getSearchParams_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getSearchParams_super object_ = (getSearchParams_impl (javaCast object_ :: AdvertisementSearchInterface))

getSearchParams_impl :: AdvertisementSearchInterface -> IO (HashMap.HashMap)
getSearchParams_impl this = javaAbstractMethod "getSearchParams"


setCategory :: (JavaObjectClass this_) => this_ -> AdvertisementCategoryInterface.AdvertisementCategoryInterface -> IO (())
setCategory object_ a1 = jmethod object_ "setCategory" (\() -> (setCategory_impl (javaCast object_ :: AdvertisementSearchInterface))) () a1

setCategory_super :: (JavaObjectClass this_) => this_ -> AdvertisementCategoryInterface.AdvertisementCategoryInterface -> IO (())
setCategory_super object_ a1 = (setCategory_impl (javaCast object_ :: AdvertisementSearchInterface)) a1

setCategory_impl :: AdvertisementSearchInterface -> AdvertisementCategoryInterface.AdvertisementCategoryInterface -> IO (())
setCategory_impl this advertisementCategoryInterface = javaAbstractMethod "setCategory"


setSizeConstraints :: (JavaObjectClass this_) => this_ -> TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface -> IO (())
setSizeConstraints object_ a1 = jmethod object_ "setSizeConstraints" (\() -> (setSizeConstraints_impl (javaCast object_ :: AdvertisementSearchInterface))) () a1

setSizeConstraints_super :: (JavaObjectClass this_) => this_ -> TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface -> IO (())
setSizeConstraints_super object_ a1 = (setSizeConstraints_impl (javaCast object_ :: AdvertisementSearchInterface)) a1

setSizeConstraints_impl :: AdvertisementSearchInterface -> TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface -> IO (())
setSizeConstraints_impl this twoDimensionConstraintsInterface = javaAbstractMethod "setSizeConstraints"


setPricingConstraints :: (JavaObjectClass this_) => this_ -> PriceConstraintInterface.PriceConstraintInterface -> IO (())
setPricingConstraints object_ a1 = jmethod object_ "setPricingConstraints" (\() -> (setPricingConstraints_impl (javaCast object_ :: AdvertisementSearchInterface))) () a1

setPricingConstraints_super :: (JavaObjectClass this_) => this_ -> PriceConstraintInterface.PriceConstraintInterface -> IO (())
setPricingConstraints_super object_ a1 = (setPricingConstraints_impl (javaCast object_ :: AdvertisementSearchInterface)) a1

setPricingConstraints_impl :: AdvertisementSearchInterface -> PriceConstraintInterface.PriceConstraintInterface -> IO (())
setPricingConstraints_impl this priceConstraintInterface = javaAbstractMethod "setPricingConstraints"


setPageNumber :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setPageNumber object_ a1 = jmethod object_ "setPageNumber" (\() -> (setPageNumber_impl (javaCast object_ :: AdvertisementSearchInterface))) () a1

setPageNumber_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setPageNumber_super object_ a1 = (setPageNumber_impl (javaCast object_ :: AdvertisementSearchInterface)) a1

setPageNumber_impl :: AdvertisementSearchInterface -> Int -> IO (())
setPageNumber_impl this pageNumber = javaAbstractMethod "setPageNumber"


setProductsPerPage :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setProductsPerPage object_ a1 = jmethod object_ "setProductsPerPage" (\() -> (setProductsPerPage_impl (javaCast object_ :: AdvertisementSearchInterface))) () a1

setProductsPerPage_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setProductsPerPage_super object_ a1 = (setProductsPerPage_impl (javaCast object_ :: AdvertisementSearchInterface)) a1

setProductsPerPage_impl :: AdvertisementSearchInterface -> Int -> IO (())
setProductsPerPage_impl this productsPerPage = javaAbstractMethod "setProductsPerPage"


setSearchParams :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
setSearchParams object_ a1 = jmethod object_ "setSearchParams" (\() -> (setSearchParams_impl (javaCast object_ :: AdvertisementSearchInterface))) () a1

setSearchParams_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
setSearchParams_super object_ a1 = (setSearchParams_impl (javaCast object_ :: AdvertisementSearchInterface)) a1

setSearchParams_impl :: AdvertisementSearchInterface -> HashMap.HashMap -> IO (())
setSearchParams_impl this columnAndKeywordHashMap = javaAbstractMethod "setSearchParams"


