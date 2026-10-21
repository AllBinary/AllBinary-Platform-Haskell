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
module AbFileLocalInputStream (module AbFileLocalInputStream, module AbFileInputStream) where

import AbFileInputStream hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbFileNativeUtil -- org.allbinary.logic.io.file.AbFileNativeUtil
import qualified AbFileInputStream

data AbFileLocalInputStream = AbFileLocalInputStream
    { header_ :: JavaHeader
    , base :: AbFileInputStream.AbFileInputStream
    }

instance JavaNull AbFileLocalInputStream where
    javaNull = javaNullRecord "AbFileLocalInputStream"

instance JavaEquals AbFileLocalInputStream where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbFileLocalInputStream where
    (==) = jrecordEquals

instance JavaObjectClass AbFileLocalInputStream where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AbFileLocalInputStream
newRecord_ = do
    base <- AbFileInputStream.newRecord_
    let header_ = base.header_
    let this = AbFileLocalInputStream header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: AbFileLocalInputStream -> IO ()
initFields_ this = do
    pure ()

new_1 :: AbFile.AbFile -> IO AbFileLocalInputStream
new_1 file = do
    this <- newRecord_
    init_1 this file
    pure this

init_1 :: AbFileLocalInputStream -> AbFile.AbFile -> IO ()
init_1 this file = do
        AbFileInputStream.init_1 this.base (jio (AbFileNativeUtil.get file))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


