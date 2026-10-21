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
-- package org.allbinary.android
module NullAndroidCanvas where

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
import qualified Canvas -- android.graphics.Canvas
import qualified MediaPlayer -- android.media.MediaPlayer

data NullAndroidCanvas = NullAndroidCanvas
    { header_ :: JavaHeader
    }

instance JavaNull NullAndroidCanvas where
    javaNull = javaNullRecord "NullAndroidCanvas"

instance JavaEquals NullAndroidCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullAndroidCanvas where
    (==) = jrecordEquals

instance JavaObjectClass NullAndroidCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_CANVAS #-}
nULL_CANVAS = unsafePerformIO ((Canvas.new_))

{-# NOINLINE nULL_MEDIA_PLAYER #-}
nULL_MEDIA_PLAYER = unsafePerformIO ((MediaPlayer.new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullAndroidCanvas
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullAndroidCanvas header_
    jregisterLevel header_ this
    pure this

initFields_ :: NullAndroidCanvas -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullAndroidCanvas
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullAndroidCanvas -> IO ()
init_ this = do
    initFields_ this


