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
module VectorUtil where

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
import qualified Vector -- java.util.Vector
import qualified JsType -- jsinterop.annotations.JsType

data VectorUtil = VectorUtil
    { header_ :: JavaHeader
    }

instance JavaNull VectorUtil where
    javaNull = javaNullRecord "VectorUtil"

instance JavaEquals VectorUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VectorUtil where
    (==) = jrecordEquals

instance JavaObjectClass VectorUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VectorUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = VectorUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "elementAt" (\() -> elementAt_impl this)
    pure this

initFields_ :: VectorUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO VectorUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: VectorUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (VectorUtil)
getInstance = do
        pure (VectorUtil.instance_)


getSize :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
getSize object_ a1 = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: VectorUtil))) () (jtoObject a1)

getSize_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
getSize_super object_ a1 = (getSize_impl (javaCast object_ :: VectorUtil)) (jtoObject a1)

getSize_impl :: VectorUtil -> JavaObject -> IO (Int)
getSize_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        let vector = (javaCast anyType :: Vector.Vector)
        (Vector.size vector)


elementAt :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> IO (Any.Any)
elementAt object_ a1 a2 = jmethod object_ "elementAt" (\() -> (elementAt_impl (javaCast object_ :: VectorUtil))) () (jtoObject a1) a2

elementAt_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> IO (Any.Any)
elementAt_super object_ a1 a2 = (elementAt_impl (javaCast object_ :: VectorUtil)) (jtoObject a1) a2

elementAt_impl :: VectorUtil -> JavaObject -> Int -> IO (Any.Any)
elementAt_impl this anyTypeObject_ index = do
        let anyType = jtoObject anyTypeObject_
        let vector = (javaCast anyType :: Vector.Vector)
        (fmap jtoObject (Vector.elementAt vector index))


