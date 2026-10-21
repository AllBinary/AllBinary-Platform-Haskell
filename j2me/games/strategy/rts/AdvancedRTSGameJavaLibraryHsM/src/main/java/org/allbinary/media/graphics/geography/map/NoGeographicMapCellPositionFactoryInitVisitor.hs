{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
module NoGeographicMapCellPositionFactoryInitVisitor where

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
import qualified GeographicMapCellPositionFactoryInitVisitorInterface

-- implements GeographicMapCellPositionFactoryInitVisitorInterface
data NoGeographicMapCellPositionFactoryInitVisitor = NoGeographicMapCellPositionFactoryInitVisitor
    { header_ :: JavaHeader
    }

instance JavaNull NoGeographicMapCellPositionFactoryInitVisitor where
    javaNull = javaNullRecord "NoGeographicMapCellPositionFactoryInitVisitor"

instance JavaEquals NoGeographicMapCellPositionFactoryInitVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoGeographicMapCellPositionFactoryInitVisitor where
    (==) = jrecordEquals

instance JavaObjectClass NoGeographicMapCellPositionFactoryInitVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NoGeographicMapCellPositionFactoryInitVisitor
newRecord_ = do
    header_ <- newJavaHeader
    let this = NoGeographicMapCellPositionFactoryInitVisitor header_
    jregisterLevel header_ this
    GeographicMapCellPositionFactoryInitVisitorInterface.registerInterface_ header_
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: NoGeographicMapCellPositionFactoryInitVisitor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NoGeographicMapCellPositionFactoryInitVisitor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoGeographicMapCellPositionFactoryInitVisitor -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
visit :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
visit object_ a1 a2 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: NoGeographicMapCellPositionFactoryInitVisitor))) () a1 a2

visit_super :: (JavaObjectClass this_) => this_ -> AllBinaryTiledLayer.AllBinaryTiledLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
visit_super object_ a1 a2 = (visit_impl (javaCast object_ :: NoGeographicMapCellPositionFactoryInitVisitor)) a1 a2

visit_impl :: NoGeographicMapCellPositionFactoryInitVisitor -> AllBinaryTiledLayer.AllBinaryTiledLayer -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
visit_impl this tiledLayer cellPosition = do
        pure ()


