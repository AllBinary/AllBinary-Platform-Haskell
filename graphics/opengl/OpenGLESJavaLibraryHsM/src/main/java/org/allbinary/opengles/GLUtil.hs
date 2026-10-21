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
-- package org.allbinary.opengles
module GLUtil where

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
import qualified Buffer -- java.nio.Buffer
import qualified ByteBuffer -- java.nio.ByteBuffer
import qualified ByteOrder -- java.nio.ByteOrder
import qualified FloatBuffer -- java.nio.FloatBuffer

data GLUtil = GLUtil
    { header_ :: JavaHeader
    , bYTES_PER_FLOAT :: IORef (Int)
    , nULL_FLOAT_BUFFER :: IORef (FloatBuffer.FloatBuffer)
    }

instance JavaNull GLUtil where
    javaNull = javaNullRecord "GLUtil"

instance JavaEquals GLUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GLUtil where
    (==) = jrecordEquals

instance JavaObjectClass GLUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GLUtil
newRecord_ = do
    header_ <- newJavaHeader
    bYTES_PER_FLOAT <- newIORef 0
    nULL_FLOAT_BUFFER <- newIORef javaNull
    let this = GLUtil header_ bYTES_PER_FLOAT nULL_FLOAT_BUFFER
    jregisterLevel header_ this
    jregisterMethod header_ "makeFloatBuffer3" (\() -> makeFloatBuffer3_impl this)
    jregisterMethod header_ "makeFloatBuffer4" (\() -> makeFloatBuffer4_impl this)
    jregisterMethod header_ "makeFloatBuffer" (\() -> makeFloatBuffer_impl this)
    jregisterMethod header_ "position" (\() -> position_impl this)
    jregisterMethod header_ "rotateUVs" (\() -> rotateUVs_impl this)
    pure this

initFields_ :: GLUtil -> IO ()
initFields_ this = do
    jset this.bYTES_PER_FLOAT (4)
    jset this.nULL_FLOAT_BUFFER =<< (ByteBuffer.asFloatBuffer ((jio (ByteBuffer.allocateDirect 0))))
    pure ()

new_ :: IO GLUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GLUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GLUtil)
getInstance = do
        pure (GLUtil.instance_)


makeFloatBuffer3 :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (FloatBuffer.FloatBuffer)
makeFloatBuffer3 object_ a1 a2 a3 = jmethod object_ "makeFloatBuffer3" (\() -> (makeFloatBuffer3_impl (javaCast object_ :: GLUtil))) () a1 a2 a3

makeFloatBuffer3_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> IO (FloatBuffer.FloatBuffer)
makeFloatBuffer3_super object_ a1 a2 a3 = (makeFloatBuffer3_impl (javaCast object_ :: GLUtil)) a1 a2 a3

makeFloatBuffer3_impl :: GLUtil -> Float -> Float -> Float -> IO (FloatBuffer.FloatBuffer)
makeFloatBuffer3_impl this p_a p_b p_c = do
        b <- (ByteBuffer.allocateDirect (3 * (jget (this).bYTES_PER_FLOAT)))
        Control.Monad.void (ByteBuffer.order b (jio (ByteOrder.nativeOrder)))
        buffer <- (ByteBuffer.asFloatBuffer b)
        Control.Monad.void (FloatBuffer.put buffer p_a)
        Control.Monad.void (FloatBuffer.put buffer p_b)
        Control.Monad.void (FloatBuffer.put buffer p_c)
        Control.Monad.void (GLUtil.position this buffer 0)
        pure (buffer)


makeFloatBuffer4 :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (FloatBuffer.FloatBuffer)
makeFloatBuffer4 object_ a1 a2 a3 a4 = jmethod object_ "makeFloatBuffer4" (\() -> (makeFloatBuffer4_impl (javaCast object_ :: GLUtil))) () a1 a2 a3 a4

makeFloatBuffer4_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> Float -> Float -> IO (FloatBuffer.FloatBuffer)
makeFloatBuffer4_super object_ a1 a2 a3 a4 = (makeFloatBuffer4_impl (javaCast object_ :: GLUtil)) a1 a2 a3 a4

makeFloatBuffer4_impl :: GLUtil -> Float -> Float -> Float -> Float -> IO (FloatBuffer.FloatBuffer)
makeFloatBuffer4_impl this p_a p_b p_c p_d = do
        b <- (ByteBuffer.allocateDirect (4 * (jget (this).bYTES_PER_FLOAT)))
        Control.Monad.void (ByteBuffer.order b (jio (ByteOrder.nativeOrder)))
        buffer <- (ByteBuffer.asFloatBuffer b)
        Control.Monad.void (FloatBuffer.put buffer p_a)
        Control.Monad.void (FloatBuffer.put buffer p_b)
        Control.Monad.void (FloatBuffer.put buffer p_c)
        Control.Monad.void (FloatBuffer.put buffer p_d)
        Control.Monad.void (GLUtil.position this buffer 0)
        pure (buffer)


makeFloatBuffer :: (JavaObjectClass this_) => this_ -> ByteBuffer.ByteBuffer -> IO (FloatBuffer.FloatBuffer)
makeFloatBuffer object_ a1 = jmethod object_ "makeFloatBuffer" (\() -> (makeFloatBuffer_impl (javaCast object_ :: GLUtil))) () a1

makeFloatBuffer_super :: (JavaObjectClass this_) => this_ -> ByteBuffer.ByteBuffer -> IO (FloatBuffer.FloatBuffer)
makeFloatBuffer_super object_ a1 = (makeFloatBuffer_impl (javaCast object_ :: GLUtil)) a1

makeFloatBuffer_impl :: GLUtil -> ByteBuffer.ByteBuffer -> IO (FloatBuffer.FloatBuffer)
makeFloatBuffer_impl this byteBuffer = do
        b <- (ByteBuffer.allocateDirect ((jio (ByteBuffer.limit byteBuffer)) * (jget (this).bYTES_PER_FLOAT)))
        Control.Monad.void (ByteBuffer.order b (jio (ByteOrder.nativeOrder)))
        buffer <- (ByteBuffer.asFloatBuffer b)
        unsigned <- newIORef (0)
        v <- newIORef (0.0)
        fix $ \loop -> when (jio (ByteBuffer.hasRemaining byteBuffer)) $ javaIteration (loop) $ do
            jset unsigned ((((Prelude.fromInteger (jnumericInteger (jio (ByteBuffer.get byteBuffer))))) Data.Bits..&. 0xFF))
            jset v ((((Prelude.fromIntegral (jget unsigned))) / 255.0))
            Control.Monad.void (FloatBuffer.put buffer (jget v))
        Control.Monad.void (GLUtil.position this buffer 0)
        pure (buffer)


position :: (JavaObjectClass this_) => this_ -> Buffer.Buffer -> Int -> IO (Buffer.Buffer)
position object_ a1 a2 = jmethod object_ "position" (\() -> (position_impl (javaCast object_ :: GLUtil))) () a1 a2

position_super :: (JavaObjectClass this_) => this_ -> Buffer.Buffer -> Int -> IO (Buffer.Buffer)
position_super object_ a1 a2 = (position_impl (javaCast object_ :: GLUtil)) a1 a2

position_impl :: GLUtil -> Buffer.Buffer -> Int -> IO (Buffer.Buffer)
position_impl this buffer newPosition = do
        (FloatBuffer.position buffer newPosition)


rotateUVs :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Float -> Float -> Float -> IO (())
rotateUVs object_ a1 a2 a3 a4 = jmethod object_ "rotateUVs" (\() -> (rotateUVs_impl (javaCast object_ :: GLUtil))) () a1 a2 a3 a4

rotateUVs_super :: (JavaObjectClass this_) => this_ -> JavaArray (Float) -> Float -> Float -> Float -> IO (())
rotateUVs_super object_ a1 a2 a3 a4 = (rotateUVs_impl (javaCast object_ :: GLUtil)) a1 a2 a3 a4

rotateUVs_impl :: GLUtil -> JavaArray (Float) -> Float -> Float -> Float -> IO (())
rotateUVs_impl this uvs angleDegrees pivotU pivotV = do
        let angleRad = ((Prelude.realToFrac angleDegrees) * pi / 180)
        let cosA = (Prelude.cos angleRad)
        let sinA = (Prelude.sin angleRad)
        forM_ [0, 0 + (2) .. (jlength uvs) - 1] $ \i -> javaIteration (pure ()) $ do
            let u = (jindex uvs (i))
            let v = (jindex uvs ((i + 1)))
            let du = (u - pivotU)
            let dv = (v - pivotV)
            let ru = ((Prelude.realToFrac ((((Prelude.realToFrac du) * cosA) - ((Prelude.realToFrac dv) * sinA)))) + pivotU)
            let rv = ((Prelude.realToFrac ((((Prelude.realToFrac du) * sinA) + ((Prelude.realToFrac dv) * cosA)))) + pivotV)
            jsetIndex uvs (i) (ru)
            jsetIndex uvs ((i + 1)) (rv)
        pure ()


