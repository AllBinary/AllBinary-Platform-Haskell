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
module StringUtil where

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
import qualified JsType -- jsinterop.annotations.JsType
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsConstructor -- jsinterop.annotations.JsConstructor
import qualified JsProperty -- jsinterop.annotations.JsProperty

data StringUtil = StringUtil
    { header_ :: JavaHeader
    , iNIT_STRING :: IORef (String)
    , nULL_STRING :: IORef (String)
    , eMPTY_STRING :: IORef (String)
    , oNE_EMPTY_STRING_ARRAY :: IORef (JavaArray (String))
    , stringArray :: IORef (JavaArray (String))
    }

instance JavaNull StringUtil where
    javaNull = javaNullRecord "StringUtil"

instance JavaEquals StringUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StringUtil where
    (==) = jrecordEquals

instance JavaObjectClass StringUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO StringUtil
newRecord_ = do
    header_ <- newJavaHeader
    iNIT_STRING <- newIORef ""
    nULL_STRING <- newIORef ""
    eMPTY_STRING <- newIORef ""
    oNE_EMPTY_STRING_ARRAY <- newIORef javaNull
    stringArray <- newIORef javaNull
    let this = StringUtil header_ iNIT_STRING nULL_STRING eMPTY_STRING oNE_EMPTY_STRING_ARRAY stringArray
    jregisterLevel header_ this
    jregisterMethod header_ "getNonNull" (\() -> getNonNull_impl this)
    jregisterMethod header_ "getArrayInstance" (\() -> getArrayInstance_impl this)
    jregisterMethod header_ "count" (\() -> count_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: StringUtil -> IO ()
initFields_ this = do
    jset this.iNIT_STRING =<< (jnewString "")
    jset this.nULL_STRING ("null")
    jset this.eMPTY_STRING ("")
    jset this.oNE_EMPTY_STRING_ARRAY ((jarrayFromList [(jget (this).eMPTY_STRING)]))
    jset this.stringArray ((jnewArray (0) javaNull))
    pure ()


getInstance :: IO (StringUtil)
getInstance = do
        pure (StringUtil.instance_)

new_ :: IO StringUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StringUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getNonNull :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getNonNull object_ a1 = jmethod object_ "getNonNull" (\() -> (getNonNull_impl (javaCast object_ :: StringUtil))) () a1

getNonNull_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getNonNull_super object_ a1 = (getNonNull_impl (javaCast object_ :: StringUtil)) a1

getNonNull_impl :: StringUtil -> String -> IO (String)
getNonNull_impl this string = do
    javaCatchReturn $ do
        if (string == javaNull) then do
            javaReturn ((jget (this).eMPTY_STRING))
        else do
            javaReturn (string)


getArrayInstance :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
getArrayInstance object_ = jmethod object_ "getArrayInstance" (\() -> (getArrayInstance_impl (javaCast object_ :: StringUtil))) ()

getArrayInstance_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
getArrayInstance_super object_ = (getArrayInstance_impl (javaCast object_ :: StringUtil))

getArrayInstance_impl :: StringUtil -> IO (JavaArray (String))
getArrayInstance_impl this = do
        pure ((jget (this).stringArray))


count :: (JavaObjectClass this_) => this_ -> String -> Char -> IO (Int)
count object_ a1 a2 = jmethod object_ "count" (\() -> (count_impl (javaCast object_ :: StringUtil))) () a1 a2

count_super :: (JavaObjectClass this_) => this_ -> String -> Char -> IO (Int)
count_super object_ a1 a2 = (count_impl (javaCast object_ :: StringUtil)) a1 a2

count_impl :: StringUtil -> String -> Char -> IO (Int)
count_impl this string aChar = do
        count <- newIORef (0)
        let size = (Prelude.length string)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            when ((string Prelude.!! index) == aChar) $ do
                jset count ((jget count) + 1)
        pure ((jget count))


toString :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (String)
toString object_ a1 = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: StringUtil))) () (jtoObject a1)

toString_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (String)
toString_super object_ a1 = (toString_impl (javaCast object_ :: StringUtil)) (jtoObject a1)

toString_impl :: StringUtil -> JavaObject -> IO (String)
toString_impl this anyTypeObject_ = do
    let anyType = jtoObject anyTypeObject_
    javaCatchReturn $ do
        if (anyType /= javaNull) then do
            javaReturn =<< (Any.toString anyType)
        else do
            javaReturn ((jget (this).nULL_STRING))


