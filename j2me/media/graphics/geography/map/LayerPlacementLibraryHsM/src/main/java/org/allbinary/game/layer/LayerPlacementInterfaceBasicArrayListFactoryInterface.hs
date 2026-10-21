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
-- package org.allbinary.game.layer
module LayerPlacementInterfaceBasicArrayListFactoryInterface where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- Java interface: the classes that implement it have these functions
data LayerPlacementInterfaceBasicArrayListFactoryInterface = LayerPlacementInterfaceBasicArrayListFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull LayerPlacementInterfaceBasicArrayListFactoryInterface where
    javaNull = javaNullRecord "LayerPlacementInterfaceBasicArrayListFactoryInterface"

instance JavaEquals LayerPlacementInterfaceBasicArrayListFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerPlacementInterfaceBasicArrayListFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass LayerPlacementInterfaceBasicArrayListFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> LayerPlacementInterfaceBasicArrayListFactoryInterface
fromHeader_ header = LayerPlacementInterfaceBasicArrayListFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (LayerPlacementInterfaceBasicArrayListFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getInstance :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: LayerPlacementInterfaceBasicArrayListFactoryInterface))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: LayerPlacementInterfaceBasicArrayListFactoryInterface))

getInstance_impl :: LayerPlacementInterfaceBasicArrayListFactoryInterface -> IO (BasicArrayList.BasicArrayList)
getInstance_impl this = javaAbstractMethod "getInstance"


getOnDemandResources :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getOnDemandResources object_ = jmethod object_ "getOnDemandResources" (\() -> (getOnDemandResources_impl (javaCast object_ :: LayerPlacementInterfaceBasicArrayListFactoryInterface))) ()

getOnDemandResources_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getOnDemandResources_super object_ = (getOnDemandResources_impl (javaCast object_ :: LayerPlacementInterfaceBasicArrayListFactoryInterface))

getOnDemandResources_impl :: LayerPlacementInterfaceBasicArrayListFactoryInterface -> IO (JavaArray (Int))
getOnDemandResources_impl this = javaAbstractMethod "getOnDemandResources"


