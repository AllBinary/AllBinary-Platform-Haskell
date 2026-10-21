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
-- package org.allbinary.game.resource
module FeatureResourceInitializationUtil where

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
import qualified FeaturedResourceFactory -- same package or java.lang
import qualified FeaturedResourceRelativeRelationshipFactory -- same package or java.lang
import qualified FeaturedAnimationInterfaceFactoryInterfaceFactory -- org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data FeatureResourceInitializationUtil = FeatureResourceInitializationUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull FeatureResourceInitializationUtil where
    javaNull = javaNullRecord "FeatureResourceInitializationUtil"

instance JavaEquals FeatureResourceInitializationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FeatureResourceInitializationUtil where
    (==) = jrecordEquals

instance JavaObjectClass FeatureResourceInitializationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FeatureResourceInitializationUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = FeatureResourceInitializationUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: FeatureResourceInitializationUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO FeatureResourceInitializationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FeatureResourceInitializationUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (FeatureResourceInitializationUtil)
getInstance = do
        pure (FeatureResourceInitializationUtil.instance_)


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: FeatureResourceInitializationUtil))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: FeatureResourceInitializationUtil)) a1

init_impl :: FeatureResourceInitializationUtil -> Int -> IO (())
init_impl this level = do
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).sTART) this (jget (commonStrings).iNIT))
        featuredResourceFactory <- (fmap (\value_ -> javaCast value_ :: FeaturedResourceFactory.FeaturedResourceFactory) (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance))
        Control.Monad.void (FeaturedResourceFactory.init featuredResourceFactory level)
        Control.Monad.void (FeaturedResourceRelativeRelationshipFactory.init ((jio (FeaturedResourceRelativeRelationshipFactory.getInstance))) level)
        pure ()


