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
-- package org.allbinary.thread
module ThreadPoolStrings where

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

data ThreadPoolStrings = ThreadPoolStrings
    { header_ :: JavaHeader
    , aDD_TASK :: IORef (String)
    , sTART_TASK :: IORef (String)
    , cOMPLETE_TASK :: IORef (String)
    }

instance JavaNull ThreadPoolStrings where
    javaNull = javaNullRecord "ThreadPoolStrings"

instance JavaEquals ThreadPoolStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThreadPoolStrings where
    (==) = jrecordEquals

instance JavaObjectClass ThreadPoolStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ThreadPoolStrings
newRecord_ = do
    header_ <- newJavaHeader
    aDD_TASK <- newIORef ""
    sTART_TASK <- newIORef ""
    cOMPLETE_TASK <- newIORef ""
    let this = ThreadPoolStrings header_ aDD_TASK sTART_TASK cOMPLETE_TASK
    jregisterLevel header_ this
    pure this

initFields_ :: ThreadPoolStrings -> IO ()
initFields_ this = do
    jset this.aDD_TASK ("addTask")
    jset this.sTART_TASK ("Started Task: ")
    jset this.cOMPLETE_TASK ("Completed Task: ")
    pure ()

new_ :: IO ThreadPoolStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ThreadPoolStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ThreadPoolStrings)
getInstance = do
        pure (ThreadPoolStrings.instance_)


