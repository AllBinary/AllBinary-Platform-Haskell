{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.thread
module ThreadObjectUtil where

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
import qualified NullPriorityRunnable -- same package or java.lang
import qualified PriorityRunnable -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Runnable -- same package or java.lang

data ThreadObjectUtil = ThreadObjectUtil
    { header_ :: JavaHeader
    , nULL_PRIORITY_RUNNABLE :: IORef (PriorityRunnable.PriorityRunnable)
    }

instance JavaNull ThreadObjectUtil where
    javaNull = javaNullRecord "ThreadObjectUtil"

instance JavaEquals ThreadObjectUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThreadObjectUtil where
    (==) = jrecordEquals

instance JavaObjectClass ThreadObjectUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ThreadObjectUtil
newRecord_ = do
    header_ <- newJavaHeader
    nULL_PRIORITY_RUNNABLE <- newIORef javaNull
    let this = ThreadObjectUtil header_ nULL_PRIORITY_RUNNABLE
    jregisterLevel header_ this
    jregisterMethod header_ "notifyObject" (\() -> notifyObject_impl this)
    jregisterMethod header_ "waitObject" (\() -> waitObject_impl this)
    jregisterMethod header_ "waitObjectFor" (\() -> waitObjectFor_impl this)
    jregisterMethod header_ "processThread" (\() -> processThread_impl this)
    pure this

initFields_ :: ThreadObjectUtil -> IO ()
initFields_ this = do
    jset this.nULL_PRIORITY_RUNNABLE =<< (fmap (\value_ -> javaCast value_ :: PriorityRunnable.PriorityRunnable) (NullPriorityRunnable.new_))
    pure ()

new_ :: IO ThreadObjectUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ThreadObjectUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ThreadObjectUtil)
getInstance = do
        pure (ThreadObjectUtil.instance_)


notifyObject :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
notifyObject object_ a1 = jmethod object_ "notifyObject" (\() -> (notifyObject_impl (javaCast object_ :: ThreadObjectUtil))) () (jtoObject a1)

notifyObject_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
notifyObject_super object_ a1 = (notifyObject_impl (javaCast object_ :: ThreadObjectUtil)) (jtoObject a1)

notifyObject_impl :: ThreadObjectUtil -> JavaObject -> IO (())
notifyObject_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        pure ()


-- throws Exception
waitObject :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
waitObject object_ a1 = jmethod object_ "waitObject" (\() -> (waitObject_impl (javaCast object_ :: ThreadObjectUtil))) () (jtoObject a1)

waitObject_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
waitObject_super object_ a1 = (waitObject_impl (javaCast object_ :: ThreadObjectUtil)) (jtoObject a1)

waitObject_impl :: ThreadObjectUtil -> JavaObject -> IO (())
waitObject_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        pure ()


-- throws Exception
waitObjectFor :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int64 -> IO (())
waitObjectFor object_ a1 a2 = jmethod object_ "waitObjectFor" (\() -> (waitObjectFor_impl (javaCast object_ :: ThreadObjectUtil))) () (jtoObject a1) a2

waitObjectFor_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int64 -> IO (())
waitObjectFor_super object_ a1 a2 = (waitObjectFor_impl (javaCast object_ :: ThreadObjectUtil)) (jtoObject a1) a2

waitObjectFor_impl :: ThreadObjectUtil -> JavaObject -> Int64 -> IO (())
waitObjectFor_impl this anyTypeObject_ delay = do
        let anyType = jtoObject anyTypeObject_
        pure ()


processThread :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
processThread object_ a1 = jmethod object_ "processThread" (\() -> (processThread_impl (javaCast object_ :: ThreadObjectUtil))) () a1

processThread_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
processThread_super object_ a1 = (processThread_impl (javaCast object_ :: ThreadObjectUtil)) a1

processThread_impl :: ThreadObjectUtil -> Runnable.Runnable -> IO (())
processThread_impl this runnable = do
        Control.Monad.void (Runnable.run runnable)
        pure ()


