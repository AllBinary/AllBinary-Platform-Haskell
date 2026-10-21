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
-- package org.allbinary.graphics.color
module BasicColorArrayIndexer where

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
import qualified BasicColor -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsConstructor -- jsinterop.annotations.JsConstructor

data BasicColorArrayIndexer = BasicColorArrayIndexer
    { header_ :: JavaHeader
    , basicColorArray :: IORef (JavaArray (BasicColor.BasicColor))
    , circularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    }

instance JavaNull BasicColorArrayIndexer where
    javaNull = javaNullRecord "BasicColorArrayIndexer"

instance JavaEquals BasicColorArrayIndexer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicColorArrayIndexer where
    (==) = jrecordEquals

instance JavaObjectClass BasicColorArrayIndexer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicColorArrayIndexer
newRecord_ = do
    header_ <- newJavaHeader
    basicColorArray <- newIORef javaNull
    circularIndexUtil <- newIORef javaNull
    let this = BasicColorArrayIndexer header_ basicColorArray circularIndexUtil
    jregisterLevel header_ this
    jregisterMethod header_ "next" (\() -> next_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getBasicColorArray" (\() -> getBasicColorArray_impl this)
    pure this

initFields_ :: BasicColorArrayIndexer -> IO ()
initFields_ this = do
    jset this.basicColorArray (javaNull)
    jset this.circularIndexUtil (javaNull)
    pure ()

new_1 :: JavaArray (BasicColor.BasicColor) -> IO BasicColorArrayIndexer
new_1 basicColorArray = do
    this <- newRecord_
    init_1 this basicColorArray
    pure this

init_1 :: BasicColorArrayIndexer -> JavaArray (BasicColor.BasicColor) -> IO ()
init_1 this basicColorArray = do
        initFields_ this
        jset (this).basicColorArray (basicColorArray)
        assignedValue <- (CircularIndexUtil.createInstance (jlength (jget (this).basicColorArray)))
        jset (this).circularIndexUtil (assignedValue)
        pure ()


next :: (JavaObjectClass this_) => this_ -> IO (())
next object_ = jmethod object_ "next" (\() -> (next_impl (javaCast object_ :: BasicColorArrayIndexer))) ()

next_super :: (JavaObjectClass this_) => this_ -> IO (())
next_super object_ = (next_impl (javaCast object_ :: BasicColorArrayIndexer))

next_impl :: BasicColorArrayIndexer -> IO (())
next_impl this = do
        Control.Monad.void (CircularIndexUtil.next ((jget (this).circularIndexUtil)))
        pure ()


get :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: BasicColorArrayIndexer))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
get_super object_ = (get_impl (javaCast object_ :: BasicColorArrayIndexer))

get_impl :: BasicColorArrayIndexer -> IO (BasicColor.BasicColor)
get_impl this = do
        pure ((jindex ((jget (this).basicColorArray)) ((jio (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))))))


getBasicColorArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BasicColor.BasicColor))
getBasicColorArray object_ = jmethod object_ "getBasicColorArray" (\() -> (getBasicColorArray_impl (javaCast object_ :: BasicColorArrayIndexer))) ()

getBasicColorArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BasicColor.BasicColor))
getBasicColorArray_super object_ = (getBasicColorArray_impl (javaCast object_ :: BasicColorArrayIndexer))

getBasicColorArray_impl :: BasicColorArrayIndexer -> IO (JavaArray (BasicColor.BasicColor))
getBasicColorArray_impl this = do
        pure ((jget (this).basicColorArray))


