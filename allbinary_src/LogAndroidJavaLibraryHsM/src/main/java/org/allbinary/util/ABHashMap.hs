{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
-- package org.allbinary.util
module ABHashMap (module ABHashMap, module HashMap) where

import HashMap hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified HashMap -- java.util.HashMap

data ABHashMap = ABHashMap
    { header_ :: JavaHeader
    , base :: HashMap.HashMap
    }

instance JavaNull ABHashMap where
    javaNull = javaNullRecord "ABHashMap"

instance JavaEquals ABHashMap where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABHashMap where
    (==) = jrecordEquals

instance JavaObjectClass ABHashMap where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ABHashMap
newRecord_ = do
    base <- HashMap.newRecord_
    header_ <- newJavaHeader
    let this = ABHashMap header_ base
    jregisterLevel header_ this
    jregisterLevel header_ base
    pure this

initFields_ :: ABHashMap -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ABHashMap
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ABHashMap -> IO ()
init_ this = do
    HashMap.init_ this.base
    initFields_ this


