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
-- package org.allbinary.logic.system.loader
module NativeLibraryHelperWrapper where

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
import qualified Any -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified NativeLibraryClassLoader -- same package or java.lang
import qualified Constructor -- java.lang.reflect.Constructor
import qualified Method -- java.lang.reflect.Method
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data NativeLibraryHelperWrapper = NativeLibraryHelperWrapper
    { header_ :: JavaHeader
    , libraryName :: IORef (String)
    , loader :: IORef (ClassLoader.ClassLoader)
    , anyType :: IORef (Any.Any)
    }

instance JavaNull NativeLibraryHelperWrapper where
    javaNull = javaNullRecord "NativeLibraryHelperWrapper"

instance JavaEquals NativeLibraryHelperWrapper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NativeLibraryHelperWrapper where
    (==) = jrecordEquals

instance JavaObjectClass NativeLibraryHelperWrapper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NativeLibraryHelperWrapper
newRecord_ = do
    header_ <- newJavaHeader
    libraryName <- newIORef ""
    loader <- newIORef javaNull
    anyType <- newIORef javaNull
    let this = NativeLibraryHelperWrapper header_ libraryName loader anyType
    jregisterLevel header_ this
    jregisterMethod header_ "load" (\() -> load_impl this)
    jregisterMethod header_ "unload" (\() -> unload_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getLibraryName" (\() -> getLibraryName_impl this)
    jregisterMethod header_ "setLibraryName" (\() -> setLibraryName_impl this)
    pure this

initFields_ :: NativeLibraryHelperWrapper -> IO ()
initFields_ this = do
    jset this.libraryName ("")
    jset this.loader (javaNull)
    jset this.anyType (javaNull)
    pure ()

new_1 :: String -> IO NativeLibraryHelperWrapper
new_1 libraryName = do
    this <- newRecord_
    init_1 this libraryName
    pure this

init_1 :: NativeLibraryHelperWrapper -> String -> IO ()
init_1 this libraryName = do
        initFields_ this
        Control.Monad.void (NativeLibraryHelperWrapper.setLibraryName this libraryName)
        pure ()


-- throws Exception
load :: (JavaObjectClass this_) => this_ -> IO (())
load object_ = jmethod object_ "load" (\() -> (load_impl (javaCast object_ :: NativeLibraryHelperWrapper))) ()

load_super :: (JavaObjectClass this_) => this_ -> IO (())
load_super object_ = (load_impl (javaCast object_ :: NativeLibraryHelperWrapper))

load_impl :: NativeLibraryHelperWrapper -> IO (())
load_impl this = do
        let params = (jnewArray (1) javaNull)
        assignedValue <- (fmap jtoObject (NativeLibraryHelperWrapper.getLibraryName this))
        jsetIndex params (0) (assignedValue)
        let classes = (jnewArray (1) javaNull)
        assignedValue <- (jobjectGetClass (jio (NativeLibraryHelperWrapper.getLibraryName this)))
        jsetIndex classes (0) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: ClassLoader.ClassLoader) (NativeLibraryClassLoader.new_1 (jio (Class.getClassLoader ((jio (jobjectGetClass this)))))))
        jset (this).loader (assignedValue)
        myClass <- (ClassLoader.loadClass ((jget (this).loader)) "dynamic.NativeLibraryHelper")
        constructor <- (Class.getConstructor myClass classes)
        assignedValue <- (Constructor.newInstance constructor params)
        jset (this).anyType (assignedValue)
        commonStrings <- (CommonStrings.getInstance)
        method <- (Class.getMethod ((jio (jobjectGetClass (jget (this).anyType)))) (jget (commonStrings).lOAD) javaNull)
        Control.Monad.void (Method.invoke method (jget (this).anyType) javaNull)
        pure ()


unload :: (JavaObjectClass this_) => this_ -> IO (())
unload object_ = jmethod object_ "unload" (\() -> (unload_impl (javaCast object_ :: NativeLibraryHelperWrapper))) ()

unload_super :: (JavaObjectClass this_) => this_ -> IO (())
unload_super object_ = (unload_impl (javaCast object_ :: NativeLibraryHelperWrapper))

unload_impl :: NativeLibraryHelperWrapper -> IO (())
unload_impl this = do
        jset (this).anyType (javaNull)
        jset (this).loader (javaNull)
        Control.Monad.void (pure ())
        Control.Monad.void (pure ())
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: NativeLibraryHelperWrapper))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: NativeLibraryHelperWrapper))

toString_impl :: NativeLibraryHelperWrapper -> IO (String)
toString_impl this = do
        pure (("Library: " ++ javaToString (jio (NativeLibraryHelperWrapper.getLibraryName this))))


getLibraryName :: (JavaObjectClass this_) => this_ -> IO (String)
getLibraryName object_ = jmethod object_ "getLibraryName" (\() -> (getLibraryName_impl (javaCast object_ :: NativeLibraryHelperWrapper))) ()

getLibraryName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLibraryName_super object_ = (getLibraryName_impl (javaCast object_ :: NativeLibraryHelperWrapper))

getLibraryName_impl :: NativeLibraryHelperWrapper -> IO (String)
getLibraryName_impl this = do
        pure ((jget (this).libraryName))


setLibraryName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLibraryName object_ a1 = jmethod object_ "setLibraryName" (\() -> (setLibraryName_impl (javaCast object_ :: NativeLibraryHelperWrapper))) () a1

setLibraryName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLibraryName_super object_ a1 = (setLibraryName_impl (javaCast object_ :: NativeLibraryHelperWrapper)) a1

setLibraryName_impl :: NativeLibraryHelperWrapper -> String -> IO (())
setLibraryName_impl this libraryName = do
        jset (this).libraryName (libraryName)
        pure ()


