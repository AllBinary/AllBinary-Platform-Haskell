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
module StaticPagesDbInitInfo (module StaticPagesDbInitInfo, module DbInitInfo) where

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

data StaticPagesDbInitInfo = StaticPagesDbInitInfo
    { header_ :: JavaHeader
    , base :: DbInitInfo.DbInitInfo
    }

instance JavaNull StaticPagesDbInitInfo where
    javaNull = javaNullRecord "StaticPagesDbInitInfo"

instance JavaEquals StaticPagesDbInitInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StaticPagesDbInitInfo where
    (==) = jrecordEquals

instance JavaObjectClass StaticPagesDbInitInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

iNITFILE = "staticpagesbinitdata.dat"

newRecord_ :: IO StaticPagesDbInitInfo
newRecord_ = do
    base <- DbInitInfo.newRecord_
    let header_ = base.header_
    let this = StaticPagesDbInitInfo header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: StaticPagesDbInitInfo -> IO ()
initFields_ this = do
    pure ()

new_ :: IO StaticPagesDbInitInfo
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StaticPagesDbInitInfo -> IO ()
init_ this = do
        DbInitInfo.init_2 this.base (iNITFILE) (True)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_1 :: Bool -> IO StaticPagesDbInitInfo
new_1 read = do
    this <- newRecord_
    init_1 this read
    pure this

init_1 :: StaticPagesDbInitInfo -> Bool -> IO ()
init_1 this read = do
        DbInitInfo.init_2 this.base (iNITFILE) (read)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


