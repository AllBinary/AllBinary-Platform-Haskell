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
module FeaturedResourceFactory where

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
import qualified ResourceLoadingLevelFactory -- same package or java.lang
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GameFeatureControlledInterface -- org.allbinary.game.configuration.feature.GameFeatureControlledInterface
import qualified GraphicsFeatureFactory -- org.allbinary.game.configuration.feature.GraphicsFeatureFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data FeaturedResourceFactory = FeaturedResourceFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , list :: IORef (BasicArrayList.BasicArrayList)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , aNIMATION_FEATURES :: IORef (String)
    , iMAGE_LABEL :: IORef (String)
    , iMAGE_GRAPHICS_ARRAY :: IORef (String)
    , iMAGE_GRAPHICS_ROTATION :: IORef (String)
    , sPRITE_QUARTER :: IORef (String)
    , sPRITE_FULL :: IORef (String)
    , iS_LOADING_LEVEL_LABEL :: IORef (String)
    , iS_FEATURE :: IORef (String)
    , gAME_FEATURE_CONTROLLED :: IORef (String)
    }

instance JavaNull FeaturedResourceFactory where
    javaNull = javaNullRecord "FeaturedResourceFactory"

instance JavaEquals FeaturedResourceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FeaturedResourceFactory where
    (==) = jrecordEquals

instance JavaObjectClass FeaturedResourceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FeaturedResourceFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    list <- newIORef javaNull
    commonStrings <- newIORef javaNull
    aNIMATION_FEATURES <- newIORef ""
    iMAGE_LABEL <- newIORef ""
    iMAGE_GRAPHICS_ARRAY <- newIORef ""
    iMAGE_GRAPHICS_ROTATION <- newIORef ""
    sPRITE_QUARTER <- newIORef ""
    sPRITE_FULL <- newIORef ""
    iS_LOADING_LEVEL_LABEL <- newIORef ""
    iS_FEATURE <- newIORef ""
    gAME_FEATURE_CONTROLLED <- newIORef ""
    let this = FeaturedResourceFactory header_ logUtil list commonStrings aNIMATION_FEATURES iMAGE_LABEL iMAGE_GRAPHICS_ARRAY iMAGE_GRAPHICS_ROTATION sPRITE_QUARTER sPRITE_FULL iS_LOADING_LEVEL_LABEL iS_FEATURE gAME_FEATURE_CONTROLLED
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getList" (\() -> getList_impl this)
    pure this

initFields_ :: FeaturedResourceFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.aNIMATION_FEATURES ("Animation Features: Vector: ")
    jset this.iMAGE_LABEL (" Image: ")
    jset this.iMAGE_GRAPHICS_ARRAY ("Image Array: ")
    jset this.iMAGE_GRAPHICS_ROTATION ("Image Rotate: ")
    jset this.sPRITE_QUARTER (" Sprite Quarter: ")
    jset this.sPRITE_FULL (" Sprite Full: ")
    jset this.iS_LOADING_LEVEL_LABEL (" isLoadingLevel ")
    jset this.iS_FEATURE (" isFeature: ")
    jset this.gAME_FEATURE_CONTROLLED ("GameFeatureControlledInterface: ")
    pure ()

new_ :: IO FeaturedResourceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FeaturedResourceFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: FeaturedResourceFactory))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: FeaturedResourceFactory)) a1

init_impl :: FeaturedResourceFactory -> Int -> IO (())
init_impl this level = do
        size <- (BasicArrayList.size ((jget (this).list)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let featureInterface = (javaCast (jindex ((jget ((jget (this).list)).objectArray)) (index)) :: GameFeatureControlledInterface.GameFeatureControlledInterface)
            isLoadingLevel <- (GameFeatureControlledInterface.isLoadingLevel featureInterface level)
            isFeature <- (GameFeatureControlledInterface.isFeature featureInterface)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendboolean ((jio (StringMaker.append ((jio (StringMaker.appendboolean ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).gAME_FEATURE_CONTROLLED)))) (jio (GameFeatureControlledInterface.toString featureInterface))))) (jget (this).iS_LOADING_LEVEL_LABEL)))) (jio (ResourceLoadingLevelFactory.getLevelString ((jio (ResourceLoadingLevelFactory.getInstance))) level))))) (jget ((jio (CommonSeps.getInstance))).cOLON_SEP)))) isLoadingLevel))) (jget (this).iS_FEATURE)))) isFeature))))) this (jget ((jget (this).commonStrings)).iNIT))
            when (isLoadingLevel && isFeature) $ do
                Control.Monad.void (GameFeatureControlledInterface.init featureInterface level)
        features <- (Features.getInstance)
        graphicsFeatureFactory <- (GraphicsFeatureFactory.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).aNIMATION_FEATURES))
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (Features.isFeature features (javaCast (jget (graphicsFeatureFactory).vECTOR_GRAPHICS)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).iMAGE_LABEL))
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (Features.isFeature features (javaCast (jget (graphicsFeatureFactory).iMAGE_GRAPHICS)))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).commonStrings)).iNIT))
        when (jio (Features.isFeature features (javaCast (jget (graphicsFeatureFactory).iMAGE_GRAPHICS)))) $ do
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).iMAGE_GRAPHICS_ARRAY))
            Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (Features.isFeature features (javaCast (jget (graphicsFeatureFactory).iMAGE_TO_ARRAY_GRAPHICS)))))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).iMAGE_GRAPHICS_ROTATION))
            Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (Features.isFeature features (javaCast (jget (graphicsFeatureFactory).iMAGE_TO_ARRAY_GRAPHICS)))))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).sPRITE_QUARTER))
            Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (Features.isFeature features (javaCast (jget (graphicsFeatureFactory).sPRITE_QUARTER_ROTATION_GRAPHICS)))))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).sPRITE_FULL))
            Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (Features.isFeature features (javaCast (jget (graphicsFeatureFactory).sPRITE_FULL_GRAPHICS)))))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).commonStrings)).iNIT))
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: FeaturedResourceFactory))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: FeaturedResourceFactory))

clear_impl :: FeaturedResourceFactory -> IO (())
clear_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        pure ()


add :: (JavaObjectClass this_) => this_ -> GameFeatureControlledInterface.GameFeatureControlledInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: FeaturedResourceFactory))) () a1

add_super :: (JavaObjectClass this_) => this_ -> GameFeatureControlledInterface.GameFeatureControlledInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: FeaturedResourceFactory)) a1

add_impl :: FeaturedResourceFactory -> GameFeatureControlledInterface.GameFeatureControlledInterface -> IO (())
add_impl this featureInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).sTART_LABEL)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) featureInterface))))))) this (jget ((jget (this).commonStrings)).aDD))
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) featureInterface)
        pure ()


getList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList object_ = jmethod object_ "getList" (\() -> (getList_impl (javaCast object_ :: FeaturedResourceFactory))) ()

getList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList_super object_ = (getList_impl (javaCast object_ :: FeaturedResourceFactory))

getList_impl :: FeaturedResourceFactory -> IO (BasicArrayList.BasicArrayList)
getList_impl this = do
        pure ((jget (this).list))


