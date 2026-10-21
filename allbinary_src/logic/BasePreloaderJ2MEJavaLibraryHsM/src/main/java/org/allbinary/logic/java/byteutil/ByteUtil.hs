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
-- package org.allbinary.logic.java.byteutil
module ByteUtil where

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

data ByteUtil = ByteUtil
    { header_ :: JavaHeader
    }

instance JavaNull ByteUtil where
    javaNull = javaNullRecord "ByteUtil"

instance JavaEquals ByteUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ByteUtil where
    (==) = jrecordEquals

instance JavaObjectClass ByteUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ByteUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ByteUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "xor" (\() -> xor_impl this)
    jregisterMethod header_ "not" (\() -> not_impl this)
    jregisterMethod header_ "xorByte" (\() -> xorByte_impl this)
    jregisterMethod header_ "compare" (\() -> compare_impl this)
    jregisterMethod header_ "compareWithStats" (\() -> compareWithStats_impl this)
    pure this

initFields_ :: ByteUtil -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (ByteUtil)
getInstance = do
        pure (ByteUtil.instance_)

new_ :: IO ByteUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ByteUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


xor :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> Int8 -> IO (JavaArray (Int8))
xor object_ a1 a2 = jmethod object_ "xor" (\() -> (xor_impl (javaCast object_ :: ByteUtil))) () a1 a2

xor_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> Int8 -> IO (JavaArray (Int8))
xor_super object_ a1 a2 = (xor_impl (javaCast object_ :: ByteUtil)) a1 a2

xor_impl :: ByteUtil -> JavaArray (Int8) -> Int8 -> IO (JavaArray (Int8))
xor_impl this array mask = do
        let bytes = (jnewArray ((jlength array)) 0)
        let size = (jlength array)
        index <- newIORef (0)
        currentByte <- newIORef (0)
        fix $ \loop -> when ((jget index) < size) $ javaIteration (loop) $ do
            jset currentByte ((jindex array ((jget index))))
            jsetIndex bytes ((jget index)) ((Prelude.fromIntegral ((((Prelude.fromIntegral (jget currentByte)) `Data.Bits.xor` (Prelude.fromIntegral mask)) :: Int))))
            jset index ((jget index) + 1)
        pure (bytes)


not :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
not object_ a1 = jmethod object_ "not" (\() -> (not_impl (javaCast object_ :: ByteUtil))) () a1

not_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> IO (JavaArray (Int8))
not_super object_ a1 = (not_impl (javaCast object_ :: ByteUtil)) a1

not_impl :: ByteUtil -> JavaArray (Int8) -> IO (JavaArray (Int8))
not_impl this array = do
        let bytes = (jnewArray ((jlength array)) 0)
        let size = (jlength array)
        index <- newIORef (0)
        fix $ \loop -> when ((jget index) < size) $ javaIteration (loop) $ do
            jsetIndex bytes ((jget index)) ((Prelude.fromIntegral (Data.Bits.complement (jindex array ((jget index))))))
            jset index ((jget index) + 1)
        pure (bytes)


xorByte :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> Int -> IO (JavaArray (Int8))
xorByte object_ a1 a2 = jmethod object_ "xorByte" (\() -> (xorByte_impl (javaCast object_ :: ByteUtil))) () a1 a2

xorByte_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> Int -> IO (JavaArray (Int8))
xorByte_super object_ a1 a2 = (xorByte_impl (javaCast object_ :: ByteUtil)) a1 a2

xorByte_impl :: ByteUtil -> JavaArray (Int8) -> Int -> IO (JavaArray (Int8))
xorByte_impl this array index = do
        mask <- newIORef (0)
        when (index == 0) $ do
            jset mask (1)
        when (index == 1) $ do
            jset mask (2)
        when (index == 2) $ do
            jset mask (4)
        when (index == 3) $ do
            jset mask (8)
        when (index == 4) $ do
            jset mask (16)
        when (index == 5) $ do
            jset mask (32)
        when (index == 6) $ do
            jset mask (64)
        when (index == 7) $ do
            jset mask ((Prelude.fromIntegral ((Prelude.negate 127) :: Int)))
        (ByteUtil.xor this array (jget mask))


compare :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> JavaArray (Int8) -> IO (Bool)
compare object_ a1 a2 = jmethod object_ "compare" (\() -> (compare_impl (javaCast object_ :: ByteUtil))) () a1 a2

compare_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> JavaArray (Int8) -> IO (Bool)
compare_super object_ a1 a2 = (compare_impl (javaCast object_ :: ByteUtil)) a1 a2

compare_impl :: ByteUtil -> JavaArray (Int8) -> JavaArray (Int8) -> IO (Bool)
compare_impl this newByteArray oldByteArray = do
    javaCatchReturn $ do
        if ((jlength newByteArray) /= (jlength oldByteArray)) then do
            javaReturn (False)
        else do
            pure ()
        let size = (jlength newByteArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jindex newByteArray (index)) /= (jindex oldByteArray (index))) $ do
                javaReturn (False)
        pure (True)


compareWithStats :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> Int -> JavaArray (Int8) -> JavaArray (Int) -> IO (Bool)
compareWithStats object_ a1 a2 a3 a4 = jmethod object_ "compareWithStats" (\() -> (compareWithStats_impl (javaCast object_ :: ByteUtil))) () a1 a2 a3 a4

compareWithStats_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> Int -> JavaArray (Int8) -> JavaArray (Int) -> IO (Bool)
compareWithStats_super object_ a1 a2 a3 a4 = (compareWithStats_impl (javaCast object_ :: ByteUtil)) a1 a2 a3 a4

compareWithStats_impl :: ByteUtil -> JavaArray (Int8) -> Int -> JavaArray (Int8) -> JavaArray (Int) -> IO (Bool)
compareWithStats_impl this newByteArray newSize oldByteArray stats = do
    javaCatchReturn $ do
        if (newSize /= (jlength oldByteArray)) then do
            jsetIndex stats (0) ((Prelude.negate 1))
            jsetIndex stats (2) (newSize)
            jsetIndex stats (3) ((jlength oldByteArray))
            javaReturn (False)
        else do
            jsetIndex stats (0) (newSize)
        jsetIndex stats (1) (0)
        let size = newSize
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jindex newByteArray (index)) /= (jindex oldByteArray (index))) $ do
                javaReturn (False)
            jsetIndex stats (1) ((jindex stats (1)) + 1)
        pure (True)


