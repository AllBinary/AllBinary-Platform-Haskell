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
module CachingGeographicMapCellPositionFactory (module CachingGeographicMapCellPositionFactory, module BasicGeographicMapCellPositionFactory) where

import BasicGeographicMapCellPositionFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createInstance, createInstance_super, createInstance_impl)
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
import qualified BasicGeographicMap -- same package or java.lang
import qualified GeographicMapCellPositionFactory -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified GeographicMapCellPosition -- same package or java.lang
import qualified GeographicMapCellPositionFactoryInterface -- same package or java.lang
import qualified CellPosition -- org.allbinary.graphics.CellPosition
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicGeographicMapCellPositionFactory

data CachingGeographicMapCellPositionFactory = CachingGeographicMapCellPositionFactory
    { header_ :: JavaHeader
    , base :: BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory
    }

instance JavaNull CachingGeographicMapCellPositionFactory where
    javaNull = javaNullRecord "CachingGeographicMapCellPositionFactory"

instance JavaEquals CachingGeographicMapCellPositionFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CachingGeographicMapCellPositionFactory where
    (==) = jrecordEquals

instance JavaObjectClass CachingGeographicMapCellPositionFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CachingGeographicMapCellPositionFactory
newRecord_ = do
    base <- BasicGeographicMapCellPositionFactory.newRecord_
    let header_ = base.header_
    let this = CachingGeographicMapCellPositionFactory header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "createInstance" (\() -> createInstance_impl this)
    pure this

initFields_ :: CachingGeographicMapCellPositionFactory -> IO ()
initFields_ this = do
    pure ()

new_1 :: BasicGeographicMap.BasicGeographicMap -> IO CachingGeographicMapCellPositionFactory
new_1 geographicMapInterface = do
    this <- newRecord_
    init_1 this geographicMapInterface
    pure this

init_1 :: CachingGeographicMapCellPositionFactory -> BasicGeographicMap.BasicGeographicMap -> IO ()
init_1 this geographicMapInterface = do
        BasicGeographicMapCellPositionFactory.init_1 this.base (geographicMapInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
createInstance :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
createInstance object_ a1 a2 a3 a4 = jmethod object_ "createInstance" (\() -> (createInstance_impl (javaCast object_ :: CachingGeographicMapCellPositionFactory))) () a1 a2 a3 a4

createInstance_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
createInstance_super object_ a1 a2 a3 a4 = (createInstance_impl (javaCast object_ :: CachingGeographicMapCellPositionFactory)) a1 a2 a3 a4

createInstance_impl :: CachingGeographicMapCellPositionFactory -> Int -> Int -> Int -> Int -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
createInstance_impl this i_column i_row width height = do
        hashtable <- (GeographicMapCellPositionFactory.getHashtable)
        cellPositionKey <- (CellPosition.toStringColRow i_column i_row)
        cellPositionCanBeNull <- newIORef =<< (ABHashtable.get hashtable cellPositionKey)
        when ((jget cellPositionCanBeNull) == javaNull) $ do
            assignedValue <- (GeographicMapCellPositionFactoryInterface.getInstance ((jget (this).base.geographicMapCellPositionFactoryInterface)) (jget (this).base.geographicMapInterface) i_column i_row (jio (BasicGeographicMapCellPositionFactory.getColumns this)) (jio (BasicGeographicMapCellPositionFactory.getRows this)) width height)
            jset cellPositionCanBeNull (assignedValue)
            jsetIndex ((jindex ((jget (this).base.geographicMapCellPositionArray)) (i_row))) (i_column) ((javaCast (jget cellPositionCanBeNull) :: GeographicMapCellPosition.GeographicMapCellPosition))
            Control.Monad.void (ABHashtable.put hashtable cellPositionKey (jget cellPositionCanBeNull))
        pure ((javaCast (jget cellPositionCanBeNull) :: GeographicMapCellPosition.GeographicMapCellPosition))


