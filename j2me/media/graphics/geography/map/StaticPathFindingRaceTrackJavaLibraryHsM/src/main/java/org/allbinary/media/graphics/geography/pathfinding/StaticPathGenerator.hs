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
-- package org.allbinary.media.graphics.geography.pathfinding
module StaticPathGenerator where

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
import qualified Any -- same package or java.lang
import qualified PathCacheFactory -- same package or java.lang
import qualified PathFindingInfo -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified CellPosition -- org.allbinary.graphics.CellPosition
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified BasicGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory
import qualified GeographicMapCellHistory -- org.allbinary.media.graphics.geography.map.GeographicMapCellHistory
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified PathData -- org.allbinary.media.graphics.geography.map.PathData
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified PathGeneratorInterface

-- implements PathGeneratorInterface
data StaticPathGenerator = StaticPathGenerator
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , basicArrayListUtil :: IORef (BasicArrayListUtil.BasicArrayListUtil)
    }

instance JavaNull StaticPathGenerator where
    javaNull = javaNullRecord "StaticPathGenerator"

instance JavaEquals StaticPathGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StaticPathGenerator where
    (==) = jrecordEquals

instance JavaObjectClass StaticPathGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StaticPathGenerator
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    basicArrayListUtil <- newIORef javaNull
    let this = StaticPathGenerator header_ logUtil basicArrayListUtil
    jregisterLevel header_ this
    PathGeneratorInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList" (\() -> getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList_impl this)
    jregisterMethod header_ "createList" (\() -> createList_impl this)
    pure this

initFields_ :: StaticPathGenerator -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.basicArrayListUtil =<< (BasicArrayListUtil.getInstance)
    pure ()

new_ :: IO StaticPathGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StaticPathGenerator -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (PreLogUtil.put "Using Static Path Finding" this (jget ((jio (CommonStrings.getInstance))).cONSTRUCTOR))
        pure ()


-- throws Exception
init :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: StaticPathGenerator))) () (jtoObject a1) a2

init_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: StaticPathGenerator)) (jtoObject a1) a2

init_impl :: StaticPathGenerator -> JavaObject -> Int -> IO (())
init_impl this geographicMapInterfaceObject_ totalPaths = do
        let geographicMapInterface = jtoObject geographicMapInterfaceObject_
        pure ()


-- throws Exception
getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList :: (JavaObjectClass this_) => this_ -> BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList object_ a1 a2 = jmethod object_ "getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList" (\() -> (getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList_impl (javaCast object_ :: StaticPathGenerator))) () a1 a2

getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList_super object_ a1 a2 = (getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList_impl (javaCast object_ :: StaticPathGenerator)) a1 a2

getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList_impl :: StaticPathGenerator -> BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList_impl this geographicMapCellPositionFactory pathList = do
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        size <- (BasicArrayList.size pathList)
        basicGeographicMapCellPosition <- newIORef (javaNull)
        geographicMapCellPosition <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset basicGeographicMapCellPosition ((javaCast (jio (BasicArrayList.get pathList index)) :: CellPosition.CellPosition))
            assignedValue <- (BasicGeographicMapCellPositionFactory.getAt geographicMapCellPositionFactory (jio (CellPosition.getColumn ((jget basicGeographicMapCellPosition)))) (jio (CellPosition.getRow ((jget basicGeographicMapCellPosition)))))
            jset geographicMapCellPosition (assignedValue)
            Control.Monad.void (BasicArrayList.add list (jget geographicMapCellPosition))
        pure (list)


-- throws Exception
createList :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellHistory.GeographicMapCellHistory -> PathFindingInfo.PathFindingInfo -> Int -> IO (BasicArrayList.BasicArrayList)
createList object_ a1 a2 a3 a4 = jmethod object_ "createList" (\() -> (createList_impl (javaCast object_ :: StaticPathGenerator))) () a1 a2 a3 a4

createList_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellHistory.GeographicMapCellHistory -> PathFindingInfo.PathFindingInfo -> Int -> IO (BasicArrayList.BasicArrayList)
createList_super object_ a1 a2 a3 a4 = (createList_impl (javaCast object_ :: StaticPathGenerator)) a1 a2 a3 a4

createList_impl :: StaticPathGenerator -> BasicGeographicMap.BasicGeographicMap -> GeographicMapCellHistory.GeographicMapCellHistory -> PathFindingInfo.PathFindingInfo -> Int -> IO (BasicArrayList.BasicArrayList)
createList_impl this geographicMapInterface geographicMapCellHistory pathFindingInfo totalPaths = do
        commonStrings <- (CommonStrings.getInstance)
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            ) $ do
            pathCacheFactory <- (PathCacheFactory.getInstance)
            mapIdInteger <- (AllBinaryTiledLayer.getDataId ((jio (BasicGeographicMap.getAllBinaryTiledLayer geographicMapInterface))))
            list <- newIORef =<< (PathCacheFactory.getOrCreate pathCacheFactory mapIdInteger)
            when ((jget list) == (jio (BasicArrayListUtil.getImmutableInstance ((jget (this).basicArrayListUtil))))) $ do
                assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
                jset list (assignedValue)
                smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
                geographicMapCellPositionFactory <- (BasicGeographicMap.getGeographicMapCellPositionFactory geographicMapInterface)
                let id = ((jget ((jio (PathData.getInstance))).oFFSET) + mapIdInteger)
                basicList <- (PathCacheFactory.getOrCreate pathCacheFactory (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory id)))
                size <- (BasicArrayList.size basicList)
                pathList <- newIORef (javaNull)
                forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                    assignedValue <- (StaticPathGenerator.getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList this geographicMapCellPositionFactory (javaCast (jio (BasicArrayList.get basicList index)) :: BasicArrayList.BasicArrayList))
                    jset pathList (assignedValue)
                    Control.Monad.void (BasicArrayList.add ((jget list)) (jget pathList))
                Control.Monad.void (PathCacheFactory.add pathCacheFactory mapIdInteger (jget list))
                Control.Monad.void (PathCacheFactory.remove pathCacheFactory (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory id)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Using Cached Path(s): "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jget list)))))))) this (jget (commonStrings).gET_INSTANCE))
            pure ((jget list))


