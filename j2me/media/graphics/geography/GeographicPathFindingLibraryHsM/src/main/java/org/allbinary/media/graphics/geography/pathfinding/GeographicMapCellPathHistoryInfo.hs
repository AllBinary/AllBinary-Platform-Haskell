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
module GeographicMapCellPathHistoryInfo where

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
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified SimpleGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory

data GeographicMapCellPathHistoryInfo = GeographicMapCellPathHistoryInfo
    { header_ :: JavaHeader
    , previousGeographicMapCellPosition :: IORef (GeographicMapCellPosition.GeographicMapCellPosition)
    , previousOnPathGeographicMapCellPosition :: IORef (GeographicMapCellPosition.GeographicMapCellPosition)
    , nextUnvisitedOnPathGeographicMapCellPosition :: IORef (GeographicMapCellPosition.GeographicMapCellPosition)
    , nextOnPathGeographicMapCellPosition :: IORef (GeographicMapCellPosition.GeographicMapCellPosition)
    , nextChosenOnPathGeographicMapCellPosition :: IORef (GeographicMapCellPosition.GeographicMapCellPosition)
    }

instance JavaNull GeographicMapCellPathHistoryInfo where
    javaNull = javaNullRecord "GeographicMapCellPathHistoryInfo"

instance JavaEquals GeographicMapCellPathHistoryInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellPathHistoryInfo where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellPathHistoryInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GeographicMapCellPathHistoryInfo
newRecord_ = do
    header_ <- newJavaHeader
    previousGeographicMapCellPosition <- newIORef javaNull
    previousOnPathGeographicMapCellPosition <- newIORef javaNull
    nextUnvisitedOnPathGeographicMapCellPosition <- newIORef javaNull
    nextOnPathGeographicMapCellPosition <- newIORef javaNull
    nextChosenOnPathGeographicMapCellPosition <- newIORef javaNull
    let this = GeographicMapCellPathHistoryInfo header_ previousGeographicMapCellPosition previousOnPathGeographicMapCellPosition nextUnvisitedOnPathGeographicMapCellPosition nextOnPathGeographicMapCellPosition nextChosenOnPathGeographicMapCellPosition
    jregisterLevel header_ this
    jregisterMethod header_ "getPreviousGeographicMapCellPosition" (\() -> getPreviousGeographicMapCellPosition_impl this)
    jregisterMethod header_ "setPreviousGeographicMapCellPosition" (\() -> setPreviousGeographicMapCellPosition_impl this)
    jregisterMethod header_ "getPreviousOnPathGeographicMapCellPosition" (\() -> getPreviousOnPathGeographicMapCellPosition_impl this)
    jregisterMethod header_ "setPreviousOnPathGeographicMapCellPosition" (\() -> setPreviousOnPathGeographicMapCellPosition_impl this)
    jregisterMethod header_ "getNextUnvisitedOnPathGeographicMapCellPosition" (\() -> getNextUnvisitedOnPathGeographicMapCellPosition_impl this)
    jregisterMethod header_ "setNextUnvisitedOnPathGeographicMapCellPosition" (\() -> setNextUnvisitedOnPathGeographicMapCellPosition_impl this)
    jregisterMethod header_ "getNextOnPathGeographicMapCellPosition" (\() -> getNextOnPathGeographicMapCellPosition_impl this)
    jregisterMethod header_ "setNextOnPathGeographicMapCellPosition" (\() -> setNextOnPathGeographicMapCellPosition_impl this)
    jregisterMethod header_ "getNextChosenOnPathGeographicMapCellPosition" (\() -> getNextChosenOnPathGeographicMapCellPosition_impl this)
    jregisterMethod header_ "setNextChosenOnPathGeographicMapCellPosition" (\() -> setNextChosenOnPathGeographicMapCellPosition_impl this)
    pure this

initFields_ :: GeographicMapCellPathHistoryInfo -> IO ()
initFields_ this = do
    jset this.previousGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
    jset this.previousOnPathGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
    jset this.nextUnvisitedOnPathGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
    jset this.nextOnPathGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
    jset this.nextChosenOnPathGeographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
    pure ()

new_ :: IO GeographicMapCellPathHistoryInfo
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GeographicMapCellPathHistoryInfo -> IO ()
init_ this = do
    initFields_ this


getPreviousGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPreviousGeographicMapCellPosition object_ = jmethod object_ "getPreviousGeographicMapCellPosition" (\() -> (getPreviousGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo))) ()

getPreviousGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPreviousGeographicMapCellPosition_super object_ = (getPreviousGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo))

getPreviousGeographicMapCellPosition_impl :: GeographicMapCellPathHistoryInfo -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPreviousGeographicMapCellPosition_impl this = do
        pure ((jget (this).previousGeographicMapCellPosition))


setPreviousGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setPreviousGeographicMapCellPosition object_ a1 = jmethod object_ "setPreviousGeographicMapCellPosition" (\() -> (setPreviousGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo))) () a1

setPreviousGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setPreviousGeographicMapCellPosition_super object_ a1 = (setPreviousGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo)) a1

setPreviousGeographicMapCellPosition_impl :: GeographicMapCellPathHistoryInfo -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setPreviousGeographicMapCellPosition_impl this previousGeographicMapCellPosition = do
        jset (this).previousGeographicMapCellPosition (previousGeographicMapCellPosition)
        pure ()


getPreviousOnPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPreviousOnPathGeographicMapCellPosition object_ = jmethod object_ "getPreviousOnPathGeographicMapCellPosition" (\() -> (getPreviousOnPathGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo))) ()

getPreviousOnPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPreviousOnPathGeographicMapCellPosition_super object_ = (getPreviousOnPathGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo))

getPreviousOnPathGeographicMapCellPosition_impl :: GeographicMapCellPathHistoryInfo -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getPreviousOnPathGeographicMapCellPosition_impl this = do
        pure ((jget (this).previousOnPathGeographicMapCellPosition))


setPreviousOnPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setPreviousOnPathGeographicMapCellPosition object_ a1 = jmethod object_ "setPreviousOnPathGeographicMapCellPosition" (\() -> (setPreviousOnPathGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo))) () a1

setPreviousOnPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setPreviousOnPathGeographicMapCellPosition_super object_ a1 = (setPreviousOnPathGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo)) a1

setPreviousOnPathGeographicMapCellPosition_impl :: GeographicMapCellPathHistoryInfo -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setPreviousOnPathGeographicMapCellPosition_impl this previousOnPathGeographicMapCellPosition = do
        jset (this).previousOnPathGeographicMapCellPosition (previousOnPathGeographicMapCellPosition)
        pure ()


getNextUnvisitedOnPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextUnvisitedOnPathGeographicMapCellPosition object_ = jmethod object_ "getNextUnvisitedOnPathGeographicMapCellPosition" (\() -> (getNextUnvisitedOnPathGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo))) ()

getNextUnvisitedOnPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextUnvisitedOnPathGeographicMapCellPosition_super object_ = (getNextUnvisitedOnPathGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo))

getNextUnvisitedOnPathGeographicMapCellPosition_impl :: GeographicMapCellPathHistoryInfo -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextUnvisitedOnPathGeographicMapCellPosition_impl this = do
        pure ((jget (this).nextUnvisitedOnPathGeographicMapCellPosition))


setNextUnvisitedOnPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setNextUnvisitedOnPathGeographicMapCellPosition object_ a1 = jmethod object_ "setNextUnvisitedOnPathGeographicMapCellPosition" (\() -> (setNextUnvisitedOnPathGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo))) () a1

setNextUnvisitedOnPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setNextUnvisitedOnPathGeographicMapCellPosition_super object_ a1 = (setNextUnvisitedOnPathGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo)) a1

setNextUnvisitedOnPathGeographicMapCellPosition_impl :: GeographicMapCellPathHistoryInfo -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setNextUnvisitedOnPathGeographicMapCellPosition_impl this nextUnvisitedOnPathGeographicMapCellPosition = do
        jset (this).nextUnvisitedOnPathGeographicMapCellPosition (nextUnvisitedOnPathGeographicMapCellPosition)
        pure ()


getNextOnPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextOnPathGeographicMapCellPosition object_ = jmethod object_ "getNextOnPathGeographicMapCellPosition" (\() -> (getNextOnPathGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo))) ()

getNextOnPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextOnPathGeographicMapCellPosition_super object_ = (getNextOnPathGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo))

getNextOnPathGeographicMapCellPosition_impl :: GeographicMapCellPathHistoryInfo -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextOnPathGeographicMapCellPosition_impl this = do
        pure ((jget (this).nextOnPathGeographicMapCellPosition))


setNextOnPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setNextOnPathGeographicMapCellPosition object_ a1 = jmethod object_ "setNextOnPathGeographicMapCellPosition" (\() -> (setNextOnPathGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo))) () a1

setNextOnPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setNextOnPathGeographicMapCellPosition_super object_ a1 = (setNextOnPathGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo)) a1

setNextOnPathGeographicMapCellPosition_impl :: GeographicMapCellPathHistoryInfo -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setNextOnPathGeographicMapCellPosition_impl this nextOnPathGeographicMapCellPosition = do
        jset (this).nextOnPathGeographicMapCellPosition (nextOnPathGeographicMapCellPosition)
        pure ()


getNextChosenOnPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextChosenOnPathGeographicMapCellPosition object_ = jmethod object_ "getNextChosenOnPathGeographicMapCellPosition" (\() -> (getNextChosenOnPathGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo))) ()

getNextChosenOnPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextChosenOnPathGeographicMapCellPosition_super object_ = (getNextChosenOnPathGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo))

getNextChosenOnPathGeographicMapCellPosition_impl :: GeographicMapCellPathHistoryInfo -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getNextChosenOnPathGeographicMapCellPosition_impl this = do
        pure ((jget (this).nextChosenOnPathGeographicMapCellPosition))


setNextChosenOnPathGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setNextChosenOnPathGeographicMapCellPosition object_ a1 = jmethod object_ "setNextChosenOnPathGeographicMapCellPosition" (\() -> (setNextChosenOnPathGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo))) () a1

setNextChosenOnPathGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setNextChosenOnPathGeographicMapCellPosition_super object_ a1 = (setNextChosenOnPathGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPathHistoryInfo)) a1

setNextChosenOnPathGeographicMapCellPosition_impl :: GeographicMapCellPathHistoryInfo -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setNextChosenOnPathGeographicMapCellPosition_impl this nextChosenOnPathGeographicMapCellPosition = do
        jset (this).nextChosenOnPathGeographicMapCellPosition (nextChosenOnPathGeographicMapCellPosition)
        pure ()


