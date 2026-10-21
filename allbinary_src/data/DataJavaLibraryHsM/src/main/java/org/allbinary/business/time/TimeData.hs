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
-- package org.allbinary.business.time
module TimeData where

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

data TimeData = TimeData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , sTART :: IORef (String)
    , eND :: IORef (String)
    }

instance JavaNull TimeData where
    javaNull = javaNullRecord "TimeData"

instance JavaEquals TimeData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimeData where
    (==) = jrecordEquals

instance JavaObjectClass TimeData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TimeData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    sTART <- newIORef ""
    eND <- newIORef ""
    let this = TimeData header_ nAME sTART eND
    jregisterLevel header_ this
    pure this

initFields_ :: TimeData -> IO ()
initFields_ this = do
    jset this.nAME ("TIME_NAME")
    jset this.sTART ("TIME_START")
    jset this.eND ("TIME_END")
    pure ()


getInstance :: IO (TimeData)
getInstance = do
        pure (TimeData.instance_)

new_ :: IO TimeData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TimeData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


