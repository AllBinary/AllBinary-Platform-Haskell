{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.graphics.displayable.screen
module DisplayPointScalar where

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
import qualified GPoint -- org.allbinary.graphics.GPoint

data DisplayPointScalar = DisplayPointScalar
    { header_ :: JavaHeader
    }

instance JavaNull DisplayPointScalar where
    javaNull = javaNullRecord "DisplayPointScalar"

instance JavaEquals DisplayPointScalar where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DisplayPointScalar where
    (==) = jrecordEquals

instance JavaObjectClass DisplayPointScalar where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DisplayPointScalar
newRecord_ = do
    header_ <- newJavaHeader
    let this = DisplayPointScalar header_
    jregisterLevel header_ this
    jregisterMethod header_ "processX" (\() -> processX_impl this)
    jregisterMethod header_ "processY" (\() -> processY_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: DisplayPointScalar -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (DisplayPointScalar)
getInstance = do
        pure (DisplayPointScalar.instance_)

new_ :: IO DisplayPointScalar
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DisplayPointScalar -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


processX :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
processX object_ a1 = jmethod object_ "processX" (\() -> (processX_impl (javaCast object_ :: DisplayPointScalar))) () a1

processX_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
processX_super object_ a1 = (processX_impl (javaCast object_ :: DisplayPointScalar)) a1

processX_impl :: DisplayPointScalar -> Int -> IO (Int)
processX_impl this value = do
        pure (value)


processY :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
processY object_ a1 = jmethod object_ "processY" (\() -> (processY_impl (javaCast object_ :: DisplayPointScalar))) () a1

processY_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
processY_super object_ a1 = (processY_impl (javaCast object_ :: DisplayPointScalar)) a1

processY_impl :: DisplayPointScalar -> Int -> IO (Int)
processY_impl this value = do
        pure (value)


process :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (GPoint.GPoint)
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: DisplayPointScalar))) () a1

process_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (GPoint.GPoint)
process_super object_ a1 = (process_impl (javaCast object_ :: DisplayPointScalar)) a1

process_impl :: DisplayPointScalar -> GPoint.GPoint -> IO (GPoint.GPoint)
process_impl this point = do
        pure (point)


