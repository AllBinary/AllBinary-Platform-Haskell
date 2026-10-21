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
-- package org.allbinary.business.init
module InitInfo2 where

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
import qualified Directory -- org.allbinary.logic.io.file.directory.Directory
import qualified AbPath -- org.allbinary.logic.io.path.AbPath

data InitInfo2 = InitInfo2
    { header_ :: JavaHeader
    , directory :: IORef (Directory.Directory)
    }

instance JavaNull InitInfo2 where
    javaNull = javaNullRecord "InitInfo2"

instance JavaEquals InitInfo2 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InitInfo2 where
    (==) = jrecordEquals

instance JavaObjectClass InitInfo2 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InitInfo2
newRecord_ = do
    header_ <- newJavaHeader
    directory <- newIORef javaNull
    let this = InitInfo2 header_ directory
    jregisterLevel header_ this
    jregisterMethod header_ "isTestHtmlPathValid" (\() -> isTestHtmlPathValid_impl this)
    jregisterMethod header_ "isMainPathValid" (\() -> isMainPathValid_impl this)
    pure this

initFields_ :: InitInfo2 -> IO ()
initFields_ this = do
    jset this.directory =<< (Directory.getInstance)
    pure ()

new_ :: IO InitInfo2
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InitInfo2 -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (InitInfo2)
getInstance = do
        pure (InitInfo2.instance_)


isTestHtmlPathValid :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (Bool)
isTestHtmlPathValid object_ a1 = jmethod object_ "isTestHtmlPathValid" (\() -> (isTestHtmlPathValid_impl (javaCast object_ :: InitInfo2))) () a1

isTestHtmlPathValid_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (Bool)
isTestHtmlPathValid_super object_ a1 = (isTestHtmlPathValid_impl (javaCast object_ :: InitInfo2)) a1

isTestHtmlPathValid_impl :: InitInfo2 -> AbPath.AbPath -> IO (Bool)
isTestHtmlPathValid_impl this value = do
        (Directory.create ((jget (this).directory)) value)


isMainPathValid :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (Bool)
isMainPathValid object_ a1 = jmethod object_ "isMainPathValid" (\() -> (isMainPathValid_impl (javaCast object_ :: InitInfo2))) () a1

isMainPathValid_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (Bool)
isMainPathValid_super object_ a1 = (isMainPathValid_impl (javaCast object_ :: InitInfo2)) a1

isMainPathValid_impl :: InitInfo2 -> AbPath.AbPath -> IO (Bool)
isMainPathValid_impl this value = do
        (Directory.create ((jget (this).directory)) value)


