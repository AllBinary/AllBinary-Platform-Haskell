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
-- package org.allbinary.game.layer.resources
module OnDemandResourcesFactory where

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
import qualified OnDemandResources -- same package or java.lang

data OnDemandResourcesFactory = OnDemandResourcesFactory
    { header_ :: JavaHeader
    }

instance JavaNull OnDemandResourcesFactory where
    javaNull = javaNullRecord "OnDemandResourcesFactory"

instance JavaEquals OnDemandResourcesFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OnDemandResourcesFactory where
    (==) = jrecordEquals

instance JavaObjectClass OnDemandResourcesFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OnDemandResourcesFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = OnDemandResourcesFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "size" (\() -> size_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    pure this

initFields_ :: OnDemandResourcesFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OnDemandResourcesFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OnDemandResourcesFactory -> IO ()
init_ this = do
    initFields_ this


size :: (JavaObjectClass this_) => this_ -> IO (Int)
size object_ = jmethod object_ "size" (\() -> (size_impl (javaCast object_ :: OnDemandResourcesFactory))) ()

size_super :: (JavaObjectClass this_) => this_ -> IO (Int)
size_super object_ = (size_impl (javaCast object_ :: OnDemandResourcesFactory))

size_impl :: OnDemandResourcesFactory -> IO (Int)
size_impl this = do
        pure (0)


remove :: (JavaObjectClass this_) => this_ -> Int -> IO (OnDemandResources.OnDemandResources)
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: OnDemandResourcesFactory))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> Int -> IO (OnDemandResources.OnDemandResources)
remove_super object_ a1 = (remove_impl (javaCast object_ :: OnDemandResourcesFactory)) a1

remove_impl :: OnDemandResourcesFactory -> Int -> IO (OnDemandResources.OnDemandResources)
remove_impl this layerId = do
        pure (OnDemandResources.nULL_ON_DEMAND_RESOURCES)


