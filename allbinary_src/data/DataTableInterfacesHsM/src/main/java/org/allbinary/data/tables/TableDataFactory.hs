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
-- package org.allbinary.data.tables
module TableDataFactory where

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
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings

data TableDataFactory = TableDataFactory
    { header_ :: JavaHeader
    , iNTEGER_MAX_VALUE_STRING :: IORef (String)
    , zERO_STRING :: IORef (String)
    }

instance JavaNull TableDataFactory where
    javaNull = javaNullRecord "TableDataFactory"

instance JavaEquals TableDataFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TableDataFactory where
    (==) = jrecordEquals

instance JavaObjectClass TableDataFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TableDataFactory
newRecord_ = do
    header_ <- newJavaHeader
    iNTEGER_MAX_VALUE_STRING <- newIORef ""
    zERO_STRING <- newIORef ""
    let this = TableDataFactory header_ iNTEGER_MAX_VALUE_STRING zERO_STRING
    jregisterLevel header_ this
    pure this

initFields_ :: TableDataFactory -> IO ()
initFields_ this = do
    jset this.iNTEGER_MAX_VALUE_STRING ((javaToString (2147483647 :: Int)))
    jset this.zERO_STRING ((jget ((jio (CommonPhoneStrings.getInstance))).zERO))
    pure ()

new_ :: IO TableDataFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TableDataFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TableDataFactory)
getInstance = do
        pure (TableDataFactory.instance_)


