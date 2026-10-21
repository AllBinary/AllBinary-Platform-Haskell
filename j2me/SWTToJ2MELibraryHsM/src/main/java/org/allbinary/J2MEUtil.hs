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
-- package org.allbinary
module J2MEUtil where

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

data J2MEUtil = J2MEUtil
    { header_ :: JavaHeader
    }

instance JavaNull J2MEUtil where
    javaNull = javaNullRecord "J2MEUtil"

instance JavaEquals J2MEUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq J2MEUtil where
    (==) = jrecordEquals

instance JavaObjectClass J2MEUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO J2MEUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = J2MEUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: J2MEUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO J2MEUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: J2MEUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isJ2ME :: IO (Bool)
isJ2ME = do
        pure (False)


isJ2SE :: IO (Bool)
isJ2SE = do
        pure (False)


isHTML :: IO (Bool)
isHTML = do
        pure (False)


