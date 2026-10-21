{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
module ScreenInfo where

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

data ScreenInfo = ScreenInfo
    { header_ :: JavaHeader
    , sMALL_WIDTH :: IORef (Int)
    , sMALL_HEIGHT :: IORef (Int)
    , mEDIUM_WIDTH :: IORef (Int)
    , mEDIUM_HEIGHT :: IORef (Int)
    }

instance JavaNull ScreenInfo where
    javaNull = javaNullRecord "ScreenInfo"

instance JavaEquals ScreenInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScreenInfo where
    (==) = jrecordEquals

instance JavaObjectClass ScreenInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ScreenInfo
newRecord_ = do
    header_ <- newJavaHeader
    sMALL_WIDTH <- newIORef 0
    sMALL_HEIGHT <- newIORef 0
    mEDIUM_WIDTH <- newIORef 0
    mEDIUM_HEIGHT <- newIORef 0
    let this = ScreenInfo header_ sMALL_WIDTH sMALL_HEIGHT mEDIUM_WIDTH mEDIUM_HEIGHT
    jregisterLevel header_ this
    pure this

initFields_ :: ScreenInfo -> IO ()
initFields_ this = do
    jset this.sMALL_WIDTH (320)
    jset this.sMALL_HEIGHT (240)
    jset this.mEDIUM_WIDTH (800)
    jset this.mEDIUM_HEIGHT (600)
    pure ()

new_ :: IO ScreenInfo
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ScreenInfo -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ScreenInfo)
getInstance = do
        pure (ScreenInfo.instance_)


