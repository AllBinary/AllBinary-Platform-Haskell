{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles.shader
module OpenGLObject3dProcessor where

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
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data OpenGLObject3dProcessor = OpenGLObject3dProcessor
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull OpenGLObject3dProcessor where
    javaNull = javaNullRecord "OpenGLObject3dProcessor"

instance JavaEquals OpenGLObject3dProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLObject3dProcessor where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLObject3dProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLObject3dProcessor
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    let this = OpenGLObject3dProcessor header_ commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: OpenGLObject3dProcessor -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO OpenGLObject3dProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLObject3dProcessor -> IO ()
init_ this = do
    initFields_ this


process :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> GL10.GL10 -> o2 -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: OpenGLObject3dProcessor))) () a1 (jtoObject a2)

process_super :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> GL10.GL10 -> o2 -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: OpenGLObject3dProcessor)) a1 (jtoObject a2)

process_impl :: OpenGLObject3dProcessor -> GL10.GL10 -> JavaObject -> IO (())
process_impl this gl object3dObject_ = do
        let object3d = jtoObject object3dObject_
        pure ()


-- Java overload of process with a different parameter count: give it a different name
process :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> GL10.GL10 -> o2 -> Int -> IO (())
process object_ a1 a2 a3 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: OpenGLObject3dProcessor))) () a1 (jtoObject a2) a3

process_super :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> GL10.GL10 -> o2 -> Int -> IO (())
process_super object_ a1 a2 a3 = (process_impl (javaCast object_ :: OpenGLObject3dProcessor)) a1 (jtoObject a2) a3

process_impl :: OpenGLObject3dProcessor -> GL10.GL10 -> JavaObject -> Int -> IO (())
process_impl this gl object3dObject_ index = do
        let object3d = jtoObject object3dObject_
        pure ()


