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
-- package org.allbinary.media.audio
module SoundStrings where

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

data SoundStrings = SoundStrings
    { header_ :: JavaHeader
    , sTOP_ALL :: IORef (String)
    , cLOSE_ALL :: IORef (String)
    , sOUND :: IORef (String)
    , iNIT_SOUND :: IORef (String)
    , sTOPPING_SOUND :: IORef (String)
    , cLOSING_SOUND :: IORef (String)
    }

instance JavaNull SoundStrings where
    javaNull = javaNullRecord "SoundStrings"

instance JavaEquals SoundStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SoundStrings where
    (==) = jrecordEquals

instance JavaObjectClass SoundStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SoundStrings
newRecord_ = do
    header_ <- newJavaHeader
    sTOP_ALL <- newIORef ""
    cLOSE_ALL <- newIORef ""
    sOUND <- newIORef ""
    iNIT_SOUND <- newIORef ""
    sTOPPING_SOUND <- newIORef ""
    cLOSING_SOUND <- newIORef ""
    let this = SoundStrings header_ sTOP_ALL cLOSE_ALL sOUND iNIT_SOUND sTOPPING_SOUND cLOSING_SOUND
    jregisterLevel header_ this
    pure this

initFields_ :: SoundStrings -> IO ()
initFields_ this = do
    jset this.sTOP_ALL ("stopAll")
    jset this.cLOSE_ALL ("closeAll")
    jset this.sOUND (" Sound: ")
    jset this.iNIT_SOUND ("Initializing Sound: ")
    jset this.sTOPPING_SOUND ("Stopping Sound: ")
    jset this.cLOSING_SOUND ("Closing Sound: ")
    pure ()

new_ :: IO SoundStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SoundStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (SoundStrings)
getInstance = do
        pure (SoundStrings.instance_)


