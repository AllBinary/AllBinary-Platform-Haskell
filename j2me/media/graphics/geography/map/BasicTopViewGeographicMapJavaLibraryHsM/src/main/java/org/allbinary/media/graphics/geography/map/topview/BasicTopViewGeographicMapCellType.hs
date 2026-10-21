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
-- package org.allbinary.media.graphics.geography.map.topview
module BasicTopViewGeographicMapCellType where

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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType
import qualified GeographicMapCellTypeFactory -- org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory
import qualified RaceTrackGeographicMapCellType -- org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListS -- org.allbinary.util.BasicArrayListS

data BasicTopViewGeographicMapCellType = BasicTopViewGeographicMapCellType
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , name :: IORef (String)
    , cost :: IORef (Int)
    , types :: IORef (JavaArray (Int))
    }

instance JavaNull BasicTopViewGeographicMapCellType where
    javaNull = javaNullRecord "BasicTopViewGeographicMapCellType"

instance JavaEquals BasicTopViewGeographicMapCellType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicTopViewGeographicMapCellType where
    (==) = jrecordEquals

instance JavaObjectClass BasicTopViewGeographicMapCellType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicTopViewGeographicMapCellType
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    name <- newIORef ""
    cost <- newIORef 0
    types <- newIORef javaNull
    let this = BasicTopViewGeographicMapCellType header_ logUtil name cost types
    jregisterLevel header_ this
    jregisterMethod header_ "isType" (\() -> isType_impl this)
    jregisterMethod header_ "hasType" (\() -> hasType_impl this)
    jregisterMethod header_ "getTypes" (\() -> getTypes_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: BasicTopViewGeographicMapCellType -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.name (javaNull)
    jset this.cost (0)
    jset this.types (javaNull)
    pure ()


createType :: String -> Int -> Int -> IO (BasicTopViewGeographicMapCellType)
createType name type_ cost = do
        types <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListS.new_1 1))
        Control.Monad.void (BasicArrayList.add types type_)
        (new_3 name types cost)

new_3 :: String -> BasicArrayList.BasicArrayList -> Int -> IO BasicTopViewGeographicMapCellType
new_3 name types cost = do
    this <- newRecord_
    init_3 this name types cost
    pure this

init_3 :: BasicTopViewGeographicMapCellType -> String -> BasicArrayList.BasicArrayList -> Int -> IO ()
init_3 this name types cost = do
        initFields_ this
        size <- (BasicArrayList.size types)
        let typeArray = (jnewArray (size) 0)
        typeAsInteger <- newIORef (javaNull)
        type_ <- newIORef (0)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset typeAsInteger (((javaCast (jio (BasicArrayList.get types index)) :: Int)))
            jset type_ ((jget typeAsInteger))
            if ((jindex ((jio (GeographicMapCellTypeFactory.getGeographicMapCellTypeArray ((jio (GeographicMapCellTypeFactory.getInstance)))))) ((jget type_))) == javaNull) then do
                Control.Monad.void (RaceTrackGeographicMapCellType.new_4 name (jget type_) cost 0)
            else do
                pure ()
            jsetIndex typeArray (index) ((jget type_))
        jset (this).name (name)
        jset (this).cost (cost)
        jset (this).types (typeArray)
        pure ()


isType :: (JavaObjectClass this_) => this_ -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isType object_ a1 = jmethod object_ "isType" (\() -> (isType_impl (javaCast object_ :: BasicTopViewGeographicMapCellType))) () a1

isType_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isType_super object_ a1 = (isType_impl (javaCast object_ :: BasicTopViewGeographicMapCellType)) a1

isType_impl :: BasicTopViewGeographicMapCellType -> GeographicMapCellType.GeographicMapCellType -> IO (Bool)
isType_impl this type_ = do
        (BasicTopViewGeographicMapCellType.hasType this (jio (GeographicMapCellType.getType type_)))


hasType :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
hasType object_ a1 = jmethod object_ "hasType" (\() -> (hasType_impl (javaCast object_ :: BasicTopViewGeographicMapCellType))) () a1

hasType_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
hasType_super object_ a1 = (hasType_impl (javaCast object_ :: BasicTopViewGeographicMapCellType)) a1

hasType_impl :: BasicTopViewGeographicMapCellType -> Int -> IO (Bool)
hasType_impl this type_ = do
    javaCatchReturn $ do
        let size = (jlength (jget (this).types))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jindex ((jget (this).types)) (index)) == type_) $ do
                javaReturn (True)
        pure (False)


getTypes :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getTypes object_ = jmethod object_ "getTypes" (\() -> (getTypes_impl (javaCast object_ :: BasicTopViewGeographicMapCellType))) ()

getTypes_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getTypes_super object_ = (getTypes_impl (javaCast object_ :: BasicTopViewGeographicMapCellType))

getTypes_impl :: BasicTopViewGeographicMapCellType -> IO (JavaArray (Int))
getTypes_impl this = do
        pure ((jget (this).types))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BasicTopViewGeographicMapCellType))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BasicTopViewGeographicMapCellType))

toString_impl :: BasicTopViewGeographicMapCellType -> IO (String)
toString_impl this = do
        stringMaker <- (StringMaker.new_)
        let size = (jlength (jget (this).types))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append ((jio (StringMaker.appendint stringMaker (jindex ((jget (this).types)) (index))))) (jget ((jio (CommonSeps.getInstance))).cOMMA))
        (StringMaker.toString stringMaker)


