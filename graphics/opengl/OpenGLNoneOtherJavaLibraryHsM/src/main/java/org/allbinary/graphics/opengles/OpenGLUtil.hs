{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles
module OpenGLUtil where

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
import qualified Runnable -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image

data OpenGLUtil = OpenGLUtil
    { header_ :: JavaHeader
    }

instance JavaNull OpenGLUtil where
    javaNull = javaNullRecord "OpenGLUtil"

instance JavaEquals OpenGLUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLUtil where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = OpenGLUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "addImage" (\() -> addImage_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "addRunnable" (\() -> addRunnable_impl this)
    pure this

initFields_ :: OpenGLUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLUtil)
getInstance = do
        pure (OpenGLUtil.instance_)


addImage :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Image.Image)
addImage object_ a1 = jmethod object_ "addImage" (\() -> (addImage_impl (javaCast object_ :: OpenGLUtil))) () a1

addImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Image.Image)
addImage_super object_ a1 = (addImage_impl (javaCast object_ :: OpenGLUtil)) a1

addImage_impl :: OpenGLUtil -> Image.Image -> IO (Image.Image)
addImage_impl this image = do
        pure (image)


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: OpenGLUtil))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: OpenGLUtil))

clear_impl :: OpenGLUtil -> IO (())
clear_impl this = do
        pure ()


addRunnable :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
addRunnable object_ a1 = jmethod object_ "addRunnable" (\() -> (addRunnable_impl (javaCast object_ :: OpenGLUtil))) () a1

addRunnable_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
addRunnable_super object_ a1 = (addRunnable_impl (javaCast object_ :: OpenGLUtil)) a1

addRunnable_impl :: OpenGLUtil -> Runnable.Runnable -> IO (())
addRunnable_impl this runnable = do
        pure ()


