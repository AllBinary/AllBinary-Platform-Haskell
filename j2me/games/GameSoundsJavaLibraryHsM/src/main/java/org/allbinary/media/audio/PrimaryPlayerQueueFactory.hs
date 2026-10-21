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
-- package org.allbinary.media.audio
module PrimaryPlayerQueueFactory where

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
import qualified PlayerQueue -- same package or java.lang

data PrimaryPlayerQueueFactory = PrimaryPlayerQueueFactory
    { header_ :: JavaHeader
    }

instance JavaNull PrimaryPlayerQueueFactory where
    javaNull = javaNullRecord "PrimaryPlayerQueueFactory"

instance JavaEquals PrimaryPlayerQueueFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PrimaryPlayerQueueFactory where
    (==) = jrecordEquals

instance JavaObjectClass PrimaryPlayerQueueFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((PlayerQueue.new_1 4))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PrimaryPlayerQueueFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = PrimaryPlayerQueueFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: PrimaryPlayerQueueFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PrimaryPlayerQueueFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PrimaryPlayerQueueFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PlayerQueue.PlayerQueue)
getInstance = do
        pure (PrimaryPlayerQueueFactory.sINGLETON)


