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
-- package org.allbinary.media.graphics.geography.map
module GeographicMapCellPositionFactoryInitVisitorInterface where

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
import qualified GeographicMapCellPosition -- same package or java.lang
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer

-- Java interface: the classes that implement it have these functions
data GeographicMapCellPositionFactoryInitVisitorInterface = GeographicMapCellPositionFactoryInitVisitorInterface
    { header_ :: JavaHeader
    }

instance JavaNull GeographicMapCellPositionFactoryInitVisitorInterface where
    javaNull = javaNullRecord "GeographicMapCellPositionFactoryInitVisitorInterface"

instance JavaEquals GeographicMapCellPositionFactoryInitVisitorInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellPositionFactoryInitVisitorInterface where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellPositionFactoryInitVisitorInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GeographicMapCellPositionFactoryInitVisitorInterface
fromHeader_ header = GeographicMapCellPositionFactoryInitVisitorInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GeographicMapCellPositionFactoryInitVisitorInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
visit :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
visit object_ a1 a2 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: GeographicMapCellPositionFactoryInitVisitorInterface))) () a1 a2

visit_super :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
visit_super object_ a1 a2 = (visit_impl (javaCast object_ :: GeographicMapCellPositionFactoryInitVisitorInterface)) a1 a2

visit_impl :: GeographicMapCellPositionFactoryInitVisitorInterface -> AllBinaryTiledLayer.AllBinaryTiledLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
visit_impl this tiledLayer cellPosition = javaAbstractMethod "visit"


