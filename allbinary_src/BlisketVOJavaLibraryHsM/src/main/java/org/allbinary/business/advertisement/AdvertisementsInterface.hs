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
-- package org.allbinary.business.advertisement
module AdvertisementsInterface where

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
import qualified AdvertisementInterface -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data AdvertisementsInterface = AdvertisementsInterface
    { header_ :: JavaHeader
    }

instance JavaNull AdvertisementsInterface where
    javaNull = javaNullRecord "AdvertisementsInterface"

instance JavaEquals AdvertisementsInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementsInterface where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementsInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AdvertisementsInterface
fromHeader_ header = AdvertisementsInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AdvertisementsInterface header)


add :: (JavaObjectClass this_) => this_ -> AdvertisementInterface.AdvertisementInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: AdvertisementsInterface))) () a1

add_super :: (JavaObjectClass this_) => this_ -> AdvertisementInterface.AdvertisementInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: AdvertisementsInterface)) a1

add_impl :: AdvertisementsInterface -> AdvertisementInterface.AdvertisementInterface -> IO (())
add_impl this advertisementInterface = javaAbstractMethod "add"


get :: (JavaObjectClass this_) => this_ -> Int -> IO (AdvertisementInterface.AdvertisementInterface)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: AdvertisementsInterface))) () a1

get_super :: (JavaObjectClass this_) => this_ -> Int -> IO (AdvertisementInterface.AdvertisementInterface)
get_super object_ a1 = (get_impl (javaCast object_ :: AdvertisementsInterface)) a1

get_impl :: AdvertisementsInterface -> Int -> IO (AdvertisementInterface.AdvertisementInterface)
get_impl this index = javaAbstractMethod "get"


getCurrentPageNum :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrentPageNum object_ = jmethod object_ "getCurrentPageNum" (\() -> (getCurrentPageNum_impl (javaCast object_ :: AdvertisementsInterface))) ()

getCurrentPageNum_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrentPageNum_super object_ = (getCurrentPageNum_impl (javaCast object_ :: AdvertisementsInterface))

getCurrentPageNum_impl :: AdvertisementsInterface -> IO (Int)
getCurrentPageNum_impl this = javaAbstractMethod "getCurrentPageNum"


getErrorDescription :: (JavaObjectClass this_) => this_ -> IO (String)
getErrorDescription object_ = jmethod object_ "getErrorDescription" (\() -> (getErrorDescription_impl (javaCast object_ :: AdvertisementsInterface))) ()

getErrorDescription_super :: (JavaObjectClass this_) => this_ -> IO (String)
getErrorDescription_super object_ = (getErrorDescription_impl (javaCast object_ :: AdvertisementsInterface))

getErrorDescription_impl :: AdvertisementsInterface -> IO (String)
getErrorDescription_impl this = javaAbstractMethod "getErrorDescription"


getErrorNum :: (JavaObjectClass this_) => this_ -> IO (String)
getErrorNum object_ = jmethod object_ "getErrorNum" (\() -> (getErrorNum_impl (javaCast object_ :: AdvertisementsInterface))) ()

getErrorNum_super :: (JavaObjectClass this_) => this_ -> IO (String)
getErrorNum_super object_ = (getErrorNum_impl (javaCast object_ :: AdvertisementsInterface))

getErrorNum_impl :: AdvertisementsInterface -> IO (String)
getErrorNum_impl this = javaAbstractMethod "getErrorNum"


getNumberOfPosters :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfPosters object_ = jmethod object_ "getNumberOfPosters" (\() -> (getNumberOfPosters_impl (javaCast object_ :: AdvertisementsInterface))) ()

getNumberOfPosters_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfPosters_super object_ = (getNumberOfPosters_impl (javaCast object_ :: AdvertisementsInterface))

getNumberOfPosters_impl :: AdvertisementsInterface -> IO (Int)
getNumberOfPosters_impl this = javaAbstractMethod "getNumberOfPosters"


getNumberOfProductsInPage :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfProductsInPage object_ = jmethod object_ "getNumberOfProductsInPage" (\() -> (getNumberOfProductsInPage_impl (javaCast object_ :: AdvertisementsInterface))) ()

getNumberOfProductsInPage_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfProductsInPage_super object_ = (getNumberOfProductsInPage_impl (javaCast object_ :: AdvertisementsInterface))

getNumberOfProductsInPage_impl :: AdvertisementsInterface -> IO (Int)
getNumberOfProductsInPage_impl this = javaAbstractMethod "getNumberOfProductsInPage"


getStatusCode :: (JavaObjectClass this_) => this_ -> IO (Int)
getStatusCode object_ = jmethod object_ "getStatusCode" (\() -> (getStatusCode_impl (javaCast object_ :: AdvertisementsInterface))) ()

getStatusCode_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getStatusCode_super object_ = (getStatusCode_impl (javaCast object_ :: AdvertisementsInterface))

getStatusCode_impl :: AdvertisementsInterface -> IO (Int)
getStatusCode_impl this = javaAbstractMethod "getStatusCode"


getTotalNumberOfProducts :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalNumberOfProducts object_ = jmethod object_ "getTotalNumberOfProducts" (\() -> (getTotalNumberOfProducts_impl (javaCast object_ :: AdvertisementsInterface))) ()

getTotalNumberOfProducts_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalNumberOfProducts_super object_ = (getTotalNumberOfProducts_impl (javaCast object_ :: AdvertisementsInterface))

getTotalNumberOfProducts_impl :: AdvertisementsInterface -> IO (Int)
getTotalNumberOfProducts_impl this = javaAbstractMethod "getTotalNumberOfProducts"


isSearchValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSearchValid object_ = jmethod object_ "isSearchValid" (\() -> (isSearchValid_impl (javaCast object_ :: AdvertisementsInterface))) ()

isSearchValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSearchValid_super object_ = (isSearchValid_impl (javaCast object_ :: AdvertisementsInterface))

isSearchValid_impl :: AdvertisementsInterface -> IO (Bool)
isSearchValid_impl this = javaAbstractMethod "isSearchValid"


setCurrentPageNum :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setCurrentPageNum object_ a1 = jmethod object_ "setCurrentPageNum" (\() -> (setCurrentPageNum_impl (javaCast object_ :: AdvertisementsInterface))) () a1

setCurrentPageNum_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setCurrentPageNum_super object_ a1 = (setCurrentPageNum_impl (javaCast object_ :: AdvertisementsInterface)) a1

setCurrentPageNum_impl :: AdvertisementsInterface -> Int -> IO (())
setCurrentPageNum_impl this currentPageNum = javaAbstractMethod "setCurrentPageNum"


setErrorDescription :: (JavaObjectClass this_) => this_ -> String -> IO (())
setErrorDescription object_ a1 = jmethod object_ "setErrorDescription" (\() -> (setErrorDescription_impl (javaCast object_ :: AdvertisementsInterface))) () a1

setErrorDescription_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setErrorDescription_super object_ a1 = (setErrorDescription_impl (javaCast object_ :: AdvertisementsInterface)) a1

setErrorDescription_impl :: AdvertisementsInterface -> String -> IO (())
setErrorDescription_impl this errorDescription = javaAbstractMethod "setErrorDescription"


setErrorNum :: (JavaObjectClass this_) => this_ -> String -> IO (())
setErrorNum object_ a1 = jmethod object_ "setErrorNum" (\() -> (setErrorNum_impl (javaCast object_ :: AdvertisementsInterface))) () a1

setErrorNum_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setErrorNum_super object_ a1 = (setErrorNum_impl (javaCast object_ :: AdvertisementsInterface)) a1

setErrorNum_impl :: AdvertisementsInterface -> String -> IO (())
setErrorNum_impl this errorNum = javaAbstractMethod "setErrorNum"


setNumberOfProductsInPage :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setNumberOfProductsInPage object_ a1 = jmethod object_ "setNumberOfProductsInPage" (\() -> (setNumberOfProductsInPage_impl (javaCast object_ :: AdvertisementsInterface))) () a1

setNumberOfProductsInPage_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setNumberOfProductsInPage_super object_ a1 = (setNumberOfProductsInPage_impl (javaCast object_ :: AdvertisementsInterface)) a1

setNumberOfProductsInPage_impl :: AdvertisementsInterface -> Int -> IO (())
setNumberOfProductsInPage_impl this numberOfProductsInPage = javaAbstractMethod "setNumberOfProductsInPage"


setStatusCode :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setStatusCode object_ a1 = jmethod object_ "setStatusCode" (\() -> (setStatusCode_impl (javaCast object_ :: AdvertisementsInterface))) () a1

setStatusCode_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setStatusCode_super object_ a1 = (setStatusCode_impl (javaCast object_ :: AdvertisementsInterface)) a1

setStatusCode_impl :: AdvertisementsInterface -> Int -> IO (())
setStatusCode_impl this statusCode = javaAbstractMethod "setStatusCode"


setTotalNumberOfProducts :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTotalNumberOfProducts object_ a1 = jmethod object_ "setTotalNumberOfProducts" (\() -> (setTotalNumberOfProducts_impl (javaCast object_ :: AdvertisementsInterface))) () a1

setTotalNumberOfProducts_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTotalNumberOfProducts_super object_ a1 = (setTotalNumberOfProducts_impl (javaCast object_ :: AdvertisementsInterface)) a1

setTotalNumberOfProducts_impl :: AdvertisementsInterface -> Int -> IO (())
setTotalNumberOfProducts_impl this totalNumberOfProducts = javaAbstractMethod "setTotalNumberOfProducts"


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AdvertisementsInterface))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AdvertisementsInterface))

toString_impl :: AdvertisementsInterface -> IO (String)
toString_impl this = javaAbstractMethod "toString"


