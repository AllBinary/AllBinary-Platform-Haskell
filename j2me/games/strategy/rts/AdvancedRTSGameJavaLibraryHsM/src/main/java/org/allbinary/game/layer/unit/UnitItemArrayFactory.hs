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
module UnitItemArrayFactory where

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
import qualified Image -- javax.microedition.lcdui.Image
import qualified ImageItem -- javax.microedition.lcdui.ImageItem
import qualified RTSGameStrings -- org.allbinary.game.layer.RTSGameStrings
import qualified LayerInterfaceFactoryImageItem -- org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem
import qualified RTSLayerTextAnimation -- org.allbinary.game.layer.item.RTSLayerTextAnimation
import qualified BasicGameResources -- org.allbinary.game.layer.resources.BasicGameResources
import qualified FlagGameResources -- org.allbinary.game.layer.waypoint.FlagGameResources
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified GameFeatureImageCacheFactory -- org.allbinary.image.GameFeatureImageCacheFactory
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified Animation -- org.allbinary.animation.Animation
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified CustomItemUtil -- org.allbinary.graphics.form.item.CustomItemUtil
import qualified ItemArraySingletonFactoryInterface -- org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface
import qualified ImageCache -- org.allbinary.image.ImageCache
import qualified LayerInterfaceFactoryInterface -- org.allbinary.layer.LayerInterfaceFactoryInterface

-- implements ItemArraySingletonFactoryInterface
data UnitItemArrayFactory = UnitItemArrayFactory
    { header_ :: JavaHeader
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , basicColor :: IORef (BasicColor.BasicColor)
    , resources :: IORef (JavaArray (BasicGameResources.BasicGameResources))
    }

instance JavaNull UnitItemArrayFactory where
    javaNull = javaNullRecord "UnitItemArrayFactory"

instance JavaEquals UnitItemArrayFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UnitItemArrayFactory where
    (==) = jrecordEquals

instance JavaObjectClass UnitItemArrayFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

iTEMS = (jget ((jio (CustomItemUtil.getInstance))).cUSTOM_ITEM_ARRAY)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UnitItemArrayFactory
newRecord_ = do
    header_ <- newJavaHeader
    commonSeps <- newIORef javaNull
    basicColor <- newIORef javaNull
    resources <- newIORef javaNull
    let this = UnitItemArrayFactory header_ commonSeps basicColor resources
    jregisterLevel header_ this
    ItemArraySingletonFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "createFlagItem" (\() -> createFlagItem_impl this)
    jregisterMethod header_ "createNamedFlagItem" (\() -> createNamedFlagItem_impl this)
    jregisterMethod header_ "getItems" (\() -> getItems_impl this)
    jregisterMethod header_ "getResources" (\() -> getResources_impl this)
    jregisterMethod header_ "indexOf" (\() -> indexOf_impl this)
    pure this

initFields_ :: UnitItemArrayFactory -> IO ()
initFields_ this = do
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.basicColor ((jget ((jio (BasicColorFactory.getInstance))).wHITE))
    jset this.resources (javaNull)
    pure ()

new_1 :: JavaArray (BasicGameResources.BasicGameResources) -> IO UnitItemArrayFactory
new_1 resources = do
    this <- newRecord_
    init_1 this resources
    pure this

init_1 :: UnitItemArrayFactory -> JavaArray (BasicGameResources.BasicGameResources) -> IO ()
init_1 this resources = do
        initFields_ this
        jset (this).resources (resources)
        pure ()


-- throws Exception
createFlagItem :: (JavaObjectClass this_) => this_ -> FlagGameResources.FlagGameResources -> LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface -> IO (ABCustomItem.ABCustomItem)
createFlagItem object_ a1 a2 = jmethod object_ "createFlagItem" (\() -> (createFlagItem_impl (javaCast object_ :: UnitItemArrayFactory))) () a1 a2

createFlagItem_super :: (JavaObjectClass this_) => this_ -> FlagGameResources.FlagGameResources -> LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface -> IO (ABCustomItem.ABCustomItem)
createFlagItem_super object_ a1 a2 = (createFlagItem_impl (javaCast object_ :: UnitItemArrayFactory)) a1 a2

createFlagItem_impl :: UnitItemArrayFactory -> FlagGameResources.FlagGameResources -> LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface -> IO (ABCustomItem.ABCustomItem)
createFlagItem_impl this flagResources layerInterfaceFactoryInterface = do
        name <- newIORef ((jget (flagResources).nAME))
        let index = (jstringIndexOf (jget name) (jget ((jget (this).commonSeps)).sPACE) 0)
        when (index >= 0) $ do
            jset name ((Prelude.drop index (jget name)))
        (UnitItemArrayFactory.createNamedFlagItem this flagResources (jget name) layerInterfaceFactoryInterface)


-- throws Exception
createNamedFlagItem :: (JavaObjectClass this_) => this_ -> FlagGameResources.FlagGameResources -> String -> LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface -> IO (ABCustomItem.ABCustomItem)
createNamedFlagItem object_ a1 a2 a3 = jmethod object_ "createNamedFlagItem" (\() -> (createNamedFlagItem_impl (javaCast object_ :: UnitItemArrayFactory))) () a1 a2 a3

createNamedFlagItem_super :: (JavaObjectClass this_) => this_ -> FlagGameResources.FlagGameResources -> String -> LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface -> IO (ABCustomItem.ABCustomItem)
createNamedFlagItem_super object_ a1 a2 a3 = (createNamedFlagItem_impl (javaCast object_ :: UnitItemArrayFactory)) a1 a2 a3

createNamedFlagItem_impl :: UnitItemArrayFactory -> FlagGameResources.FlagGameResources -> String -> LayerInterfaceFactoryInterface.LayerInterfaceFactoryInterface -> IO (ABCustomItem.ABCustomItem)
createNamedFlagItem_impl this flagResources name layerInterfaceFactoryInterface = do
        iMAGE_CACHE <- (GameFeatureImageCacheFactory.getInstance)
        image <- (ImageCache.getWithKey iMAGE_CACHE (jget (flagResources).rESOURCE_ICON))
        item <- (fmap (\value_ -> javaCast value_ :: ABCustomItem.ABCustomItem) (LayerInterfaceFactoryImageItem.new_7 name image (ImageItem.lAYOUT_DEFAULT) (jget (flagResources).nAME) (jget (this).basicColor) (jarrayFromList [(jio (RTSLayerTextAnimation.new_2 (jget ((jio (RTSGameStrings.getInstance))).dRAGGABLE) image))]) layerInterfaceFactoryInterface))
        pure (item)


-- throws Exception
getItems :: (JavaObjectClass this_) => this_ -> IO (JavaArray (ABCustomItem.ABCustomItem))
getItems object_ = jmethod object_ "getItems" (\() -> (getItems_impl (javaCast object_ :: UnitItemArrayFactory))) ()

getItems_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (ABCustomItem.ABCustomItem))
getItems_super object_ = (getItems_impl (javaCast object_ :: UnitItemArrayFactory))

getItems_impl :: UnitItemArrayFactory -> IO (JavaArray (ABCustomItem.ABCustomItem))
getItems_impl this = do
        pure (UnitItemArrayFactory.iTEMS)


getResources :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BasicGameResources.BasicGameResources))
getResources object_ = jmethod object_ "getResources" (\() -> (getResources_impl (javaCast object_ :: UnitItemArrayFactory))) ()

getResources_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BasicGameResources.BasicGameResources))
getResources_super object_ = (getResources_impl (javaCast object_ :: UnitItemArrayFactory))

getResources_impl :: UnitItemArrayFactory -> IO (JavaArray (BasicGameResources.BasicGameResources))
getResources_impl this = do
        pure ((jget (this).resources))


indexOf :: (JavaObjectClass this_) => this_ -> BasicGameResources.BasicGameResources -> IO (Int)
indexOf object_ a1 = jmethod object_ "indexOf" (\() -> (indexOf_impl (javaCast object_ :: UnitItemArrayFactory))) () a1

indexOf_super :: (JavaObjectClass this_) => this_ -> BasicGameResources.BasicGameResources -> IO (Int)
indexOf_super object_ a1 = (indexOf_impl (javaCast object_ :: UnitItemArrayFactory)) a1

indexOf_impl :: UnitItemArrayFactory -> BasicGameResources.BasicGameResources -> IO (Int)
indexOf_impl this basicGameResources = do
    javaCatchReturn $ do
        forM_ [((jlength (jget (this).resources)) - 1), ((jlength (jget (this).resources)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            when ((jindex ((jget (this).resources)) (index)) == basicGameResources) $ do
                javaReturn (index)
        pure ((Prelude.negate 1))


