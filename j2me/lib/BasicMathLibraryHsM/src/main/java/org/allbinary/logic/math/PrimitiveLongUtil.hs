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
-- package org.allbinary.logic.math
module PrimitiveLongUtil where

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
import qualified PrimitiveLongSingleton -- same package or java.lang
import qualified MathUtil -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data PrimitiveLongUtil = PrimitiveLongUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , powerOfTen :: IORef (Int)
    , maxValue :: IORef (Int)
    , maxDigits :: IORef (Int)
    , charArray :: IORef (JavaArray (Char))
    , currentTotalDigits :: IORef (Int)
    , primitiveLongSingleton :: IORef (PrimitiveLongSingleton.PrimitiveLongSingleton)
    }

instance JavaNull PrimitiveLongUtil where
    javaNull = javaNullRecord "PrimitiveLongUtil"

instance JavaEquals PrimitiveLongUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PrimitiveLongUtil where
    (==) = jrecordEquals

instance JavaObjectClass PrimitiveLongUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PrimitiveLongUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    powerOfTen <- newIORef 0
    maxValue <- newIORef 0
    maxDigits <- newIORef 0
    charArray <- newIORef javaNull
    currentTotalDigits <- newIORef 0
    primitiveLongSingleton <- newIORef javaNull
    let this = PrimitiveLongUtil header_ logUtil powerOfTen maxValue maxDigits charArray currentTotalDigits primitiveLongSingleton
    jregisterLevel header_ this
    jregisterMethod header_ "getCharArray" (\() -> getCharArray_impl this)
    jregisterMethod header_ "setCurrentTotalDigits" (\() -> setCurrentTotalDigits_impl this)
    jregisterMethod header_ "getCurrentTotalDigits" (\() -> getCurrentTotalDigits_impl this)
    jregisterMethod header_ "getMaxDigits" (\() -> getMaxDigits_impl this)
    pure this

initFields_ :: PrimitiveLongUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.powerOfTen (0)
    jset this.maxValue (0)
    jset this.maxDigits (0)
    jset this.charArray (javaNull)
    jset this.currentTotalDigits (0)
    jset this.primitiveLongSingleton =<< (PrimitiveLongSingleton.getInstance)
    pure ()


createPowerOfTen :: Int -> IO (PrimitiveLongUtil)
createPowerOfTen powerOfTen = do
        primitiveLongUtil <- (new_2 powerOfTen (jget ((jio (NullUtil.getInstance))).nULL_OBJECT))
        when ((powerOfTen `rem` 10) /= 0) $ do
            logUtil <- (LogUtil.getInstance)
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) primitiveLongUtil (jget (commonStrings).cONSTRUCTOR) (JavaException "Exception" "Max must be power of 10"))
        pure (primitiveLongUtil)

new_2 :: (JavaObjectClass o2) => Int -> o2 -> IO PrimitiveLongUtil
new_2 powerOfTen unusedObject_ = do
    this <- newRecord_
    init_2 this powerOfTen unusedObject_
    pure this

init_2 :: (JavaObjectClass o2) => PrimitiveLongUtil -> Int -> o2 -> IO ()
init_2 this powerOfTen unusedObject_ = do
        let unused = jtoObject unusedObject_
        initFields_ this
        assignedValue <- (MathUtil.getTotalDigits ((jio (MathUtil.getInstance))) powerOfTen)
        jset (this).maxDigits (assignedValue)
        jset (this).powerOfTen (powerOfTen)
        jset (this).maxValue ((((powerOfTen * 10)) - 1))
        jset (this).charArray ((jnewArray ((jget (this).maxDigits)) '\0'))
        pure ()


getCharArray :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (Char))
getCharArray object_ a1 = jmethod object_ "getCharArray" (\() -> (getCharArray_impl (javaCast object_ :: PrimitiveLongUtil))) () a1

getCharArray_super :: (JavaObjectClass this_) => this_ -> Int -> IO (JavaArray (Char))
getCharArray_super object_ a1 = (getCharArray_impl (javaCast object_ :: PrimitiveLongUtil)) a1

getCharArray_impl :: PrimitiveLongUtil -> Int -> IO (JavaArray (Char))
getCharArray_impl this value = do
    javaCatchReturn $ do
        when (value < 10) $ do
            Control.Monad.void (PrimitiveLongUtil.setCurrentTotalDigits this 1)
            javaReturn ((jindex ((jget ((jget (this).primitiveLongSingleton)).nUMBER_CHAR_ARRAYS)) (value)))
        when (value > (jget (this).maxValue)) $ do
            Control.Monad.void (PrimitiveLongUtil.setCurrentTotalDigits this 3)
            javaReturn ((jget ((jget (this).primitiveLongSingleton)).uNK))
        index <- newIORef (0)
        div <- newIORef ((jget (this).powerOfTen))
        lastValue <- newIORef (0)
        fix $ \loop -> when ((jget div) >= 1) $ javaIteration (loop) $ do
            let digit = (((value - (jget lastValue))) `quot` (jget div))
            when ((digit >= 0) && (digit < 10)) $ do
                if ((digit == 0) && ((jget index) == 0)) then do
                    pure ()
                else do
                    jsetIndex ((jget (this).charArray)) ((jpostIncrement index (+ 1))) ((jindex ((jget ((jget (this).primitiveLongSingleton)).nUMBER_CHAR_ARRAY)) (digit)))
                jset lastValue (((jget lastValue) + (digit * (jget div))))
            jset div (((jget div) `quot` 10))
        Control.Monad.void (PrimitiveLongUtil.setCurrentTotalDigits this (jget index))
        pure ((jget (this).charArray))


setCurrentTotalDigits :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setCurrentTotalDigits object_ a1 = jmethod object_ "setCurrentTotalDigits" (\() -> (setCurrentTotalDigits_impl (javaCast object_ :: PrimitiveLongUtil))) () a1

setCurrentTotalDigits_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setCurrentTotalDigits_super object_ a1 = (setCurrentTotalDigits_impl (javaCast object_ :: PrimitiveLongUtil)) a1

setCurrentTotalDigits_impl :: PrimitiveLongUtil -> Int -> IO (())
setCurrentTotalDigits_impl this currentTotalDigits = do
        jset (this).currentTotalDigits (currentTotalDigits)
        pure ()


getCurrentTotalDigits :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrentTotalDigits object_ = jmethod object_ "getCurrentTotalDigits" (\() -> (getCurrentTotalDigits_impl (javaCast object_ :: PrimitiveLongUtil))) ()

getCurrentTotalDigits_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrentTotalDigits_super object_ = (getCurrentTotalDigits_impl (javaCast object_ :: PrimitiveLongUtil))

getCurrentTotalDigits_impl :: PrimitiveLongUtil -> IO (Int)
getCurrentTotalDigits_impl this = do
        pure ((jget (this).currentTotalDigits))


getMaxDigits :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxDigits object_ = jmethod object_ "getMaxDigits" (\() -> (getMaxDigits_impl (javaCast object_ :: PrimitiveLongUtil))) ()

getMaxDigits_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxDigits_super object_ = (getMaxDigits_impl (javaCast object_ :: PrimitiveLongUtil))

getMaxDigits_impl :: PrimitiveLongUtil -> IO (Int)
getMaxDigits_impl this = do
        pure ((jget (this).maxDigits))


