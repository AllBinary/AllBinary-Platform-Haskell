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
-- package org.allbinary.media.graphics.geography.map
module GeographicMapCellTypeFactory where

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
import qualified GeographicMapCellType -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data GeographicMapCellTypeFactory = GeographicMapCellTypeFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , geographicMapCellTypeArray :: IORef (JavaArray (GeographicMapCellType.GeographicMapCellType))
    }

instance JavaNull GeographicMapCellTypeFactory where
    javaNull = javaNullRecord "GeographicMapCellTypeFactory"

instance JavaEquals GeographicMapCellTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GeographicMapCellTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    geographicMapCellTypeArray <- newIORef javaNull
    let this = GeographicMapCellTypeFactory header_ logUtil geographicMapCellTypeArray
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getGeographicMapCellTypeArray" (\() -> getGeographicMapCellTypeArray_impl this)
    jregisterMethod header_ "getStartType" (\() -> getStartType_impl this)
    jregisterMethod header_ "getEndType" (\() -> getEndType_impl this)
    jregisterMethod header_ "getEmptyType" (\() -> getEmptyType_impl this)
    jregisterMethod header_ "isPath" (\() -> isPath_impl this)
    pure this

initFields_ :: GeographicMapCellTypeFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.geographicMapCellTypeArray ((jnewArray (512) javaNull))
    pure ()

new_ :: IO GeographicMapCellTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GeographicMapCellTypeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GeographicMapCellTypeFactory)
getInstance = do
        pure (GeographicMapCellTypeFactory.instance_)


get :: (JavaObjectClass this_) => this_ -> Int -> IO (GeographicMapCellType.GeographicMapCellType)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: GeographicMapCellTypeFactory))) () a1

get_super :: (JavaObjectClass this_) => this_ -> Int -> IO (GeographicMapCellType.GeographicMapCellType)
get_super object_ a1 = (get_impl (javaCast object_ :: GeographicMapCellTypeFactory)) a1

get_impl :: GeographicMapCellTypeFactory -> Int -> IO (GeographicMapCellType.GeographicMapCellType)
get_impl this type_ = do
        pure ((jindex ((jget (this).geographicMapCellTypeArray)) (type_)))


getGeographicMapCellTypeArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (GeographicMapCellType.GeographicMapCellType))
getGeographicMapCellTypeArray object_ = jmethod object_ "getGeographicMapCellTypeArray" (\() -> (getGeographicMapCellTypeArray_impl (javaCast object_ :: GeographicMapCellTypeFactory))) ()

getGeographicMapCellTypeArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (GeographicMapCellType.GeographicMapCellType))
getGeographicMapCellTypeArray_super object_ = (getGeographicMapCellTypeArray_impl (javaCast object_ :: GeographicMapCellTypeFactory))

getGeographicMapCellTypeArray_impl :: GeographicMapCellTypeFactory -> IO (JavaArray (GeographicMapCellType.GeographicMapCellType))
getGeographicMapCellTypeArray_impl this = do
        pure ((jget (this).geographicMapCellTypeArray))


getStartType :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartType object_ = jmethod object_ "getStartType" (\() -> (getStartType_impl (javaCast object_ :: GeographicMapCellTypeFactory))) ()

getStartType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartType_super object_ = (getStartType_impl (javaCast object_ :: GeographicMapCellTypeFactory))

getStartType_impl :: GeographicMapCellTypeFactory -> IO (Int)
getStartType_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getEndType :: (JavaObjectClass this_) => this_ -> IO (Int)
getEndType object_ = jmethod object_ "getEndType" (\() -> (getEndType_impl (javaCast object_ :: GeographicMapCellTypeFactory))) ()

getEndType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getEndType_super object_ = (getEndType_impl (javaCast object_ :: GeographicMapCellTypeFactory))

getEndType_impl :: GeographicMapCellTypeFactory -> IO (Int)
getEndType_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getEmptyType :: (JavaObjectClass this_) => this_ -> IO (Int)
getEmptyType object_ = jmethod object_ "getEmptyType" (\() -> (getEmptyType_impl (javaCast object_ :: GeographicMapCellTypeFactory))) ()

getEmptyType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getEmptyType_super object_ = (getEmptyType_impl (javaCast object_ :: GeographicMapCellTypeFactory))

getEmptyType_impl :: GeographicMapCellTypeFactory -> IO (Int)
getEmptyType_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


isPath :: (JavaObjectClass this_) => this_ -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isPath object_ a1 = jmethod object_ "isPath" (\() -> (isPath_impl (javaCast object_ :: GeographicMapCellTypeFactory))) () a1

isPath_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isPath_super object_ a1 = (isPath_impl (javaCast object_ :: GeographicMapCellTypeFactory)) a1

isPath_impl :: GeographicMapCellTypeFactory -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isPath_impl this cellType = do
        javaThrow ((JavaException "RuntimeException" ""))


