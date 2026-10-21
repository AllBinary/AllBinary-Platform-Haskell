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
-- package org.allbinary.logic.communication.http.request
module HttpRequestUtil where

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
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData

data HttpRequestUtil = HttpRequestUtil
    { header_ :: JavaHeader
    }

instance JavaNull HttpRequestUtil where
    javaNull = javaNullRecord "HttpRequestUtil"

instance JavaEquals HttpRequestUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HttpRequestUtil where
    (==) = jrecordEquals

instance JavaObjectClass HttpRequestUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HttpRequestUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = HttpRequestUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "getLastSeparatorIndex" (\() -> getLastSeparatorIndex_impl this)
    jregisterMethod header_ "generateFileName" (\() -> generateFileName_impl this)
    pure this

initFields_ :: HttpRequestUtil -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (HttpRequestUtil)
getInstance = do
        pure (HttpRequestUtil.instance_)

new_ :: IO HttpRequestUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HttpRequestUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getLastSeparatorIndex :: (JavaObjectClass this_) => this_ -> String -> IO (Int)
getLastSeparatorIndex object_ a1 = jmethod object_ "getLastSeparatorIndex" (\() -> (getLastSeparatorIndex_impl (javaCast object_ :: HttpRequestUtil))) () a1

getLastSeparatorIndex_super :: (JavaObjectClass this_) => this_ -> String -> IO (Int)
getLastSeparatorIndex_super object_ a1 = (getLastSeparatorIndex_impl (javaCast object_ :: HttpRequestUtil)) a1

getLastSeparatorIndex_impl :: HttpRequestUtil -> String -> IO (Int)
getLastSeparatorIndex_impl this requestPath = do
        beginIndex <- newIORef ((jstringLastIndexOf requestPath (jget ((jio (AbPathData.getInstance))).sEPARATOR)))
        when ((jget beginIndex) < 0) $ do
            jset beginIndex ((jstringLastIndexOf requestPath "\\"))
        pure ((jget beginIndex))


-- throws Exception
generateFileName :: (JavaObjectClass this_) => this_ -> String -> IO (String)
generateFileName object_ a1 = jmethod object_ "generateFileName" (\() -> (generateFileName_impl (javaCast object_ :: HttpRequestUtil))) () a1

generateFileName_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
generateFileName_super object_ a1 = (generateFileName_impl (javaCast object_ :: HttpRequestUtil)) a1

generateFileName_impl :: HttpRequestUtil -> String -> IO (String)
generateFileName_impl this requestPath = do
    javaCatchReturn $ do
        beginIndex <- (HttpRequestUtil.getLastSeparatorIndex this requestPath)
        if (beginIndex < 0) then do
            javaReturn (requestPath)
        else do
            javaReturn ((Prelude.drop (beginIndex + 1) requestPath))


