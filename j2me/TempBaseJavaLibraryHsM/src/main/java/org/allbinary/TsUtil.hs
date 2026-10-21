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
-- package org.allbinary
module TsUtil where

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

data TsUtil = TsUtil
    { header_ :: JavaHeader
    }

instance JavaNull TsUtil where
    javaNull = javaNullRecord "TsUtil"

instance JavaEquals TsUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TsUtil where
    (==) = jrecordEquals

instance JavaObjectClass TsUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TsUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = TsUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "longBitsToDouble" (\() -> longBitsToDouble_impl this)
    jregisterMethod header_ "intBitsToFloat" (\() -> intBitsToFloat_impl this)
    jregisterMethod header_ "hashCode" (\() -> hashCode_impl this)
    jregisterMethod header_ "waitFor" (\() -> waitFor_impl this)
    jregisterMethod header_ "compareTo" (\() -> compareTo_impl this)
    pure this

initFields_ :: TsUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TsUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TsUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TsUtil)
getInstance = do
        pure (TsUtil.instance_)


longBitsToDouble :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Double)
longBitsToDouble object_ a1 = jmethod object_ "longBitsToDouble" (\() -> (longBitsToDouble_impl (javaCast object_ :: TsUtil))) () a1

longBitsToDouble_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Double)
longBitsToDouble_super object_ a1 = (longBitsToDouble_impl (javaCast object_ :: TsUtil)) a1

longBitsToDouble_impl :: TsUtil -> Int64 -> IO (Double)
longBitsToDouble_impl this bits = do
        pure ((GHC.Float.castWord64ToDouble (Prelude.fromIntegral bits)))


intBitsToFloat :: (JavaObjectClass this_) => this_ -> Int -> IO (Float)
intBitsToFloat object_ a1 = jmethod object_ "intBitsToFloat" (\() -> (intBitsToFloat_impl (javaCast object_ :: TsUtil))) () a1

intBitsToFloat_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Float)
intBitsToFloat_super object_ a1 = (intBitsToFloat_impl (javaCast object_ :: TsUtil)) a1

intBitsToFloat_impl :: TsUtil -> Int -> IO (Float)
intBitsToFloat_impl this bits = do
        pure ((GHC.Float.castWord32ToFloat (Prelude.fromIntegral bits)))


hashCode :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
hashCode object_ a1 = jmethod object_ "hashCode" (\() -> (hashCode_impl (javaCast object_ :: TsUtil))) () (jtoObject a1)

hashCode_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Int)
hashCode_super object_ a1 = (hashCode_impl (javaCast object_ :: TsUtil)) (jtoObject a1)

hashCode_impl :: TsUtil -> JavaObject -> IO (Int)
hashCode_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        (Any.hashCode anyType)


-- throws InterruptedException
waitFor :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int64 -> IO (())
waitFor object_ a1 a2 = jmethod object_ "waitFor" (\() -> (waitFor_impl (javaCast object_ :: TsUtil))) () (jtoObject a1) a2

waitFor_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int64 -> IO (())
waitFor_super object_ a1 a2 = (waitFor_impl (javaCast object_ :: TsUtil)) (jtoObject a1) a2

waitFor_impl :: TsUtil -> JavaObject -> Int64 -> IO (())
waitFor_impl this anyObject_ timeoutMillis = do
        let any = jtoObject anyObject_
        let anyType = (javaCast any :: Any.Any)
        Control.Monad.void (jwait anyType timeoutMillis)
        pure ()


compareTo :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Int)
compareTo object_ a1 a2 = jmethod object_ "compareTo" (\() -> (compareTo_impl (javaCast object_ :: TsUtil))) () a1 a2

compareTo_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Int)
compareTo_super object_ a1 a2 = (compareTo_impl (javaCast object_ :: TsUtil)) a1 a2

compareTo_impl :: TsUtil -> String -> String -> IO (Int)
compareTo_impl this a b = do
        pure ((Prelude.fromEnum (Prelude.compare a b) - 1))


