{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
module FakeLayerManager (module FakeLayerManager, module AllBinaryGameLayerManager) where

import AllBinaryGameLayerManager hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getGeographicMapInterface, getGeographicMapInterface_super, getGeographicMapInterface_impl, setGeographicMapInterface, setGeographicMapInterface_super, setGeographicMapInterface_impl, geographicMapCellTypeArray, geographicMapCellTypeArray_super, geographicMapCellTypeArray_impl, geographicMapInterfaceArray, geographicMapCellTypeArray)
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
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface
import qualified AllBinaryGameLayerManager

-- implements GeographicMapCompositeInterface
data FakeLayerManager = FakeLayerManager
    { header_ :: JavaHeader
    , base :: AllBinaryGameLayerManager.AllBinaryGameLayerManager
    , geographicMapInterfaceArray :: IORef (JavaArray (BasicGeographicMap.BasicGeographicMap))
    , geographicMapCellTypeArray :: IORef (JavaArray (GeographicMapCellType.GeographicMapCellType))
    }

instance JavaNull FakeLayerManager where
    javaNull = javaNullRecord "FakeLayerManager"

instance JavaEquals FakeLayerManager where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FakeLayerManager where
    (==) = jrecordEquals

instance JavaObjectClass FakeLayerManager where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO FakeLayerManager
newRecord_ = do
    base <- AllBinaryGameLayerManager.newRecord_
    let header_ = base.header_
    geographicMapInterfaceArray <- newIORef javaNull
    geographicMapCellTypeArray <- newIORef javaNull
    let this = FakeLayerManager header_ base geographicMapInterfaceArray geographicMapCellTypeArray
    jregisterLevel header_ this
    GeographicMapCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "getGeographicMapInterface" (\() -> getGeographicMapInterface_impl this)
    jregisterMethod header_ "setGeographicMapInterface" (\() -> setGeographicMapInterface_impl this)
    jregisterMethod header_ "geographicMapCellTypeArray" (\() -> geographicMapCellTypeArray_impl this)
    pure this

initFields_ :: FakeLayerManager -> IO ()
initFields_ this = do
    jset this.geographicMapInterfaceArray (BasicGeographicMap.nULL_BASIC_GEOGRAPHIC_MAP_ARRAY)
    jset this.geographicMapCellTypeArray (GeographicMapCellType.nULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY)
    pure ()

new_1 :: GameInfo.GameInfo -> IO FakeLayerManager
new_1 gameInfo = do
    this <- newRecord_
    init_1 this gameInfo
    pure this

init_1 :: FakeLayerManager -> GameInfo.GameInfo -> IO ()
init_1 this gameInfo = do
        AllBinaryGameLayerManager.init_3 this.base (jget ((jio (BasicColorFactory.getInstance))).bLACK) (jget ((jio (BasicColorFactory.getInstance))).wHITE) (gameInfo)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getGeographicMapInterface :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BasicGeographicMap.BasicGeographicMap))
getGeographicMapInterface object_ = jmethod object_ "getGeographicMapInterface" (\() -> (getGeographicMapInterface_impl (javaCast object_ :: FakeLayerManager))) ()

getGeographicMapInterface_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BasicGeographicMap.BasicGeographicMap))
getGeographicMapInterface_super object_ = (getGeographicMapInterface_impl (javaCast object_ :: FakeLayerManager))

getGeographicMapInterface_impl :: FakeLayerManager -> IO (JavaArray (BasicGeographicMap.BasicGeographicMap))
getGeographicMapInterface_impl this = do
        pure ((jget (this).geographicMapInterfaceArray))


setGeographicMapInterface :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> IO (())
setGeographicMapInterface object_ a1 = jmethod object_ "setGeographicMapInterface" (\() -> (setGeographicMapInterface_impl (javaCast object_ :: FakeLayerManager))) () a1

setGeographicMapInterface_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> IO (())
setGeographicMapInterface_super object_ a1 = (setGeographicMapInterface_impl (javaCast object_ :: FakeLayerManager)) a1

setGeographicMapInterface_impl :: FakeLayerManager -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> IO (())
setGeographicMapInterface_impl this geographicMapInterfaceArray = do
        jset (this).geographicMapInterfaceArray (geographicMapInterfaceArray)
        jset (this).geographicMapCellTypeArray ((jnewArray ((jlength (jget (this).geographicMapInterfaceArray))) javaNull))
        pure ()


geographicMapCellTypeArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (GeographicMapCellType.GeographicMapCellType))
geographicMapCellTypeArray object_ = jmethod object_ "geographicMapCellTypeArray" (\() -> (geographicMapCellTypeArray_impl (javaCast object_ :: FakeLayerManager))) ()

geographicMapCellTypeArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (GeographicMapCellType.GeographicMapCellType))
geographicMapCellTypeArray_super object_ = (geographicMapCellTypeArray_impl (javaCast object_ :: FakeLayerManager))

geographicMapCellTypeArray_impl :: FakeLayerManager -> IO (JavaArray (GeographicMapCellType.GeographicMapCellType))
geographicMapCellTypeArray_impl this = do
        pure ((jget (this).geographicMapCellTypeArray))


