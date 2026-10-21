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
-- package org.allbinary.logic.math.permutations
module ComparableObject where

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
import qualified TsUtil -- org.allbinary.TsUtil
import qualified Comparable

-- implements Comparable
data ComparableObject = ComparableObject
    { header_ :: JavaHeader
    }

instance JavaNull ComparableObject where
    javaNull = javaNullRecord "ComparableObject"

instance JavaEquals ComparableObject where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ComparableObject where
    (==) = jrecordEquals

instance JavaObjectClass ComparableObject where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ComparableObject
newRecord_ = do
    header_ <- newJavaHeader
    let this = ComparableObject header_
    jregisterLevel header_ this
    Comparable.registerInterface_ header_
    jregisterMethod header_ "compareTo" (\() -> compareTo_impl this)
    pure this

initFields_ :: ComparableObject -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ComparableObject
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ComparableObject -> IO ()
init_ this = do
    initFields_ this


compareTo :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
compareTo object_ a1 = jmethod object_ "compareTo" (\() -> (compareTo_impl (javaCast object_ :: ComparableObject))) () (jtoObject a1)

compareTo_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
compareTo_super object_ a1 = (compareTo_impl (javaCast object_ :: ComparableObject)) (jtoObject a1)

compareTo_impl :: ComparableObject -> JavaObject -> IO (Int)
compareTo_impl this anyTypeObject_ = do
    let anyType = jtoObject anyTypeObject_
    javaCatchReturn $ do
        if ((jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) this)) < (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) anyType))) then do
            javaReturn ((Prelude.negate 1))
        else when ((jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) this)) > (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) anyType))) $ do
            javaReturn (1)
        pure (0)


