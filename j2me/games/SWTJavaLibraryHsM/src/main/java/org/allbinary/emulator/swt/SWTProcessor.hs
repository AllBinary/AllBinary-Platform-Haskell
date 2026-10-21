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
-- package org.allbinary.emulator.swt
module SWTProcessor where

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
import qualified Runnable -- same package or java.lang
import qualified NullRunnable -- org.allbinary.thread.NullRunnable
import qualified Display -- org.eclipse.swt.widgets.Display

data SWTProcessor = SWTProcessor
    { header_ :: JavaHeader
    , runnable :: IORef (Runnable.Runnable)
    }

instance JavaNull SWTProcessor where
    javaNull = javaNullRecord "SWTProcessor"

instance JavaEquals SWTProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SWTProcessor where
    (==) = jrecordEquals

instance JavaObjectClass SWTProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SWTProcessor
newRecord_ = do
    header_ <- newJavaHeader
    runnable <- newIORef javaNull
    let this = SWTProcessor header_ runnable
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: SWTProcessor -> IO ()
initFields_ this = do
    jset this.runnable =<< (fmap (\value_ -> javaCast value_ :: Runnable.Runnable) (NullRunnable.getInstance))
    pure ()


getInstance :: IO (SWTProcessor)
getInstance = do
        pure (SWTProcessor.instance_)

new_ :: IO SWTProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SWTProcessor -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


process :: (JavaObjectClass this_) => this_ -> Display.Display -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: SWTProcessor))) () a1

process_super :: (JavaObjectClass this_) => this_ -> Display.Display -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: SWTProcessor)) a1

process_impl :: SWTProcessor -> Display.Display -> IO (())
process_impl this display = do
        Control.Monad.void (Display.sleep display)
        pure ()


