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
module OnDemandResources where

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
import qualified BaseResourceAnimationInterfaceFactoryInterfaceFactory -- org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory
import qualified ImageCache -- org.allbinary.image.ImageCache
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data OnDemandResources = OnDemandResources
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull OnDemandResources where
    javaNull = javaNullRecord "OnDemandResources"

instance JavaEquals OnDemandResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OnDemandResources where
    (==) = jrecordEquals

instance JavaObjectClass OnDemandResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_ON_DEMAND_RESOURCES #-}
nULL_ON_DEMAND_RESOURCES = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OnDemandResources
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = OnDemandResources header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "waitFor" (\() -> waitFor_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "initAt" (\() -> initAt_impl this)
    pure this

initFields_ :: OnDemandResources -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO OnDemandResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OnDemandResources -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
waitFor :: (JavaObjectClass this_) => this_ -> IO (())
waitFor object_ = jmethod object_ "waitFor" (\() -> (waitFor_impl (javaCast object_ :: OnDemandResources))) ()

waitFor_super :: (JavaObjectClass this_) => this_ -> IO (())
waitFor_super object_ = (waitFor_impl (javaCast object_ :: OnDemandResources))

waitFor_impl :: OnDemandResources -> IO (())
waitFor_impl this = do
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: OnDemandResources))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: OnDemandResources))

init_impl :: OnDemandResources -> IO (())
init_impl this = do
        pure ()


-- throws Exception
initAt :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> BaseResourceAnimationInterfaceFactoryInterfaceFactory.BaseResourceAnimationInterfaceFactoryInterfaceFactory -> Int -> String -> Int -> IO (Int)
initAt object_ a1 a2 a3 a4 a5 = jmethod object_ "initAt" (\() -> (initAt_impl (javaCast object_ :: OnDemandResources))) () a1 a2 a3 a4 a5

initAt_super :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> BaseResourceAnimationInterfaceFactoryInterfaceFactory.BaseResourceAnimationInterfaceFactoryInterfaceFactory -> Int -> String -> Int -> IO (Int)
initAt_super object_ a1 a2 a3 a4 a5 = (initAt_impl (javaCast object_ :: OnDemandResources)) a1 a2 a3 a4 a5

initAt_impl :: OnDemandResources -> ImageCache.ImageCache -> BaseResourceAnimationInterfaceFactoryInterfaceFactory.BaseResourceAnimationInterfaceFactoryInterfaceFactory -> Int -> String -> Int -> IO (Int)
initAt_impl this imageCache resourceAnimationInterfaceFactoryInterfaceFactory portion loadingString index = do
        pure (0)


