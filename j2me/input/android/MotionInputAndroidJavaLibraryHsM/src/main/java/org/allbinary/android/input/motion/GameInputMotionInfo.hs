{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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
-- package org.allbinary.android.input.motion
module GameInputMotionInfo where

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

data GameInputMotionInfo = GameInputMotionInfo
    { header_ :: JavaHeader
    , mAX_API :: IORef (Int)
    , mAX_POINTERS :: IORef (Int)
    }

instance JavaNull GameInputMotionInfo where
    javaNull = javaNullRecord "GameInputMotionInfo"

instance JavaEquals GameInputMotionInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInputMotionInfo where
    (==) = jrecordEquals

instance JavaObjectClass GameInputMotionInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameInputMotionInfo
newRecord_ = do
    header_ <- newJavaHeader
    mAX_API <- newIORef 0
    mAX_POINTERS <- newIORef 0
    let this = GameInputMotionInfo header_ mAX_API mAX_POINTERS
    jregisterLevel header_ this
    pure this

initFields_ :: GameInputMotionInfo -> IO ()
initFields_ this = do
    jset this.mAX_API (0)
    jset this.mAX_POINTERS (0)
    pure ()

new_2 :: Int -> Int -> IO GameInputMotionInfo
new_2 maxApi maxPointers = do
    this <- newRecord_
    init_2 this maxApi maxPointers
    pure this

init_2 :: GameInputMotionInfo -> Int -> Int -> IO ()
init_2 this maxApi maxPointers = do
        initFields_ this
        jset (this).mAX_API (maxApi)
        jset (this).mAX_POINTERS (maxPointers)
        pure ()


