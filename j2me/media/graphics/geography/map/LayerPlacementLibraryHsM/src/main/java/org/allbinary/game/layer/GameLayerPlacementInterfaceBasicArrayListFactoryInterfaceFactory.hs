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
module GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory where

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
import qualified LayerPlacementInterfaceBasicArrayListFactoryInterface -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
    { header_ :: JavaHeader
    }

instance JavaNull GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory where
    javaNull = javaNullRecord "GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory"

instance JavaEquals GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
fromHeader_ header = GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (LayerPlacementInterfaceBasicArrayListFactoryInterface.LayerPlacementInterfaceBasicArrayListFactoryInterface)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (LayerPlacementInterfaceBasicArrayListFactoryInterface.LayerPlacementInterfaceBasicArrayListFactoryInterface)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory)) a1

getInstance_impl :: GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory -> Int -> IO (LayerPlacementInterfaceBasicArrayListFactoryInterface.LayerPlacementInterfaceBasicArrayListFactoryInterface)
getInstance_impl this level = javaAbstractMethod "getInstance"


size :: (JavaObjectClass this_) => this_ -> IO (Int)
size object_ = jmethod object_ "size" (\() -> (size_impl (javaCast object_ :: GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory))) ()

size_super :: (JavaObjectClass this_) => this_ -> IO (Int)
size_super object_ = (size_impl (javaCast object_ :: GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory))

size_impl :: GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory -> IO (Int)
size_impl this = javaAbstractMethod "size"


