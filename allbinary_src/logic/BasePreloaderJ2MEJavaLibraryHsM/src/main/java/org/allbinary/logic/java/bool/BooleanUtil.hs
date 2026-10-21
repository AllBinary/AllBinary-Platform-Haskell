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
-- package org.allbinary.logic.java.bool
module BooleanUtil where

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
import qualified BooleanFactory -- same package or java.lang
import qualified TsUtil -- org.allbinary.TsUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil

data BooleanUtil = BooleanUtil
    { header_ :: JavaHeader
    , tsUtil :: IORef (TsUtil.TsUtil)
    }

instance JavaNull BooleanUtil where
    javaNull = javaNullRecord "BooleanUtil"

instance JavaEquals BooleanUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BooleanUtil where
    (==) = jrecordEquals

instance JavaObjectClass BooleanUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BooleanUtil
newRecord_ = do
    header_ <- newJavaHeader
    tsUtil <- newIORef javaNull
    let this = BooleanUtil header_ tsUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getFromString" (\() -> getFromString_impl this)
    jregisterMethod header_ "isStringBoolean" (\() -> isStringBoolean_impl this)
    jregisterMethod header_ "toStringFromBooleanArray" (\() -> toStringFromBooleanArray_impl this)
    pure this

initFields_ :: BooleanUtil -> IO ()
initFields_ this = do
    jset this.tsUtil =<< (TsUtil.getInstance)
    pure ()


getInstance :: IO (BooleanUtil)
getInstance = do
        pure (BooleanUtil.instance_)

new_ :: IO BooleanUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BooleanUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getFromString :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
getFromString object_ a1 = jmethod object_ "getFromString" (\() -> (getFromString_impl (javaCast object_ :: BooleanUtil))) () a1

getFromString_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
getFromString_super object_ a1 = (getFromString_impl (javaCast object_ :: BooleanUtil)) a1

getFromString_impl :: BooleanUtil -> String -> IO (Bool)
getFromString_impl this booleanString = do
    javaCatchReturn $ do
        stringValidationUtil <- (StringValidationUtil.getInstance)
        booleanFactory <- (BooleanFactory.getInstance)
        when (jio (StringValidationUtil.isEmpty stringValidationUtil booleanString)) $ do
            javaReturn (False)
        let booleanStringLowerCase = (Prelude.map Data.Char.toLower booleanString)
        if ((jio (TsUtil.compareTo ((jget (this).tsUtil)) booleanStringLowerCase (jget (booleanFactory).tRUE_STRING))) == 0) then do
            javaReturn (True)
        else if ((jio (TsUtil.compareTo ((jget (this).tsUtil)) booleanStringLowerCase (jget (booleanFactory).fALSE_STRING))) == 0) then do
            javaReturn (False)
        else do
            javaThrow ((JavaException "Exception" "Invalid booleanString - Must be true or false"))


-- throws Exception
isStringBoolean :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isStringBoolean object_ a1 = jmethod object_ "isStringBoolean" (\() -> (isStringBoolean_impl (javaCast object_ :: BooleanUtil))) () a1

isStringBoolean_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isStringBoolean_super object_ a1 = (isStringBoolean_impl (javaCast object_ :: BooleanUtil)) a1

isStringBoolean_impl :: BooleanUtil -> String -> IO (Bool)
isStringBoolean_impl this booleanString = do
    javaCatchReturn $ do
        booleanFactory <- (BooleanFactory.getInstance)
        let booleanStringLowerCase = (Prelude.map Data.Char.toLower booleanString)
        when (((Prelude.fromEnum (Prelude.compare booleanStringLowerCase (jget (booleanFactory).tRUE_STRING)) - 1) == 0) || ((Prelude.fromEnum (Prelude.compare booleanStringLowerCase (jget (booleanFactory).fALSE_STRING)) - 1) == 0)) $ do
            javaReturn (True)
        pure (False)


toStringFromBooleanArray :: (JavaObjectClass this_) => this_ -> JavaArray (Bool) -> IO (String)
toStringFromBooleanArray object_ a1 = jmethod object_ "toStringFromBooleanArray" (\() -> (toStringFromBooleanArray_impl (javaCast object_ :: BooleanUtil))) () a1

toStringFromBooleanArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Bool) -> IO (String)
toStringFromBooleanArray_super object_ a1 = (toStringFromBooleanArray_impl (javaCast object_ :: BooleanUtil)) a1

toStringFromBooleanArray_impl :: BooleanUtil -> JavaArray (Bool) -> IO (String)
toStringFromBooleanArray_impl this booleanArray = do
        stringMaker <- (StringMaker.new_)
        let size = (jlength booleanArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.appendboolean stringMaker (jindex booleanArray (index)))
        (StringMaker.toString stringMaker)


