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
-- package org.allbinary.game.view
module StaticTileLayerViewPositionFactory where

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
import qualified StaticTileLayerIntoPositionViewPosition -- same package or java.lang
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified ViewPositionFactoryInterface -- org.allbinary.view.ViewPositionFactoryInterface

-- implements ViewPositionFactoryInterface
data StaticTileLayerViewPositionFactory = StaticTileLayerViewPositionFactory
    { header_ :: JavaHeader
    }

instance JavaNull StaticTileLayerViewPositionFactory where
    javaNull = javaNullRecord "StaticTileLayerViewPositionFactory"

instance JavaEquals StaticTileLayerViewPositionFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StaticTileLayerViewPositionFactory where
    (==) = jrecordEquals

instance JavaObjectClass StaticTileLayerViewPositionFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StaticTileLayerViewPositionFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = StaticTileLayerViewPositionFactory header_
    jregisterLevel header_ this
    ViewPositionFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: StaticTileLayerViewPositionFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO StaticTileLayerViewPositionFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StaticTileLayerViewPositionFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> IO (ViewPositionBase.ViewPositionBase)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: StaticTileLayerViewPositionFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (ViewPositionBase.ViewPositionBase)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: StaticTileLayerViewPositionFactory))

getInstance_impl :: StaticTileLayerViewPositionFactory -> IO (ViewPositionBase.ViewPositionBase)
getInstance_impl this = do
        (fmap (\value_ -> javaCast value_ :: ViewPositionBase.ViewPositionBase) (StaticTileLayerIntoPositionViewPosition.new_))


