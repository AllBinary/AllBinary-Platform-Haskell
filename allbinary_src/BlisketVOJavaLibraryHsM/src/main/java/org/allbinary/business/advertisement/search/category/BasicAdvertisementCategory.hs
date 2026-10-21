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
-- package org.allbinary.business.advertisement.search.category
module BasicAdvertisementCategory where

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
import qualified AdvertisementCategoryInterface

-- implements AdvertisementCategoryInterface
data BasicAdvertisementCategory = BasicAdvertisementCategory
    { header_ :: JavaHeader
    , categoryId :: IORef (String)
    }

instance JavaNull BasicAdvertisementCategory where
    javaNull = javaNullRecord "BasicAdvertisementCategory"

instance JavaEquals BasicAdvertisementCategory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicAdvertisementCategory where
    (==) = jrecordEquals

instance JavaObjectClass BasicAdvertisementCategory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicAdvertisementCategory
newRecord_ = do
    header_ <- newJavaHeader
    categoryId <- newIORef ""
    let this = BasicAdvertisementCategory header_ categoryId
    jregisterLevel header_ this
    AdvertisementCategoryInterface.registerInterface_ header_
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: BasicAdvertisementCategory -> IO ()
initFields_ this = do
    jset this.categoryId (javaNull)
    pure ()

new_1 :: String -> IO BasicAdvertisementCategory
new_1 categoryId = do
    this <- newRecord_
    init_1 this categoryId
    pure this

init_1 :: BasicAdvertisementCategory -> String -> IO ()
init_1 this categoryId = do
        initFields_ this
        jset (this).categoryId (categoryId)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BasicAdvertisementCategory))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BasicAdvertisementCategory))

toString_impl :: BasicAdvertisementCategory -> IO (String)
toString_impl this = do
        pure ((jget (this).categoryId))


