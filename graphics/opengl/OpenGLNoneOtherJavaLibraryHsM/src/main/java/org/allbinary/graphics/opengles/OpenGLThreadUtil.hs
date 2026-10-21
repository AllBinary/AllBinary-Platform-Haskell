{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles
module OpenGLThreadUtil where

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

data OpenGLThreadUtil = OpenGLThreadUtil
    { header_ :: JavaHeader
    }

instance JavaNull OpenGLThreadUtil where
    javaNull = javaNullRecord "OpenGLThreadUtil"

instance JavaEquals OpenGLThreadUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLThreadUtil where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLThreadUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLThreadUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = OpenGLThreadUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "onPause" (\() -> onPause_impl this)
    jregisterMethod header_ "onResume" (\() -> onResume_impl this)
    pure this

initFields_ :: OpenGLThreadUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLThreadUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLThreadUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLThreadUtil)
getInstance = do
        pure (OpenGLThreadUtil.instance_)


set :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: OpenGLThreadUtil))) () (jtoObject a1)

set_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: OpenGLThreadUtil)) (jtoObject a1)

set_impl :: OpenGLThreadUtil -> JavaObject -> IO (())
set_impl this glSurfaceViewObject_ = do
        let glSurfaceView = jtoObject glSurfaceViewObject_
        pure ()


onPause :: (JavaObjectClass this_) => this_ -> IO (())
onPause object_ = jmethod object_ "onPause" (\() -> (onPause_impl (javaCast object_ :: OpenGLThreadUtil))) ()

onPause_super :: (JavaObjectClass this_) => this_ -> IO (())
onPause_super object_ = (onPause_impl (javaCast object_ :: OpenGLThreadUtil))

onPause_impl :: OpenGLThreadUtil -> IO (())
onPause_impl this = do
        pure ()


onResume :: (JavaObjectClass this_) => this_ -> IO (())
onResume object_ = jmethod object_ "onResume" (\() -> (onResume_impl (javaCast object_ :: OpenGLThreadUtil))) ()

onResume_super :: (JavaObjectClass this_) => this_ -> IO (())
onResume_super object_ = (onResume_impl (javaCast object_ :: OpenGLThreadUtil))

onResume_impl :: OpenGLThreadUtil -> IO (())
onResume_impl this = do
        pure ()


