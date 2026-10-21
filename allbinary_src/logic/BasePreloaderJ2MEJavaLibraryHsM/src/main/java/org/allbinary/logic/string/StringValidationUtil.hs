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
-- package org.allbinary.logic.string
module StringValidationUtil where

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
import qualified StringUtil -- same package or java.lang
import qualified TsUtil -- org.allbinary.TsUtil

data StringValidationUtil = StringValidationUtil
    { header_ :: JavaHeader
    , stringUtil :: IORef (StringUtil.StringUtil)
    , tsUtil :: IORef (TsUtil.TsUtil)
    }

instance JavaNull StringValidationUtil where
    javaNull = javaNullRecord "StringValidationUtil"

instance JavaEquals StringValidationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StringValidationUtil where
    (==) = jrecordEquals

instance JavaObjectClass StringValidationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StringValidationUtil
newRecord_ = do
    header_ <- newJavaHeader
    stringUtil <- newIORef javaNull
    tsUtil <- newIORef javaNull
    let this = StringValidationUtil header_ stringUtil tsUtil
    jregisterLevel header_ this
    jregisterMethod header_ "containsSpaces" (\() -> containsSpaces_impl this)
    jregisterMethod header_ "isNumber" (\() -> isNumber_impl this)
    jregisterMethod header_ "isNumberFromChar" (\() -> isNumberFromChar_impl this)
    jregisterMethod header_ "isValidRequired" (\() -> isValidRequired_impl this)
    jregisterMethod header_ "isValidRequiredNumber" (\() -> isValidRequiredNumber_impl this)
    jregisterMethod header_ "isValidNotRequired" (\() -> isValidNotRequired_impl this)
    jregisterMethod header_ "isValidNotRequiredNumber" (\() -> isValidNotRequiredNumber_impl this)
    jregisterMethod header_ "isEmpty" (\() -> isEmpty_impl this)
    pure this

initFields_ :: StringValidationUtil -> IO ()
initFields_ this = do
    jset this.stringUtil =<< (StringUtil.getInstance)
    jset this.tsUtil =<< (TsUtil.getInstance)
    pure ()


getInstance :: IO (StringValidationUtil)
getInstance = do
        pure (StringValidationUtil.instance_)

new_ :: IO StringValidationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StringValidationUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


containsSpaces :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
containsSpaces object_ a1 = jmethod object_ "containsSpaces" (\() -> (containsSpaces_impl (javaCast object_ :: StringValidationUtil))) () a1

containsSpaces_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
containsSpaces_super object_ a1 = (containsSpaces_impl (javaCast object_ :: StringValidationUtil)) a1

containsSpaces_impl :: StringValidationUtil -> String -> IO (Bool)
containsSpaces_impl this value = do
    javaCatchReturn $ do
        when ((jstringIndexOf value ' ' 0) >= 0) $ do
            javaReturn (True)
        pure (False)


isNumber :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isNumber object_ a1 = jmethod object_ "isNumber" (\() -> (isNumber_impl (javaCast object_ :: StringValidationUtil))) () a1

isNumber_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isNumber_super object_ a1 = (isNumber_impl (javaCast object_ :: StringValidationUtil)) a1

isNumber_impl :: StringValidationUtil -> String -> IO (Bool)
isNumber_impl this value = do
    javaCatchReturn $ do
        numberOfDecimalPoints <- newIORef (0)
        forM_ [0 .. (Prelude.length value) - 1] $ \index -> javaIteration (pure ()) $ do
            let digit = (value Prelude.!! index)
            when ((Prelude.not (jio (StringValidationUtil.isNumberFromChar this digit))) && (digit /= '.')) $ do
                javaReturn (False)
            when (digit == '.') $ do
                jset numberOfDecimalPoints ((jget numberOfDecimalPoints) + 1)
                when ((jget numberOfDecimalPoints) > 1) $ do
                    javaReturn (False)
        pure (True)


isNumberFromChar :: (JavaObjectClass this_) => this_ -> Char -> IO (Bool)
isNumberFromChar object_ a1 = jmethod object_ "isNumberFromChar" (\() -> (isNumberFromChar_impl (javaCast object_ :: StringValidationUtil))) () a1

isNumberFromChar_super :: (JavaObjectClass this_) => this_ -> Char -> IO (Bool)
isNumberFromChar_super object_ a1 = (isNumberFromChar_impl (javaCast object_ :: StringValidationUtil)) a1

isNumberFromChar_impl :: StringValidationUtil -> Char -> IO (Bool)
isNumberFromChar_impl this digit = do
    javaCatchReturn $ do
        when ((((((((((digit /= '0') && (digit /= '1')) && (digit /= '2')) && (digit /= '3')) && (digit /= '4')) && (digit /= '5')) && (digit /= '6')) && (digit /= '7')) && (digit /= '8')) && (digit /= '9')) $ do
            javaReturn (False)
        pure (True)


isValidRequired :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Bool)
isValidRequired object_ a1 a2 a3 = jmethod object_ "isValidRequired" (\() -> (isValidRequired_impl (javaCast object_ :: StringValidationUtil))) () a1 a2 a3

isValidRequired_super :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Bool)
isValidRequired_super object_ a1 a2 a3 = (isValidRequired_impl (javaCast object_ :: StringValidationUtil)) a1 a2 a3

isValidRequired_impl :: StringValidationUtil -> String -> Int -> Int -> IO (Bool)
isValidRequired_impl this value min max = do
    javaCatchReturn $ do
        when (((value == javaNull) || ((Prelude.length value) < min)) || ((Prelude.length value) > max)) $ do
            javaReturn (False)
        pure (True)


isValidRequiredNumber :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Bool)
isValidRequiredNumber object_ a1 a2 a3 = jmethod object_ "isValidRequiredNumber" (\() -> (isValidRequiredNumber_impl (javaCast object_ :: StringValidationUtil))) () a1 a2 a3

isValidRequiredNumber_super :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Bool)
isValidRequiredNumber_super object_ a1 a2 a3 = (isValidRequiredNumber_impl (javaCast object_ :: StringValidationUtil)) a1 a2 a3

isValidRequiredNumber_impl :: StringValidationUtil -> String -> Int -> Int -> IO (Bool)
isValidRequiredNumber_impl this value min max = do
    javaCatchReturn $ do
        when (((jio (StringValidationUtil.isEmpty this value)) || ((Prelude.length value) < min)) || ((Prelude.length value) > max)) $ do
            javaReturn (False)
        when (Prelude.not (jio (StringValidationUtil.isNumber this value))) $ do
            javaReturn (False)
        pure (True)


isValidNotRequired :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Bool)
isValidNotRequired object_ a1 a2 a3 = jmethod object_ "isValidNotRequired" (\() -> (isValidNotRequired_impl (javaCast object_ :: StringValidationUtil))) () a1 a2 a3

isValidNotRequired_super :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Bool)
isValidNotRequired_super object_ a1 a2 a3 = (isValidNotRequired_impl (javaCast object_ :: StringValidationUtil)) a1 a2 a3

isValidNotRequired_impl :: StringValidationUtil -> String -> Int -> Int -> IO (Bool)
isValidNotRequired_impl this value min max = do
    javaCatchReturn $ do
        when (value /= javaNull) $ do
            when (((Prelude.length value) < min) || ((Prelude.length value) > max)) $ do
                javaReturn (False)
        pure (True)


isValidNotRequiredNumber :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Bool)
isValidNotRequiredNumber object_ a1 a2 a3 = jmethod object_ "isValidNotRequiredNumber" (\() -> (isValidNotRequiredNumber_impl (javaCast object_ :: StringValidationUtil))) () a1 a2 a3

isValidNotRequiredNumber_super :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> IO (Bool)
isValidNotRequiredNumber_super object_ a1 a2 a3 = (isValidNotRequiredNumber_impl (javaCast object_ :: StringValidationUtil)) a1 a2 a3

isValidNotRequiredNumber_impl :: StringValidationUtil -> String -> Int -> Int -> IO (Bool)
isValidNotRequiredNumber_impl this value min max = do
    javaCatchReturn $ do
        when (value /= javaNull) $ do
            when ((((jio (TsUtil.compareTo ((jget (this).tsUtil)) value (jget ((jget (this).stringUtil)).nULL_STRING))) == 0) || ((Prelude.length value) < min)) || ((Prelude.length value) > max)) $ do
                javaReturn (False)
            when (Prelude.not (jio (StringValidationUtil.isNumber this value))) $ do
                javaReturn (False)
        pure (True)


isEmpty :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isEmpty object_ a1 = jmethod object_ "isEmpty" (\() -> (isEmpty_impl (javaCast object_ :: StringValidationUtil))) () a1

isEmpty_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isEmpty_super object_ a1 = (isEmpty_impl (javaCast object_ :: StringValidationUtil)) a1

isEmpty_impl :: StringValidationUtil -> String -> IO (Bool)
isEmpty_impl this string = do
    javaCatchReturn $ do
        if (((string /= javaNull) && ((jio (TsUtil.compareTo ((jget (this).tsUtil)) string (jget ((jget (this).stringUtil)).nULL_STRING))) /= 0)) && ((jio (TsUtil.compareTo ((jget (this).tsUtil)) string (jget ((jget (this).stringUtil)).eMPTY_STRING))) /= 0)) then do
            javaReturn (False)
        else do
            javaReturn (True)


