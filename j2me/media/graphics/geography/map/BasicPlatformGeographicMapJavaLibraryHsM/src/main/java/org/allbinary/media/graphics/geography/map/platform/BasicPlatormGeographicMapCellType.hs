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
-- package org.allbinary.media.graphics.geography.map.platform
module BasicPlatormGeographicMapCellType where

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
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListS -- org.allbinary.util.BasicArrayListS

data BasicPlatormGeographicMapCellType = BasicPlatormGeographicMapCellType
    { header_ :: JavaHeader
    , types :: IORef (JavaArray (Int))
    }

instance JavaNull BasicPlatormGeographicMapCellType where
    javaNull = javaNullRecord "BasicPlatormGeographicMapCellType"

instance JavaEquals BasicPlatormGeographicMapCellType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicPlatormGeographicMapCellType where
    (==) = jrecordEquals

instance JavaObjectClass BasicPlatormGeographicMapCellType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicPlatormGeographicMapCellType
newRecord_ = do
    header_ <- newJavaHeader
    types <- newIORef javaNull
    let this = BasicPlatormGeographicMapCellType header_ types
    jregisterLevel header_ this
    jregisterMethod header_ "isType" (\() -> isType_impl this)
    jregisterMethod header_ "hasType" (\() -> hasType_impl this)
    pure this

initFields_ :: BasicPlatormGeographicMapCellType -> IO ()
initFields_ this = do
    jset this.types (javaNull)
    pure ()


createType :: Int -> IO (BasicPlatormGeographicMapCellType)
createType type_ = do
        types <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListS.new_1 1))
        Control.Monad.void (BasicArrayList.add types (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) type_)))
        basicPlatormGeographicMapCellType <- (new_1 types)
        pure (basicPlatormGeographicMapCellType)

new_1 :: BasicArrayList.BasicArrayList -> IO BasicPlatormGeographicMapCellType
new_1 types = do
    this <- newRecord_
    init_1 this types
    pure this

init_1 :: BasicPlatormGeographicMapCellType -> BasicArrayList.BasicArrayList -> IO ()
init_1 this types = do
        initFields_ this
        size <- (BasicArrayList.size types)
        let typeArray = (jnewArray (size) 0)
        typeAsInteger <- newIORef (javaNull)
        type_ <- newIORef (0)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset typeAsInteger (((javaCast (jio (BasicArrayList.get types index)) :: Int)))
            jset type_ ((jget typeAsInteger))
            Control.Monad.void (GeographicMapCellType.new_2 (jget type_) 0)
            jsetIndex typeArray (index) ((jget type_))
        jset (this).types (typeArray)
        pure ()


isType :: (JavaObjectClass this_) => this_ -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isType object_ a1 = jmethod object_ "isType" (\() -> (isType_impl (javaCast object_ :: BasicPlatormGeographicMapCellType))) () a1

isType_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isType_super object_ a1 = (isType_impl (javaCast object_ :: BasicPlatormGeographicMapCellType)) a1

isType_impl :: BasicPlatormGeographicMapCellType -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isType_impl this type_ = do
        (BasicPlatormGeographicMapCellType.hasType this (jio (GeographicMapCellType.getType type_)))


hasType :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
hasType object_ a1 = jmethod object_ "hasType" (\() -> (hasType_impl (javaCast object_ :: BasicPlatormGeographicMapCellType))) () a1

hasType_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
hasType_super object_ a1 = (hasType_impl (javaCast object_ :: BasicPlatormGeographicMapCellType)) a1

hasType_impl :: BasicPlatormGeographicMapCellType -> Int -> IO (Bool)
hasType_impl this type_ = do
    javaCatchReturn $ do
        let size = (jlength (jget this.types))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jindex ((jget (this).types)) (index)) == type_) $ do
                javaReturn (True)
        pure (False)


