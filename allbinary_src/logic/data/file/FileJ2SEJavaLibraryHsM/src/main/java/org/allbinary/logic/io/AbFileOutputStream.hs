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
module AbFileOutputStream (module AbFileOutputStream, module FileOutputStream) where

import FileOutputStream hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createFromAbFile, createFromAbFile_super, createFromAbFile_impl, createFromAbFileAppend, createFromAbFileAppend_super, createFromAbFileAppend_impl, createFromFilePath, createFromFilePath_super, createFromFilePath_impl, createFromFilePathAppend, createFromFilePathAppend_super, createFromFilePathAppend_impl)
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
import qualified FileNotFoundException -- java.io.FileNotFoundException
import qualified FileOutputStream -- java.io.FileOutputStream
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbFileNativeUtil -- org.allbinary.logic.io.file.AbFileNativeUtil

data AbFileOutputStream = AbFileOutputStream
    { header_ :: JavaHeader
    , base :: FileOutputStream.FileOutputStream
    }

instance JavaNull AbFileOutputStream where
    javaNull = javaNullRecord "AbFileOutputStream"

instance JavaEquals AbFileOutputStream where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbFileOutputStream where
    (==) = jrecordEquals

instance JavaObjectClass AbFileOutputStream where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AbFileOutputStream
newRecord_ = do
    base <- FileOutputStream.newRecord_
    let header_ = base.header_
    let this = AbFileOutputStream header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: AbFileOutputStream -> IO ()
initFields_ this = do
    pure ()


-- throws FileNotFoundException
createFromAbFile :: AbFile.AbFile -> IO (AbFileOutputStream)
createFromAbFile file = do
        (new_2 (jio (AbFile.getPath file)) False)


-- throws FileNotFoundException
createFromAbFileAppend :: AbFile.AbFile -> Bool -> IO (AbFileOutputStream)
createFromAbFileAppend file append = do
        (new_2 (jio (AbFile.getPath file)) append)


-- throws FileNotFoundException
createFromFilePath :: String -> IO (AbFileOutputStream)
createFromFilePath name = do
        (new_2 name False)


-- throws FileNotFoundException
createFromFilePathAppend :: String -> Bool -> IO (AbFileOutputStream)
createFromFilePathAppend name append = do
        (new_2 name append)

new_2 :: String -> Bool -> IO AbFileOutputStream
new_2 name append = do
    this <- newRecord_
    init_2 this name append
    pure this

init_2 :: AbFileOutputStream -> String -> Bool -> IO ()
init_2 this name append = do
        FileOutputStream.init_2 this.base (name) (append)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


