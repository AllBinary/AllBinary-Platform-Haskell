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
-- package org.allbinary.logic.visual.transform.info.objectConfig.generator
module TransformInfoObjectConfigGenerator where

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
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TransformInfoObjectConfigGeneratorInterface

-- implements TransformInfoObjectConfigGeneratorInterface
data TransformInfoObjectConfigGenerator = TransformInfoObjectConfigGenerator
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull TransformInfoObjectConfigGenerator where
    javaNull = javaNullRecord "TransformInfoObjectConfigGenerator"

instance JavaEquals TransformInfoObjectConfigGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoObjectConfigGenerator where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoObjectConfigGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoObjectConfigGenerator
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    let this = TransformInfoObjectConfigGenerator header_ commonStrings
    jregisterLevel header_ this
    TransformInfoObjectConfigGeneratorInterface.registerInterface_ header_
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: TransformInfoObjectConfigGenerator -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO TransformInfoObjectConfigGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfoObjectConfigGenerator -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> String -> IO (String)
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: TransformInfoObjectConfigGenerator))) () a1

process_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
process_super object_ a1 = (process_impl (javaCast object_ :: TransformInfoObjectConfigGenerator)) a1

process_impl :: TransformInfoObjectConfigGenerator -> String -> IO (String)
process_impl this input = do
        javaThrow ((JavaException "RuntimeException" ""))


