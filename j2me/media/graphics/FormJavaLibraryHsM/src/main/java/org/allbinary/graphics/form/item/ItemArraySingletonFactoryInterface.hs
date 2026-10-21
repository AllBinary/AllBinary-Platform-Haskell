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
-- package org.allbinary.graphics.form.item
module ItemArraySingletonFactoryInterface where

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
import qualified ABCustomItem -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data ItemArraySingletonFactoryInterface = ItemArraySingletonFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull ItemArraySingletonFactoryInterface where
    javaNull = javaNullRecord "ItemArraySingletonFactoryInterface"

instance JavaEquals ItemArraySingletonFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ItemArraySingletonFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass ItemArraySingletonFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ItemArraySingletonFactoryInterface
fromHeader_ header = ItemArraySingletonFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ItemArraySingletonFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getItems :: (JavaObjectClass this_) => this_ -> IO (JavaArray (ABCustomItem.ABCustomItem))
getItems object_ = jmethod object_ "getItems" (\() -> (getItems_impl (javaCast object_ :: ItemArraySingletonFactoryInterface))) ()

getItems_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (ABCustomItem.ABCustomItem))
getItems_super object_ = (getItems_impl (javaCast object_ :: ItemArraySingletonFactoryInterface))

getItems_impl :: ItemArraySingletonFactoryInterface -> IO (JavaArray (ABCustomItem.ABCustomItem))
getItems_impl this = javaAbstractMethod "getItems"


