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
-- package org.allbinary.game.media.graphics.geography.map.racetrack
module BasePathFinderGraphVisitor (module BasePathFinderGraphVisitor, module PathFinderGraphVisitorBase) where

import PathFinderGraphVisitorBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl, fixPath, fixPath_super, fixPath_impl, isValid, isValid_super, isValid_impl, getInvalidReason, getInvalidReason_super, getInvalidReason_impl, geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight)
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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified PathFinderGraphVisitorBase -- org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase
import qualified PathFindingNode -- org.allbinary.media.graphics.geography.pathfinding.PathFindingNode
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data BasePathFinderGraphVisitor = BasePathFinderGraphVisitor
    { header_ :: JavaHeader
    , base :: PathFinderGraphVisitorBase.PathFinderGraphVisitorBase
    , geographicMapInterface :: IORef (BasicGeographicMap.BasicGeographicMap)
    , edgeMinimum :: IORef (Int)
    , minPathWeight :: IORef (Int)
    , maxPathWeight :: IORef (Int)
    }

instance JavaNull BasePathFinderGraphVisitor where
    javaNull = javaNullRecord "BasePathFinderGraphVisitor"

instance JavaEquals BasePathFinderGraphVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasePathFinderGraphVisitor where
    (==) = jrecordEquals

instance JavaObjectClass BasePathFinderGraphVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasePathFinderGraphVisitor
newRecord_ = do
    base <- PathFinderGraphVisitorBase.newRecord_
    let header_ = base.header_
    geographicMapInterface <- newIORef javaNull
    edgeMinimum <- newIORef 0
    minPathWeight <- newIORef 0
    maxPathWeight <- newIORef 0
    let this = BasePathFinderGraphVisitor header_ base geographicMapInterface edgeMinimum minPathWeight maxPathWeight
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    jregisterMethod header_ "fixPath" (\() -> fixPath_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "getInvalidReason" (\() -> getInvalidReason_impl this)
    pure this

initFields_ :: BasePathFinderGraphVisitor -> IO ()
initFields_ this = do
    jset this.geographicMapInterface (javaNull)
    jset this.edgeMinimum (0)
    jset this.minPathWeight (0)
    jset this.maxPathWeight (0)
    pure ()

new_4 :: BasicGeographicMap.BasicGeographicMap -> Int -> Int -> Int -> IO BasePathFinderGraphVisitor
new_4 geographicMapInterface edgeMinimum minPathWeight maxPathWeight = do
    this <- newRecord_
    init_4 this geographicMapInterface edgeMinimum minPathWeight maxPathWeight
    pure this

init_4 :: BasePathFinderGraphVisitor -> BasicGeographicMap.BasicGeographicMap -> Int -> Int -> Int -> IO ()
init_4 this geographicMapInterface edgeMinimum minPathWeight maxPathWeight = do
        PathFinderGraphVisitorBase.init_ this.base
        initFields_ this
        jset (this).geographicMapInterface (geographicMapInterface)
        jset (this).edgeMinimum (edgeMinimum)
        jset (this).minPathWeight (minPathWeight)
        jset (this).maxPathWeight (maxPathWeight)
        pure ()


-- throws Exception
visit :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
visit object_ a1 a2 a3 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: BasePathFinderGraphVisitor))) () (jtoObject a1) a2 a3

visit_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
visit_super object_ a1 a2 a3 = (visit_impl (javaCast object_ :: BasePathFinderGraphVisitor)) (jtoObject a1) a2 a3

visit_impl :: BasePathFinderGraphVisitor -> JavaObject -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
visit_impl this graphObject_ startPathFindingNodeList endPathFindingNodeList = do
        let graph = jtoObject graphObject_
        pure ()


-- throws Exception
fixPath :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
fixPath object_ a1 a2 a3 = jmethod object_ "fixPath" (\() -> (fixPath_impl (javaCast object_ :: BasePathFinderGraphVisitor))) () a1 a2 a3

fixPath_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
fixPath_super object_ a1 a2 a3 = (fixPath_impl (javaCast object_ :: BasePathFinderGraphVisitor)) a1 a2 a3

fixPath_impl :: BasePathFinderGraphVisitor -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
fixPath_impl this startPathFindingNodeList endPathFindingNodeList pathList = do
        startPathFindingNode <- newIORef (javaNull)
        forM_ [((jio (BasicArrayList.size startPathFindingNodeList)) - 1), ((jio (BasicArrayList.size startPathFindingNodeList)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset startPathFindingNode ((javaCast (jio (BasicArrayList.get startPathFindingNodeList index)) :: PathFindingNode.PathFindingNode))
            Control.Monad.void (BasicArrayList.remove pathList (jget ((jget startPathFindingNode)).geographicMapCellPosition))
            Control.Monad.void (BasicArrayList.addAt pathList 0 (jget ((jget startPathFindingNode)).geographicMapCellPosition))
        pure ()


isValid :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
isValid object_ a1 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: BasePathFinderGraphVisitor))) () (jtoObject a1)

isValid_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
isValid_super object_ a1 = (isValid_impl (javaCast object_ :: BasePathFinderGraphVisitor)) (jtoObject a1)

isValid_impl :: BasePathFinderGraphVisitor -> JavaObject -> IO (Bool)
isValid_impl this graphPathObject_ = do
        let graphPath = jtoObject graphPathObject_
        pure (False)


getInvalidReason :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (String)
getInvalidReason object_ a1 = jmethod object_ "getInvalidReason" (\() -> (getInvalidReason_impl (javaCast object_ :: BasePathFinderGraphVisitor))) () (jtoObject a1)

getInvalidReason_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (String)
getInvalidReason_super object_ a1 = (getInvalidReason_impl (javaCast object_ :: BasePathFinderGraphVisitor)) (jtoObject a1)

getInvalidReason_impl :: BasePathFinderGraphVisitor -> JavaObject -> IO (String)
getInvalidReason_impl this graphPathObject_ = do
        let graphPath = jtoObject graphPathObject_
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


