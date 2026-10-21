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
-- package org.allbinary.logic.java
module PrimitiveArrayToString where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data PrimitiveArrayToString = PrimitiveArrayToString
    { header_ :: JavaHeader
    }

instance JavaNull PrimitiveArrayToString where
    javaNull = javaNullRecord "PrimitiveArrayToString"

instance JavaEquals PrimitiveArrayToString where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PrimitiveArrayToString where
    (==) = jrecordEquals

instance JavaObjectClass PrimitiveArrayToString where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PrimitiveArrayToString
newRecord_ = do
    header_ <- newJavaHeader
    let this = PrimitiveArrayToString header_
    jregisterLevel header_ this
    pure this

initFields_ :: PrimitiveArrayToString -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PrimitiveArrayToString
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PrimitiveArrayToString -> IO ()
init_ this = do
    initFields_ this


toString :: JavaArray (Float) -> IO (String)
toString floats = do
        stringBuffer <- (StringMaker.new_)
        forM_ [0 .. (jlength floats) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.appendfloat stringBuffer (jindex floats (index)))
        (StringMaker.toString stringBuffer)


