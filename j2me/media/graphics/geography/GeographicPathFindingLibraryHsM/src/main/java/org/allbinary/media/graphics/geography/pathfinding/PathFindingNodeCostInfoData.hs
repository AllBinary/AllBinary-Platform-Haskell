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
module PathFindingNodeCostInfoData where

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

data PathFindingNodeCostInfoData = PathFindingNodeCostInfoData
    { header_ :: JavaHeader
    , mAX_TOTAL_COST :: IORef (Int)
    , mAX_NODE_COST :: IORef (Int)
    }

instance JavaNull PathFindingNodeCostInfoData where
    javaNull = javaNullRecord "PathFindingNodeCostInfoData"

instance JavaEquals PathFindingNodeCostInfoData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFindingNodeCostInfoData where
    (==) = jrecordEquals

instance JavaObjectClass PathFindingNodeCostInfoData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PathFindingNodeCostInfoData
newRecord_ = do
    header_ <- newJavaHeader
    mAX_TOTAL_COST <- newIORef 0
    mAX_NODE_COST <- newIORef 0
    let this = PathFindingNodeCostInfoData header_ mAX_TOTAL_COST mAX_NODE_COST
    jregisterLevel header_ this
    pure this

initFields_ :: PathFindingNodeCostInfoData -> IO ()
initFields_ this = do
    jset this.mAX_TOTAL_COST ((2147483647 :: Int))
    jset this.mAX_NODE_COST (((2147483647 :: Int) `quot` 10000))
    pure ()


getInstance :: IO (PathFindingNodeCostInfoData)
getInstance = do
        pure (PathFindingNodeCostInfoData.instance_)

new_ :: IO PathFindingNodeCostInfoData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PathFindingNodeCostInfoData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


