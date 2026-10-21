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
-- package org.allbinary.media
module AllBinaryVibrationME where

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

data AllBinaryVibrationME = AllBinaryVibrationME
    { header_ :: JavaHeader
    }

instance JavaNull AllBinaryVibrationME where
    javaNull = javaNullRecord "AllBinaryVibrationME"

instance JavaEquals AllBinaryVibrationME where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryVibrationME where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryVibrationME where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AllBinaryVibrationME
newRecord_ = do
    header_ <- newJavaHeader
    let this = AllBinaryVibrationME header_
    jregisterLevel header_ this
    jregisterMethod header_ "vibrate" (\() -> vibrate_impl this)
    pure this

initFields_ :: AllBinaryVibrationME -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AllBinaryVibrationME
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryVibrationME -> IO ()
init_ this = do
    initFields_ this


vibrate :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
vibrate object_ a1 a2 a3 = jmethod object_ "vibrate" (\() -> (vibrate_impl (javaCast object_ :: AllBinaryVibrationME))) () a1 a2 a3

vibrate_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
vibrate_super object_ a1 a2 a3 = (vibrate_impl (javaCast object_ :: AllBinaryVibrationME)) a1 a2 a3

vibrate_impl :: AllBinaryVibrationME -> Int -> Int -> Int -> IO (())
vibrate_impl this duration type_ volume = do
        pure ()


