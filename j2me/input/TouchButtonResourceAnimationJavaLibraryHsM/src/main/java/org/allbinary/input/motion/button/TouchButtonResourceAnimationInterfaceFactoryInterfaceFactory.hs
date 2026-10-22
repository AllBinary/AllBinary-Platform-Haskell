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
-- package org.allbinary.input.motion.button
module TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory (module TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory, module BaseResourceAnimationInterfaceFactoryInterfaceFactory) where

import BaseResourceAnimationInterfaceFactoryInterfaceFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createFactory, createFactory_super, createFactory_impl, init, init_super, init_impl, initImageCache, initImageCache_super, initImageCache_impl, isLoadingLevel, isLoadingLevel_super, isLoadingLevel_impl, isFeature, isFeature_super, isFeature_impl)
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
import qualified TouchButtonBlankResource -- same package or java.lang
import qualified TouchButtonResource -- same package or java.lang
import qualified TouchButtonGenericActionResource -- same package or java.lang
import qualified TouchButtonStartResource -- same package or java.lang
import qualified TouchButtonUpResource -- same package or java.lang
import qualified TouchButtonDownResource -- same package or java.lang
import qualified TouchButtonTurnLeftResource -- same package or java.lang
import qualified TouchButtonTurnRightResource -- same package or java.lang
import qualified TouchButtonStrafeLeftResource -- same package or java.lang
import qualified TouchButtonStrafeRightResource -- same package or java.lang
import qualified ResourceLoadingLevel -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified OneRowSpriteIndexedAnimationFactory -- org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory
import qualified BaseResourceAnimationInterfaceFactoryInterfaceFactory -- org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified ResourceLoadingLevelFactory -- org.allbinary.game.resource.ResourceLoadingLevelFactory
import qualified ProgressCanvas -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified ImageCache -- org.allbinary.image.ImageCache
import qualified ImageCacheFactory -- org.allbinary.image.ImageCacheFactory
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified OperatingSystemFactory -- org.allbinary.logic.system.os.OperatingSystemFactory
import qualified ImageCompleteUtil -- org.allbinary.media.image.ImageCompleteUtil

data TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory = TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory
    { header_ :: JavaHeader
    , base :: BaseResourceAnimationInterfaceFactoryInterfaceFactory.BaseResourceAnimationInterfaceFactoryInterfaceFactory
    }

instance JavaNull TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory where
    javaNull = javaNullRecord "TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory"

instance JavaEquals TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory
newRecord_ = do
    base <- BaseResourceAnimationInterfaceFactoryInterfaceFactory.newRecord_
    let header_ = base.header_
    let this = TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "initImageCache" (\() -> initImageCache_impl this)
    jregisterMethod header_ "isLoadingLevel" (\() -> isLoadingLevel_impl this)
    jregisterMethod header_ "isFeature" (\() -> isFeature_impl this)
    pure this

initFields_ :: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory -> IO ()
initFields_ this = do
    pure ()


createFactory :: IO (TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory)
createFactory = do
        (new_1 "TouchButton Animations")

new_1 :: String -> IO TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory -> String -> IO ()
init_1 this name = do
        BaseResourceAnimationInterfaceFactoryInterfaceFactory.init_4 this.base (name) (jio (StdUtil.createHashtable ((jio (StdUtil.getInstance))))) (jio (StdUtil.createHashtable ((jio (StdUtil.getInstance))))) (jio (StdUtil.createHashtable ((jio (StdUtil.getInstance)))))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory)) a1

init_impl :: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory -> Int -> IO (())
init_impl this level = do
        Control.Monad.void (TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.initImageCache this (jio (ImageCacheFactory.getInstance)) level)
        pure ()


-- throws Exception
initImageCache :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Int -> IO (())
initImageCache object_ a1 a2 = jmethod object_ "initImageCache" (\() -> (initImageCache_impl (javaCast object_ :: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory))) () a1 a2

initImageCache_super :: (JavaObjectClass this_) => this_ -> ImageCache.ImageCache -> Int -> IO (())
initImageCache_super object_ a1 a2 = (initImageCache_impl (javaCast object_ :: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory)) a1 a2

initImageCache_impl :: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory -> ImageCache.ImageCache -> Int -> IO (())
initImageCache_impl this imageCache level = do
    javaCatchReturn $ do
        when (jio (BaseResourceAnimationInterfaceFactoryInterfaceFactory.isInitialized this)) $ do
            javaReturn (())
        let portion = 140
        loadingString <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (BaseResourceAnimationInterfaceFactoryInterfaceFactory.toString this))))) " Loading: "))))
        index <- newIORef (0)
        progressCanvas <- (ProgressCanvasFactory.getInstance)
        Control.Monad.void (ProgressCanvas.addPortion progressCanvas portion loadingString (jpostIncrement index (+ 1)))
        touchButtonBlankResource <- (TouchButtonBlankResource.getInstance)
        touchButtonGenericActionResource <- (TouchButtonGenericActionResource.getInstance)
        touchButtonStartResource <- (TouchButtonStartResource.getInstance)
        touchButtonUpResource <- (TouchButtonUpResource.getInstance)
        touchButtonDownResource <- (TouchButtonDownResource.getInstance)
        touchButtonTurnLeftResource <- (TouchButtonTurnLeftResource.getInstance)
        touchButtonTurnRightResource <- (TouchButtonTurnRightResource.getInstance)
        touchButtonStrafeLeftResource <- (TouchButtonStrafeLeftResource.getInstance)
        touchButtonStrafeRightResource <- (TouchButtonStrafeRightResource.getInstance)
        touchButtonBlankResourceImage <- (ImageCache.getWithKey imageCache (jget (touchButtonBlankResource).rESOURCE))
        touchButtonGenericActionResourceImage <- (ImageCache.getWithKey imageCache (jget (touchButtonGenericActionResource).rESOURCE))
        touchButtonStartResourceImage <- (ImageCache.getWithKey imageCache (jget (touchButtonStartResource).rESOURCE))
        touchButtonUpResourceImage <- (ImageCache.getWithKey imageCache (jget (touchButtonUpResource).rESOURCE))
        touchButtonDownResourceImage <- (ImageCache.getWithKey imageCache (jget (touchButtonDownResource).rESOURCE))
        touchButtonTurnLeftResourceImage <- (ImageCache.getWithKey imageCache (jget (touchButtonTurnLeftResource).rESOURCE))
        touchButtonTurnRightResourceImage <- (ImageCache.getWithKey imageCache (jget (touchButtonTurnRightResource).rESOURCE))
        touchButtonStrafeLeftResourceImage <- (ImageCache.getWithKey imageCache (jget (touchButtonStrafeLeftResource).rESOURCE))
        touchButtonStrafeRightResourceImage <- (ImageCache.getWithKey imageCache (jget (touchButtonStrafeRightResource).rESOURCE))
        nullAnimationFactory <- (NullAnimationFactory.getFactoryInstance)
        when (jio (GenericOperatingSystem.isOverScan ((jio (OperatingSystemFactory.getOperatingSystemInstance ((jio (OperatingSystemFactory.getInstance)))))))) $ do
            Control.Monad.void (ImageCache.getWithKey imageCache (jget ((jio (TouchButtonStartResource.getInstance))).hINT))
        Control.Monad.void (ProgressCanvas.addPortion progressCanvas portion loadingString (jpostIncrement index (+ 1)))
        imageCompleteUtil <- (ImageCompleteUtil.getInstance)
        Control.Monad.void (ProgressCanvas.addPortion progressCanvas portion loadingString (jpostIncrement index (+ 1)))
        Control.Monad.void (ImageCompleteUtil.waitForImage imageCompleteUtil touchButtonBlankResourceImage (jget (touchButtonBlankResource).rESOURCE))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonBlankResource).rESOURCE) (javaCast (jio (OneRowSpriteIndexedAnimationFactory.createFactory touchButtonBlankResourceImage (jio (AnimationBehaviorFactory.getInstance))))))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonBlankResource).hINT) (javaCast nullAnimationFactory))
        Control.Monad.void (ProgressCanvas.addPortion progressCanvas portion loadingString (jpostIncrement index (+ 1)))
        Control.Monad.void (ImageCompleteUtil.waitForImage imageCompleteUtil touchButtonGenericActionResourceImage (jget (touchButtonGenericActionResource).rESOURCE))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonGenericActionResource).rESOURCE) (javaCast (jio (OneRowSpriteIndexedAnimationFactory.createFactory touchButtonGenericActionResourceImage (jio (AnimationBehaviorFactory.getInstance))))))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonGenericActionResource).hINT) (javaCast nullAnimationFactory))
        Control.Monad.void (ProgressCanvas.addPortion progressCanvas portion loadingString (jpostIncrement index (+ 1)))
        Control.Monad.void (ImageCompleteUtil.waitForImage imageCompleteUtil touchButtonStartResourceImage (jget (touchButtonStartResource).rESOURCE))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonStartResource).rESOURCE) (javaCast (jio (OneRowSpriteIndexedAnimationFactory.createFactory touchButtonStartResourceImage (jio (AnimationBehaviorFactory.getInstance))))))
        Control.Monad.void (ProgressCanvas.addPortion progressCanvas portion loadingString (jpostIncrement index (+ 1)))
        Control.Monad.void (ImageCompleteUtil.waitForImage imageCompleteUtil touchButtonUpResourceImage (jget (touchButtonUpResource).rESOURCE))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonUpResource).rESOURCE) (javaCast (jio (OneRowSpriteIndexedAnimationFactory.createFactory touchButtonUpResourceImage (jio (AnimationBehaviorFactory.getInstance))))))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonUpResource).hINT) (javaCast nullAnimationFactory))
        Control.Monad.void (ProgressCanvas.addPortion progressCanvas portion loadingString (jpostIncrement index (+ 1)))
        Control.Monad.void (ImageCompleteUtil.waitForImage imageCompleteUtil touchButtonDownResourceImage (jget (touchButtonDownResource).rESOURCE))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonDownResource).rESOURCE) (javaCast (jio (OneRowSpriteIndexedAnimationFactory.createFactory touchButtonDownResourceImage (jio (AnimationBehaviorFactory.getInstance))))))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonDownResource).hINT) (javaCast nullAnimationFactory))
        Control.Monad.void (ProgressCanvas.addPortion progressCanvas portion loadingString (jpostIncrement index (+ 1)))
        Control.Monad.void (ImageCompleteUtil.waitForImage imageCompleteUtil touchButtonTurnLeftResourceImage (jget (touchButtonTurnLeftResource).rESOURCE))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonTurnLeftResource).rESOURCE) (javaCast (jio (OneRowSpriteIndexedAnimationFactory.createFactory touchButtonTurnLeftResourceImage (jio (AnimationBehaviorFactory.getInstance))))))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonTurnLeftResource).hINT) (javaCast nullAnimationFactory))
        Control.Monad.void (ProgressCanvas.addPortion progressCanvas portion loadingString (jpostIncrement index (+ 1)))
        Control.Monad.void (ImageCompleteUtil.waitForImage imageCompleteUtil touchButtonTurnRightResourceImage (jget (touchButtonTurnRightResource).rESOURCE))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonTurnRightResource).rESOURCE) (javaCast (jio (OneRowSpriteIndexedAnimationFactory.createFactory touchButtonTurnRightResourceImage (jio (AnimationBehaviorFactory.getInstance))))))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonTurnRightResource).hINT) (javaCast nullAnimationFactory))
        Control.Monad.void (ProgressCanvas.addPortion progressCanvas portion loadingString (jpostIncrement index (+ 1)))
        Control.Monad.void (ImageCompleteUtil.waitForImage imageCompleteUtil touchButtonStrafeLeftResourceImage (jget (touchButtonStrafeLeftResource).rESOURCE))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonStrafeLeftResource).rESOURCE) (javaCast (jio (OneRowSpriteIndexedAnimationFactory.createFactory touchButtonStrafeLeftResourceImage (jio (AnimationBehaviorFactory.getInstance))))))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonStrafeLeftResource).hINT) (javaCast nullAnimationFactory))
        Control.Monad.void (ProgressCanvas.addPortion progressCanvas portion loadingString (jpostIncrement index (+ 1)))
        Control.Monad.void (ImageCompleteUtil.waitForImage imageCompleteUtil touchButtonStrafeRightResourceImage (jget (touchButtonStrafeRightResource).rESOURCE))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonStrafeRightResource).rESOURCE) (javaCast (jio (OneRowSpriteIndexedAnimationFactory.createFactory touchButtonStrafeRightResourceImage (jio (AnimationBehaviorFactory.getInstance))))))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonStrafeRightResource).hINT) (javaCast nullAnimationFactory))
        if (jio (GenericOperatingSystem.isOverScan ((jio (OperatingSystemFactory.getOperatingSystemInstance ((jio (OperatingSystemFactory.getInstance)))))))) then do
            touchButtonStartHintResource <- (ImageCache.getWithKey imageCache (jget ((jio (TouchButtonStartResource.getInstance))).hINT))
            Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonStartResource).hINT) (javaCast (jio (OneRowSpriteIndexedAnimationFactory.createFactory touchButtonStartHintResource (jio (AnimationBehaviorFactory.getInstance))))))
        else do
            Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.add this (jget (touchButtonStartResource).hINT) (javaCast nullAnimationFactory))
        Control.Monad.void (BaseResourceAnimationInterfaceFactoryInterfaceFactory.init_super this.base level)
    pure ()


isLoadingLevel :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isLoadingLevel object_ a1 = jmethod object_ "isLoadingLevel" (\() -> (isLoadingLevel_impl (javaCast object_ :: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory))) () a1

isLoadingLevel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isLoadingLevel_super object_ a1 = (isLoadingLevel_impl (javaCast object_ :: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory)) a1

isLoadingLevel_impl :: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory -> Int -> IO (Bool)
isLoadingLevel_impl this level = do
    javaCatchReturn $ do
        resourceLoadingLevelFactory <- (ResourceLoadingLevelFactory.getInstance)
        if (level == (jio (ResourceLoadingLevel.getLevel ((jget (resourceLoadingLevelFactory).lOAD_TOUCH))))) then do
            javaReturn (True)
        else do
            javaReturn =<< (BaseResourceAnimationInterfaceFactoryInterfaceFactory.isLoadingLevel_super this.base level)


isFeature :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFeature object_ = jmethod object_ "isFeature" (\() -> (isFeature_impl (javaCast object_ :: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory))) ()

isFeature_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFeature_super object_ = (isFeature_impl (javaCast object_ :: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory))

isFeature_impl :: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory -> IO (Bool)
isFeature_impl this = do
    javaCatchReturn $ do
        if (Prelude.not (jio (Features.isDefault ((jio (Features.getInstance))) (javaCast (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL))))) then do
            javaReturn (True)
        else do
            javaReturn (False)


