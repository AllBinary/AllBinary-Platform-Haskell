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
-- package org.allbinary.logic.communication.log
module LogFormatUtil where

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
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified ExceptionUtil -- org.allbinary.logic.java.exception.ExceptionUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified TimeStampUtil -- org.allbinary.time.TimeStampUtil

data LogFormatUtil = LogFormatUtil
    { header_ :: JavaHeader
    }

instance JavaNull LogFormatUtil where
    javaNull = javaNullRecord "LogFormatUtil"

instance JavaEquals LogFormatUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogFormatUtil where
    (==) = jrecordEquals

instance JavaObjectClass LogFormatUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogFormatUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = LogFormatUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getS" (\() -> getS_impl this)
    jregisterMethod header_ "getO" (\() -> getO_impl this)
    pure this

initFields_ :: LogFormatUtil -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (LogFormatUtil)
getInstance = do
        pure (LogFormatUtil.instance_)

new_ :: IO LogFormatUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogFormatUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


get :: (JavaObjectClass this_, JavaObjectClass o4) => this_ -> String -> String -> String -> o4 -> IO (String)
get object_ a1 a2 a3 a4 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: LogFormatUtil))) () a1 a2 a3 (jtoObject a4)

get_super :: (JavaObjectClass this_, JavaObjectClass o4) => this_ -> String -> String -> String -> o4 -> IO (String)
get_super object_ a1 a2 a3 a4 = (get_impl (javaCast object_ :: LogFormatUtil)) a1 a2 a3 (jtoObject a4)

get_impl :: LogFormatUtil -> String -> String -> String -> JavaObject -> IO (String)
get_impl this className functionName specialMessage exceptionObject_ = do
        let exception = jtoObject exceptionObject_
        javaThrow ((JavaException "RuntimeException" ""))


getS :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (String)
getS object_ a1 a2 a3 = jmethod object_ "getS" (\() -> (getS_impl (javaCast object_ :: LogFormatUtil))) () a1 a2 a3

getS_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (String)
getS_super object_ a1 a2 a3 = (getS_impl (javaCast object_ :: LogFormatUtil)) a1 a2 a3

getS_impl :: LogFormatUtil -> String -> String -> String -> IO (String)
getS_impl this className functionName specialMessage = do
        javaThrow ((JavaException "RuntimeException" ""))


getO :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (String)
getO object_ a1 = jmethod object_ "getO" (\() -> (getO_impl (javaCast object_ :: LogFormatUtil))) () (jtoObject a1)

getO_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (String)
getO_super object_ a1 = (getO_impl (javaCast object_ :: LogFormatUtil)) (jtoObject a1)

getO_impl :: LogFormatUtil -> JavaObject -> IO (String)
getO_impl this exceptionObject_ = do
        let exception = jtoObject exceptionObject_
        javaThrow ((JavaException "RuntimeException" ""))


