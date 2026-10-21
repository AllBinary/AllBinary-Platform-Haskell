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
-- package org.allbinary.logic.io
module BufferedIOUtil where

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
import qualified BufferedReader -- java.io.BufferedReader
import qualified BufferedWriter -- java.io.BufferedWriter
import qualified FileReader -- java.io.FileReader
import qualified FileWriter -- java.io.FileWriter
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbFileNativeUtil -- org.allbinary.logic.io.file.AbFileNativeUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data BufferedIOUtil = BufferedIOUtil
    { header_ :: JavaHeader
    }

instance JavaNull BufferedIOUtil where
    javaNull = javaNullRecord "BufferedIOUtil"

instance JavaEquals BufferedIOUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BufferedIOUtil where
    (==) = jrecordEquals

instance JavaObjectClass BufferedIOUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BufferedIOUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = BufferedIOUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: BufferedIOUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BufferedIOUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BufferedIOUtil -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
copy :: AbFile.AbFile -> AbFile.AbFile -> IO (())
copy backupFile backupFileBak = do
        line <- newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        tmpOut <- (BufferedWriter.new_1 (jio (FileWriter.new_1 (jio (AbFileNativeUtil.get backupFileBak)))))
        tmpIn <- (BufferedReader.new_1 (jio (FileReader.new_1 (jio (AbFileNativeUtil.get backupFile)))))
        fix $ \loop -> when True $ javaIteration (loop) $ do
            assignedValue <- (BufferedReader.readLine tmpIn)
            jset line (assignedValue)
            when ((jget line) == javaNull) $ do
                throwIO JavaBreak
            Control.Monad.void (BufferedWriter.write tmpOut (jget line) 0 (Prelude.length (jget line)))
            Control.Monad.void (BufferedWriter.newLine tmpOut)
        Control.Monad.void (BufferedWriter.flush tmpOut)
        pure ()


