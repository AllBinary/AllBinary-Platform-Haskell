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
-- package org.allbinary.media.graphics.geography.map.topview
module BasicTopViewGeographicMapCellTypeFactory (module BasicTopViewGeographicMapCellTypeFactory, module GeographicMapCellTypeFactory) where

import GeographicMapCellTypeFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getStartType, getStartType_super, getStartType_impl, getEndType, getEndType_super, getEndType_impl, getEmptyType, getEmptyType_super, getEmptyType_impl, isPath, isPath_super, isPath_impl, toString, toString_super, toString_impl, bLOCK_CELL_TYPE, oFF_MAP_CELL_TYPE, fLOOR_CELL_TYPE, dOOR_CELL_TYPE, sTAIRS_UP_CELL_TYPE, sTAIRS_DOWN_CELL_TYPE, oTHER_CELL_TYPE, maxTileId)
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
import qualified BasicTopViewGeographicMapCellType -- same package or java.lang
import qualified BasicTopViewGeographicMapStrings -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified GeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory
import qualified RaceTrackGeographicMapCellType -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified HashtableUtil -- org.allbinary.util.HashtableUtil

data BasicTopViewGeographicMapCellTypeFactory = BasicTopViewGeographicMapCellTypeFactory
    { header_ :: JavaHeader
    , base :: GeographicMapCellTypeFactory.GeographicMapCellTypeFactory
    , bLOCK_CELL_TYPE :: IORef (BasicTopViewGeographicMapCellType.BasicTopViewGeographicMapCellType)
    , oFF_MAP_CELL_TYPE :: IORef (BasicTopViewGeographicMapCellType.BasicTopViewGeographicMapCellType)
    , fLOOR_CELL_TYPE :: IORef (BasicTopViewGeographicMapCellType.BasicTopViewGeographicMapCellType)
    , dOOR_CELL_TYPE :: IORef (BasicTopViewGeographicMapCellType.BasicTopViewGeographicMapCellType)
    , sTAIRS_UP_CELL_TYPE :: IORef (BasicTopViewGeographicMapCellType.BasicTopViewGeographicMapCellType)
    , sTAIRS_DOWN_CELL_TYPE :: IORef (BasicTopViewGeographicMapCellType.BasicTopViewGeographicMapCellType)
    , oTHER_CELL_TYPE :: IORef (BasicTopViewGeographicMapCellType.BasicTopViewGeographicMapCellType)
    , maxTileId :: IORef (Int)
    }

instance JavaNull BasicTopViewGeographicMapCellTypeFactory where
    javaNull = javaNullRecord "BasicTopViewGeographicMapCellTypeFactory"

instance JavaEquals BasicTopViewGeographicMapCellTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicTopViewGeographicMapCellTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicTopViewGeographicMapCellTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicTopViewGeographicMapCellTypeFactory
newRecord_ = do
    base <- GeographicMapCellTypeFactory.newRecord_
    let header_ = base.header_
    bLOCK_CELL_TYPE <- newIORef javaNull
    oFF_MAP_CELL_TYPE <- newIORef javaNull
    fLOOR_CELL_TYPE <- newIORef javaNull
    dOOR_CELL_TYPE <- newIORef javaNull
    sTAIRS_UP_CELL_TYPE <- newIORef javaNull
    sTAIRS_DOWN_CELL_TYPE <- newIORef javaNull
    oTHER_CELL_TYPE <- newIORef javaNull
    maxTileId <- newIORef 0
    let this = BasicTopViewGeographicMapCellTypeFactory header_ base bLOCK_CELL_TYPE oFF_MAP_CELL_TYPE fLOOR_CELL_TYPE dOOR_CELL_TYPE sTAIRS_UP_CELL_TYPE sTAIRS_DOWN_CELL_TYPE oTHER_CELL_TYPE maxTileId
    jregisterLevel header_ this
    jregisterMethod header_ "getStartType" (\() -> getStartType_impl this)
    jregisterMethod header_ "getEndType" (\() -> getEndType_impl this)
    jregisterMethod header_ "getEmptyType" (\() -> getEmptyType_impl this)
    jregisterMethod header_ "isPath" (\() -> isPath_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: BasicTopViewGeographicMapCellTypeFactory -> IO ()
initFields_ this = do
    jset this.bLOCK_CELL_TYPE (javaNull)
    jset this.oFF_MAP_CELL_TYPE (javaNull)
    jset this.fLOOR_CELL_TYPE (javaNull)
    jset this.dOOR_CELL_TYPE (javaNull)
    jset this.sTAIRS_UP_CELL_TYPE (javaNull)
    jset this.sTAIRS_DOWN_CELL_TYPE (javaNull)
    jset this.oTHER_CELL_TYPE (javaNull)
    jset this.maxTileId (0)
    pure ()

new_2 :: ABHashtable.ABHashtable -> Int -> IO BasicTopViewGeographicMapCellTypeFactory
new_2 tileTypeToTileIdsMap maxTileId = do
    this <- newRecord_
    init_2 this tileTypeToTileIdsMap maxTileId
    pure this

init_2 :: BasicTopViewGeographicMapCellTypeFactory -> ABHashtable.ABHashtable -> Int -> IO ()
init_2 this tileTypeToTileIdsMap maxTileId = do
        GeographicMapCellTypeFactory.init_ this.base
        initFields_ this
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jget (commonStrings).sTART) this (jget (commonStrings).cONSTRUCTOR))
        jset (this).maxTileId (maxTileId)
        basicTopViewGeographicMapStrings <- (BasicTopViewGeographicMapStrings.getInstance)
        geographicMapCellTypeFactory <- (GeographicMapCellTypeFactory.getInstance)
        geographicMapCellTypeArray <- (GeographicMapCellTypeFactory.getGeographicMapCellTypeArray geographicMapCellTypeFactory)
        type_ <- newIORef (0)
        if ((jindex geographicMapCellTypeArray ((jget type_))) == javaNull) then do
            Control.Monad.void (RaceTrackGeographicMapCellType.new_4 (jget ((jio (CommonStrings.getInstance))).uNKNOWN) (jget type_) 999 0)
        else do
            pure ()
        bLOCK_CELL_TYPE <- newIORef =<< (BasicTopViewGeographicMapCellType.createType (jget (basicTopViewGeographicMapStrings).dEFAULT) 1 1)
        oFF_MAP_CELL_TYPE <- newIORef ((jget bLOCK_CELL_TYPE))
        fLOOR_CELL_TYPE <- newIORef ((jget bLOCK_CELL_TYPE))
        dOOR_CELL_TYPE <- newIORef ((jget bLOCK_CELL_TYPE))
        sTAIRS_UP_CELL_TYPE <- newIORef ((jget bLOCK_CELL_TYPE))
        sTAIRS_DOWN_CELL_TYPE <- newIORef ((jget bLOCK_CELL_TYPE))
        oTHER_CELL_TYPE <- newIORef ((jget bLOCK_CELL_TYPE))
        keyArray <- (HashtableUtil.getKeysAsArray ((jio (HashtableUtil.getInstance))) tileTypeToTileIdsMap)
        let size = (jlength keyArray)
        idsWithTypeList <- newIORef (javaNull)
        key <- newIORef ("")
        basicPlatormGeographicMapCellType <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset key ((javaCast (jindex keyArray (index)) :: String))
            jset idsWithTypeList ((javaCast (jio (ABHashtable.get tileTypeToTileIdsMap (jget key))) :: BasicArrayList.BasicArrayList))
            if ((jget key) == (jget (basicTopViewGeographicMapStrings).wALL)) then do
                assignedValue <- (BasicTopViewGeographicMapCellType.new_3 (jget (basicTopViewGeographicMapStrings).wALL) (jget idsWithTypeList) 1000)
                jset basicPlatormGeographicMapCellType (assignedValue)
                jset bLOCK_CELL_TYPE ((jget basicPlatormGeographicMapCellType))
            else if ((jget key) == (jget (basicTopViewGeographicMapStrings).oFF_MAP)) then do
                assignedValue <- (BasicTopViewGeographicMapCellType.new_3 (jget (basicTopViewGeographicMapStrings).oFF_MAP) (jget idsWithTypeList) 1001)
                jset basicPlatormGeographicMapCellType (assignedValue)
                jset oFF_MAP_CELL_TYPE ((jget basicPlatormGeographicMapCellType))
            else if ((jget key) == (jget (basicTopViewGeographicMapStrings).fLOOR)) then do
                assignedValue <- (BasicTopViewGeographicMapCellType.new_3 (jget (basicTopViewGeographicMapStrings).fLOOR) (jget idsWithTypeList) 1)
                jset basicPlatormGeographicMapCellType (assignedValue)
                jset fLOOR_CELL_TYPE ((jget basicPlatormGeographicMapCellType))
            else if ((jget key) == (jget (basicTopViewGeographicMapStrings).dOOR)) then do
                assignedValue <- (BasicTopViewGeographicMapCellType.new_3 (jget (basicTopViewGeographicMapStrings).dOOR) (jget idsWithTypeList) 1)
                jset basicPlatormGeographicMapCellType (assignedValue)
                jset dOOR_CELL_TYPE ((jget basicPlatormGeographicMapCellType))
            else if ((jget key) == (jget (basicTopViewGeographicMapStrings).sTAIRS_UP)) then do
                assignedValue <- (BasicTopViewGeographicMapCellType.new_3 (jget (basicTopViewGeographicMapStrings).sTAIRS_UP) (jget idsWithTypeList) 1)
                jset basicPlatormGeographicMapCellType (assignedValue)
                jset sTAIRS_UP_CELL_TYPE ((jget basicPlatormGeographicMapCellType))
            else if ((jget key) == (jget (basicTopViewGeographicMapStrings).sTAIRS_DOWN)) then do
                assignedValue <- (BasicTopViewGeographicMapCellType.new_3 (jget (basicTopViewGeographicMapStrings).sTAIRS_DOWN) (jget idsWithTypeList) 1)
                jset basicPlatormGeographicMapCellType (assignedValue)
                jset sTAIRS_DOWN_CELL_TYPE ((jget basicPlatormGeographicMapCellType))
            else when ((jget key) == (jget (basicTopViewGeographicMapStrings).oTHER)) $ do
                assignedValue <- (BasicTopViewGeographicMapCellType.new_3 (jget (basicTopViewGeographicMapStrings).oTHER) (jget idsWithTypeList) 1)
                jset basicPlatormGeographicMapCellType (assignedValue)
                jset oTHER_CELL_TYPE ((jget basicPlatormGeographicMapCellType))
        jset (this).bLOCK_CELL_TYPE ((jget bLOCK_CELL_TYPE))
        jset (this).oFF_MAP_CELL_TYPE ((jget oFF_MAP_CELL_TYPE))
        jset (this).fLOOR_CELL_TYPE ((jget fLOOR_CELL_TYPE))
        jset (this).dOOR_CELL_TYPE ((jget dOOR_CELL_TYPE))
        jset (this).sTAIRS_UP_CELL_TYPE ((jget sTAIRS_UP_CELL_TYPE))
        jset (this).sTAIRS_DOWN_CELL_TYPE ((jget sTAIRS_DOWN_CELL_TYPE))
        jset (this).oTHER_CELL_TYPE ((jget oTHER_CELL_TYPE))
        jset type_ (((jget (this).maxTileId) - 1))
        if ((jindex geographicMapCellTypeArray ((jget type_))) == javaNull) then do
            Control.Monad.void (RaceTrackGeographicMapCellType.new_4 (jget (commonStrings).sTART) (jget type_) 1 0)
        else do
            pure ()
        jset type_ (((jget (this).maxTileId) - 2))
        if ((jindex geographicMapCellTypeArray ((jget type_))) == javaNull) then do
            Control.Monad.void (RaceTrackGeographicMapCellType.new_4 (jget (commonStrings).sTART) (jget type_) 1 0)
        else do
            pure ()
        pure ()


getStartType :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartType object_ = jmethod object_ "getStartType" (\() -> (getStartType_impl (javaCast object_ :: BasicTopViewGeographicMapCellTypeFactory))) ()

getStartType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartType_super object_ = (getStartType_impl (javaCast object_ :: BasicTopViewGeographicMapCellTypeFactory))

getStartType_impl :: BasicTopViewGeographicMapCellTypeFactory -> IO (Int)
getStartType_impl this = do
        pure (((jget (this).maxTileId) - 1))


getEndType :: (JavaObjectClass this_) => this_ -> IO (Int)
getEndType object_ = jmethod object_ "getEndType" (\() -> (getEndType_impl (javaCast object_ :: BasicTopViewGeographicMapCellTypeFactory))) ()

getEndType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getEndType_super object_ = (getEndType_impl (javaCast object_ :: BasicTopViewGeographicMapCellTypeFactory))

getEndType_impl :: BasicTopViewGeographicMapCellTypeFactory -> IO (Int)
getEndType_impl this = do
        pure (((jget (this).maxTileId) - 2))


getEmptyType :: (JavaObjectClass this_) => this_ -> IO (Int)
getEmptyType object_ = jmethod object_ "getEmptyType" (\() -> (getEmptyType_impl (javaCast object_ :: BasicTopViewGeographicMapCellTypeFactory))) ()

getEmptyType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getEmptyType_super object_ = (getEmptyType_impl (javaCast object_ :: BasicTopViewGeographicMapCellTypeFactory))

getEmptyType_impl :: BasicTopViewGeographicMapCellTypeFactory -> IO (Int)
getEmptyType_impl this = do
        pure ((jindex ((jio (BasicTopViewGeographicMapCellType.getTypes ((jget (this).fLOOR_CELL_TYPE))))) (0)))


isPath :: (JavaObjectClass this_) => this_ -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isPath object_ a1 = jmethod object_ "isPath" (\() -> (isPath_impl (javaCast object_ :: BasicTopViewGeographicMapCellTypeFactory))) () a1

isPath_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isPath_super object_ a1 = (isPath_impl (javaCast object_ :: BasicTopViewGeographicMapCellTypeFactory)) a1

isPath_impl :: BasicTopViewGeographicMapCellTypeFactory -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isPath_impl this cellType = do
    javaCatchReturn $ do
        when (jio (BasicTopViewGeographicMapCellType.isType ((jget (this).fLOOR_CELL_TYPE)) cellType)) $ do
            javaReturn (True)
        pure (False)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BasicTopViewGeographicMapCellTypeFactory))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BasicTopViewGeographicMapCellTypeFactory))

toString_impl :: BasicTopViewGeographicMapCellTypeFactory -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "key: WALL/BLOCK_CELL_TYPE: "))) (jio (BasicTopViewGeographicMapCellType.toString ((jget (this).bLOCK_CELL_TYPE))))))) "key: FLOOR_CELL_TYPE: "))) (jio (BasicTopViewGeographicMapCellType.toString ((jget (this).fLOOR_CELL_TYPE))))))) "key: OTHER_CELL_TYPE: "))) (jio (BasicTopViewGeographicMapCellType.toString ((jget (this).oTHER_CELL_TYPE))))))) "key: OFF_MAP_CELL_TYPE: "))) (jio (BasicTopViewGeographicMapCellType.toString ((jget (this).oFF_MAP_CELL_TYPE))))))) "key: DOOR_CELL_TYPE: "))) (jio (BasicTopViewGeographicMapCellType.toString ((jget (this).dOOR_CELL_TYPE))))))) "key: STAIRS_DOWN_CELL_TYPE: "))) (jio (BasicTopViewGeographicMapCellType.toString ((jget (this).sTAIRS_DOWN_CELL_TYPE))))))) "key: STAIRS_UP_CELL_TYPE: "))) (jio (BasicTopViewGeographicMapCellType.toString ((jget (this).sTAIRS_UP_CELL_TYPE))))))))


