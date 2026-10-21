{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2006 AllBinary
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
module PathFindingNodeCost (module PathFindingNodeCost, module PathFindingNode) where

import PathFindingNode hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getPathFindingNodeCostInfo, getPathFindingNodeCostInfo_super, getPathFindingNodeCostInfo_impl, setPathFindingNodeCostInfo, setPathFindingNodeCostInfo_super, setPathFindingNodeCostInfo_impl, compareTo, compareTo_super, compareTo_impl, toString, toString_super, toString_impl, nULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY, commonSeps, pathFindingNodeCostInfoP)
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
import qualified PathFindingNodeCostInfo -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified PathFindingNode
import qualified Comparable

-- implements Comparable
data PathFindingNodeCost = PathFindingNodeCost
    { header_ :: JavaHeader
    , base :: PathFindingNode.PathFindingNode
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , pathFindingNodeCostInfoP :: IORef (PathFindingNodeCostInfo.PathFindingNodeCostInfo)
    }

instance JavaNull PathFindingNodeCost where
    javaNull = javaNullRecord "PathFindingNodeCost"

instance JavaEquals PathFindingNodeCost where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFindingNodeCost where
    (==) = jrecordEquals

instance JavaObjectClass PathFindingNodeCost where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY = (jnewArray2 (0) (0) javaNull)

newRecord_ :: IO PathFindingNodeCost
newRecord_ = do
    base <- PathFindingNode.newRecord_
    let header_ = base.header_
    commonSeps <- newIORef javaNull
    pathFindingNodeCostInfoP <- newIORef javaNull
    let this = PathFindingNodeCost header_ base commonSeps pathFindingNodeCostInfoP
    jregisterLevel header_ this
    Comparable.registerInterface_ header_
    jregisterMethod header_ "getPathFindingNodeCostInfo" (\() -> getPathFindingNodeCostInfo_impl this)
    jregisterMethod header_ "setPathFindingNodeCostInfo" (\() -> setPathFindingNodeCostInfo_impl this)
    jregisterMethod header_ "compareTo" (\() -> compareTo_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: PathFindingNodeCost -> IO ()
initFields_ this = do
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.pathFindingNodeCostInfoP (javaNull)
    pure ()

new_3 :: (JavaObjectClass o1) => o1 -> GeographicMapCellPosition.GeographicMapCellPosition -> PathFindingNodeCostInfo.PathFindingNodeCostInfo -> IO PathFindingNodeCost
new_3 parentObject_ geographicMapCellPosition pathFindingNodeCostInfo = do
    this <- newRecord_
    init_3 this parentObject_ geographicMapCellPosition pathFindingNodeCostInfo
    pure this

init_3 :: (JavaObjectClass o1) => PathFindingNodeCost -> o1 -> GeographicMapCellPosition.GeographicMapCellPosition -> PathFindingNodeCostInfo.PathFindingNodeCostInfo -> IO ()
init_3 this parentObject_ geographicMapCellPosition pathFindingNodeCostInfo = do
        let parent = jtoObject parentObject_
        PathFindingNode.init_2 this.base (parent) (geographicMapCellPosition)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).pathFindingNodeCostInfoP (pathFindingNodeCostInfo)
        when ((jget (this).base.geographicMapCellPosition) == javaNull) $ do
            javaThrow ((JavaException "Exception" "No GeographicMapCellPosition"))
        when ((jio (PathFindingNodeCost.getPathFindingNodeCostInfo this)) == javaNull) $ do
            javaThrow ((JavaException "Exception" "No PathFindingNodeCostInfo"))
        pure ()


getPathFindingNodeCostInfo :: (JavaObjectClass this_) => this_ -> IO (PathFindingNodeCostInfo.PathFindingNodeCostInfo)
getPathFindingNodeCostInfo object_ = jmethod object_ "getPathFindingNodeCostInfo" (\() -> (getPathFindingNodeCostInfo_impl (javaCast object_ :: PathFindingNodeCost))) ()

getPathFindingNodeCostInfo_super :: (JavaObjectClass this_) => this_ -> IO (PathFindingNodeCostInfo.PathFindingNodeCostInfo)
getPathFindingNodeCostInfo_super object_ = (getPathFindingNodeCostInfo_impl (javaCast object_ :: PathFindingNodeCost))

getPathFindingNodeCostInfo_impl :: PathFindingNodeCost -> IO (PathFindingNodeCostInfo.PathFindingNodeCostInfo)
getPathFindingNodeCostInfo_impl this = do
        pure ((jget (this).pathFindingNodeCostInfoP))


setPathFindingNodeCostInfo :: (JavaObjectClass this_) => this_ -> PathFindingNodeCostInfo.PathFindingNodeCostInfo -> IO (())
setPathFindingNodeCostInfo object_ a1 = jmethod object_ "setPathFindingNodeCostInfo" (\() -> (setPathFindingNodeCostInfo_impl (javaCast object_ :: PathFindingNodeCost))) () a1

setPathFindingNodeCostInfo_super :: (JavaObjectClass this_) => this_ -> PathFindingNodeCostInfo.PathFindingNodeCostInfo -> IO (())
setPathFindingNodeCostInfo_super object_ a1 = (setPathFindingNodeCostInfo_impl (javaCast object_ :: PathFindingNodeCost)) a1

setPathFindingNodeCostInfo_impl :: PathFindingNodeCost -> PathFindingNodeCostInfo.PathFindingNodeCostInfo -> IO (())
setPathFindingNodeCostInfo_impl this pathFindingNodeCostInfo = do
        jset (this).pathFindingNodeCostInfoP (pathFindingNodeCostInfo)
        pure ()


compareTo :: (JavaObjectClass this_) => this_ -> PathFindingNodeCost -> IO (Int)
compareTo object_ a1 = jmethod object_ "compareTo" (\() -> (compareTo_impl (javaCast object_ :: PathFindingNodeCost))) () a1

compareTo_super :: (JavaObjectClass this_) => this_ -> PathFindingNodeCost -> IO (Int)
compareTo_super object_ a1 = (compareTo_impl (javaCast object_ :: PathFindingNodeCost)) a1

compareTo_impl :: PathFindingNodeCost -> PathFindingNodeCost -> IO (Int)
compareTo_impl this pathFindingNodeCost = do
        (PathFindingNodeCostInfo.compareTo ((jget (this).pathFindingNodeCostInfoP)) (jget (pathFindingNodeCost).pathFindingNodeCostInfoP))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: PathFindingNodeCost))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: PathFindingNodeCost))

toString_impl :: PathFindingNodeCost -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass this))))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonLabels.getInstance))).cOLON_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingNodeCostInfo.toString ((jio (PathFindingNodeCost.getPathFindingNodeCostInfo this))))))
        Control.Monad.void (StringMaker.append stringBuffer " Path: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (GeographicMapCellPosition.toString ((jget (this).base.geographicMapCellPosition)))))
        pathFindingNode <- newIORef ((javaCast (jget (this).base.parent) :: PathFindingNode.PathFindingNode))
        fix $ \loop -> when ((jget pathFindingNode) /= javaNull) $ javaIteration (loop) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jio (GeographicMapCellPosition.toString ((jget ((jget pathFindingNode)).geographicMapCellPosition)))))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
            jset pathFindingNode ((javaCast (jget ((jget pathFindingNode)).parent) :: PathFindingNode.PathFindingNode))
        (StringMaker.toString stringBuffer)


