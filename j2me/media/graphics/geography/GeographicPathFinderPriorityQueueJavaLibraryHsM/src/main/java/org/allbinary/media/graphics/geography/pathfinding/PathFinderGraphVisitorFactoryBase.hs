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
module PathFinderGraphVisitorFactoryBase where

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
import qualified PathFinderGraphVisitorBase -- same package or java.lang
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap

data PathFinderGraphVisitorFactoryBase = PathFinderGraphVisitorFactoryBase
    { header_ :: JavaHeader
    }

instance JavaNull PathFinderGraphVisitorFactoryBase where
    javaNull = javaNullRecord "PathFinderGraphVisitorFactoryBase"

instance JavaEquals PathFinderGraphVisitorFactoryBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFinderGraphVisitorFactoryBase where
    (==) = jrecordEquals

instance JavaObjectClass PathFinderGraphVisitorFactoryBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PathFinderGraphVisitorFactoryBase
newRecord_ = do
    header_ <- newJavaHeader
    let this = PathFinderGraphVisitorFactoryBase header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: PathFinderGraphVisitorFactoryBase -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PathFinderGraphVisitorFactoryBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PathFinderGraphVisitorFactoryBase -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (PathFinderGraphVisitorBase.PathFinderGraphVisitorBase)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: PathFinderGraphVisitorFactoryBase))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> BasicGeographicMap.BasicGeographicMap -> IO (PathFinderGraphVisitorBase.PathFinderGraphVisitorBase)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: PathFinderGraphVisitorFactoryBase)) a1

getInstance_impl :: PathFinderGraphVisitorFactoryBase -> BasicGeographicMap.BasicGeographicMap -> IO (PathFinderGraphVisitorBase.PathFinderGraphVisitorBase)
getInstance_impl this geographicMapInterface = do
        javaThrow ((JavaException "RuntimeException" ""))


