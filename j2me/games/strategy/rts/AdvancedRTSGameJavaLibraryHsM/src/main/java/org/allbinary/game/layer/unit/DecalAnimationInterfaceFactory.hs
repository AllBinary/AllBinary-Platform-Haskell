{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
-- package org.allbinary.game.layer.unit
module DecalAnimationInterfaceFactory where

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
import qualified BasicGameResources -- org.allbinary.game.layer.resources.BasicGameResources
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified FeaturedAnimationInterfaceFactoryInterfaceFactory -- org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
import qualified NullRotationAnimationFactory -- org.allbinary.animation.NullRotationAnimationFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory

data DecalAnimationInterfaceFactory = DecalAnimationInterfaceFactory
    { header_ :: JavaHeader
    }

instance JavaNull DecalAnimationInterfaceFactory where
    javaNull = javaNullRecord "DecalAnimationInterfaceFactory"

instance JavaEquals DecalAnimationInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DecalAnimationInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass DecalAnimationInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DecalAnimationInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = DecalAnimationInterfaceFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getAnimationFactory" (\() -> getAnimationFactory_impl this)
    pure this

initFields_ :: DecalAnimationInterfaceFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DecalAnimationInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DecalAnimationInterfaceFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (DecalAnimationInterfaceFactory)
getInstance = do
        pure (DecalAnimationInterfaceFactory.instance_)


-- throws Exception
getAnimationFactory :: (JavaObjectClass this_) => this_ -> BasicGameResources.BasicGameResources -> BasicColor.BasicColor -> IO (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface)
getAnimationFactory object_ a1 a2 = jmethod object_ "getAnimationFactory" (\() -> (getAnimationFactory_impl (javaCast object_ :: DecalAnimationInterfaceFactory))) () a1 a2

getAnimationFactory_super :: (JavaObjectClass this_) => this_ -> BasicGameResources.BasicGameResources -> BasicColor.BasicColor -> IO (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface)
getAnimationFactory_super object_ a1 a2 = (getAnimationFactory_impl (javaCast object_ :: DecalAnimationInterfaceFactory)) a1 a2

getAnimationFactory_impl :: DecalAnimationInterfaceFactory -> BasicGameResources.BasicGameResources -> BasicColor.BasicColor -> IO (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface)
getAnimationFactory_impl this basicGameResources basicColor = do
        animationInterfaceFactoryInterface <- newIORef (javaNull)
        if (basicColor == (jget ((jio (BasicColorFactory.getInstance))).rED)) then do
            assignedValue <- (FeaturedAnimationInterfaceFactoryInterfaceFactory.get ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance))) (jget (basicGameResources).rESOURCE))
            jset animationInterfaceFactoryInterface (assignedValue)
        else do
            assignedValue <- (NullRotationAnimationFactory.getFactoryInstance)
            jset animationInterfaceFactoryInterface (assignedValue)
        pure ((jget animationInterfaceFactoryInterface))


