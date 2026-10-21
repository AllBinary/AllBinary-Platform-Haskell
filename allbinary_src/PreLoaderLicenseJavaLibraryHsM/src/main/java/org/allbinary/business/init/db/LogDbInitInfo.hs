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
-- package org.allbinary.business.init.db
module LogDbInitInfo (module LogDbInitInfo, module DbInitInfo) where

import DbInitInfo hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, iNITFILE)
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
import qualified DbInitInfo

data LogDbInitInfo = LogDbInitInfo
    { header_ :: JavaHeader
    , base :: DbInitInfo.DbInitInfo
    }

instance JavaNull LogDbInitInfo where
    javaNull = javaNullRecord "LogDbInitInfo"

instance JavaEquals LogDbInitInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogDbInitInfo where
    (==) = jrecordEquals

instance JavaObjectClass LogDbInitInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

iNITFILE = "logdbinitdata.dat"

newRecord_ :: IO LogDbInitInfo
newRecord_ = do
    base <- DbInitInfo.newRecord_
    let header_ = base.header_
    let this = LogDbInitInfo header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: LogDbInitInfo -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LogDbInitInfo
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogDbInitInfo -> IO ()
init_ this = do
        DbInitInfo.init_2 this.base (iNITFILE) (True)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_1 :: Bool -> IO LogDbInitInfo
new_1 read = do
    this <- newRecord_
    init_1 this read
    pure this

init_1 :: LogDbInitInfo -> Bool -> IO ()
init_1 this read = do
        DbInitInfo.init_2 this.base (iNITFILE) (read)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


