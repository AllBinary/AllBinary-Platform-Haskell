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
module GeographicPathFinderBase where

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
import qualified MultipassState -- same package or java.lang
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data GeographicPathFinderBase = GeographicPathFinderBase
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull GeographicPathFinderBase where
    javaNull = javaNullRecord "GeographicPathFinderBase"

instance JavaEquals GeographicPathFinderBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicPathFinderBase where
    (==) = jrecordEquals

instance JavaObjectClass GeographicPathFinderBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_GEOGRAPHIC_PATH_FINDER_BASE #-}
nULL_GEOGRAPHIC_PATH_FINDER_BASE = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GeographicPathFinderBase
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    let this = GeographicPathFinderBase header_ commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "searchTotalPath" (\() -> searchTotalPath_impl this)
    jregisterMethod header_ "searchTotalPathN" (\() -> searchTotalPathN_impl this)
    pure this

initFields_ :: GeographicPathFinderBase -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO GeographicPathFinderBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GeographicPathFinderBase -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
searchTotalPath :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> Int -> IO (BasicArrayList.BasicArrayList)
searchTotalPath object_ a1 a2 a3 = jmethod object_ "searchTotalPath" (\() -> (searchTotalPath_impl (javaCast object_ :: GeographicPathFinderBase))) () a1 a2 a3

searchTotalPath_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> Int -> IO (BasicArrayList.BasicArrayList)
searchTotalPath_super object_ a1 a2 a3 = (searchTotalPath_impl (javaCast object_ :: GeographicPathFinderBase)) a1 a2 a3

searchTotalPath_impl :: GeographicPathFinderBase -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> Int -> IO (BasicArrayList.BasicArrayList)
searchTotalPath_impl this startPathFindingNodeList endPathFindingNodeList totalPaths = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
searchTotalPathN :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> Int -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
searchTotalPathN object_ a1 a2 a3 a4 = jmethod object_ "searchTotalPathN" (\() -> (searchTotalPathN_impl (javaCast object_ :: GeographicPathFinderBase))) () a1 a2 a3 a4

searchTotalPathN_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> Int -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
searchTotalPathN_super object_ a1 a2 a3 a4 = (searchTotalPathN_impl (javaCast object_ :: GeographicPathFinderBase)) a1 a2 a3 a4

searchTotalPathN_impl :: GeographicPathFinderBase -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> Int -> MultipassState.MultipassState -> IO (BasicArrayList.BasicArrayList)
searchTotalPathN_impl this startPathFindingNodeList endPathFindingNodeList totalPaths multipassState = do
        javaThrow ((JavaException "RuntimeException" ""))


