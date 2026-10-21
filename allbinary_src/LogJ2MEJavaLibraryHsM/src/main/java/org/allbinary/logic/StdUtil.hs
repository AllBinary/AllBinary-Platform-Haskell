{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
module StdUtil where

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
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified ABStack -- org.allbinary.util.ABStack
import qualified ABVector -- org.allbinary.util.ABVector

data StdUtil = StdUtil
    { header_ :: JavaHeader
    , eMPTY_VECTOR :: IORef (ABVector.ABVector)
    , nULL_TABLE :: IORef (ABHashtable.ABHashtable)
    }

instance JavaNull StdUtil where
    javaNull = javaNullRecord "StdUtil"

instance JavaEquals StdUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StdUtil where
    (==) = jrecordEquals

instance JavaObjectClass StdUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StdUtil
newRecord_ = do
    header_ <- newJavaHeader
    eMPTY_VECTOR <- newIORef javaNull
    nULL_TABLE <- newIORef javaNull
    let this = StdUtil header_ eMPTY_VECTOR nULL_TABLE
    jregisterLevel header_ this
    jregisterMethod header_ "createStack" (\() -> createStack_impl this)
    jregisterMethod header_ "createVector" (\() -> createVector_impl this)
    jregisterMethod header_ "createHashtable" (\() -> createHashtable_impl this)
    pure this

initFields_ :: StdUtil -> IO ()
initFields_ this = do
    jset this.eMPTY_VECTOR =<< (StdUtil.createVector this)
    jset this.nULL_TABLE =<< (StdUtil.createHashtable this)
    pure ()

new_ :: IO StdUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StdUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (StdUtil)
getInstance = do
        pure (StdUtil.instance_)


createStack :: (JavaObjectClass this_) => this_ -> IO (ABStack.ABStack)
createStack object_ = jmethod object_ "createStack" (\() -> (createStack_impl (javaCast object_ :: StdUtil))) ()

createStack_super :: (JavaObjectClass this_) => this_ -> IO (ABStack.ABStack)
createStack_super object_ = (createStack_impl (javaCast object_ :: StdUtil))

createStack_impl :: StdUtil -> IO (ABStack.ABStack)
createStack_impl this = do
        (ABStack.new_)


createVector :: (JavaObjectClass this_) => this_ -> IO (ABVector.ABVector)
createVector object_ = jmethod object_ "createVector" (\() -> (createVector_impl (javaCast object_ :: StdUtil))) ()

createVector_super :: (JavaObjectClass this_) => this_ -> IO (ABVector.ABVector)
createVector_super object_ = (createVector_impl (javaCast object_ :: StdUtil))

createVector_impl :: StdUtil -> IO (ABVector.ABVector)
createVector_impl this = do
        (ABVector.new_)


createHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
createHashtable object_ = jmethod object_ "createHashtable" (\() -> (createHashtable_impl (javaCast object_ :: StdUtil))) ()

createHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
createHashtable_super object_ = (createHashtable_impl (javaCast object_ :: StdUtil))

createHashtable_impl :: StdUtil -> IO (ABHashtable.ABHashtable)
createHashtable_impl this = do
        (ABHashtable.new_)


