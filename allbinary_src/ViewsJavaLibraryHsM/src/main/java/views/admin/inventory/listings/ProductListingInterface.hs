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
module ProductListingInterface where

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
data ProductListingInterface = ProductListingInterface
    { header_ :: JavaHeader
    }

instance JavaNull ProductListingInterface where
    javaNull = javaNullRecord "ProductListingInterface"

instance JavaEquals ProductListingInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProductListingInterface where
    (==) = jrecordEquals

instance JavaObjectClass ProductListingInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ProductListingInterface
fromHeader_ header = ProductListingInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ProductListingInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
generateAll :: (JavaObjectClass this_) => this_ -> IO (String)
generateAll object_ = jmethod object_ "generateAll" (\() -> (generateAll_impl (javaCast object_ :: ProductListingInterface))) ()

generateAll_super :: (JavaObjectClass this_) => this_ -> IO (String)
generateAll_super object_ = (generateAll_impl (javaCast object_ :: ProductListingInterface))

generateAll_impl :: ProductListingInterface -> IO (String)
generateAll_impl this = javaAbstractMethod "generateAll"


-- throws Exception
-- Java overload of generateAll with a different parameter count: give it a different name
generateAll :: (JavaObjectClass this_) => this_ -> String -> IO (String)
generateAll object_ a1 = jmethod object_ "generateAll" (\() -> (generateAll_impl (javaCast object_ :: ProductListingInterface))) () a1

generateAll_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
generateAll_super object_ a1 = (generateAll_impl (javaCast object_ :: ProductListingInterface)) a1

generateAll_impl :: ProductListingInterface -> String -> IO (String)
generateAll_impl this storeName = javaAbstractMethod "generateAll"


