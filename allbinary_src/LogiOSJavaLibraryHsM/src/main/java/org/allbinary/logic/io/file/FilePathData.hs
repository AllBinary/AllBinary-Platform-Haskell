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
-- package org.allbinary.logic.io.file
module FilePathData where

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

data FilePathData = FilePathData
    { header_ :: JavaHeader
    , sEPARATORCHAR :: IORef (Char)
    , pATH_START :: IORef (String)
    }

instance JavaNull FilePathData where
    javaNull = javaNullRecord "FilePathData"

instance JavaEquals FilePathData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FilePathData where
    (==) = jrecordEquals

instance JavaObjectClass FilePathData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO FilePathData
newRecord_ = do
    header_ <- newJavaHeader
    sEPARATORCHAR <- newIORef '\0'
    pATH_START <- newIORef ""
    let this = FilePathData header_ sEPARATORCHAR pATH_START
    jregisterLevel header_ this
    pure this

initFields_ :: FilePathData -> IO ()
initFields_ this = do
    jset this.sEPARATORCHAR (File.separatorChar)
    jset this.pATH_START (File.separator)
    pure ()


getInstance :: IO (FilePathData)
getInstance = do
        pure (FilePathData.instance_)

new_ :: IO FilePathData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FilePathData -> IO ()
init_ this = do
        initFields_ this
        when (File.separatorChar == '\\') $ do
            jset (this).pATH_START ((File.separator ++ File.separator))
        pure ()


