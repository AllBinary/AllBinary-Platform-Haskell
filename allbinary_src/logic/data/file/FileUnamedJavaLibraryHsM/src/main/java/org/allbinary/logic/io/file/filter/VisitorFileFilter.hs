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
-- package org.allbinary.logic.io.file.filter
module VisitorFileFilter where

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
import qualified File -- java.io.File
import qualified FileFilter -- java.io.FileFilter
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified FileWrapperUtil -- org.allbinary.logic.io.file.FileWrapperUtil
import qualified VisitorInterface -- org.allbinary.logic.util.visitor.VisitorInterface

-- implements FileFilter
data VisitorFileFilter = VisitorFileFilter
    { header_ :: JavaHeader
    , booleanVisitorInterface :: IORef (VisitorInterface.VisitorInterface)
    }

instance JavaNull VisitorFileFilter where
    javaNull = javaNullRecord "VisitorFileFilter"

instance JavaEquals VisitorFileFilter where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VisitorFileFilter where
    (==) = jrecordEquals

instance JavaObjectClass VisitorFileFilter where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VisitorFileFilter
newRecord_ = do
    header_ <- newJavaHeader
    booleanVisitorInterface <- newIORef javaNull
    let this = VisitorFileFilter header_ booleanVisitorInterface
    jregisterLevel header_ this
    FileFilter.registerInterface_ header_
    jregisterMethod header_ "accept_overload1" (\() -> accept_overload1_impl this)
    jregisterMethod header_ "accept_overload2" (\() -> accept_overload2_impl this)
    pure this

initFields_ :: VisitorFileFilter -> IO ()
initFields_ this = do
    jset this.booleanVisitorInterface (javaNull)
    pure ()

new_1 :: VisitorInterface.VisitorInterface -> IO VisitorFileFilter
new_1 booleanVisitorInterface = do
    this <- newRecord_
    init_1 this booleanVisitorInterface
    pure this

init_1 :: VisitorFileFilter -> VisitorInterface.VisitorInterface -> IO ()
init_1 this booleanVisitorInterface = do
        initFields_ this
        jset (this).booleanVisitorInterface (booleanVisitorInterface)
        pure ()


-- Java overloads of accept: calls the overload for the types of the arguments
accept :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
accept this a1
    | jisInstanceOf a1 (javaNull :: File.File) = accept_overload1 this (javaCast a1 :: File.File)
    | jisInstanceOf a1 (javaNull :: AbFile.AbFile) = accept_overload2 this (javaCast a1 :: AbFile.AbFile)
    | otherwise = accept_overload2 this (javaCast a1 :: AbFile.AbFile)

accept_overload1 :: (JavaObjectClass this_) => this_ -> File.File -> IO (Bool)
accept_overload1 object_ a1 = jmethod object_ "accept_overload1" (\() -> (accept_overload1_impl (javaCast object_ :: VisitorFileFilter))) () a1

accept_overload1_super :: (JavaObjectClass this_) => this_ -> File.File -> IO (Bool)
accept_overload1_super object_ a1 = (accept_overload1_impl (javaCast object_ :: VisitorFileFilter)) a1

accept_overload1_impl :: VisitorFileFilter -> File.File -> IO (Bool)
accept_overload1_impl this file = do
        abFile <- (FileWrapperUtil.wrapFile file)
        isFileAcceptable <- (booleanValue (((javaCast (jio (VisitorInterface.visit ((jget (this).booleanVisitorInterface)) abFile)) :: Bool))))
        pure ((isFileAcceptable || (jio (File.isDirectory file))))


accept_overload2 :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (Bool)
accept_overload2 object_ a1 = jmethod object_ "accept_overload2" (\() -> (accept_overload2_impl (javaCast object_ :: VisitorFileFilter))) () a1

accept_overload2_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (Bool)
accept_overload2_super object_ a1 = (accept_overload2_impl (javaCast object_ :: VisitorFileFilter)) a1

accept_overload2_impl :: VisitorFileFilter -> AbFile.AbFile -> IO (Bool)
accept_overload2_impl this file = do
        isFileAcceptable <- (booleanValue (((javaCast (jio (VisitorInterface.visit ((jget (this).booleanVisitorInterface)) file)) :: Bool))))
        pure ((isFileAcceptable || (jio (AbFile.isDirectory file))))


