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
-- package org.allbinary.device
module NullGL10 where

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
import qualified GL10 -- javax.microedition.khronos.opengles.GL10

-- implements GL10
data NullGL10 = NullGL10
    { header_ :: JavaHeader
    }

instance JavaNull NullGL10 where
    javaNull = javaNullRecord "NullGL10"

instance JavaEquals NullGL10 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullGL10 where
    (==) = jrecordEquals

instance JavaObjectClass NullGL10 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_GL10 #-}
nULL_GL10 = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullGL10
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullGL10 header_
    jregisterLevel header_ this
    GL10.registerInterface_ header_
    pure this

initFields_ :: NullGL10 -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullGL10
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullGL10 -> IO ()
init_ this = do
    initFields_ this


