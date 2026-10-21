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
-- package org.allbinary.game.configuration.feature
module GraphicsFeatureFactory where

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
import qualified GraphicsFeature -- same package or java.lang
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data GraphicsFeatureFactory = GraphicsFeatureFactory
    { header_ :: JavaHeader
    , nONE :: IORef (GraphicsFeature.GraphicsFeature)
    , tRANSPARENT_IMAGE_CREATION :: IORef (GraphicsFeature.GraphicsFeature)
    , iMAGE_GRAPHICS :: IORef (GraphicsFeature.GraphicsFeature)
    , iMAGE_ROTATION_ON_THE_FLY :: IORef (GraphicsFeature.GraphicsFeature)
    , iMAGE_TO_ARRAY_GRAPHICS :: IORef (GraphicsFeature.GraphicsFeature)
    , sPRITE_QUARTER_ROTATION_GRAPHICS :: IORef (GraphicsFeature.GraphicsFeature)
    , sPRITE_FULL_GRAPHICS :: IORef (GraphicsFeature.GraphicsFeature)
    , vECTOR_GRAPHICS :: IORef (GraphicsFeature.GraphicsFeature)
    , vECTOR_TO_IMAGE_GRAPHICS :: IORef (GraphicsFeature.GraphicsFeature)
    }

instance JavaNull GraphicsFeatureFactory where
    javaNull = javaNullRecord "GraphicsFeatureFactory"

instance JavaEquals GraphicsFeatureFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GraphicsFeatureFactory where
    (==) = jrecordEquals

instance JavaObjectClass GraphicsFeatureFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GraphicsFeatureFactory
newRecord_ = do
    header_ <- newJavaHeader
    nONE <- newIORef javaNull
    tRANSPARENT_IMAGE_CREATION <- newIORef javaNull
    iMAGE_GRAPHICS <- newIORef javaNull
    iMAGE_ROTATION_ON_THE_FLY <- newIORef javaNull
    iMAGE_TO_ARRAY_GRAPHICS <- newIORef javaNull
    sPRITE_QUARTER_ROTATION_GRAPHICS <- newIORef javaNull
    sPRITE_FULL_GRAPHICS <- newIORef javaNull
    vECTOR_GRAPHICS <- newIORef javaNull
    vECTOR_TO_IMAGE_GRAPHICS <- newIORef javaNull
    let this = GraphicsFeatureFactory header_ nONE tRANSPARENT_IMAGE_CREATION iMAGE_GRAPHICS iMAGE_ROTATION_ON_THE_FLY iMAGE_TO_ARRAY_GRAPHICS sPRITE_QUARTER_ROTATION_GRAPHICS sPRITE_FULL_GRAPHICS vECTOR_GRAPHICS vECTOR_TO_IMAGE_GRAPHICS
    jregisterLevel header_ this
    pure this

initFields_ :: GraphicsFeatureFactory -> IO ()
initFields_ this = do
    jset this.nONE =<< (GraphicsFeature.new_1 (jget ((jio (StringUtil.getInstance))).nULL_STRING))
    jset this.tRANSPARENT_IMAGE_CREATION =<< (GraphicsFeature.new_1 "Transparent Image Creation")
    jset this.iMAGE_GRAPHICS =<< (GraphicsFeature.new_1 "Image Graphics")
    jset this.iMAGE_ROTATION_ON_THE_FLY =<< (GraphicsFeature.new_1 "Image Rotated On The Fly")
    jset this.iMAGE_TO_ARRAY_GRAPHICS =<< (GraphicsFeature.new_1 "Image To Array Graphics")
    jset this.sPRITE_QUARTER_ROTATION_GRAPHICS =<< (GraphicsFeature.new_1 "Sprite Quarter Rotation Graphics")
    jset this.sPRITE_FULL_GRAPHICS =<< (GraphicsFeature.new_1 "Sprite Full Rotation Graphics")
    jset this.vECTOR_GRAPHICS =<< (GraphicsFeature.new_1 "BasicArrayList Graphics")
    jset this.vECTOR_TO_IMAGE_GRAPHICS =<< (GraphicsFeature.new_1 "BasicArrayList To Image Graphics")
    pure ()


getInstance :: IO (GraphicsFeatureFactory)
getInstance = do
        pure (GraphicsFeatureFactory.instance_)

new_ :: IO GraphicsFeatureFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GraphicsFeatureFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


