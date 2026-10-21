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
-- package org.allbinary.layer
module AllBinaryLayerFactory where

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
import qualified AllBinaryLayer -- same package or java.lang
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified ViewPosition -- org.allbinary.view.ViewPosition
import qualified AllBinaryLayerFactoryInterface

-- implements AllBinaryLayerFactoryInterface
data AllBinaryLayerFactory = AllBinaryLayerFactory
    { header_ :: JavaHeader
    , rectangle :: IORef (Rectangle.Rectangle)
    }

instance JavaNull AllBinaryLayerFactory where
    javaNull = javaNullRecord "AllBinaryLayerFactory"

instance JavaEquals AllBinaryLayerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryLayerFactory where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryLayerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AllBinaryLayerFactory
newRecord_ = do
    header_ <- newJavaHeader
    rectangle <- newIORef javaNull
    let this = AllBinaryLayerFactory header_ rectangle
    jregisterLevel header_ this
    AllBinaryLayerFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: AllBinaryLayerFactory -> IO ()
initFields_ this = do
    jset this.rectangle (javaNull)
    pure ()

new_1 :: Rectangle.Rectangle -> IO AllBinaryLayerFactory
new_1 rectangle = do
    this <- newRecord_
    init_1 this rectangle
    pure this

init_1 :: AllBinaryLayerFactory -> Rectangle.Rectangle -> IO ()
init_1 this rectangle = do
        initFields_ this
        jset (this).rectangle (rectangle)
        pure ()


getInstance :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: AllBinaryLayerFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: AllBinaryLayerFactory))

getInstance_impl :: AllBinaryLayerFactory -> IO (AllBinaryLayer.AllBinaryLayer)
getInstance_impl this = do
        (AllBinaryLayer.new_3 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget (this).rectangle) (jio (ViewPosition.getInstanceD)))


