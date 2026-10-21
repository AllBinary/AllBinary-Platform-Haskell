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
-- package org.allbinary.media.graphics.geography.map
module PathData where

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

data PathData = PathData
    { header_ :: JavaHeader
    , oFFSET :: IORef (Int)
    }

instance JavaNull PathData where
    javaNull = javaNullRecord "PathData"

instance JavaEquals PathData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathData where
    (==) = jrecordEquals

instance JavaObjectClass PathData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PathData
newRecord_ = do
    header_ <- newJavaHeader
    oFFSET <- newIORef 0
    let this = PathData header_ oFFSET
    jregisterLevel header_ this
    pure this

initFields_ :: PathData -> IO ()
initFields_ this = do
    jset this.oFFSET (400)
    pure ()

new_ :: IO PathData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PathData -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PathData)
getInstance = do
        pure (PathData.instance_)


