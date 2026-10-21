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
-- package org.allbinary.data.resource
module ResourceUtil where

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
import qualified ClassLoader -- same package or java.lang
import qualified ByteArrayInputStream -- java.io.ByteArrayInputStream
import qualified ByteArrayOutputStream -- java.io.ByteArrayOutputStream
import qualified FileInputStream -- java.io.FileInputStream
import qualified InputStream -- java.io.InputStream
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data ResourceUtil = ResourceUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , path :: IORef (String)
    , ext :: IORef (String)
    }

instance JavaNull ResourceUtil where
    javaNull = javaNullRecord "ResourceUtil"

instance JavaEquals ResourceUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ResourceUtil where
    (==) = jrecordEquals

instance JavaObjectClass ResourceUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ResourceUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    path <- newIORef ""
    ext <- newIORef ""
    let this = ResourceUtil header_ logUtil path ext
    jregisterLevel header_ this
    jregisterMethod header_ "setLoadingPaths" (\() -> setLoadingPaths_impl this)
    jregisterMethod header_ "setClassLoader" (\() -> setClassLoader_impl this)
    jregisterMethod header_ "getResourceAsStream" (\() -> getResourceAsStream_impl this)
    jregisterMethod header_ "getResourceAsStreamAtStart" (\() -> getResourceAsStreamAtStart_impl this)
    jregisterMethod header_ "addResource" (\() -> addResource_impl this)
    pure this

initFields_ :: ResourceUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.path ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.ext ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    pure ()


getInstance :: IO (ResourceUtil)
getInstance = do
        pure (ResourceUtil.instance_)

new_ :: IO ResourceUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ResourceUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


setLoadingPaths :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setLoadingPaths object_ a1 a2 = jmethod object_ "setLoadingPaths" (\() -> (setLoadingPaths_impl (javaCast object_ :: ResourceUtil))) () a1 a2

setLoadingPaths_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setLoadingPaths_super object_ a1 a2 = (setLoadingPaths_impl (javaCast object_ :: ResourceUtil)) a1 a2

setLoadingPaths_impl :: ResourceUtil -> String -> String -> IO (())
setLoadingPaths_impl this path ext = do
        jset (this).path (path)
        jset (this).ext (ext)
        pure ()


setClassLoader :: (JavaObjectClass this_) => this_ -> ClassLoader.ClassLoader -> IO (())
setClassLoader object_ a1 = jmethod object_ "setClassLoader" (\() -> (setClassLoader_impl (javaCast object_ :: ResourceUtil))) () a1

setClassLoader_super :: (JavaObjectClass this_) => this_ -> ClassLoader.ClassLoader -> IO (())
setClassLoader_super object_ a1 = (setClassLoader_impl (javaCast object_ :: ResourceUtil)) a1

setClassLoader_impl :: ResourceUtil -> ClassLoader.ClassLoader -> IO (())
setClassLoader_impl this classLoader = do
        pure ()


-- throws Exception
getResourceAsStream :: (JavaObjectClass this_) => this_ -> String -> IO (InputStream.InputStream)
getResourceAsStream object_ a1 = jmethod object_ "getResourceAsStream" (\() -> (getResourceAsStream_impl (javaCast object_ :: ResourceUtil))) () a1

getResourceAsStream_super :: (JavaObjectClass this_) => this_ -> String -> IO (InputStream.InputStream)
getResourceAsStream_super object_ a1 = (getResourceAsStream_impl (javaCast object_ :: ResourceUtil)) a1

getResourceAsStream_impl :: ResourceUtil -> String -> IO (InputStream.InputStream)
getResourceAsStream_impl this resource = do
        inputStream <- newIORef =<< (ResourceUtil.getResourceAsStreamAtStart this resource 2)
        when ((jget inputStream) == javaNull) $ do
            assignedValue <- (ResourceUtil.getResourceAsStreamAtStart this resource 1)
            jset inputStream (assignedValue)
            when ((jget inputStream) == javaNull) $ do
                javaThrow ((JavaException "Exception" (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Unable to obtain: "))) resource)))))))
        pure ((jget inputStream))


-- throws Exception
getResourceAsStreamAtStart :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (InputStream.InputStream)
getResourceAsStreamAtStart object_ a1 a2 = jmethod object_ "getResourceAsStreamAtStart" (\() -> (getResourceAsStreamAtStart_impl (javaCast object_ :: ResourceUtil))) () a1 a2

getResourceAsStreamAtStart_super :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (InputStream.InputStream)
getResourceAsStreamAtStart_super object_ a1 a2 = (getResourceAsStreamAtStart_impl (javaCast object_ :: ResourceUtil)) a1 a2

getResourceAsStreamAtStart_impl :: ResourceUtil -> String -> Int -> IO (InputStream.InputStream)
getResourceAsStreamAtStart_impl this resource startIndex = do
    javaCatchReturn $ do
        inputStream <- (fmap (\value_ -> javaCast value_ :: InputStream.InputStream) (FileInputStream.new_1 (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).path)))) resource))) (jget (this).ext))))))))
        when (inputStream /= javaNull) $ do
            let byteArray = (jnewArray ((jio (InputStream.available inputStream))) 0)
            Control.Monad.void (StreamUtil.getByteArray ((jio (StreamUtil.getInstance))) inputStream (jio (ByteArrayOutputStream.new_)) byteArray)
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: InputStream.InputStream) (ByteArrayInputStream.new_1 byteArray))
        pure (inputStream)


addResource :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (())
addResource object_ a1 a2 = jmethod object_ "addResource" (\() -> (addResource_impl (javaCast object_ :: ResourceUtil))) () a1 a2

addResource_super :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (())
addResource_super object_ a1 a2 = (addResource_impl (javaCast object_ :: ResourceUtil)) a1 a2

addResource_impl :: ResourceUtil -> String -> Int -> IO (())
addResource_impl this resource value = do
        pure ()


