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
-- package org.allbinary.game.health
module HealthBarFactory where

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
import qualified HealthBar -- same package or java.lang
import qualified HealthBarTwodAnimation -- same package or java.lang
import qualified Health -- same package or java.lang
import qualified HealthBarAnimationInterfaceFactory -- same package or java.lang
import qualified OpenGLFeatureUtil -- org.allbinary.graphics.opengles.OpenGLFeatureUtil
import qualified FeaturedAnimationInterfaceFactoryInterfaceFactory -- org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer

data HealthBarFactory = HealthBarFactory
    { header_ :: JavaHeader
    }

instance JavaNull HealthBarFactory where
    javaNull = javaNullRecord "HealthBarFactory"

instance JavaEquals HealthBarFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HealthBarFactory where
    (==) = jrecordEquals

instance JavaObjectClass HealthBarFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HealthBarFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = HealthBarFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: HealthBarFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO HealthBarFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HealthBarFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Health.Health -> Int -> Int -> IO (HealthBar.HealthBar)
getInstance object_ a1 a2 a3 a4 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: HealthBarFactory))) () a1 a2 a3 a4

getInstance_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Health.Health -> Int -> Int -> IO (HealthBar.HealthBar)
getInstance_super object_ a1 a2 a3 a4 = (getInstance_impl (javaCast object_ :: HealthBarFactory)) a1 a2 a3 a4

getInstance_impl :: HealthBarFactory -> AllBinaryLayer.AllBinaryLayer -> Health.Health -> Int -> Int -> IO (HealthBar.HealthBar)
getInstance_impl this layerInterface healthInterface location direction = do
    javaCatchReturn $ do
        if (jio (OpenGLFeatureUtil.isAnyThreed ((jio (OpenGLFeatureUtil.getInstance))))) then do
            featuredAnimationInterfaceFactoryInterfaceFactory <- (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance)
            let healthBarAnimationInterfaceFactory = (javaCast (jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.get featuredAnimationInterfaceFactoryInterfaceFactory (Health.nAME))) :: HealthBarAnimationInterfaceFactory.HealthBarAnimationInterfaceFactory)
            javaReturn =<< (HealthBar.new_4 layerInterface healthInterface (jio (HealthBarAnimationInterfaceFactory.getInstanceByLocation healthBarAnimationInterfaceFactory layerInterface location)) direction)
        else do
            javaReturn =<< (HealthBar.new_4 layerInterface healthInterface (jio (HealthBarTwodAnimation.new_2 layerInterface location)) direction)


