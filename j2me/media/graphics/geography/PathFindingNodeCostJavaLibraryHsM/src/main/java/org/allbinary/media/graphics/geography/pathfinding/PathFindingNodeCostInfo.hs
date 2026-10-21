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
module PathFindingNodeCostInfo where

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
import qualified PathFindingNodeCostInfoData -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified Comparable

-- implements Comparable
data PathFindingNodeCostInfo = PathFindingNodeCostInfo
    { header_ :: JavaHeader
    , pathFindingNodeCostInfoData :: IORef (PathFindingNodeCostInfoData.PathFindingNodeCostInfoData)
    , costFromStartP :: IORef (Int64)
    , costToEndP :: IORef (Int64)
    , totalCostP :: IORef (Int64)
    }

instance JavaNull PathFindingNodeCostInfo where
    javaNull = javaNullRecord "PathFindingNodeCostInfo"

instance JavaEquals PathFindingNodeCostInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFindingNodeCostInfo where
    (==) = jrecordEquals

instance JavaObjectClass PathFindingNodeCostInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PathFindingNodeCostInfo
newRecord_ = do
    header_ <- newJavaHeader
    pathFindingNodeCostInfoData <- newIORef javaNull
    costFromStartP <- newIORef 0
    costToEndP <- newIORef 0
    totalCostP <- newIORef 0
    let this = PathFindingNodeCostInfo header_ pathFindingNodeCostInfoData costFromStartP costToEndP totalCostP
    jregisterLevel header_ this
    Comparable.registerInterface_ header_
    jregisterMethod header_ "setCostToEnd" (\() -> setCostToEnd_impl this)
    jregisterMethod header_ "setTotalCost" (\() -> setTotalCost_impl this)
    jregisterMethod header_ "setCalculatedTotalCost" (\() -> setCalculatedTotalCost_impl this)
    jregisterMethod header_ "setCostFromStart" (\() -> setCostFromStart_impl this)
    jregisterMethod header_ "addCostFromStart" (\() -> addCostFromStart_impl this)
    jregisterMethod header_ "compareTo" (\() -> compareTo_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: PathFindingNodeCostInfo -> IO ()
initFields_ this = do
    jset this.pathFindingNodeCostInfoData =<< (PathFindingNodeCostInfoData.getInstance)
    jset this.costFromStartP (0)
    jset this.costToEndP (0)
    jset this.totalCostP (0)
    pure ()

new_2 :: Int64 -> Int64 -> IO PathFindingNodeCostInfo
new_2 costFromStart costToGoal = do
    this <- newRecord_
    init_2 this costFromStart costToGoal
    pure this

init_2 :: PathFindingNodeCostInfo -> Int64 -> Int64 -> IO ()
init_2 this costFromStart costToGoal = do
        initFields_ this
        jset (this).costFromStartP (costFromStart)
        jset (this).costToEndP (costToGoal)
        Control.Monad.void (PathFindingNodeCostInfo.setCalculatedTotalCost this)
        pure ()


setCostToEnd :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setCostToEnd object_ a1 = jmethod object_ "setCostToEnd" (\() -> (setCostToEnd_impl (javaCast object_ :: PathFindingNodeCostInfo))) () a1

setCostToEnd_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setCostToEnd_super object_ a1 = (setCostToEnd_impl (javaCast object_ :: PathFindingNodeCostInfo)) a1

setCostToEnd_impl :: PathFindingNodeCostInfo -> Int64 -> IO (())
setCostToEnd_impl this costToEnd = do
        jset (this).costToEndP (costToEnd)
        pure ()


setTotalCost :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setTotalCost object_ a1 = jmethod object_ "setTotalCost" (\() -> (setTotalCost_impl (javaCast object_ :: PathFindingNodeCostInfo))) () a1

setTotalCost_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setTotalCost_super object_ a1 = (setTotalCost_impl (javaCast object_ :: PathFindingNodeCostInfo)) a1

setTotalCost_impl :: PathFindingNodeCostInfo -> Int64 -> IO (())
setTotalCost_impl this totalCost = do
        jset (this).totalCostP (totalCost)
        pure ()


-- throws Exception
setCalculatedTotalCost :: (JavaObjectClass this_) => this_ -> IO (())
setCalculatedTotalCost object_ = jmethod object_ "setCalculatedTotalCost" (\() -> (setCalculatedTotalCost_impl (javaCast object_ :: PathFindingNodeCostInfo))) ()

setCalculatedTotalCost_super :: (JavaObjectClass this_) => this_ -> IO (())
setCalculatedTotalCost_super object_ = (setCalculatedTotalCost_impl (javaCast object_ :: PathFindingNodeCostInfo))

setCalculatedTotalCost_impl :: PathFindingNodeCostInfo -> IO (())
setCalculatedTotalCost_impl this = do
        jset (this).totalCostP (((jget (this).costFromStartP) + (jget (this).costToEndP)))
        when ((jget (this).totalCostP) > (Prelude.fromIntegral (jget ((jget (this).pathFindingNodeCostInfoData)).mAX_NODE_COST))) $ do
            javaThrow ((JavaException "Exception" "Max Cost Exceeded"))
        pure ()


setCostFromStart :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setCostFromStart object_ a1 = jmethod object_ "setCostFromStart" (\() -> (setCostFromStart_impl (javaCast object_ :: PathFindingNodeCostInfo))) () a1

setCostFromStart_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setCostFromStart_super object_ a1 = (setCostFromStart_impl (javaCast object_ :: PathFindingNodeCostInfo)) a1

setCostFromStart_impl :: PathFindingNodeCostInfo -> Int64 -> IO (())
setCostFromStart_impl this cost = do
        jset (this).costFromStartP (cost)
        pure ()


addCostFromStart :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
addCostFromStart object_ a1 = jmethod object_ "addCostFromStart" (\() -> (addCostFromStart_impl (javaCast object_ :: PathFindingNodeCostInfo))) () a1

addCostFromStart_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
addCostFromStart_super object_ a1 = (addCostFromStart_impl (javaCast object_ :: PathFindingNodeCostInfo)) a1

addCostFromStart_impl :: PathFindingNodeCostInfo -> Int64 -> IO (())
addCostFromStart_impl this cost = do
        jset (this).costFromStartP (((jget (this).costFromStartP) + cost))
        pure ()


compareTo :: (JavaObjectClass this_) => this_ -> PathFindingNodeCostInfo -> IO (Int)
compareTo object_ a1 = jmethod object_ "compareTo" (\() -> (compareTo_impl (javaCast object_ :: PathFindingNodeCostInfo))) () a1

compareTo_super :: (JavaObjectClass this_) => this_ -> PathFindingNodeCostInfo -> IO (Int)
compareTo_super object_ a1 = (compareTo_impl (javaCast object_ :: PathFindingNodeCostInfo)) a1

compareTo_impl :: PathFindingNodeCostInfo -> PathFindingNodeCostInfo -> IO (Int)
compareTo_impl this pathFindingNodeCostInfo = do
        (compare ((jget (java.lang).long)) (jget (this).totalCostP) (jget (pathFindingNodeCostInfo).totalCostP))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: PathFindingNodeCostInfo))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: PathFindingNodeCostInfo))

toString_impl :: PathFindingNodeCostInfo -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass this))))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonLabels.getInstance))).cOLON_SEP))
        Control.Monad.void (StringMaker.append stringBuffer "CostFromStart: ")
        Control.Monad.void (StringMaker.appendlong stringBuffer (jget (this).costFromStartP))
        Control.Monad.void (StringMaker.append stringBuffer " CostToEnd: ")
        Control.Monad.void (StringMaker.appendlong stringBuffer (jget (this).costToEndP))
        Control.Monad.void (StringMaker.append stringBuffer " TotalCost: ")
        Control.Monad.void (StringMaker.appendlong stringBuffer (jget (this).totalCostP))
        (StringMaker.toString stringBuffer)


