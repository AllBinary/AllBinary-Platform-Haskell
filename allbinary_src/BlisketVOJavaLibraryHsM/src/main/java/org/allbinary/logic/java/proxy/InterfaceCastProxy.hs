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
-- package org.allbinary.logic.java.proxy
module InterfaceCastProxy where

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
import qualified Proxy -- java.lang.reflect.Proxy
import qualified InvocationHandler

-- implements InvocationHandler
data InterfaceCastProxy = InterfaceCastProxy
    { header_ :: JavaHeader
    , anyType :: IORef (Any.Any)
    }

instance JavaNull InterfaceCastProxy where
    javaNull = javaNullRecord "InterfaceCastProxy"

instance JavaEquals InterfaceCastProxy where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InterfaceCastProxy where
    (==) = jrecordEquals

instance JavaObjectClass InterfaceCastProxy where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InterfaceCastProxy
newRecord_ = do
    header_ <- newJavaHeader
    anyType <- newIORef javaNull
    let this = InterfaceCastProxy header_ anyType
    jregisterLevel header_ this
    InvocationHandler.registerInterface_ header_
    jregisterMethod header_ "invoke" (\() -> invoke_impl this)
    pure this

initFields_ :: InterfaceCastProxy -> IO ()
initFields_ this = do
    jset this.anyType (javaNull)
    pure ()

new_1 :: (JavaObjectClass o1) => o1 -> IO InterfaceCastProxy
new_1 anyTypeObject_ = do
    this <- newRecord_
    init_1 this anyTypeObject_
    pure this

init_1 :: (JavaObjectClass o1) => InterfaceCastProxy -> o1 -> IO ()
init_1 this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        initFields_ this
        jset (this).anyType (anyType)
        pure ()


newInstance :: (JavaObjectClass o1) => o1 -> IO (Any.Any)
newInstance anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        (fmap jtoObject (Proxy.newProxyInstance (jio (Class.getClassLoader ((jio (jobjectGetClass anyType))))) (jio (Class.getInterfaces ((jio (jobjectGetClass anyType))))) (jio (new_1 anyType))))


-- throws Throwable
invoke :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Method.Method -> JavaArray (Any.Any) -> IO (Any.Any)
invoke object_ a1 a2 a3 = jmethod object_ "invoke" (\() -> (invoke_impl (javaCast object_ :: InterfaceCastProxy))) () (jtoObject a1) a2 a3

invoke_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Method.Method -> JavaArray (Any.Any) -> IO (Any.Any)
invoke_super object_ a1 a2 a3 = (invoke_impl (javaCast object_ :: InterfaceCastProxy)) (jtoObject a1) a2 a3

invoke_impl :: InterfaceCastProxy -> JavaObject -> Method.Method -> JavaArray (Any.Any) -> IO (Any.Any)
invoke_impl this proxyObjectObject_ proxyMethod proxyArgs = do
        let proxyObject = jtoObject proxyObjectObject_
        methodName <- (Method.getName proxyMethod)
        realMethod <- (Class.getMethod ((jio (jobjectGetClass (jget (this).anyType)))) methodName (jio (Method.getParameterTypes proxyMethod)))
        when (Prelude.not (jio (Method.isAccessible realMethod))) $ do
            Control.Monad.void (jio (Method.setAccessible realMethod True))
        (fmap jtoObject (Method.invoke proxyMethod (jget (this).anyType) proxyArgs))


