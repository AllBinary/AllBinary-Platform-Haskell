{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.platform.opengl
module OpenGLGLUUtils where

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
import qualified ByteBuffer -- java.nio.ByteBuffer
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified OpenGLBitmap -- org.allbinary.graphics.OpenGLBitmap
import qualified OpenGLESImage -- org.allbinary.image.opengles.OpenGLESImage

data OpenGLGLUUtils = OpenGLGLUUtils
    { header_ :: JavaHeader
    }

instance JavaNull OpenGLGLUUtils where
    javaNull = javaNullRecord "OpenGLGLUUtils"

instance JavaEquals OpenGLGLUUtils where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLGLUUtils where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLGLUUtils where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLGLUUtils
newRecord_ = do
    header_ <- newJavaHeader
    let this = OpenGLGLUUtils header_
    jregisterLevel header_ this
    jregisterMethod header_ "makeByteBuffer" (\() -> makeByteBuffer_impl this)
    jregisterMethod header_ "texImage2D_overload1" (\() -> texImage2D_overload1_impl this)
    jregisterMethod header_ "texImage2D_overload2" (\() -> texImage2D_overload2_impl this)
    pure this

initFields_ :: OpenGLGLUUtils -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLGLUUtils
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLGLUUtils -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLGLUUtils)
getInstance = do
        pure (OpenGLGLUUtils.instance_)


makeByteBuffer :: (JavaObjectClass this_) => this_ -> OpenGLBitmap.OpenGLBitmap -> Bool -> IO (ByteBuffer.ByteBuffer)
makeByteBuffer object_ a1 a2 = jmethod object_ "makeByteBuffer" (\() -> (makeByteBuffer_impl (javaCast object_ :: OpenGLGLUUtils))) () a1 a2

makeByteBuffer_super :: (JavaObjectClass this_) => this_ -> OpenGLBitmap.OpenGLBitmap -> Bool -> IO (ByteBuffer.ByteBuffer)
makeByteBuffer_super object_ a1 a2 = (makeByteBuffer_impl (javaCast object_ :: OpenGLGLUUtils)) a1 a2

makeByteBuffer_impl :: OpenGLGLUUtils -> OpenGLBitmap.OpenGLBitmap -> Bool -> IO (ByteBuffer.ByteBuffer)
makeByteBuffer_impl this bmp flip = do
        javaThrow ((JavaException "RuntimeException" ""))


-- Java overloads of texImage2D: calls the overload for the types of the arguments
texImage2D :: (JavaObjectClass this_, JavaObjectClass o6) => this_ -> GL10.GL10 -> String -> Int -> Int -> Bool -> o6 -> Int -> Bool -> IO (())
texImage2D this a1 a2 a3 a4 a5 a6 a7 a8
    | jisInstanceOf a6 (javaNull :: OpenGLESImage.OpenGLESImage) = texImage2D_overload1 this a1 a2 a3 a4 a5 (javaCast a6 :: OpenGLESImage.OpenGLESImage) a7 a8
    | jisInstanceOf a6 (javaNull :: OpenGLBitmap.OpenGLBitmap) = texImage2D_overload2 this a1 a2 a3 a4 a5 (javaCast a6 :: OpenGLBitmap.OpenGLBitmap) a7 a8
    | otherwise = texImage2D_overload2 this a1 a2 a3 a4 a5 (javaCast a6 :: OpenGLBitmap.OpenGLBitmap) a7 a8

texImage2D_overload1 :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> String -> Int -> Int -> Bool -> OpenGLESImage.OpenGLESImage -> Int -> Bool -> IO (())
texImage2D_overload1 object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "texImage2D_overload1" (\() -> (texImage2D_overload1_impl (javaCast object_ :: OpenGLGLUUtils))) () a1 a2 a3 a4 a5 a6 a7 a8

texImage2D_overload1_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> String -> Int -> Int -> Bool -> OpenGLESImage.OpenGLESImage -> Int -> Bool -> IO (())
texImage2D_overload1_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (texImage2D_overload1_impl (javaCast object_ :: OpenGLGLUUtils)) a1 a2 a3 a4 a5 a6 a7 a8

texImage2D_overload1_impl :: OpenGLGLUUtils -> GL10.GL10 -> String -> Int -> Int -> Bool -> OpenGLESImage.OpenGLESImage -> Int -> Bool -> IO (())
texImage2D_overload1_impl this gl glVersion target level generateMipMap openGLESImage border flip = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


texImage2D_overload2 :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> String -> Int -> Int -> Bool -> OpenGLBitmap.OpenGLBitmap -> Int -> Bool -> IO (())
texImage2D_overload2 object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "texImage2D_overload2" (\() -> (texImage2D_overload2_impl (javaCast object_ :: OpenGLGLUUtils))) () a1 a2 a3 a4 a5 a6 a7 a8

texImage2D_overload2_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> String -> Int -> Int -> Bool -> OpenGLBitmap.OpenGLBitmap -> Int -> Bool -> IO (())
texImage2D_overload2_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (texImage2D_overload2_impl (javaCast object_ :: OpenGLGLUUtils)) a1 a2 a3 a4 a5 a6 a7 a8

texImage2D_overload2_impl :: OpenGLGLUUtils -> GL10.GL10 -> String -> Int -> Int -> Bool -> OpenGLBitmap.OpenGLBitmap -> Int -> Bool -> IO (())
texImage2D_overload2_impl this gl glVersion target level generateMipMap bitmap border flip = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


