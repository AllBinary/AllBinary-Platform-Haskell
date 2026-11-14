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
-- package org.allbinary.business.time.modified
module TimeLastModified (module TimeLastModified, module Time) where

import Time hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified Time -- org.allbinary.business.time.Time

data TimeLastModified = TimeLastModified
    { header_ :: JavaHeader
    , base :: Time.Time
    }

instance JavaNull TimeLastModified where
    javaNull = javaNullRecord "TimeLastModified"

instance JavaEquals TimeLastModified where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimeLastModified where
    (==) = jrecordEquals

instance JavaObjectClass TimeLastModified where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TimeLastModified
newRecord_ = do
    base <- Time.newRecord_
    let header_ = base.header_
    let this = TimeLastModified header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: TimeLastModified -> IO ()
initFields_ this = do
    pure ()

-- Java overloaded constructors with 1 parameters: call the overload for the types of the arguments
new_1 :: (JavaObjectClass o1) => o1 -> IO TimeLastModified
new_1 a1
    | jisInstanceOf a1 (javaNull :: String) = new_1_overload1 (javaCast a1 :: String)
    | jisInstanceOf a1 (javaNull :: Int64) = new_1_overload2 (javaCast a1 :: Int64)
    | otherwise = new_1_overload2 (javaCast a1 :: Int64)

init_1 :: (JavaObjectClass o1) => TimeLastModified -> o1 -> IO ()
init_1 this a1
    | jisInstanceOf a1 (javaNull :: String) = init_1_overload1 this (javaCast a1 :: String)
    | jisInstanceOf a1 (javaNull :: Int64) = init_1_overload2 this (javaCast a1 :: Int64)
    | otherwise = init_1_overload2 this (javaCast a1 :: Int64)


new_1_overload1 :: String -> IO TimeLastModified
new_1_overload1 time = do
    this <- newRecord_
    init_1_overload1 this time
    pure this

init_1_overload1 :: TimeLastModified -> String -> IO ()
init_1_overload1 this time = do
        Time.init_1 this.base (time)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_1_overload2 :: Int64 -> IO TimeLastModified
new_1_overload2 time = do
    this <- newRecord_
    init_1_overload2 this time
    pure this

init_1_overload2 :: TimeLastModified -> Int64 -> IO ()
init_1_overload2 this time = do
        Time.init_1 this.base (time)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


