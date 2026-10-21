{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.image.opengles
module OpenGLSurfaceChangedInterface where

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
import qualified GL -- javax.microedition.khronos.opengles.GL

-- Java interface: the classes that implement it have these functions
data OpenGLSurfaceChangedInterface = OpenGLSurfaceChangedInterface
    { header_ :: JavaHeader
    }

instance JavaNull OpenGLSurfaceChangedInterface where
    javaNull = javaNullRecord "OpenGLSurfaceChangedInterface"

instance JavaEquals OpenGLSurfaceChangedInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLSurfaceChangedInterface where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLSurfaceChangedInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> OpenGLSurfaceChangedInterface
fromHeader_ header = OpenGLSurfaceChangedInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (OpenGLSurfaceChangedInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
set :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: OpenGLSurfaceChangedInterface))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: OpenGLSurfaceChangedInterface)) a1

set_impl :: OpenGLSurfaceChangedInterface -> GL.GL -> IO (())
set_impl this gl = javaAbstractMethod "set"


