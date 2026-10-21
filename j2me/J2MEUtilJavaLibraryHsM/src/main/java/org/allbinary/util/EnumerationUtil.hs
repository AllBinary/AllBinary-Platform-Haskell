{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.util
module EnumerationUtil where

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
import qualified BasicArrayListD -- same package or java.lang
import qualified BasicArrayList -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType
import qualified Enumeration -- java.util.Enumeration
import qualified JsMethod -- jsinterop.annotations.JsMethod

data EnumerationUtil = EnumerationUtil
    { header_ :: JavaHeader
    }

instance JavaNull EnumerationUtil where
    javaNull = javaNullRecord "EnumerationUtil"

instance JavaEquals EnumerationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EnumerationUtil where
    (==) = jrecordEquals

instance JavaObjectClass EnumerationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO EnumerationUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = EnumerationUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "hasMoreElements" (\() -> hasMoreElements_impl this)
    jregisterMethod header_ "nextElement" (\() -> nextElement_impl this)
    jregisterMethod header_ "getAsArray" (\() -> getAsArray_impl this)
    pure this

initFields_ :: EnumerationUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO EnumerationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: EnumerationUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (EnumerationUtil)
getInstance = do
        pure (EnumerationUtil.instance_)


hasMoreElements :: (JavaObjectClass this_) => this_ -> Enumeration.Enumeration -> IO (Bool)
hasMoreElements object_ a1 = jmethod object_ "hasMoreElements" (\() -> (hasMoreElements_impl (javaCast object_ :: EnumerationUtil))) () a1

hasMoreElements_super :: (JavaObjectClass this_) => this_ -> Enumeration.Enumeration -> IO (Bool)
hasMoreElements_super object_ a1 = (hasMoreElements_impl (javaCast object_ :: EnumerationUtil)) a1

hasMoreElements_impl :: EnumerationUtil -> Enumeration.Enumeration -> IO (Bool)
hasMoreElements_impl this enumeration = do
        (Enumeration.hasMoreElements enumeration)


nextElement :: (JavaObjectClass this_) => this_ -> Enumeration.Enumeration -> IO (Any.Any)
nextElement object_ a1 = jmethod object_ "nextElement" (\() -> (nextElement_impl (javaCast object_ :: EnumerationUtil))) () a1

nextElement_super :: (JavaObjectClass this_) => this_ -> Enumeration.Enumeration -> IO (Any.Any)
nextElement_super object_ a1 = (nextElement_impl (javaCast object_ :: EnumerationUtil)) a1

nextElement_impl :: EnumerationUtil -> Enumeration.Enumeration -> IO (Any.Any)
nextElement_impl this enumeration = do
        (fmap jtoObject (Enumeration.nextElement enumeration))


getAsArray :: (JavaObjectClass this_) => this_ -> Enumeration.Enumeration -> IO (JavaArray (Any.Any))
getAsArray object_ a1 = jmethod object_ "getAsArray" (\() -> (getAsArray_impl (javaCast object_ :: EnumerationUtil))) () a1

getAsArray_super :: (JavaObjectClass this_) => this_ -> Enumeration.Enumeration -> IO (JavaArray (Any.Any))
getAsArray_super object_ a1 = (getAsArray_impl (javaCast object_ :: EnumerationUtil)) a1

getAsArray_impl :: EnumerationUtil -> Enumeration.Enumeration -> IO (JavaArray (Any.Any))
getAsArray_impl this enumeration = do
        basicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        fix $ \loop -> when (jio (EnumerationUtil.hasMoreElements this enumeration)) $ javaIteration (loop) $ do
            Control.Monad.void (BasicArrayList.add basicArrayList (jio (EnumerationUtil.nextElement this enumeration)))
        (BasicArrayList.toArray basicArrayList)


