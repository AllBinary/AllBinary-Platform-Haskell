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
module LayerPlacementInterface where

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
import qualified LayerPlacementType -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified ABHashtable -- org.allbinary.util.ABHashtable

-- Java interface: the classes that implement it have these functions
data LayerPlacementInterface = LayerPlacementInterface
    { header_ :: JavaHeader
    }

instance JavaNull LayerPlacementInterface where
    javaNull = javaNullRecord "LayerPlacementInterface"

instance JavaEquals LayerPlacementInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerPlacementInterface where
    (==) = jrecordEquals

instance JavaObjectClass LayerPlacementInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> LayerPlacementInterface
fromHeader_ header = LayerPlacementInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (LayerPlacementInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: LayerPlacementInterface))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: LayerPlacementInterface))

getWidth_impl :: LayerPlacementInterface -> IO (Int)
getWidth_impl this = javaAbstractMethod "getWidth"


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: LayerPlacementInterface))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: LayerPlacementInterface))

getHeight_impl :: LayerPlacementInterface -> IO (Int)
getHeight_impl this = javaAbstractMethod "getHeight"


getLayerType :: (JavaObjectClass this_) => this_ -> IO (LayerPlacementType.LayerPlacementType)
getLayerType object_ = jmethod object_ "getLayerType" (\() -> (getLayerType_impl (javaCast object_ :: LayerPlacementInterface))) ()

getLayerType_super :: (JavaObjectClass this_) => this_ -> IO (LayerPlacementType.LayerPlacementType)
getLayerType_super object_ = (getLayerType_impl (javaCast object_ :: LayerPlacementInterface))

getLayerType_impl :: LayerPlacementInterface -> IO (LayerPlacementType.LayerPlacementType)
getLayerType_impl this = javaAbstractMethod "getLayerType"


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: LayerPlacementInterface))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: LayerPlacementInterface))

getInstance_impl :: LayerPlacementInterface -> IO (ABHashtable.ABHashtable)
getInstance_impl this = javaAbstractMethod "getInstance"


