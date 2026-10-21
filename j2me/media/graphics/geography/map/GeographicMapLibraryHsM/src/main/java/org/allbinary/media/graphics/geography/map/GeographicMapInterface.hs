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
module GeographicMapInterface where

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
import qualified GeographicMapCellType -- same package or java.lang
import qualified BasicGeographicMapCellPositionFactory -- same package or java.lang
import qualified GeographicMapCellPositionFactoryInterface -- same package or java.lang
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified Layer -- org.allbinary.layer.Layer

-- Java interface: the classes that implement it have these functions
data GeographicMapInterface = GeographicMapInterface
    { header_ :: JavaHeader
    }

instance JavaNull GeographicMapInterface where
    javaNull = javaNullRecord "GeographicMapInterface"

instance JavaEquals GeographicMapInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapInterface where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GeographicMapInterface
fromHeader_ header = GeographicMapInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GeographicMapInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: GeographicMapInterface))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: GeographicMapInterface))

getId_impl :: GeographicMapInterface -> IO (Int)
getId_impl this = javaAbstractMethod "getId"


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: GeographicMapInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: GeographicMapInterface))

getName_impl :: GeographicMapInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: GeographicMapInterface))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: GeographicMapInterface))

reset_impl :: GeographicMapInterface -> IO (())
reset_impl this = javaAbstractMethod "reset"


getAllBinaryTiledLayer :: (JavaObjectClass this_) => this_ -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getAllBinaryTiledLayer object_ = jmethod object_ "getAllBinaryTiledLayer" (\() -> (getAllBinaryTiledLayer_impl (javaCast object_ :: GeographicMapInterface))) ()

getAllBinaryTiledLayer_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getAllBinaryTiledLayer_super object_ = (getAllBinaryTiledLayer_impl (javaCast object_ :: GeographicMapInterface))

getAllBinaryTiledLayer_impl :: GeographicMapInterface -> IO (AllBinaryTiledLayer.AllBinaryTiledLayer)
getAllBinaryTiledLayer_impl this = javaAbstractMethod "getAllBinaryTiledLayer"


-- throws Exception
getCellPositionsAt :: (JavaObjectClass this_) => this_ -> Layer.Layer -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> IO (Bool)
getCellPositionsAt object_ a1 a2 a3 = jmethod object_ "getCellPositionsAt" (\() -> (getCellPositionsAt_impl (javaCast object_ :: GeographicMapInterface))) () a1 a2 a3

getCellPositionsAt_super :: (JavaObjectClass this_) => this_ -> Layer.Layer -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> IO (Bool)
getCellPositionsAt_super object_ a1 a2 a3 = (getCellPositionsAt_impl (javaCast object_ :: GeographicMapInterface)) a1 a2 a3

getCellPositionsAt_impl :: GeographicMapInterface -> Layer.Layer -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> JavaArray (JavaArray (GeographicMapCellPosition.GeographicMapCellPosition)) -> IO (Bool)
getCellPositionsAt_impl this layer currentCellPositionArray cellPositionArray = javaAbstractMethod "getCellPositionsAt"


-- throws Exception
getCellPositionAtXY :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXY object_ a1 a2 = jmethod object_ "getCellPositionAtXY" (\() -> (getCellPositionAtXY_impl (javaCast object_ :: GeographicMapInterface))) () a1 a2

getCellPositionAtXY_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXY_super object_ a1 a2 = (getCellPositionAtXY_impl (javaCast object_ :: GeographicMapInterface)) a1 a2

getCellPositionAtXY_impl :: GeographicMapInterface -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXY_impl this x y = javaAbstractMethod "getCellPositionAtXY"


-- throws Exception
getCellPositionAtXYNoThrow :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXYNoThrow object_ a1 a2 = jmethod object_ "getCellPositionAtXYNoThrow" (\() -> (getCellPositionAtXYNoThrow_impl (javaCast object_ :: GeographicMapInterface))) () a1 a2

getCellPositionAtXYNoThrow_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXYNoThrow_super object_ a1 a2 = (getCellPositionAtXYNoThrow_impl (javaCast object_ :: GeographicMapInterface)) a1 a2

getCellPositionAtXYNoThrow_impl :: GeographicMapInterface -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCellPositionAtXYNoThrow_impl this x y = javaAbstractMethod "getCellPositionAtXYNoThrow"


getCellTypeFromMapCellTypeInt :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getCellTypeFromMapCellTypeInt object_ a1 = jmethod object_ "getCellTypeFromMapCellTypeInt" (\() -> (getCellTypeFromMapCellTypeInt_impl (javaCast object_ :: GeographicMapInterface))) () a1

getCellTypeFromMapCellTypeInt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getCellTypeFromMapCellTypeInt_super object_ a1 = (getCellTypeFromMapCellTypeInt_impl (javaCast object_ :: GeographicMapInterface)) a1

getCellTypeFromMapCellTypeInt_impl :: GeographicMapInterface -> Int -> IO (Int)
getCellTypeFromMapCellTypeInt_impl this cellTypeId = javaAbstractMethod "getCellTypeFromMapCellTypeInt"


-- throws Exception
getCellTypeAtXY :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAtXY object_ a1 a2 = jmethod object_ "getCellTypeAtXY" (\() -> (getCellTypeAtXY_impl (javaCast object_ :: GeographicMapInterface))) () a1 a2

getCellTypeAtXY_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAtXY_super object_ a1 a2 = (getCellTypeAtXY_impl (javaCast object_ :: GeographicMapInterface)) a1 a2

getCellTypeAtXY_impl :: GeographicMapInterface -> Int -> Int -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAtXY_impl this x y = javaAbstractMethod "getCellTypeAtXY"


-- throws Exception
getCellTypeAt :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAt object_ a1 = jmethod object_ "getCellTypeAt" (\() -> (getCellTypeAt_impl (javaCast object_ :: GeographicMapInterface))) () a1

getCellTypeAt_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAt_super object_ a1 = (getCellTypeAt_impl (javaCast object_ :: GeographicMapInterface)) a1

getCellTypeAt_impl :: GeographicMapInterface -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (GeographicMapCellType.GeographicMapCellType)
getCellTypeAt_impl this geographicMapCellPosition = javaAbstractMethod "getCellTypeAt"


getGeographicMapCellPositionFactory :: (JavaObjectClass this_) => this_ -> IO (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
getGeographicMapCellPositionFactory object_ = jmethod object_ "getGeographicMapCellPositionFactory" (\() -> (getGeographicMapCellPositionFactory_impl (javaCast object_ :: GeographicMapInterface))) ()

getGeographicMapCellPositionFactory_super :: (JavaObjectClass this_) => this_ -> IO (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
getGeographicMapCellPositionFactory_super object_ = (getGeographicMapCellPositionFactory_impl (javaCast object_ :: GeographicMapInterface))

getGeographicMapCellPositionFactory_impl :: GeographicMapInterface -> IO (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
getGeographicMapCellPositionFactory_impl this = javaAbstractMethod "getGeographicMapCellPositionFactory"


getGeographicMapCellPositionFactoryInterface :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface)
getGeographicMapCellPositionFactoryInterface object_ = jmethod object_ "getGeographicMapCellPositionFactoryInterface" (\() -> (getGeographicMapCellPositionFactoryInterface_impl (javaCast object_ :: GeographicMapInterface))) ()

getGeographicMapCellPositionFactoryInterface_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface)
getGeographicMapCellPositionFactoryInterface_super object_ = (getGeographicMapCellPositionFactoryInterface_impl (javaCast object_ :: GeographicMapInterface))

getGeographicMapCellPositionFactoryInterface_impl :: GeographicMapInterface -> IO (GeographicMapCellPositionFactoryInterface.GeographicMapCellPositionFactoryInterface)
getGeographicMapCellPositionFactoryInterface_impl this = javaAbstractMethod "getGeographicMapCellPositionFactoryInterface"


getForegroundBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getForegroundBasicColor object_ = jmethod object_ "getForegroundBasicColor" (\() -> (getForegroundBasicColor_impl (javaCast object_ :: GeographicMapInterface))) ()

getForegroundBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getForegroundBasicColor_super object_ = (getForegroundBasicColor_impl (javaCast object_ :: GeographicMapInterface))

getForegroundBasicColor_impl :: GeographicMapInterface -> IO (BasicColor.BasicColor)
getForegroundBasicColor_impl this = javaAbstractMethod "getForegroundBasicColor"


getBackgroundBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBackgroundBasicColor object_ = jmethod object_ "getBackgroundBasicColor" (\() -> (getBackgroundBasicColor_impl (javaCast object_ :: GeographicMapInterface))) ()

getBackgroundBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBackgroundBasicColor_super object_ = (getBackgroundBasicColor_impl (javaCast object_ :: GeographicMapInterface))

getBackgroundBasicColor_impl :: GeographicMapInterface -> IO (BasicColor.BasicColor)
getBackgroundBasicColor_impl this = javaAbstractMethod "getBackgroundBasicColor"


