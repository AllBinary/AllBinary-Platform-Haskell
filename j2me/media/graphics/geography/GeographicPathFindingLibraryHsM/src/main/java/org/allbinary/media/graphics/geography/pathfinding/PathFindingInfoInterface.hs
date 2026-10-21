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
module PathFindingInfoInterface where

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
import qualified GeographicPathFinderBase -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- Java interface: the classes that implement it have these functions
data PathFindingInfoInterface = PathFindingInfoInterface
    { header_ :: JavaHeader
    }

instance JavaNull PathFindingInfoInterface where
    javaNull = javaNullRecord "PathFindingInfoInterface"

instance JavaEquals PathFindingInfoInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFindingInfoInterface where
    (==) = jrecordEquals

instance JavaObjectClass PathFindingInfoInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PathFindingInfoInterface
fromHeader_ header = PathFindingInfoInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PathFindingInfoInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getStartPathFindingNodeList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getStartPathFindingNodeList object_ = jmethod object_ "getStartPathFindingNodeList" (\() -> (getStartPathFindingNodeList_impl (javaCast object_ :: PathFindingInfoInterface))) ()

getStartPathFindingNodeList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getStartPathFindingNodeList_super object_ = (getStartPathFindingNodeList_impl (javaCast object_ :: PathFindingInfoInterface))

getStartPathFindingNodeList_impl :: PathFindingInfoInterface -> IO (BasicArrayList.BasicArrayList)
getStartPathFindingNodeList_impl this = javaAbstractMethod "getStartPathFindingNodeList"


getEndPathFindingNodeList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getEndPathFindingNodeList object_ = jmethod object_ "getEndPathFindingNodeList" (\() -> (getEndPathFindingNodeList_impl (javaCast object_ :: PathFindingInfoInterface))) ()

getEndPathFindingNodeList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getEndPathFindingNodeList_super object_ = (getEndPathFindingNodeList_impl (javaCast object_ :: PathFindingInfoInterface))

getEndPathFindingNodeList_impl :: PathFindingInfoInterface -> IO (BasicArrayList.BasicArrayList)
getEndPathFindingNodeList_impl this = javaAbstractMethod "getEndPathFindingNodeList"


getPathFinder :: (JavaObjectClass this_) => this_ -> IO (GeographicPathFinderBase.GeographicPathFinderBase)
getPathFinder object_ = jmethod object_ "getPathFinder" (\() -> (getPathFinder_impl (javaCast object_ :: PathFindingInfoInterface))) ()

getPathFinder_super :: (JavaObjectClass this_) => this_ -> IO (GeographicPathFinderBase.GeographicPathFinderBase)
getPathFinder_super object_ = (getPathFinder_impl (javaCast object_ :: PathFindingInfoInterface))

getPathFinder_impl :: PathFindingInfoInterface -> IO (GeographicPathFinderBase.GeographicPathFinderBase)
getPathFinder_impl this = javaAbstractMethod "getPathFinder"


