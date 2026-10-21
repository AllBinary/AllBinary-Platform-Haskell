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
-- package org.allbinary.util
module CircularIndexUtil where

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
import qualified JsType -- jsinterop.annotations.JsType
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsConstructor -- jsinterop.annotations.JsConstructor
import qualified JsProperty -- jsinterop.annotations.JsProperty

data CircularIndexUtil = CircularIndexUtil
    { header_ :: JavaHeader
    , index :: IORef (Int)
    , lastIndex :: IORef (Int)
    , size :: IORef (Int)
    }

instance JavaNull CircularIndexUtil where
    javaNull = javaNullRecord "CircularIndexUtil"

instance JavaEquals CircularIndexUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CircularIndexUtil where
    (==) = jrecordEquals

instance JavaObjectClass CircularIndexUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_CIRCULAR_INDEX_UTIL #-}
nULL_CIRCULAR_INDEX_UTIL = unsafePerformIO ((new_2 0 0))

newRecord_ :: IO CircularIndexUtil
newRecord_ = do
    header_ <- newJavaHeader
    index <- newIORef 0
    lastIndex <- newIORef 0
    size <- newIORef 0
    let this = CircularIndexUtil header_ index lastIndex size
    jregisterLevel header_ this
    jregisterMethod header_ "next" (\() -> next_impl this)
    jregisterMethod header_ "previous" (\() -> previous_impl this)
    jregisterMethod header_ "setIndex" (\() -> setIndex_impl this)
    jregisterMethod header_ "getIndex" (\() -> getIndex_impl this)
    jregisterMethod header_ "setSize" (\() -> setSize_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: CircularIndexUtil -> IO ()
initFields_ this = do
    jset this.index (0)
    jset this.lastIndex (0)
    jset this.size (0)
    pure ()

new_2 :: Int -> Int -> IO CircularIndexUtil
new_2 index size = do
    this <- newRecord_
    init_2 this index size
    pure this

init_2 :: CircularIndexUtil -> Int -> Int -> IO ()
init_2 this index size = do
        initFields_ this
        Control.Monad.void (CircularIndexUtil.setSize this size)
        Control.Monad.void (CircularIndexUtil.setIndex this index)
        pure ()


next :: (JavaObjectClass this_) => this_ -> IO (Int)
next object_ = jmethod object_ "next" (\() -> (next_impl (javaCast object_ :: CircularIndexUtil))) ()

next_super :: (JavaObjectClass this_) => this_ -> IO (Int)
next_super object_ = (next_impl (javaCast object_ :: CircularIndexUtil))

next_impl :: CircularIndexUtil -> IO (Int)
next_impl this = do
        if ((jget (this).index) >= (jget (this).lastIndex)) then do
            jset (this).index (0)
        else do
            jset (this).index ((jget (this).index) + 1)
        pure ((jget (this).index))


previous :: (JavaObjectClass this_) => this_ -> IO (Int)
previous object_ = jmethod object_ "previous" (\() -> (previous_impl (javaCast object_ :: CircularIndexUtil))) ()

previous_super :: (JavaObjectClass this_) => this_ -> IO (Int)
previous_super object_ = (previous_impl (javaCast object_ :: CircularIndexUtil))

previous_impl :: CircularIndexUtil -> IO (Int)
previous_impl this = do
        if ((jget (this).index) < 1) then do
            jset (this).index ((jget (this).lastIndex))
        else do
            jset (this).index ((jget (this).index) - 1)
        pure ((jget (this).index))


setIndex :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setIndex object_ a1 = jmethod object_ "setIndex" (\() -> (setIndex_impl (javaCast object_ :: CircularIndexUtil))) () a1

setIndex_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setIndex_super object_ a1 = (setIndex_impl (javaCast object_ :: CircularIndexUtil)) a1

setIndex_impl :: CircularIndexUtil -> Int -> IO (())
setIndex_impl this index = do
    javaCatchReturn $ do
        when (index > (jget (this).lastIndex)) $ do
            javaReturn (())
        jset (this).index (index)
    pure ()


getIndex :: (JavaObjectClass this_) => this_ -> IO (Int)
getIndex object_ = jmethod object_ "getIndex" (\() -> (getIndex_impl (javaCast object_ :: CircularIndexUtil))) ()

getIndex_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getIndex_super object_ = (getIndex_impl (javaCast object_ :: CircularIndexUtil))

getIndex_impl :: CircularIndexUtil -> IO (Int)
getIndex_impl this = do
        pure ((jget (this).index))


createInstance :: Int -> IO (CircularIndexUtil)
createInstance max = do
        (new_2 0 max)


createInstanceAt :: Int -> Int -> IO (CircularIndexUtil)
createInstanceAt index max = do
        (new_2 index max)


setSize :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setSize object_ a1 = jmethod object_ "setSize" (\() -> (setSize_impl (javaCast object_ :: CircularIndexUtil))) () a1

setSize_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setSize_super object_ a1 = (setSize_impl (javaCast object_ :: CircularIndexUtil)) a1

setSize_impl :: CircularIndexUtil -> Int -> IO (())
setSize_impl this size = do
        jset (this).size (size)
        jset (this).lastIndex ((size - 1))
        jset (this).index (0)
        pure ()


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: CircularIndexUtil))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: CircularIndexUtil))

getSize_impl :: CircularIndexUtil -> IO (Int)
getSize_impl this = do
        pure ((jget (this).size))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: CircularIndexUtil))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: CircularIndexUtil))

toString_impl :: CircularIndexUtil -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).iNDEX_LABEL)))) (jget (this).index)))) "lastIndex: "))) (jget (this).lastIndex)))) "size: "))) (jget (this).size)))))


