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
module PathFindingInfo where

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
import qualified PathFindingNodeCostInfoFactoryBase -- same package or java.lang
import qualified GeographicPathFinderBase -- same package or java.lang
import qualified PathFindingNode -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified PathFindingInfoInterface

-- implements PathFindingInfoInterface
data PathFindingInfo = PathFindingInfo
    { header_ :: JavaHeader
    , pathFinder :: IORef (GeographicPathFinderBase.GeographicPathFinderBase)
    , startPathFindingNodeList :: IORef (BasicArrayList.BasicArrayList)
    , endPathFindingNodeList :: IORef (BasicArrayList.BasicArrayList)
    , pathFindingNodeCostInfoFactoryInterface :: IORef (PathFindingNodeCostInfoFactoryBase.PathFindingNodeCostInfoFactoryBase)
    }

instance JavaNull PathFindingInfo where
    javaNull = javaNullRecord "PathFindingInfo"

instance JavaEquals PathFindingInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFindingInfo where
    (==) = jrecordEquals

instance JavaObjectClass PathFindingInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_PATH_FINDING_INFO #-}
nULL_PATH_FINDING_INFO = unsafePerformIO ((new_3 (PathFindingNodeCostInfoFactoryBase.nULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE) (jio (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))) (jio (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance)))))))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PathFindingInfo
newRecord_ = do
    header_ <- newJavaHeader
    pathFinder <- newIORef javaNull
    startPathFindingNodeList <- newIORef javaNull
    endPathFindingNodeList <- newIORef javaNull
    pathFindingNodeCostInfoFactoryInterface <- newIORef javaNull
    let this = PathFindingInfo header_ pathFinder startPathFindingNodeList endPathFindingNodeList pathFindingNodeCostInfoFactoryInterface
    jregisterLevel header_ this
    PathFindingInfoInterface.registerInterface_ header_
    jregisterMethod header_ "getStartPathFindingNodeList" (\() -> getStartPathFindingNodeList_impl this)
    jregisterMethod header_ "getEndPathFindingNodeList" (\() -> getEndPathFindingNodeList_impl this)
    jregisterMethod header_ "getPathFinder" (\() -> getPathFinder_impl this)
    jregisterMethod header_ "addStartPathFindingNode" (\() -> addStartPathFindingNode_impl this)
    jregisterMethod header_ "addEndPathFindingNode" (\() -> addEndPathFindingNode_impl this)
    jregisterMethod header_ "setPathFinder" (\() -> setPathFinder_impl this)
    jregisterMethod header_ "getPathFindingNodeCostInfoFactoryInterface" (\() -> getPathFindingNodeCostInfoFactoryInterface_impl this)
    pure this

initFields_ :: PathFindingInfo -> IO ()
initFields_ this = do
    jset this.pathFinder (GeographicPathFinderBase.nULL_GEOGRAPHIC_PATH_FINDER_BASE)
    jset this.startPathFindingNodeList (javaNull)
    jset this.endPathFindingNodeList (javaNull)
    jset this.pathFindingNodeCostInfoFactoryInterface (javaNull)
    pure ()

new_3 :: PathFindingNodeCostInfoFactoryBase.PathFindingNodeCostInfoFactoryBase -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO PathFindingInfo
new_3 pathFindingNodeCostInfoFactoryInterface startPathFindingNodeList endPathFindingNodeList = do
    this <- newRecord_
    init_3 this pathFindingNodeCostInfoFactoryInterface startPathFindingNodeList endPathFindingNodeList
    pure this

init_3 :: PathFindingInfo -> PathFindingNodeCostInfoFactoryBase.PathFindingNodeCostInfoFactoryBase -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO ()
init_3 this pathFindingNodeCostInfoFactoryInterface startPathFindingNodeList endPathFindingNodeList = do
        initFields_ this
        jset (this).pathFindingNodeCostInfoFactoryInterface (pathFindingNodeCostInfoFactoryInterface)
        jset (this).startPathFindingNodeList (startPathFindingNodeList)
        jset (this).endPathFindingNodeList (endPathFindingNodeList)
        pure ()


getStartPathFindingNodeList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getStartPathFindingNodeList object_ = jmethod object_ "getStartPathFindingNodeList" (\() -> (getStartPathFindingNodeList_impl (javaCast object_ :: PathFindingInfo))) ()

getStartPathFindingNodeList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getStartPathFindingNodeList_super object_ = (getStartPathFindingNodeList_impl (javaCast object_ :: PathFindingInfo))

getStartPathFindingNodeList_impl :: PathFindingInfo -> IO (BasicArrayList.BasicArrayList)
getStartPathFindingNodeList_impl this = do
        pure ((jget (this).startPathFindingNodeList))


getEndPathFindingNodeList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getEndPathFindingNodeList object_ = jmethod object_ "getEndPathFindingNodeList" (\() -> (getEndPathFindingNodeList_impl (javaCast object_ :: PathFindingInfo))) ()

getEndPathFindingNodeList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getEndPathFindingNodeList_super object_ = (getEndPathFindingNodeList_impl (javaCast object_ :: PathFindingInfo))

getEndPathFindingNodeList_impl :: PathFindingInfo -> IO (BasicArrayList.BasicArrayList)
getEndPathFindingNodeList_impl this = do
        pure ((jget (this).endPathFindingNodeList))


getPathFinder :: (JavaObjectClass this_) => this_ -> IO (GeographicPathFinderBase.GeographicPathFinderBase)
getPathFinder object_ = jmethod object_ "getPathFinder" (\() -> (getPathFinder_impl (javaCast object_ :: PathFindingInfo))) ()

getPathFinder_super :: (JavaObjectClass this_) => this_ -> IO (GeographicPathFinderBase.GeographicPathFinderBase)
getPathFinder_super object_ = (getPathFinder_impl (javaCast object_ :: PathFindingInfo))

getPathFinder_impl :: PathFindingInfo -> IO (GeographicPathFinderBase.GeographicPathFinderBase)
getPathFinder_impl this = do
        pure ((jget (this).pathFinder))


addStartPathFindingNode :: (JavaObjectClass this_) => this_ -> PathFindingNode.PathFindingNode -> IO (())
addStartPathFindingNode object_ a1 = jmethod object_ "addStartPathFindingNode" (\() -> (addStartPathFindingNode_impl (javaCast object_ :: PathFindingInfo))) () a1

addStartPathFindingNode_super :: (JavaObjectClass this_) => this_ -> PathFindingNode.PathFindingNode -> IO (())
addStartPathFindingNode_super object_ a1 = (addStartPathFindingNode_impl (javaCast object_ :: PathFindingInfo)) a1

addStartPathFindingNode_impl :: PathFindingInfo -> PathFindingNode.PathFindingNode -> IO (())
addStartPathFindingNode_impl this startPathFindingNode = do
        Control.Monad.void (BasicArrayList.add ((jget (this).startPathFindingNodeList)) startPathFindingNode)
        pure ()


addEndPathFindingNode :: (JavaObjectClass this_) => this_ -> PathFindingNode.PathFindingNode -> IO (())
addEndPathFindingNode object_ a1 = jmethod object_ "addEndPathFindingNode" (\() -> (addEndPathFindingNode_impl (javaCast object_ :: PathFindingInfo))) () a1

addEndPathFindingNode_super :: (JavaObjectClass this_) => this_ -> PathFindingNode.PathFindingNode -> IO (())
addEndPathFindingNode_super object_ a1 = (addEndPathFindingNode_impl (javaCast object_ :: PathFindingInfo)) a1

addEndPathFindingNode_impl :: PathFindingInfo -> PathFindingNode.PathFindingNode -> IO (())
addEndPathFindingNode_impl this endPathFindingNode = do
        Control.Monad.void (BasicArrayList.add ((jget (this).endPathFindingNodeList)) endPathFindingNode)
        pure ()


setPathFinder :: (JavaObjectClass this_) => this_ -> GeographicPathFinderBase.GeographicPathFinderBase -> IO (())
setPathFinder object_ a1 = jmethod object_ "setPathFinder" (\() -> (setPathFinder_impl (javaCast object_ :: PathFindingInfo))) () a1

setPathFinder_super :: (JavaObjectClass this_) => this_ -> GeographicPathFinderBase.GeographicPathFinderBase -> IO (())
setPathFinder_super object_ a1 = (setPathFinder_impl (javaCast object_ :: PathFindingInfo)) a1

setPathFinder_impl :: PathFindingInfo -> GeographicPathFinderBase.GeographicPathFinderBase -> IO (())
setPathFinder_impl this pathFinder = do
        jset (this).pathFinder (pathFinder)
        pure ()


getPathFindingNodeCostInfoFactoryInterface :: (JavaObjectClass this_) => this_ -> IO (PathFindingNodeCostInfoFactoryBase.PathFindingNodeCostInfoFactoryBase)
getPathFindingNodeCostInfoFactoryInterface object_ = jmethod object_ "getPathFindingNodeCostInfoFactoryInterface" (\() -> (getPathFindingNodeCostInfoFactoryInterface_impl (javaCast object_ :: PathFindingInfo))) ()

getPathFindingNodeCostInfoFactoryInterface_super :: (JavaObjectClass this_) => this_ -> IO (PathFindingNodeCostInfoFactoryBase.PathFindingNodeCostInfoFactoryBase)
getPathFindingNodeCostInfoFactoryInterface_super object_ = (getPathFindingNodeCostInfoFactoryInterface_impl (javaCast object_ :: PathFindingInfo))

getPathFindingNodeCostInfoFactoryInterface_impl :: PathFindingInfo -> IO (PathFindingNodeCostInfoFactoryBase.PathFindingNodeCostInfoFactoryBase)
getPathFindingNodeCostInfoFactoryInterface_impl this = do
        pure ((jget (this).pathFindingNodeCostInfoFactoryInterface))


