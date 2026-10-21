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
-- package org.allbinary.business.category.properties.root
module RootCategoryPropertiesInterface where

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
import qualified AbPath -- org.allbinary.logic.io.path.AbPath

-- Java interface: the classes that implement it have these functions
data RootCategoryPropertiesInterface = RootCategoryPropertiesInterface
    { header_ :: JavaHeader
    }

instance JavaNull RootCategoryPropertiesInterface where
    javaNull = javaNullRecord "RootCategoryPropertiesInterface"

instance JavaEquals RootCategoryPropertiesInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RootCategoryPropertiesInterface where
    (==) = jrecordEquals

instance JavaObjectClass RootCategoryPropertiesInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> RootCategoryPropertiesInterface
fromHeader_ header = RootCategoryPropertiesInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (RootCategoryPropertiesInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
setRootFilePath :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
setRootFilePath object_ a1 = jmethod object_ "setRootFilePath" (\() -> (setRootFilePath_impl (javaCast object_ :: RootCategoryPropertiesInterface))) () a1

setRootFilePath_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (())
setRootFilePath_super object_ a1 = (setRootFilePath_impl (javaCast object_ :: RootCategoryPropertiesInterface)) a1

setRootFilePath_impl :: RootCategoryPropertiesInterface -> AbPath.AbPath -> IO (())
setRootFilePath_impl this value = javaAbstractMethod "setRootFilePath"


-- throws Exception
getRootFilePath :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getRootFilePath object_ = jmethod object_ "getRootFilePath" (\() -> (getRootFilePath_impl (javaCast object_ :: RootCategoryPropertiesInterface))) ()

getRootFilePath_super :: (JavaObjectClass this_) => this_ -> IO (AbPath.AbPath)
getRootFilePath_super object_ = (getRootFilePath_impl (javaCast object_ :: RootCategoryPropertiesInterface))

getRootFilePath_impl :: RootCategoryPropertiesInterface -> IO (AbPath.AbPath)
getRootFilePath_impl this = javaAbstractMethod "getRootFilePath"


