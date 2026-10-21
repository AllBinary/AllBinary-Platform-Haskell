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
-- package org.allbinary.media.audio.music
module MusicStrings where

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

data MusicStrings = MusicStrings
    { header_ :: JavaHeader
    , sONG_EXTRA :: IORef (String)
    , lEFT_VOLUME :: IORef (String)
    , rIGHT_VOLUME :: IORef (String)
    }

instance JavaNull MusicStrings where
    javaNull = javaNullRecord "MusicStrings"

instance JavaEquals MusicStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MusicStrings where
    (==) = jrecordEquals

instance JavaObjectClass MusicStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MusicStrings
newRecord_ = do
    header_ <- newJavaHeader
    sONG_EXTRA <- newIORef ""
    lEFT_VOLUME <- newIORef ""
    rIGHT_VOLUME <- newIORef ""
    let this = MusicStrings header_ sONG_EXTRA lEFT_VOLUME rIGHT_VOLUME
    jregisterLevel header_ this
    pure this

initFields_ :: MusicStrings -> IO ()
initFields_ this = do
    jset this.sONG_EXTRA ("SONG")
    jset this.lEFT_VOLUME ("LEFT_VOLUME")
    jset this.rIGHT_VOLUME ("RIGHT_VOLUME")
    pure ()

new_ :: IO MusicStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MusicStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (MusicStrings)
getInstance = do
        pure (MusicStrings.instance_)


