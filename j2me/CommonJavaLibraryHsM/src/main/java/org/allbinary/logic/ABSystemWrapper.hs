{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
-- package org.allbinary.logic
module ABSystemWrapper where

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
import qualified Any -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType

data ABSystemWrapper = ABSystemWrapper
    { header_ :: JavaHeader
    }

instance JavaNull ABSystemWrapper where
    javaNull = javaNullRecord "ABSystemWrapper"

instance JavaEquals ABSystemWrapper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABSystemWrapper where
    (==) = jrecordEquals

instance JavaObjectClass ABSystemWrapper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ABSystemWrapper
newRecord_ = do
    header_ <- newJavaHeader
    let this = ABSystemWrapper header_
    jregisterLevel header_ this
    jregisterMethod header_ "arraycopy" (\() -> arraycopy_impl this)
    jregisterMethod header_ "currentTimeMillis" (\() -> currentTimeMillis_impl this)
    pure this

initFields_ :: ABSystemWrapper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ABSystemWrapper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ABSystemWrapper -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ABSystemWrapper)
getInstance = do
        pure (ABSystemWrapper.instance_)


arraycopy :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o3) => this_ -> o1 -> Int -> o3 -> Int -> Int -> IO (())
arraycopy object_ a1 a2 a3 a4 a5 = jmethod object_ "arraycopy" (\() -> (arraycopy_impl (javaCast object_ :: ABSystemWrapper))) () (jtoObject a1) a2 (jtoObject a3) a4 a5

arraycopy_super :: (JavaObjectClass this_, JavaObjectClass o1, JavaObjectClass o3) => this_ -> o1 -> Int -> o3 -> Int -> Int -> IO (())
arraycopy_super object_ a1 a2 a3 a4 a5 = (arraycopy_impl (javaCast object_ :: ABSystemWrapper)) (jtoObject a1) a2 (jtoObject a3) a4 a5

arraycopy_impl :: ABSystemWrapper -> JavaObject -> Int -> JavaObject -> Int -> Int -> IO (())
arraycopy_impl this srcObject_ srcPos destObject_ destPos length = do
        let src = jtoObject srcObject_
        let dest = jtoObject destObject_
        Control.Monad.void (jarraycopy src srcPos dest destPos length)
        pure ()


currentTimeMillis :: (JavaObjectClass this_) => this_ -> IO (Int64)
currentTimeMillis object_ = jmethod object_ "currentTimeMillis" (\() -> (currentTimeMillis_impl (javaCast object_ :: ABSystemWrapper))) ()

currentTimeMillis_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
currentTimeMillis_super object_ = (currentTimeMillis_impl (javaCast object_ :: ABSystemWrapper))

currentTimeMillis_impl :: ABSystemWrapper -> IO (Int64)
currentTimeMillis_impl this = do
        jcurrentTimeMillis


