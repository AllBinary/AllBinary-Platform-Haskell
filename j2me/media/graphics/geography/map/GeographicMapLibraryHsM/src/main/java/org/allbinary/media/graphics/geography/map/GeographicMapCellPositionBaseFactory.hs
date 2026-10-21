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
module GeographicMapCellPositionBaseFactory where

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
import qualified BasicGeographicMapCellPositionFactory -- same package or java.lang
import qualified BasicGeographicMap -- same package or java.lang

data GeographicMapCellPositionBaseFactory = GeographicMapCellPositionBaseFactory
    { header_ :: JavaHeader
    }

instance JavaNull GeographicMapCellPositionBaseFactory where
    javaNull = javaNullRecord "GeographicMapCellPositionBaseFactory"

instance JavaEquals GeographicMapCellPositionBaseFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellPositionBaseFactory where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellPositionBaseFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GeographicMapCellPositionBaseFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = GeographicMapCellPositionBaseFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: GeographicMapCellPositionBaseFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GeographicMapCellPositionBaseFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GeographicMapCellPositionBaseFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: GeographicMapCellPositionBaseFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: GeographicMapCellPositionBaseFactory)) a1

getInstance_impl :: GeographicMapCellPositionBaseFactory -> BasicGeographicMap.BasicGeographicMap -> IO (BasicGeographicMapCellPositionFactory.BasicGeographicMapCellPositionFactory)
getInstance_impl this geographicMapInterface = do
        (BasicGeographicMapCellPositionFactory.new_1 geographicMapInterface)


