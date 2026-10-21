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
-- package org.allbinary.game.ag.layer.pickup.health
module HealLayerFactory where

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
import qualified HealLayer -- same package or java.lang
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerFactoryInterface -- org.allbinary.layer.AllBinaryLayerFactoryInterface

-- implements AllBinaryLayerFactoryInterface
data HealLayerFactory = HealLayerFactory
    { header_ :: JavaHeader
    }

instance JavaNull HealLayerFactory where
    javaNull = javaNullRecord "HealLayerFactory"

instance JavaEquals HealLayerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HealLayerFactory where
    (==) = jrecordEquals

instance JavaObjectClass HealLayerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HealLayerFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = HealLayerFactory header_
    jregisterLevel header_ this
    AllBinaryLayerFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: HealLayerFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO HealLayerFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HealLayerFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: HealLayerFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: HealLayerFactory))

getInstance_impl :: HealLayerFactory -> IO (AllBinaryLayer.AllBinaryLayer)
getInstance_impl this = do
        (fmap (\value_ -> javaCast value_ :: AllBinaryLayer.AllBinaryLayer) (HealLayer.new_))


