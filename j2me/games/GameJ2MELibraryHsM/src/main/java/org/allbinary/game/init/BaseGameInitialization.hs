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
-- package org.allbinary.game.init
module BaseGameInitialization where

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
import qualified Feature -- same package or java.lang
import qualified ResourceLoadingLevel -- same package or java.lang
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified FeaturedAnimationInterfaceFactoryInterfaceFactory -- org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
import qualified GameConfigurationCentral -- org.allbinary.game.configuration.GameConfigurationCentral
import qualified ChangedGameFeatureListener -- org.allbinary.game.configuration.event.ChangedGameFeatureListener
import qualified InputFeatureFactory -- org.allbinary.game.configuration.feature.InputFeatureFactory
import qualified MainFeatureFactory -- org.allbinary.game.configuration.feature.MainFeatureFactory
import qualified PlatformInputMappingFactory -- org.allbinary.game.input.PlatformInputMappingFactory
import qualified GameKeyEventFactory -- org.allbinary.game.input.event.GameKeyEventFactory
import qualified FeaturedResourceRelativeRelationshipFactory -- org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory
import qualified ResourceInitialization -- org.allbinary.game.resource.ResourceInitialization
import qualified ResourceLoadingLevelFactory -- org.allbinary.game.resource.ResourceLoadingLevelFactory
import qualified ProgressCanvas -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified GameFeatureImageCacheFactory -- org.allbinary.image.GameFeatureImageCacheFactory
import qualified CompleteMotionGestureInputToGameMotionGestureInput -- org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput
import qualified BasicTouchInputFactory -- org.allbinary.input.motion.button.BasicTouchInputFactory
import qualified CancelTouchButtonInputFactory -- org.allbinary.input.motion.button.CancelTouchButtonInputFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified GameInitializationInterface

-- implements GameInitializationInterface
data BaseGameInitialization = BaseGameInitialization
    { header_ :: JavaHeader
    , resourceInitializationArray :: IORef (JavaArray (ResourceInitialization.ResourceInitialization))
    , portion :: IORef (Int)
    , initialized :: IORef (Bool)
    , eARLY_RESOURCES :: IORef (Int)
    , gAME_RESOURCES :: IORef (Int)
    , eARLY_CHANGABLE_RESOURCES :: IORef (Int)
    , gAME_CHANGABLE_RESOURCES :: IORef (Int)
    , gameInitialized :: IORef (Bool)
    , allLoaded :: IORef (Bool)
    }

instance JavaNull BaseGameInitialization where
    javaNull = javaNullRecord "BaseGameInitialization"

instance JavaEquals BaseGameInitialization where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseGameInitialization where
    (==) = jrecordEquals

instance JavaObjectClass BaseGameInitialization where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_BASE_GAME_INITIALIZATION #-}
nULL_BASE_GAME_INITIALIZATION = unsafePerformIO ((new_2 (jnewArray (0) javaNull) 0))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BaseGameInitialization
newRecord_ = do
    header_ <- newJavaHeader
    resourceInitializationArray <- newIORef javaNull
    portion <- newIORef 0
    initialized <- newIORef False
    eARLY_RESOURCES <- newIORef 0
    gAME_RESOURCES <- newIORef 0
    eARLY_CHANGABLE_RESOURCES <- newIORef 0
    gAME_CHANGABLE_RESOURCES <- newIORef 0
    gameInitialized <- newIORef False
    allLoaded <- newIORef False
    let this = BaseGameInitialization header_ resourceInitializationArray portion initialized eARLY_RESOURCES gAME_RESOURCES eARLY_CHANGABLE_RESOURCES gAME_CHANGABLE_RESOURCES gameInitialized allLoaded
    jregisterLevel header_ this
    GameInitializationInterface.registerInterface_ header_
    jregisterMethod header_ "initKey" (\() -> initKey_impl this)
    jregisterMethod header_ "initKeyMapping" (\() -> initKeyMapping_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "resourceInitialization" (\() -> resourceInitialization_impl this)
    jregisterMethod header_ "resourceAnimationChange" (\() -> resourceAnimationChange_impl this)
    jregisterMethod header_ "clearResources" (\() -> clearResources_impl this)
    jregisterMethod header_ "setGameInitialized" (\() -> setGameInitialized_impl this)
    jregisterMethod header_ "isGameInitialized" (\() -> isGameInitialized_impl this)
    jregisterMethod header_ "getPortion" (\() -> getPortion_impl this)
    jregisterMethod header_ "setInitialized" (\() -> setInitialized_impl this)
    jregisterMethod header_ "isInitialized" (\() -> isInitialized_impl this)
    pure this

initFields_ :: BaseGameInitialization -> IO ()
initFields_ this = do
    jset this.resourceInitializationArray (javaNull)
    jset this.portion (0)
    jset this.initialized (False)
    jset this.eARLY_RESOURCES (0)
    jset this.gAME_RESOURCES (1)
    jset this.eARLY_CHANGABLE_RESOURCES (2)
    jset this.gAME_CHANGABLE_RESOURCES (3)
    jset this.gameInitialized (False)
    jset this.allLoaded (False)
    pure ()

new_2 :: JavaArray (ResourceInitialization.ResourceInitialization) -> Int -> IO BaseGameInitialization
new_2 resourceInitializationArray portion = do
    this <- newRecord_
    init_2 this resourceInitializationArray portion
    pure this

init_2 :: BaseGameInitialization -> JavaArray (ResourceInitialization.ResourceInitialization) -> Int -> IO ()
init_2 this resourceInitializationArray portion = do
        initFields_ this
        jset (this).resourceInitializationArray (resourceInitializationArray)
        jset (this).portion (portion)
        pure ()


-- throws Exception
initKey :: (JavaObjectClass this_) => this_ -> Int -> IO (())
initKey object_ a1 = jmethod object_ "initKey" (\() -> (initKey_impl (javaCast object_ :: BaseGameInitialization))) () a1

initKey_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
initKey_super object_ a1 = (initKey_impl (javaCast object_ :: BaseGameInitialization)) a1

initKey_impl :: BaseGameInitialization -> Int -> IO (())
initKey_impl this portion = do
        pure ()


-- throws Exception
initKeyMapping :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> Int -> IO (())
initKeyMapping object_ a1 a2 = jmethod object_ "initKeyMapping" (\() -> (initKeyMapping_impl (javaCast object_ :: BaseGameInitialization))) () a1 a2

initKeyMapping_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> Int -> IO (())
initKeyMapping_super object_ a1 a2 = (initKeyMapping_impl (javaCast object_ :: BaseGameInitialization)) a1 a2

initKeyMapping_impl :: BaseGameInitialization -> AbeClientInformationInterface.AbeClientInformationInterface -> Int -> IO (())
initKeyMapping_impl this abeClientInformation portion = do
        when (jio (ChangedGameFeatureListener.isChangedFeature ((jio (ChangedGameFeatureListener.getInstance))) (javaCast (jget ((jio (InputFeatureFactory.getInstance))).iNPUT_MAPPING)))) $ do
            Control.Monad.void (PlatformInputMappingFactory.init ((jio (PlatformInputMappingFactory.getPersistentInputMappingInstance ((jio (PlatformInputMappingFactory.getInstance)))))) abeClientInformation)
            Control.Monad.void (ProgressCanvas.addNormalPortion ((jio (ProgressCanvasFactory.getInstance))) 50 "Game Keys")
            Control.Monad.void (ChangedGameFeatureListener.remove ((jio (ChangedGameFeatureListener.getInstance))) (javaCast (jget ((jio (InputFeatureFactory.getInstance))).iNPUT_MAPPING)))
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> CommandListener.CommandListener -> Int -> IO (())
init object_ a1 a2 a3 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BaseGameInitialization))) () a1 a2 a3

init_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> CommandListener.CommandListener -> Int -> IO (())
init_super object_ a1 a2 a3 = (init_impl (javaCast object_ :: BaseGameInitialization)) a1 a2 a3

init_impl :: BaseGameInitialization -> AbeClientInformationInterface.AbeClientInformationInterface -> CommandListener.CommandListener -> Int -> IO (())
init_impl this abeClientInformation commandListener level = do
        resourceLoadingLevelFactory <- (ResourceLoadingLevelFactory.getInstance)
        when ((Prelude.not (jio (BaseGameInitialization.isInitialized this))) && (((level == (jio (ResourceLoadingLevel.getLevel ((jget (resourceLoadingLevelFactory).lOAD_ALL))))) || (level == (jio (ResourceLoadingLevel.getLevel ((jget (resourceLoadingLevelFactory).lOAD_EARLY)))))))) $ do
            localPortion <- newIORef (40)
            when (level == (jio (ResourceLoadingLevel.getLevel ((jget (resourceLoadingLevelFactory).lOAD_EARLY))))) $ do
                jset localPortion (8)
            Control.Monad.void (BaseGameInitialization.setInitialized this True)
            Control.Monad.void (BaseGameInitialization.initKey this (jio (BaseGameInitialization.getPortion this)))
            Control.Monad.void (BaseGameInitialization.initKeyMapping this abeClientInformation (jio (BaseGameInitialization.getPortion this)))
            Control.Monad.void (GameKeyEventFactory.init ((jio (GameKeyEventFactory.getInstance))))
            progressCanvas <- (ProgressCanvasFactory.getInstance)
            Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas (jget localPortion) "Game Key Events")
            Control.Monad.void (BasicTouchInputFactory.init ((jio (BasicTouchInputFactory.getInstance))) (jio (PlatformInputMappingFactory.getInputMapping ((jio (PlatformInputMappingFactory.getPersistentInputMappingInstance ((jio (PlatformInputMappingFactory.getInstance)))))))))
            Control.Monad.void (CancelTouchButtonInputFactory.getInstance)
            Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas (jget localPortion) "Touch Input")
            Control.Monad.void (CompleteMotionGestureInputToGameMotionGestureInput.init ((jio (CompleteMotionGestureInputToGameMotionGestureInput.getInstance))))
            Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas (jget localPortion) "Motion Input")
            Control.Monad.void (GameFeatureImageCacheFactory.init)
            Control.Monad.void (ProgressCanvas.addNormalPortion progressCanvas (jget localPortion) "Image Cache")
            Control.Monad.void (init ((jindex ((jget (this).resourceInitializationArray)) ((jget (this).eARLY_RESOURCES)))))
        pure ()


-- throws Exception
resourceInitialization :: (JavaObjectClass this_) => this_ -> Int -> IO (())
resourceInitialization object_ a1 = jmethod object_ "resourceInitialization" (\() -> (resourceInitialization_impl (javaCast object_ :: BaseGameInitialization))) () a1

resourceInitialization_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
resourceInitialization_super object_ a1 = (resourceInitialization_impl (javaCast object_ :: BaseGameInitialization)) a1

resourceInitialization_impl :: BaseGameInitialization -> Int -> IO (())
resourceInitialization_impl this level = do
        resourceLoadingLevelFactory <- (ResourceLoadingLevelFactory.getInstance)
        when ((jio (BaseGameInitialization.resourceAnimationChange this)) && (level == (jio (ResourceLoadingLevel.getLevel ((jget (resourceLoadingLevelFactory).lOAD_EARLY)))))) $ do
            Control.Monad.void (BaseGameInitialization.clearResources this)
            Control.Monad.void (init ((jindex ((jget (this).resourceInitializationArray)) ((jget (this).eARLY_CHANGABLE_RESOURCES)))))
        when ((jio (BaseGameInitialization.resourceAnimationChange this)) && (level == (jio (ResourceLoadingLevel.getLevel ((jget (resourceLoadingLevelFactory).lOAD_ALL)))))) $ do
            when (jget (this).allLoaded) $ do
                Control.Monad.void (BaseGameInitialization.clearResources this)
            when ((jio (BasicArrayList.size ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getList ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance)))))))) == 0) $ do
                Control.Monad.void (init ((jindex ((jget (this).resourceInitializationArray)) ((jget (this).eARLY_CHANGABLE_RESOURCES)))))
            Control.Monad.void (init ((jindex ((jget (this).resourceInitializationArray)) ((jget (this).gAME_CHANGABLE_RESOURCES)))))
            jset (this).allLoaded (True)
        pure ()


resourceAnimationChange :: (JavaObjectClass this_) => this_ -> IO (Bool)
resourceAnimationChange object_ = jmethod object_ "resourceAnimationChange" (\() -> (resourceAnimationChange_impl (javaCast object_ :: BaseGameInitialization))) ()

resourceAnimationChange_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
resourceAnimationChange_super object_ = (resourceAnimationChange_impl (javaCast object_ :: BaseGameInitialization))

resourceAnimationChange_impl :: BaseGameInitialization -> IO (Bool)
resourceAnimationChange_impl this = do
    javaCatchReturn $ do
        changedGameFeatureListener <- (ChangedGameFeatureListener.getInstance)
        gameConfigurationCentral <- (GameConfigurationCentral.getInstance)
        when (jio (ChangedGameFeatureListener.isChangedGameConfiguration changedGameFeatureListener (jget (gameConfigurationCentral).sCALE))) $ do
            javaReturn (True)
        when (jio (ChangedGameFeatureListener.isChangedFeature ((jio (ChangedGameFeatureListener.getInstance))) (jget ((jio (MainFeatureFactory.getInstance))).sTATIC))) $ do
            javaReturn (True)
        pure (False)


clearResources :: (JavaObjectClass this_) => this_ -> IO (())
clearResources object_ = jmethod object_ "clearResources" (\() -> (clearResources_impl (javaCast object_ :: BaseGameInitialization))) ()

clearResources_super :: (JavaObjectClass this_) => this_ -> IO (())
clearResources_super object_ = (clearResources_impl (javaCast object_ :: BaseGameInitialization))

clearResources_impl :: BaseGameInitialization -> IO (())
clearResources_impl this = do
        jset (this).allLoaded (False)
        Control.Monad.void (GameFeatureImageCacheFactory.releaseAll)
        featuredAnimationInterfaceFactoryInterfaceFactory <- (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance)
        Control.Monad.void (FeaturedAnimationInterfaceFactoryInterfaceFactory.clear featuredAnimationInterfaceFactoryInterfaceFactory)
        Control.Monad.void (FeaturedResourceRelativeRelationshipFactory.clear ((jio (FeaturedResourceRelativeRelationshipFactory.getInstance))))
        pure ()


setGameInitialized :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setGameInitialized object_ a1 = jmethod object_ "setGameInitialized" (\() -> (setGameInitialized_impl (javaCast object_ :: BaseGameInitialization))) () a1

setGameInitialized_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setGameInitialized_super object_ a1 = (setGameInitialized_impl (javaCast object_ :: BaseGameInitialization)) a1

setGameInitialized_impl :: BaseGameInitialization -> Bool -> IO (())
setGameInitialized_impl this gameInitialized = do
        jset (this).gameInitialized (gameInitialized)
        pure ()


isGameInitialized :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGameInitialized object_ = jmethod object_ "isGameInitialized" (\() -> (isGameInitialized_impl (javaCast object_ :: BaseGameInitialization))) ()

isGameInitialized_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGameInitialized_super object_ = (isGameInitialized_impl (javaCast object_ :: BaseGameInitialization))

isGameInitialized_impl :: BaseGameInitialization -> IO (Bool)
isGameInitialized_impl this = do
        pure ((jget (this).gameInitialized))


getPortion :: (JavaObjectClass this_) => this_ -> IO (Int)
getPortion object_ = jmethod object_ "getPortion" (\() -> (getPortion_impl (javaCast object_ :: BaseGameInitialization))) ()

getPortion_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getPortion_super object_ = (getPortion_impl (javaCast object_ :: BaseGameInitialization))

getPortion_impl :: BaseGameInitialization -> IO (Int)
getPortion_impl this = do
        pure ((jget (this).portion))


setInitialized :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setInitialized object_ a1 = jmethod object_ "setInitialized" (\() -> (setInitialized_impl (javaCast object_ :: BaseGameInitialization))) () a1

setInitialized_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setInitialized_super object_ a1 = (setInitialized_impl (javaCast object_ :: BaseGameInitialization)) a1

setInitialized_impl :: BaseGameInitialization -> Bool -> IO (())
setInitialized_impl this initialized = do
        jset (this).initialized (initialized)
        pure ()


isInitialized :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized object_ = jmethod object_ "isInitialized" (\() -> (isInitialized_impl (javaCast object_ :: BaseGameInitialization))) ()

isInitialized_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized_super object_ = (isInitialized_impl (javaCast object_ :: BaseGameInitialization))

isInitialized_impl :: BaseGameInitialization -> IO (Bool)
isInitialized_impl this = do
        pure ((jget (this).initialized))


