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
module Log where

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
import qualified Class -- same package or java.lang
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified LogFormatUtil -- org.allbinary.logic.communication.log.LogFormatUtil

data Log = Log
    { header_ :: JavaHeader
    , logFormatUtil :: IORef (LogFormatUtil.LogFormatUtil)
    , specialMessage :: IORef (String)
    , anyType :: IORef (Any.Any)
    , functionName :: IORef (String)
    , exception :: IORef (Any.Any)
    }

instance JavaNull Log where
    javaNull = javaNullRecord "Log"

instance JavaEquals Log where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Log where
    (==) = jrecordEquals

instance JavaObjectClass Log where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO Log
newRecord_ = do
    header_ <- newJavaHeader
    logFormatUtil <- newIORef javaNull
    specialMessage <- newIORef ""
    anyType <- newIORef javaNull
    functionName <- newIORef ""
    exception <- newIORef javaNull
    let this = Log header_ logFormatUtil specialMessage anyType functionName exception
    jregisterLevel header_ this
    jregisterMethod header_ "getSpecialMessage" (\() -> getSpecialMessage_impl this)
    jregisterMethod header_ "getObject" (\() -> getObject_impl this)
    jregisterMethod header_ "getFunctionName" (\() -> getFunctionName_impl this)
    jregisterMethod header_ "getThrowable" (\() -> getThrowable_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: Log -> IO ()
initFields_ this = do
    jset this.logFormatUtil =<< (LogFormatUtil.getInstance)
    jset this.specialMessage (javaNull)
    jset this.anyType (javaNull)
    jset this.functionName (javaNull)
    jset this.exception (javaNull)
    pure ()

new_4 :: (JavaObjectClass o2, JavaObjectClass o4) => String -> o2 -> String -> o4 -> IO Log
new_4 specialMessage anyTypeObject_ functionName exceptionObject_ = do
    this <- newRecord_
    init_4 this specialMessage anyTypeObject_ functionName exceptionObject_
    pure this

init_4 :: (JavaObjectClass o2, JavaObjectClass o4) => Log -> String -> o2 -> String -> o4 -> IO ()
init_4 this specialMessage anyTypeObject_ functionName exceptionObject_ = do
        let anyType = jtoObject anyTypeObject_
        let exception = jtoObject exceptionObject_
        initFields_ this
        jset (this).specialMessage (specialMessage)
        jset (this).anyType (anyType)
        jset (this).functionName (functionName)
        jset (this).exception (exception)
        pure ()


getSpecialMessage :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecialMessage object_ = jmethod object_ "getSpecialMessage" (\() -> (getSpecialMessage_impl (javaCast object_ :: Log))) ()

getSpecialMessage_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecialMessage_super object_ = (getSpecialMessage_impl (javaCast object_ :: Log))

getSpecialMessage_impl :: Log -> IO (String)
getSpecialMessage_impl this = do
        pure ((jget (this).specialMessage))


getObject :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getObject object_ = jmethod object_ "getObject" (\() -> (getObject_impl (javaCast object_ :: Log))) ()

getObject_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getObject_super object_ = (getObject_impl (javaCast object_ :: Log))

getObject_impl :: Log -> IO (Any.Any)
getObject_impl this = do
        pure ((jtoObject (jget (this).anyType)))


getFunctionName :: (JavaObjectClass this_) => this_ -> IO (String)
getFunctionName object_ = jmethod object_ "getFunctionName" (\() -> (getFunctionName_impl (javaCast object_ :: Log))) ()

getFunctionName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFunctionName_super object_ = (getFunctionName_impl (javaCast object_ :: Log))

getFunctionName_impl :: Log -> IO (String)
getFunctionName_impl this = do
        pure ((jget (this).functionName))


getThrowable :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getThrowable object_ = jmethod object_ "getThrowable" (\() -> (getThrowable_impl (javaCast object_ :: Log))) ()

getThrowable_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getThrowable_super object_ = (getThrowable_impl (javaCast object_ :: Log))

getThrowable_impl :: Log -> IO (Any.Any)
getThrowable_impl this = do
        pure ((jtoObject (jget (this).exception)))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: Log))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: Log))

toString_impl :: Log -> IO (String)
toString_impl this = do
        className <- newIORef ((jget ((jio (CommonStrings.getInstance))).eMPTY))
        clazz <- (jobjectGetClass (jget (this).anyType))
        when ((jio (Class.getName clazz)) /= javaNull) $ do
            assignedValue <- (Class.getName clazz)
            jset className (assignedValue)
        (LogFormatUtil.get ((jget (this).logFormatUtil)) (jget className) (jget (this).functionName) (jget (this).specialMessage) (jget (this).exception))


