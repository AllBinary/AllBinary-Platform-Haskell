{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.media.graphics.geography.pathfinding
module MultipassState where

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

data MultipassState = MultipassState
    { header_ :: JavaHeader
    , step :: IORef (Int)
    , iteration :: IORef (Int)
    , iteration2 :: IORef (Int)
    }

instance JavaNull MultipassState where
    javaNull = javaNullRecord "MultipassState"

instance JavaEquals MultipassState where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MultipassState where
    (==) = jrecordEquals

instance JavaObjectClass MultipassState where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MultipassState
newRecord_ = do
    header_ <- newJavaHeader
    step <- newIORef 0
    iteration <- newIORef 0
    iteration2 <- newIORef 0
    let this = MultipassState header_ step iteration iteration2
    jregisterLevel header_ this
    pure this

initFields_ :: MultipassState -> IO ()
initFields_ this = do
    jset this.step (0)
    jset this.iteration (0)
    jset this.iteration2 (0)
    pure ()

new_ :: IO MultipassState
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MultipassState -> IO ()
init_ this = do
    initFields_ this


