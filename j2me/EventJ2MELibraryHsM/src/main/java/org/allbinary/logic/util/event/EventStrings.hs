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
-- package org.allbinary.logic.util.event
module EventStrings where

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

data EventStrings = EventStrings
    { header_ :: JavaHeader
    , pERFORMANCE_MESSAGE :: IORef (String)
    , tOTAL_LISTENERS :: IORef (String)
    , lISTENER_LABEL :: IORef (String)
    , fIRE_EVENT :: IORef (String)
    }

instance JavaNull EventStrings where
    javaNull = javaNullRecord "EventStrings"

instance JavaEquals EventStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EventStrings where
    (==) = jrecordEquals

instance JavaObjectClass EventStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO EventStrings
newRecord_ = do
    header_ <- newJavaHeader
    pERFORMANCE_MESSAGE <- newIORef ""
    tOTAL_LISTENERS <- newIORef ""
    lISTENER_LABEL <- newIORef ""
    fIRE_EVENT <- newIORef ""
    let this = EventStrings header_ pERFORMANCE_MESSAGE tOTAL_LISTENERS lISTENER_LABEL fIRE_EVENT
    jregisterLevel header_ this
    pure this

initFields_ :: EventStrings -> IO ()
initFields_ this = do
    jset this.pERFORMANCE_MESSAGE ("Use Custom onEvent Methods for needed optimization")
    jset this.tOTAL_LISTENERS ("Total Listeners: ")
    jset this.lISTENER_LABEL (" Listener: ")
    jset this.fIRE_EVENT ("fireEvent")
    pure ()

new_ :: IO EventStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: EventStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (EventStrings)
getInstance = do
        pure (EventStrings.instance_)


