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
-- package org.allbinary.business.category.properties
module CategoryPropertiesFactoryInterface where

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
import qualified CategoryPropertiesInterface -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data CategoryPropertiesFactoryInterface = CategoryPropertiesFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull CategoryPropertiesFactoryInterface where
    javaNull = javaNullRecord "CategoryPropertiesFactoryInterface"

instance JavaEquals CategoryPropertiesFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryPropertiesFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass CategoryPropertiesFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CategoryPropertiesFactoryInterface
fromHeader_ header = CategoryPropertiesFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CategoryPropertiesFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getInstance :: (JavaObjectClass this_) => this_ -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: CategoryPropertiesFactoryInterface))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: CategoryPropertiesFactoryInterface))

getInstance_impl :: CategoryPropertiesFactoryInterface -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getInstance_impl this = javaAbstractMethod "getInstance"


