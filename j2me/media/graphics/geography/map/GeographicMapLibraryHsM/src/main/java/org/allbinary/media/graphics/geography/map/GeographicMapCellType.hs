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
module GeographicMapCellType where

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
import qualified GeographicMapCellTypeFactory -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory

data GeographicMapCellType = GeographicMapCellType
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , type_ :: IORef (Int)
    }

instance JavaNull GeographicMapCellType where
    javaNull = javaNullRecord "GeographicMapCellType"

instance JavaEquals GeographicMapCellType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellType where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY = (jnewArray (0) javaNull)

{-# NOINLINE nULL_GEOGRAPHIC_MAP_CELL_TYPE #-}
nULL_GEOGRAPHIC_MAP_CELL_TYPE = unsafePerformIO ((new_2 ((-2147483648) :: Int) 0))

newRecord_ :: IO GeographicMapCellType
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    type_ <- newIORef 0
    let this = GeographicMapCellType header_ logUtil type_
    jregisterLevel header_ this
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: GeographicMapCellType -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.type_ (0)
    pure ()

new_2 :: Int -> Int -> IO GeographicMapCellType
new_2 type_ reset = do
    this <- newRecord_
    init_2 this type_ reset
    pure this

init_2 :: GeographicMapCellType -> Int -> Int -> IO ()
init_2 this type_ reset = do
        initFields_ this
        jset (this).type_ (type_)
        when (type_ /= ((-2147483648) :: Int)) $ do
            geographicMapCellTypeFactory <- (GeographicMapCellTypeFactory.getInstance)
            geographicMapCellTypeArray <- (GeographicMapCellTypeFactory.getGeographicMapCellTypeArray geographicMapCellTypeFactory)
            if (((jindex geographicMapCellTypeArray (type_)) == javaNull) || (reset == 1)) then do
                jsetIndex geographicMapCellTypeArray (type_) (this)
            else do
                when (reset /= (Prelude.negate 1)) $ do
                    javaThrow ((JavaException "RuntimeException" ""))
        pure ()


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: GeographicMapCellType))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: GeographicMapCellType))

getType_impl :: GeographicMapCellType -> IO (Int)
getType_impl this = do
        pure ((jget (this).type_))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: GeographicMapCellType))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: GeographicMapCellType))

toString_impl :: GeographicMapCellType -> IO (String)
toString_impl this = do
        pure ((javaToString (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) (jget (this).type_)))))


