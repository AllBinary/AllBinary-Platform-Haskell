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
-- package org.allbinary.logic.java.anyType.clazz.loader
module ClassLoaderUtil where

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

data ClassLoaderUtil = ClassLoaderUtil
    { header_ :: JavaHeader
    }

instance JavaNull ClassLoaderUtil where
    javaNull = javaNullRecord "ClassLoaderUtil"

instance JavaEquals ClassLoaderUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ClassLoaderUtil where
    (==) = jrecordEquals

instance JavaObjectClass ClassLoaderUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ClassLoaderUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ClassLoaderUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: ClassLoaderUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ClassLoaderUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ClassLoaderUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getName :: (JavaObjectClass o1) => o1 -> IO (String)
getName anyTypeObject_ = do
    let anyType = jtoObject anyTypeObject_
    javaCatchReturn $ do
        classLoader <- (Class.getClassLoader ((jio (jobjectGetClass anyType))))
        when (classLoader /= javaNull) $ do
            javaReturn (("ClassLoader: " ++ (jio (Class.getName ((jio (jobjectGetClass classLoader)))))))
        javaThrow ((JavaException "Exception" "Unable to get ClassLoader"))


