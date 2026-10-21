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
-- package org.allbinary.logic.java.number
module LongData where

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

data LongData = LongData
    { header_ :: JavaHeader
    }

instance JavaNull LongData where
    javaNull = javaNullRecord "LongData"

instance JavaEquals LongData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LongData where
    (==) = jrecordEquals

instance JavaObjectClass LongData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE mAX_LONG_LENGTH #-}
mAX_LONG_LENGTH = unsafePerformIO (newIORef ((Prelude.length (javaToString (Prelude.fromIntegral ((Prelude.maxBound :: Int64)) :: Int64)))))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LongData
newRecord_ = do
    header_ <- newJavaHeader
    let this = LongData header_
    jregisterLevel header_ this
    pure this

initFields_ :: LongData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LongData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LongData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


