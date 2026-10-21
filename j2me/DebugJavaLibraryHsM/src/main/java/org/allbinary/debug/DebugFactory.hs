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
-- package org.allbinary.debug
module DebugFactory where

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
import qualified NoDebug -- same package or java.lang
import qualified DebugInterface -- same package or java.lang

data DebugFactory = DebugFactory
    { header_ :: JavaHeader
    }

instance JavaNull DebugFactory where
    javaNull = javaNullRecord "DebugFactory"

instance JavaEquals DebugFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DebugFactory where
    (==) = jrecordEquals

instance JavaObjectClass DebugFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DebugFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = DebugFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: DebugFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DebugFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DebugFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (DebugInterface.DebugInterface)
getInstance = do
        (NoDebug.getInstance)


