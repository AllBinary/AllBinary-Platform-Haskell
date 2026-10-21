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
-- package views.admin.inventory.listings
module InventoryViewSearchInterface where

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

-- Java interface: the classes that implement it have these functions
data InventoryViewSearchInterface = InventoryViewSearchInterface
    { header_ :: JavaHeader
    }

instance JavaNull InventoryViewSearchInterface where
    javaNull = javaNullRecord "InventoryViewSearchInterface"

instance JavaEquals InventoryViewSearchInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventoryViewSearchInterface where
    (==) = jrecordEquals

instance JavaObjectClass InventoryViewSearchInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> InventoryViewSearchInterface
fromHeader_ header = InventoryViewSearchInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (InventoryViewSearchInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
searchSingleStaticPage :: (JavaObjectClass this_) => this_ -> IO (String)
searchSingleStaticPage object_ = jmethod object_ "searchSingleStaticPage" (\() -> (searchSingleStaticPage_impl (javaCast object_ :: InventoryViewSearchInterface))) ()

searchSingleStaticPage_super :: (JavaObjectClass this_) => this_ -> IO (String)
searchSingleStaticPage_super object_ = (searchSingleStaticPage_impl (javaCast object_ :: InventoryViewSearchInterface))

searchSingleStaticPage_impl :: InventoryViewSearchInterface -> IO (String)
searchSingleStaticPage_impl this = javaAbstractMethod "searchSingleStaticPage"


-- throws Exception
searchSingleDynamicPage :: (JavaObjectClass this_) => this_ -> IO (String)
searchSingleDynamicPage object_ = jmethod object_ "searchSingleDynamicPage" (\() -> (searchSingleDynamicPage_impl (javaCast object_ :: InventoryViewSearchInterface))) ()

searchSingleDynamicPage_super :: (JavaObjectClass this_) => this_ -> IO (String)
searchSingleDynamicPage_super object_ = (searchSingleDynamicPage_impl (javaCast object_ :: InventoryViewSearchInterface))

searchSingleDynamicPage_impl :: InventoryViewSearchInterface -> IO (String)
searchSingleDynamicPage_impl this = javaAbstractMethod "searchSingleDynamicPage"


-- throws Exception
search :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
search object_ = jmethod object_ "search" (\() -> (search_impl (javaCast object_ :: InventoryViewSearchInterface))) ()

search_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
search_super object_ = (search_impl (javaCast object_ :: InventoryViewSearchInterface))

search_impl :: InventoryViewSearchInterface -> IO (JavaArray (String))
search_impl this = javaAbstractMethod "search"


-- throws Exception
getProduct :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getProduct object_ a1 = jmethod object_ "getProduct" (\() -> (getProduct_impl (javaCast object_ :: InventoryViewSearchInterface))) () a1

getProduct_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getProduct_super object_ a1 = (getProduct_impl (javaCast object_ :: InventoryViewSearchInterface)) a1

getProduct_impl :: InventoryViewSearchInterface -> String -> IO (String)
getProduct_impl this product = javaAbstractMethod "getProduct"


