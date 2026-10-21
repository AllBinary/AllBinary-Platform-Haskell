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
-- package org.allbinary.logic.control.workflow
module WorkFlowWrapper where

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
import qualified Method -- java.lang.reflect.Method
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified WorkFlowInterface

-- implements WorkFlowInterface
data WorkFlowWrapper = WorkFlowWrapper
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , anyType :: IORef (Any.Any)
    }

instance JavaNull WorkFlowWrapper where
    javaNull = javaNullRecord "WorkFlowWrapper"

instance JavaEquals WorkFlowWrapper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WorkFlowWrapper where
    (==) = jrecordEquals

instance JavaObjectClass WorkFlowWrapper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO WorkFlowWrapper
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    anyType <- newIORef javaNull
    let this = WorkFlowWrapper header_ logUtil commonStrings anyType
    jregisterLevel header_ this
    WorkFlowInterface.registerInterface_ header_
    jregisterMethod header_ "getWorkFlowObject" (\() -> getWorkFlowObject_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getStoreName" (\() -> getStoreName_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: WorkFlowWrapper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.anyType (javaNull)
    pure ()

new_1 :: (JavaObjectClass o1) => o1 -> IO WorkFlowWrapper
new_1 anyTypeObject_ = do
    this <- newRecord_
    init_1 this anyTypeObject_
    pure this

init_1 :: (JavaObjectClass o1) => WorkFlowWrapper -> o1 -> IO ()
init_1 this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        initFields_ this
        jset (this).anyType (anyType)
        pure ()


getWorkFlowObject :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getWorkFlowObject object_ = jmethod object_ "getWorkFlowObject" (\() -> (getWorkFlowObject_impl (javaCast object_ :: WorkFlowWrapper))) ()

getWorkFlowObject_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getWorkFlowObject_super object_ = (getWorkFlowObject_impl (javaCast object_ :: WorkFlowWrapper))

getWorkFlowObject_impl :: WorkFlowWrapper -> IO (Any.Any)
getWorkFlowObject_impl this = do
        pure ((jtoObject (jget (this).anyType)))


-- throws Exception
getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: WorkFlowWrapper))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: WorkFlowWrapper))

getName_impl :: WorkFlowWrapper -> IO (String)
getName_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Reflection Exception"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getName()" e)
            javaThrow ((JavaException "Exception" error))
            ) $ do
            helperClass <- (jobjectGetClass (jget (this).anyType))
            method <- (Class.getMethod helperClass "getName" javaNull)
            let result = (javaCast (jio (Method.invoke method (jget (this).anyType) javaNull)) :: String)
            pure (result)


-- throws Exception
getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: WorkFlowWrapper))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: WorkFlowWrapper))

getStoreName_impl :: WorkFlowWrapper -> IO (String)
getStoreName_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Reflection Exception"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getStoreName()" e)
            javaThrow ((JavaException "Exception" error))
            ) $ do
            helperClass <- (jobjectGetClass (jget (this).anyType))
            method <- (Class.getMethod helperClass "getStoreName" javaNull)
            let result = (javaCast (jio (Method.invoke method (jget (this).anyType) javaNull)) :: String)
            pure (result)


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (Int)
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: WorkFlowWrapper))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (Int)
process_super object_ = (process_impl (javaCast object_ :: WorkFlowWrapper))

process_impl :: WorkFlowWrapper -> IO (Int)
process_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Reflection Exception"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).pROCESS) e)
            javaThrow ((JavaException "Exception" error))
            ) $ do
            helperClass <- (jobjectGetClass (jget (this).anyType))
            method <- (Class.getMethod helperClass (jget ((jget (this).commonStrings)).pROCESS) javaNull)
            let result = (javaCast (jio (Method.invoke method (jget (this).anyType) javaNull)) :: Int)
            pure (result)


