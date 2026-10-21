{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.platform.opengl
module OpenGLGLU where

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
import qualified GL10 -- javax.microedition.khronos.opengles.GL10

data OpenGLGLU = OpenGLGLU
    { header_ :: JavaHeader
    }

instance JavaNull OpenGLGLU where
    javaNull = javaNullRecord "OpenGLGLU"

instance JavaEquals OpenGLGLU where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLGLU where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLGLU where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLGLU
newRecord_ = do
    header_ <- newJavaHeader
    let this = OpenGLGLU header_
    jregisterLevel header_ this
    jregisterMethod header_ "gluLookAt" (\() -> gluLookAt_impl this)
    jregisterMethod header_ "gluProject" (\() -> gluProject_impl this)
    jregisterMethod header_ "gluUnProject" (\() -> gluUnProject_impl this)
    jregisterMethod header_ "glFrustumf" (\() -> glFrustumf_impl this)
    pure this

initFields_ :: OpenGLGLU -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLGLU
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLGLU -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLGLU)
getInstance = do
        pure (OpenGLGLU.instance_)


gluLookAt :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> Float -> Float -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
gluLookAt object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = jmethod object_ "gluLookAt" (\() -> (gluLookAt_impl (javaCast object_ :: OpenGLGLU))) () a1 a2 a3 a4 a5 a6 a7 a8 a9 a10

gluLookAt_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> Float -> Float -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
gluLookAt_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = (gluLookAt_impl (javaCast object_ :: OpenGLGLU)) a1 a2 a3 a4 a5 a6 a7 a8 a9 a10

gluLookAt_impl :: OpenGLGLU -> GL10.GL10 -> Float -> Float -> Float -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
gluLookAt_impl this gl eyeX eyeY eyeZ centerX centerY centerZ upX upY upZ = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


gluProject :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> Float -> Float -> JavaArray (Float) -> Int -> JavaArray (Float) -> Int -> JavaArray (Int) -> Int -> JavaArray (Float) -> Int -> IO (Int)
gluProject object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 = jmethod object_ "gluProject" (\() -> (gluProject_impl (javaCast object_ :: OpenGLGLU))) () a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12

gluProject_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> Float -> Float -> JavaArray (Float) -> Int -> JavaArray (Float) -> Int -> JavaArray (Int) -> Int -> JavaArray (Float) -> Int -> IO (Int)
gluProject_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 = (gluProject_impl (javaCast object_ :: OpenGLGLU)) a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12

gluProject_impl :: OpenGLGLU -> GL10.GL10 -> Float -> Float -> Float -> JavaArray (Float) -> Int -> JavaArray (Float) -> Int -> JavaArray (Int) -> Int -> JavaArray (Float) -> Int -> IO (Int)
gluProject_impl this gl objX objY objZ model modelOffset project projectOffset view viewOffset win winOffset = do
        javaThrow ((JavaException "RuntimeException" ""))


gluUnProject :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> Float -> Float -> JavaArray (Float) -> Int -> JavaArray (Float) -> Int -> JavaArray (Int) -> Int -> JavaArray (Float) -> Int -> IO (Int)
gluUnProject object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 = jmethod object_ "gluUnProject" (\() -> (gluUnProject_impl (javaCast object_ :: OpenGLGLU))) () a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12

gluUnProject_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> Float -> Float -> JavaArray (Float) -> Int -> JavaArray (Float) -> Int -> JavaArray (Int) -> Int -> JavaArray (Float) -> Int -> IO (Int)
gluUnProject_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 = (gluUnProject_impl (javaCast object_ :: OpenGLGLU)) a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12

gluUnProject_impl :: OpenGLGLU -> GL10.GL10 -> Float -> Float -> Float -> JavaArray (Float) -> Int -> JavaArray (Float) -> Int -> JavaArray (Int) -> Int -> JavaArray (Float) -> Int -> IO (Int)
gluUnProject_impl this gl winX winY winZ model modelOffset project projectOffset view viewOffset obj objOffset = do
        javaThrow ((JavaException "RuntimeException" ""))


glFrustumf :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glFrustumf object_ a1 a2 a3 a4 a5 a6 a7 = jmethod object_ "glFrustumf" (\() -> (glFrustumf_impl (javaCast object_ :: OpenGLGLU))) () a1 a2 a3 a4 a5 a6 a7

glFrustumf_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glFrustumf_super object_ a1 a2 a3 a4 a5 a6 a7 = (glFrustumf_impl (javaCast object_ :: OpenGLGLU)) a1 a2 a3 a4 a5 a6 a7

glFrustumf_impl :: OpenGLGLU -> GL10.GL10 -> Float -> Float -> Float -> Float -> Float -> Float -> IO (())
glFrustumf_impl this gl lt rt btm top zNear zFar = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


