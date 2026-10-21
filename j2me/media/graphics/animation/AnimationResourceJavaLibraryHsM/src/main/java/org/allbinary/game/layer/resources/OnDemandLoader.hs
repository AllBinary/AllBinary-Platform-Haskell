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
module OnDemandLoader where

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
import qualified OnDemandResourcesFactory -- same package or java.lang
import qualified OnDemandResources -- same package or java.lang
import qualified Feature -- same package or java.lang
import qualified ResourceLoadingLevel -- same package or java.lang
import qualified BaseResourceAnimationInterfaceFactoryInterfaceFactory -- org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified MainFeatureFactory -- org.allbinary.game.configuration.feature.MainFeatureFactory
import qualified GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory -- org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
import qualified LayerPlacementInterfaceBasicArrayListFactoryInterface -- org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface
import qualified ResourceLoadingLevelFactory -- org.allbinary.game.resource.ResourceLoadingLevelFactory
import qualified ImageCache -- org.allbinary.image.ImageCache
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data OnDemandLoader = OnDemandLoader
    { header_ :: JavaHeader
    , onDemandResourcesFactory :: IORef (OnDemandResourcesFactory.OnDemandResourcesFactory)
    , gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory :: IORef (GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory)
    , resourceAnimationInterfaceFactoryInterfaceFactory :: IORef (BaseResourceAnimationInterfaceFactoryInterfaceFactory.BaseResourceAnimationInterfaceFactoryInterfaceFactory)
    }

instance JavaNull OnDemandLoader where
    javaNull = javaNullRecord "OnDemandLoader"

instance JavaEquals OnDemandLoader where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OnDemandLoader where
    (==) = jrecordEquals

instance JavaObjectClass OnDemandLoader where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OnDemandLoader
newRecord_ = do
    header_ <- newJavaHeader
    onDemandResourcesFactory <- newIORef javaNull
    gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory <- newIORef javaNull
    resourceAnimationInterfaceFactoryInterfaceFactory <- newIORef javaNull
    let this = OnDemandLoader header_ onDemandResourcesFactory gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory resourceAnimationInterfaceFactoryInterfaceFactory
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "initAll" (\() -> initAll_impl this)
    jregisterMethod header_ "initLevel" (\() -> initLevel_impl this)
    pure this

initFields_ :: OnDemandLoader -> IO ()
initFields_ this = do
    jset this.onDemandResourcesFactory (javaNull)
    jset this.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory (javaNull)
    jset this.resourceAnimationInterfaceFactoryInterfaceFactory (javaNull)
    pure ()

new_3 :: OnDemandResourcesFactory.OnDemandResourcesFactory -> GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory -> BaseResourceAnimationInterfaceFactoryInterfaceFactory.BaseResourceAnimationInterfaceFactoryInterfaceFactory -> IO OnDemandLoader
new_3 onDemandResourcesFactory gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory resourceAnimationInterfaceFactoryInterfaceFactory = do
    this <- newRecord_
    init_3 this onDemandResourcesFactory gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory resourceAnimationInterfaceFactoryInterfaceFactory
    pure this

init_3 :: OnDemandLoader -> OnDemandResourcesFactory.OnDemandResourcesFactory -> GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory -> BaseResourceAnimationInterfaceFactoryInterfaceFactory.BaseResourceAnimationInterfaceFactoryInterfaceFactory -> IO ()
init_3 this onDemandResourcesFactory gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory resourceAnimationInterfaceFactoryInterfaceFactory = do
        initFields_ this
        jset (this).onDemandResourcesFactory (onDemandResourcesFactory)
        jset (this).gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory (gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory)
        jset (this).resourceAnimationInterfaceFactoryInterfaceFactory (resourceAnimationInterfaceFactoryInterfaceFactory)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Int -> String -> IO (())
init object_ a1 a2 a3 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: OnDemandLoader))) () a1 a2 a3

init_super :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Int -> String -> IO (())
init_super object_ a1 a2 a3 = (init_impl (javaCast object_ :: OnDemandLoader)) a1 a2 a3

init_impl :: OnDemandLoader -> ImageCache.ImageCache -> Int -> String -> IO (())
init_impl this imageCache level loadingString = do
    javaCatchReturn $ do
        resourceLoadingLevelFactory <- (ResourceLoadingLevelFactory.getInstance)
        if (jio (Features.isFeature ((jio (Features.getInstance))) (jget ((jio (MainFeatureFactory.getInstance))).lOAD_ALL))) then do
            when (jio (BaseResourceAnimationInterfaceFactoryInterfaceFactory.isInitialized ((jget (this).resourceAnimationInterfaceFactoryInterfaceFactory)))) $ do
                javaReturn (())
            Control.Monad.void (OnDemandLoader.initAll this imageCache loadingString)
        else when (level /= (jio (ResourceLoadingLevel.getLevel ((jget (resourceLoadingLevelFactory).lOAD_ALL))))) $ do
            layerPlacementInterfaceBasicArrayListFactoryInterface <- (GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.getInstance ((jget (this).gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory)) level)
            Control.Monad.void (OnDemandLoader.initLevel this layerPlacementInterfaceBasicArrayListFactoryInterface imageCache level loadingString)
    pure ()


-- throws Exception
initAll :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> String -> IO (())
initAll object_ a1 a2 = jmethod object_ "initAll" (\() -> (initAll_impl (javaCast object_ :: OnDemandLoader))) () a1 a2

initAll_super :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> String -> IO (())
initAll_super object_ a1 a2 = (initAll_impl (javaCast object_ :: OnDemandLoader)) a1 a2

initAll_impl :: OnDemandLoader -> ImageCache.ImageCache -> String -> IO (())
initAll_impl this imageCache loadingString = do
        index <- newIORef (0)
        let portion = 120
        onDemandResources <- newIORef (javaNull)
        onDemandIndex <- newIORef =<< (OnDemandResourcesFactory.size ((jget (this).onDemandResourcesFactory)))
        fix $ \loop -> when ((jpreIncrement onDemandIndex (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            assignedValue <- (OnDemandResourcesFactory.remove ((jget (this).onDemandResourcesFactory)) (jget onDemandIndex))
            jset onDemandResources (assignedValue)
            when ((jget onDemandResources) /= OnDemandResources.nULL_ON_DEMAND_RESOURCES) $ do
                assignedValue <- (OnDemandResources.initAt ((jget onDemandResources)) imageCache (jget (this).resourceAnimationInterfaceFactoryInterfaceFactory) portion loadingString (jget index))
                jset index (assignedValue)
        pure ()


-- throws Exception
initLevel :: (JavaObjectClass this_) => this_ -> LayerPlacementInterfaceBasicArrayListFactoryInterface.LayerPlacementInterfaceBasicArrayListFactoryInterface -> ImageCache.ImageCache -> Int -> String -> IO (())
initLevel object_ a1 a2 a3 a4 = jmethod object_ "initLevel" (\() -> (initLevel_impl (javaCast object_ :: OnDemandLoader))) () a1 a2 a3 a4

initLevel_super :: (JavaObjectClass this_) => this_ -> LayerPlacementInterfaceBasicArrayListFactoryInterface.LayerPlacementInterfaceBasicArrayListFactoryInterface -> ImageCache.ImageCache -> Int -> String -> IO (())
initLevel_super object_ a1 a2 a3 a4 = (initLevel_impl (javaCast object_ :: OnDemandLoader)) a1 a2 a3 a4

initLevel_impl :: OnDemandLoader -> LayerPlacementInterfaceBasicArrayListFactoryInterface.LayerPlacementInterfaceBasicArrayListFactoryInterface -> ImageCache.ImageCache -> Int -> String -> IO (())
initLevel_impl this layerPlacementInterfaceBasicArrayListFactoryInterface imageCache level loadingString = do
        commonStrings <- (CommonStrings.getInstance)
        let portion = 120
        index <- newIORef (0)
        onDemandArray <- (LayerPlacementInterfaceBasicArrayListFactoryInterface.getOnDemandResources layerPlacementInterfaceBasicArrayListFactoryInterface)
        Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (commonStrings).sTART)))) (jlength onDemandArray)))))) this "initLevel")
        onDemandResources <- newIORef (javaNull)
        onDemandIndex <- newIORef ((jlength onDemandArray))
        fix $ \loop -> when ((jpreIncrement onDemandIndex (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            assignedValue <- (OnDemandResourcesFactory.remove ((jget (this).onDemandResourcesFactory)) (jindex onDemandArray ((jget onDemandIndex))))
            jset onDemandResources (assignedValue)
            when ((jget onDemandResources) /= OnDemandResources.nULL_ON_DEMAND_RESOURCES) $ do
                assignedValue <- (OnDemandResources.initAt ((jget onDemandResources)) imageCache (jget (this).resourceAnimationInterfaceFactoryInterfaceFactory) portion loadingString (jget index))
                jset index (assignedValue)
        pure ()


