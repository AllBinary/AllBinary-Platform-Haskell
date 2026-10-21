{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
module NullCloseable where

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
import qualified Closeable -- java.io.Closeable
import qualified IOException -- java.io.IOException

-- implements Closeable
data NullCloseable = NullCloseable
    { header_ :: JavaHeader
    }

instance JavaNull NullCloseable where
    javaNull = javaNullRecord "NullCloseable"

instance JavaEquals NullCloseable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullCloseable where
    (==) = jrecordEquals

instance JavaObjectClass NullCloseable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_CLOSEABLE #-}
nULL_CLOSEABLE = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullCloseable
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullCloseable header_
    jregisterLevel header_ this
    Closeable.registerInterface_ header_
    jregisterMethod header_ "close" (\() -> close_impl this)
    pure this

initFields_ :: NullCloseable -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullCloseable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullCloseable -> IO ()
init_ this = do
    initFields_ this


-- throws IOException
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: NullCloseable))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: NullCloseable))

close_impl :: NullCloseable -> IO (())
close_impl this = do
        pure ()


