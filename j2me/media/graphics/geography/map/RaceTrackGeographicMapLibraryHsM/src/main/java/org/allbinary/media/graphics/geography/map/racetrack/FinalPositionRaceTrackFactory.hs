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
-- package org.allbinary.media.graphics.geography.map.racetrack
module FinalPositionRaceTrackFactory where

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

data FinalPositionRaceTrackFactory = FinalPositionRaceTrackFactory
    { header_ :: JavaHeader
    }

instance JavaNull FinalPositionRaceTrackFactory where
    javaNull = javaNullRecord "FinalPositionRaceTrackFactory"

instance JavaEquals FinalPositionRaceTrackFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FinalPositionRaceTrackFactory where
    (==) = jrecordEquals

instance JavaObjectClass FinalPositionRaceTrackFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fIRST_POSITION = 1

{-# NOINLINE index #-}
index = unsafePerformIO (newIORef (FinalPositionRaceTrackFactory.fIRST_POSITION))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FinalPositionRaceTrackFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = FinalPositionRaceTrackFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: FinalPositionRaceTrackFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO FinalPositionRaceTrackFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FinalPositionRaceTrackFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (Int)
getInstance = do
        pure ((jpostIncrement FinalPositionRaceTrackFactory.index (+ 1)))


reset :: IO (())
reset = do
        jset FinalPositionRaceTrackFactory.index (FinalPositionRaceTrackFactory.fIRST_POSITION)
        pure ()


