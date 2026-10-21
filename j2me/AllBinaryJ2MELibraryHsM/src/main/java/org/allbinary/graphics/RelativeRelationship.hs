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
-- package org.allbinary.graphics
module RelativeRelationship where

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
import qualified PointFactory -- same package or java.lang
import qualified GPoint -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil

data RelativeRelationship = RelativeRelationship
    { header_ :: JavaHeader
    , typesAllowedList :: IORef (BasicArrayList.BasicArrayList)
    , x :: IORef (Int)
    , y :: IORef (Int)
    , z :: IORef (Int)
    }

instance JavaNull RelativeRelationship where
    javaNull = javaNullRecord "RelativeRelationship"

instance JavaEquals RelativeRelationship where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RelativeRelationship where
    (==) = jrecordEquals

instance JavaObjectClass RelativeRelationship where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_RELATIVE_RELATIONSHIP #-}
nULL_RELATIVE_RELATIONSHIP = unsafePerformIO ((new_2 (jget ((jio (PointFactory.getInstance))).zERO_ZERO) (jio (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance)))))))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RelativeRelationship
newRecord_ = do
    header_ <- newJavaHeader
    typesAllowedList <- newIORef javaNull
    x <- newIORef 0
    y <- newIORef 0
    z <- newIORef 0
    let this = RelativeRelationship header_ typesAllowedList x y z
    jregisterLevel header_ this
    jregisterMethod header_ "getX" (\() -> getX_impl this)
    jregisterMethod header_ "getY" (\() -> getY_impl this)
    jregisterMethod header_ "getZ" (\() -> getZ_impl this)
    jregisterMethod header_ "getTypesAllowedList" (\() -> getTypesAllowedList_impl this)
    jregisterMethod header_ "setTypesAllowedList" (\() -> setTypesAllowedList_impl this)
    pure this

initFields_ :: RelativeRelationship -> IO ()
initFields_ this = do
    jset this.typesAllowedList (javaNull)
    jset this.x (0)
    jset this.y (0)
    jset this.z (0)
    pure ()

new_2 :: GPoint.GPoint -> BasicArrayList.BasicArrayList -> IO RelativeRelationship
new_2 point typesAllowedList = do
    this <- newRecord_
    init_2 this point typesAllowedList
    pure this

init_2 :: RelativeRelationship -> GPoint.GPoint -> BasicArrayList.BasicArrayList -> IO ()
init_2 this point typesAllowedList = do
        initFields_ this
        assignedValue <- (GPoint.getX point)
        jset (this).x (assignedValue)
        assignedValue <- (GPoint.getY point)
        jset (this).y (assignedValue)
        assignedValue <- (GPoint.getZ point)
        jset (this).z (assignedValue)
        jset (this).typesAllowedList (typesAllowedList)
        pure ()


getX :: (JavaObjectClass this_) => this_ -> IO (Int)
getX object_ = jmethod object_ "getX" (\() -> (getX_impl (javaCast object_ :: RelativeRelationship))) ()

getX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX_super object_ = (getX_impl (javaCast object_ :: RelativeRelationship))

getX_impl :: RelativeRelationship -> IO (Int)
getX_impl this = do
        pure ((jget (this).x))


getY :: (JavaObjectClass this_) => this_ -> IO (Int)
getY object_ = jmethod object_ "getY" (\() -> (getY_impl (javaCast object_ :: RelativeRelationship))) ()

getY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY_super object_ = (getY_impl (javaCast object_ :: RelativeRelationship))

getY_impl :: RelativeRelationship -> IO (Int)
getY_impl this = do
        pure ((jget (this).y))


getZ :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ object_ = jmethod object_ "getZ" (\() -> (getZ_impl (javaCast object_ :: RelativeRelationship))) ()

getZ_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ_super object_ = (getZ_impl (javaCast object_ :: RelativeRelationship))

getZ_impl :: RelativeRelationship -> IO (Int)
getZ_impl this = do
        pure ((jget (this).z))


getTypesAllowedList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getTypesAllowedList object_ = jmethod object_ "getTypesAllowedList" (\() -> (getTypesAllowedList_impl (javaCast object_ :: RelativeRelationship))) ()

getTypesAllowedList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getTypesAllowedList_super object_ = (getTypesAllowedList_impl (javaCast object_ :: RelativeRelationship))

getTypesAllowedList_impl :: RelativeRelationship -> IO (BasicArrayList.BasicArrayList)
getTypesAllowedList_impl this = do
        pure ((jget (this).typesAllowedList))


setTypesAllowedList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setTypesAllowedList object_ a1 = jmethod object_ "setTypesAllowedList" (\() -> (setTypesAllowedList_impl (javaCast object_ :: RelativeRelationship))) () a1

setTypesAllowedList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setTypesAllowedList_super object_ a1 = (setTypesAllowedList_impl (javaCast object_ :: RelativeRelationship)) a1

setTypesAllowedList_impl :: RelativeRelationship -> BasicArrayList.BasicArrayList -> IO (())
setTypesAllowedList_impl this typesAllowedList = do
        jset (this).typesAllowedList (typesAllowedList)
        pure ()


