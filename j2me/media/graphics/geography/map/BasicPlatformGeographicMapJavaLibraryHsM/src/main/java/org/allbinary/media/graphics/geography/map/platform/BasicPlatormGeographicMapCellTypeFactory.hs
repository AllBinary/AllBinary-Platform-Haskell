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
-- package org.allbinary.media.graphics.geography.map.platform
module BasicPlatormGeographicMapCellTypeFactory (module BasicPlatormGeographicMapCellTypeFactory, module GeographicMapCellTypeFactory) where

import GeographicMapCellTypeFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getStartType, getStartType_super, getStartType_impl, getEndType, getEndType_super, getEndType_impl, getEmptyType, getEmptyType_super, getEmptyType_impl, isPath, isPath_super, isPath_impl, enumerationUtil, bLOCK_CELL_TYPE, jUMP_THRU_CELL_TYPE, lADDER_CELL_TYPE, maxTileId)
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
import qualified BasicPlatormGeographicMapCellType -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified Enumeration -- java.util.Enumeration
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified GeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified EnumerationUtil -- org.allbinary.util.EnumerationUtil

data BasicPlatormGeographicMapCellTypeFactory = BasicPlatormGeographicMapCellTypeFactory
    { header_ :: JavaHeader
    , base :: GeographicMapCellTypeFactory.GeographicMapCellTypeFactory
    , enumerationUtil :: IORef (EnumerationUtil.EnumerationUtil)
    , bLOCK_CELL_TYPE :: IORef (BasicPlatormGeographicMapCellType.BasicPlatormGeographicMapCellType)
    , jUMP_THRU_CELL_TYPE :: IORef (BasicPlatormGeographicMapCellType.BasicPlatormGeographicMapCellType)
    , lADDER_CELL_TYPE :: IORef (BasicPlatormGeographicMapCellType.BasicPlatormGeographicMapCellType)
    , maxTileId :: IORef (Int)
    }

instance JavaNull BasicPlatormGeographicMapCellTypeFactory where
    javaNull = javaNullRecord "BasicPlatormGeographicMapCellTypeFactory"

instance JavaEquals BasicPlatormGeographicMapCellTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicPlatormGeographicMapCellTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicPlatormGeographicMapCellTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicPlatormGeographicMapCellTypeFactory
newRecord_ = do
    base <- GeographicMapCellTypeFactory.newRecord_
    let header_ = base.header_
    enumerationUtil <- newIORef javaNull
    bLOCK_CELL_TYPE <- newIORef javaNull
    jUMP_THRU_CELL_TYPE <- newIORef javaNull
    lADDER_CELL_TYPE <- newIORef javaNull
    maxTileId <- newIORef 0
    let this = BasicPlatormGeographicMapCellTypeFactory header_ base enumerationUtil bLOCK_CELL_TYPE jUMP_THRU_CELL_TYPE lADDER_CELL_TYPE maxTileId
    jregisterLevel header_ this
    jregisterMethod header_ "getStartType" (\() -> getStartType_impl this)
    jregisterMethod header_ "getEndType" (\() -> getEndType_impl this)
    jregisterMethod header_ "getEmptyType" (\() -> getEmptyType_impl this)
    jregisterMethod header_ "isPath" (\() -> isPath_impl this)
    pure this

initFields_ :: BasicPlatormGeographicMapCellTypeFactory -> IO ()
initFields_ this = do
    jset this.enumerationUtil =<< (EnumerationUtil.getInstance)
    jset this.bLOCK_CELL_TYPE (javaNull)
    jset this.jUMP_THRU_CELL_TYPE (javaNull)
    jset this.lADDER_CELL_TYPE (javaNull)
    jset this.maxTileId (0)
    pure ()

new_2 :: ABHashtable.ABHashtable -> Int -> IO BasicPlatormGeographicMapCellTypeFactory
new_2 tileTypeToTileIdsMap maxTileId = do
    this <- newRecord_
    init_2 this tileTypeToTileIdsMap maxTileId
    pure this

init_2 :: BasicPlatormGeographicMapCellTypeFactory -> ABHashtable.ABHashtable -> Int -> IO ()
init_2 this tileTypeToTileIdsMap maxTileId = do
        GeographicMapCellTypeFactory.init_ this.base
        initFields_ this
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jget (commonStrings).sTART) this (jget (commonStrings).iNIT))
        jset (this).maxTileId (maxTileId)
        Control.Monad.void (GeographicMapCellType.new_2 0 0)
        bLOCK_CELL_TYPE <- newIORef =<< (BasicPlatormGeographicMapCellType.createType 1)
        jUMP_THRU_CELL_TYPE <- newIORef ((jget bLOCK_CELL_TYPE))
        lADDER_CELL_TYPE <- newIORef ((jget bLOCK_CELL_TYPE))
        let pLATFORM = "Platform"
        let jUMP_TRHU = "JumpThru"
        let lADDER = "Ladder"
        enumeration <- (ABHashtable.keys tileTypeToTileIdsMap)
        idsWithTypeList <- newIORef (javaNull)
        key <- newIORef ("")
        basicPlatormGeographicMapCellType <- newIORef (javaNull)
        fix $ \loop -> when (jio (EnumerationUtil.hasMoreElements ((jget (this).enumerationUtil)) enumeration)) $ javaIteration (loop) $ do
            jset key ((javaCast (jio (EnumerationUtil.nextElement ((jget (this).enumerationUtil)) enumeration)) :: String))
            Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jget key) this (jget (commonStrings).iNIT))
            jset idsWithTypeList ((javaCast (jio (ABHashtable.get tileTypeToTileIdsMap (jget key))) :: BasicArrayList.BasicArrayList))
            assignedValue <- (BasicPlatormGeographicMapCellType.new_1 (jget idsWithTypeList))
            jset basicPlatormGeographicMapCellType (assignedValue)
            when ((jget key) == pLATFORM) $ do
                jset bLOCK_CELL_TYPE ((jget basicPlatormGeographicMapCellType))
            when ((jget key) == jUMP_TRHU) $ do
                jset jUMP_THRU_CELL_TYPE ((jget basicPlatormGeographicMapCellType))
            when ((jget key) == lADDER) $ do
                jset lADDER_CELL_TYPE ((jget basicPlatormGeographicMapCellType))
        jset (this).bLOCK_CELL_TYPE ((jget bLOCK_CELL_TYPE))
        jset (this).jUMP_THRU_CELL_TYPE ((jget jUMP_THRU_CELL_TYPE))
        jset (this).lADDER_CELL_TYPE ((jget lADDER_CELL_TYPE))
        Control.Monad.void (GeographicMapCellType.new_2 ((jget (this).maxTileId) - 1) 0)
        Control.Monad.void (GeographicMapCellType.new_2 ((jget (this).maxTileId) - 2) 0)
        pure ()


getStartType :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartType object_ = jmethod object_ "getStartType" (\() -> (getStartType_impl (javaCast object_ :: BasicPlatormGeographicMapCellTypeFactory))) ()

getStartType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartType_super object_ = (getStartType_impl (javaCast object_ :: BasicPlatormGeographicMapCellTypeFactory))

getStartType_impl :: BasicPlatormGeographicMapCellTypeFactory -> IO (Int)
getStartType_impl this = do
        pure (((jget (this).maxTileId) - 1))


getEndType :: (JavaObjectClass this_) => this_ -> IO (Int)
getEndType object_ = jmethod object_ "getEndType" (\() -> (getEndType_impl (javaCast object_ :: BasicPlatormGeographicMapCellTypeFactory))) ()

getEndType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getEndType_super object_ = (getEndType_impl (javaCast object_ :: BasicPlatormGeographicMapCellTypeFactory))

getEndType_impl :: BasicPlatormGeographicMapCellTypeFactory -> IO (Int)
getEndType_impl this = do
        pure (((jget (this).maxTileId) - 2))


getEmptyType :: (JavaObjectClass this_) => this_ -> IO (Int)
getEmptyType object_ = jmethod object_ "getEmptyType" (\() -> (getEmptyType_impl (javaCast object_ :: BasicPlatormGeographicMapCellTypeFactory))) ()

getEmptyType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getEmptyType_super object_ = (getEmptyType_impl (javaCast object_ :: BasicPlatormGeographicMapCellTypeFactory))

getEmptyType_impl :: BasicPlatormGeographicMapCellTypeFactory -> IO (Int)
getEmptyType_impl this = do
        pure (0)


isPath :: (JavaObjectClass this_) => this_ -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isPath object_ a1 = jmethod object_ "isPath" (\() -> (isPath_impl (javaCast object_ :: BasicPlatormGeographicMapCellTypeFactory))) () a1

isPath_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isPath_super object_ a1 = (isPath_impl (javaCast object_ :: BasicPlatormGeographicMapCellTypeFactory)) a1

isPath_impl :: BasicPlatormGeographicMapCellTypeFactory -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isPath_impl this cellType = do
    javaCatchReturn $ do
        when ((jio (GeographicMapCellType.getType cellType)) == 0) $ do
            javaReturn (True)
        pure (False)


