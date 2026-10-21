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
module AbDataInputStream (module AbDataInputStream, module DataInputStream) where

import DataInputStream hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified DataInputStream -- java.io.DataInputStream
import qualified InputStream -- java.io.InputStream

data AbDataInputStream = AbDataInputStream
    { header_ :: JavaHeader
    , base :: DataInputStream.DataInputStream
    }

instance JavaNull AbDataInputStream where
    javaNull = javaNullRecord "AbDataInputStream"

instance JavaEquals AbDataInputStream where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbDataInputStream where
    (==) = jrecordEquals

instance JavaObjectClass AbDataInputStream where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AbDataInputStream
newRecord_ = do
    base <- DataInputStream.newRecord_
    let header_ = base.header_
    let this = AbDataInputStream header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: AbDataInputStream -> IO ()
initFields_ this = do
    pure ()

new_1 :: InputStream.InputStream -> IO AbDataInputStream
new_1 out = do
    this <- newRecord_
    init_1 this out
    pure this

init_1 :: AbDataInputStream -> InputStream.InputStream -> IO ()
init_1 this out = do
        DataInputStream.init_1 this.base (out)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


