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
-- package org.allbinary.gui.dialog
module FileJDialogListenerInterface where

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

-- Java interface: the classes that implement it have these functions
data FileJDialogListenerInterface = FileJDialogListenerInterface
    { header_ :: JavaHeader
    }

instance JavaNull FileJDialogListenerInterface where
    javaNull = javaNullRecord "FileJDialogListenerInterface"

instance JavaEquals FileJDialogListenerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileJDialogListenerInterface where
    (==) = jrecordEquals

instance JavaObjectClass FileJDialogListenerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> FileJDialogListenerInterface
fromHeader_ header = FileJDialogListenerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (FileJDialogListenerInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


onFiles :: (JavaObjectClass this_) => this_ -> JavaArray (File.File) -> IO (())
onFiles object_ a1 = jmethod object_ "onFiles" (\() -> (onFiles_impl (javaCast object_ :: FileJDialogListenerInterface))) () a1

onFiles_super :: (JavaObjectClass this_) => this_ -> JavaArray (File.File) -> IO (())
onFiles_super object_ a1 = (onFiles_impl (javaCast object_ :: FileJDialogListenerInterface)) a1

onFiles_impl :: FileJDialogListenerInterface -> JavaArray (File.File) -> IO (())
onFiles_impl this files = javaAbstractMethod "onFiles"


