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
-- package org.allbinary.logic.util.event
module AllBinaryEventObject where

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
import qualified JsType -- jsinterop.annotations.JsType
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsConstructor -- jsinterop.annotations.JsConstructor
import qualified JsProperty -- jsinterop.annotations.JsProperty

data AllBinaryEventObject = AllBinaryEventObject
    { header_ :: JavaHeader
    , source :: IORef (Any.Any)
    }

instance JavaNull AllBinaryEventObject where
    javaNull = javaNullRecord "AllBinaryEventObject"

instance JavaEquals AllBinaryEventObject where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryEventObject where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryEventObject where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_EVENT #-}
nULL_EVENT = unsafePerformIO ((new_1 (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AllBinaryEventObject
newRecord_ = do
    header_ <- newJavaHeader
    source <- newIORef javaNull
    let this = AllBinaryEventObject header_ source
    jregisterLevel header_ this
    jregisterMethod header_ "getSource" (\() -> getSource_impl this)
    jregisterMethod header_ "setSource" (\() -> setSource_impl this)
    pure this

initFields_ :: AllBinaryEventObject -> IO ()
initFields_ this = do
    jset this.source (javaNull)
    pure ()

new_1 :: (JavaObjectClass o1) => o1 -> IO AllBinaryEventObject
new_1 anyTypeObject_ = do
    this <- newRecord_
    init_1 this anyTypeObject_
    pure this

init_1 :: (JavaObjectClass o1) => AllBinaryEventObject -> o1 -> IO ()
init_1 this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        initFields_ this
        jset (this).source (anyType)
        pure ()


getSource :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getSource object_ = jmethod object_ "getSource" (\() -> (getSource_impl (javaCast object_ :: AllBinaryEventObject))) ()

getSource_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getSource_super object_ = (getSource_impl (javaCast object_ :: AllBinaryEventObject))

getSource_impl :: AllBinaryEventObject -> IO (Any.Any)
getSource_impl this = do
        pure ((jtoObject (jget (this).source)))


setSource :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setSource object_ a1 = jmethod object_ "setSource" (\() -> (setSource_impl (javaCast object_ :: AllBinaryEventObject))) () (jtoObject a1)

setSource_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
setSource_super object_ a1 = (setSource_impl (javaCast object_ :: AllBinaryEventObject)) (jtoObject a1)

setSource_impl :: AllBinaryEventObject -> JavaObject -> IO (())
setSource_impl this sourceObject_ = do
        let source = jtoObject sourceObject_
        jset (this).source (source)
        pure ()


