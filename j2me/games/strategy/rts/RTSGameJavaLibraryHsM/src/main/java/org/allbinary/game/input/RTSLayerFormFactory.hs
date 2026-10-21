{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
-- package org.allbinary.game.input
module RTSLayerFormFactory where

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
import qualified RTSLayer -- org.allbinary.game.layer.RTSLayer
import qualified ScrollSelectionForm -- org.allbinary.graphics.form.ScrollSelectionForm
import qualified RTSLayerFormFactoryInterface

-- implements RTSLayerFormFactoryInterface
data RTSLayerFormFactory = RTSLayerFormFactory
    { header_ :: JavaHeader
    }

instance JavaNull RTSLayerFormFactory where
    javaNull = javaNullRecord "RTSLayerFormFactory"

instance JavaEquals RTSLayerFormFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSLayerFormFactory where
    (==) = jrecordEquals

instance JavaObjectClass RTSLayerFormFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RTSLayerFormFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = RTSLayerFormFactory header_
    jregisterLevel header_ this
    RTSLayerFormFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: RTSLayerFormFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO RTSLayerFormFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RTSLayerFormFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (ScrollSelectionForm.ScrollSelectionForm)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: RTSLayerFormFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (ScrollSelectionForm.ScrollSelectionForm)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: RTSLayerFormFactory)) a1

getInstance_impl :: RTSLayerFormFactory -> RTSLayer.RTSLayer -> IO (ScrollSelectionForm.ScrollSelectionForm)
getInstance_impl this rtsLayer = do
        javaThrow ((JavaException "RuntimeException" ""))


