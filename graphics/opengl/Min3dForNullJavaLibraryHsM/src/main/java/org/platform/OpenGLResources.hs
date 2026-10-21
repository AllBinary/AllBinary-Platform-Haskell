{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.platform
module OpenGLResources where

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
import qualified InputStream -- java.io.InputStream

data OpenGLResources = OpenGLResources
    { header_ :: JavaHeader
    }

instance JavaNull OpenGLResources where
    javaNull = javaNullRecord "OpenGLResources"

instance JavaEquals OpenGLResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLResources where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLResources
newRecord_ = do
    header_ <- newJavaHeader
    let this = OpenGLResources header_
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isExcluded" (\() -> isExcluded_impl this)
    jregisterMethod header_ "getIdentifier" (\() -> getIdentifier_impl this)
    jregisterMethod header_ "openRawResource" (\() -> openRawResource_impl this)
    jregisterMethod header_ "openRawResourceFromName" (\() -> openRawResourceFromName_impl this)
    jregisterMethod header_ "getResourceAsStream" (\() -> getResourceAsStream_impl this)
    jregisterMethod header_ "getPackageName" (\() -> getPackageName_impl this)
    pure this

initFields_ :: OpenGLResources -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLResources -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLResources)
getInstance = do
        pure (OpenGLResources.instance_)


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: OpenGLResources))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: OpenGLResources))

init_impl :: OpenGLResources -> IO (())
init_impl this = do
        pure ()


isExcluded :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isExcluded object_ a1 = jmethod object_ "isExcluded" (\() -> (isExcluded_impl (javaCast object_ :: OpenGLResources))) () a1

isExcluded_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isExcluded_super object_ a1 = (isExcluded_impl (javaCast object_ :: OpenGLResources)) a1

isExcluded_impl :: OpenGLResources -> String -> IO (Bool)
isExcluded_impl this name = do
        javaThrow ((JavaException "RuntimeException" ""))


getIdentifier :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (Int)
getIdentifier object_ a1 a2 a3 = jmethod object_ "getIdentifier" (\() -> (getIdentifier_impl (javaCast object_ :: OpenGLResources))) () a1 a2 a3

getIdentifier_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (Int)
getIdentifier_super object_ a1 a2 a3 = (getIdentifier_impl (javaCast object_ :: OpenGLResources)) a1 a2 a3

getIdentifier_impl :: OpenGLResources -> String -> String -> String -> IO (Int)
getIdentifier_impl this name defType defPackage = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
openRawResource :: (JavaObjectClass this_) => this_ -> Int -> IO (InputStream.InputStream)
openRawResource object_ a1 = jmethod object_ "openRawResource" (\() -> (openRawResource_impl (javaCast object_ :: OpenGLResources))) () a1

openRawResource_super :: (JavaObjectClass this_) => this_ -> Int -> IO (InputStream.InputStream)
openRawResource_super object_ a1 = (openRawResource_impl (javaCast object_ :: OpenGLResources)) a1

openRawResource_impl :: OpenGLResources -> Int -> IO (InputStream.InputStream)
openRawResource_impl this id = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
openRawResourceFromName :: (JavaObjectClass this_) => this_ -> String -> IO (InputStream.InputStream)
openRawResourceFromName object_ a1 = jmethod object_ "openRawResourceFromName" (\() -> (openRawResourceFromName_impl (javaCast object_ :: OpenGLResources))) () a1

openRawResourceFromName_super :: (JavaObjectClass this_) => this_ -> String -> IO (InputStream.InputStream)
openRawResourceFromName_super object_ a1 = (openRawResourceFromName_impl (javaCast object_ :: OpenGLResources)) a1

openRawResourceFromName_impl :: OpenGLResources -> String -> IO (InputStream.InputStream)
openRawResourceFromName_impl this resourceName = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getResourceAsStream :: (JavaObjectClass this_) => this_ -> String -> IO (InputStream.InputStream)
getResourceAsStream object_ a1 = jmethod object_ "getResourceAsStream" (\() -> (getResourceAsStream_impl (javaCast object_ :: OpenGLResources))) () a1

getResourceAsStream_super :: (JavaObjectClass this_) => this_ -> String -> IO (InputStream.InputStream)
getResourceAsStream_super object_ a1 = (getResourceAsStream_impl (javaCast object_ :: OpenGLResources)) a1

getResourceAsStream_impl :: OpenGLResources -> String -> IO (InputStream.InputStream)
getResourceAsStream_impl this resourceName = do
        javaThrow ((JavaException "RuntimeException" ""))


getPackageName :: (JavaObjectClass this_) => this_ -> IO (String)
getPackageName object_ = jmethod object_ "getPackageName" (\() -> (getPackageName_impl (javaCast object_ :: OpenGLResources))) ()

getPackageName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPackageName_super object_ = (getPackageName_impl (javaCast object_ :: OpenGLResources))

getPackageName_impl :: OpenGLResources -> IO (String)
getPackageName_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


