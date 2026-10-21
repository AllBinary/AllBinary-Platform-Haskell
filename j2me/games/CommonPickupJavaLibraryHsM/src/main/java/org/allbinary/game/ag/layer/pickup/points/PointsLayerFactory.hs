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
-- package org.allbinary.game.ag.layer.pickup.points
module PointsLayerFactory where

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
import qualified PointsLayer -- same package or java.lang
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerFactoryInterface -- org.allbinary.layer.AllBinaryLayerFactoryInterface

-- implements AllBinaryLayerFactoryInterface
data PointsLayerFactory = PointsLayerFactory
    { header_ :: JavaHeader
    , points :: IORef (Int)
    }

instance JavaNull PointsLayerFactory where
    javaNull = javaNullRecord "PointsLayerFactory"

instance JavaEquals PointsLayerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PointsLayerFactory where
    (==) = jrecordEquals

instance JavaObjectClass PointsLayerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PointsLayerFactory
newRecord_ = do
    header_ <- newJavaHeader
    points <- newIORef 0
    let this = PointsLayerFactory header_ points
    jregisterLevel header_ this
    AllBinaryLayerFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: PointsLayerFactory -> IO ()
initFields_ this = do
    jset this.points (0)
    pure ()

new_1 :: Int -> IO PointsLayerFactory
new_1 points = do
    this <- newRecord_
    init_1 this points
    pure this

init_1 :: PointsLayerFactory -> Int -> IO ()
init_1 this points = do
        initFields_ this
        jset (this).points (points)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: PointsLayerFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: PointsLayerFactory))

getInstance_impl :: PointsLayerFactory -> IO (AllBinaryLayer.AllBinaryLayer)
getInstance_impl this = do
        (fmap (\value_ -> javaCast value_ :: AllBinaryLayer.AllBinaryLayer) (PointsLayer.new_1 (jget (this).points)))


