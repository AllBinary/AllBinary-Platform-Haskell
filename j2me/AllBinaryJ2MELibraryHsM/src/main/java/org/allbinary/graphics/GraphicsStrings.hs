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
-- package org.allbinary.graphics
module GraphicsStrings where

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

data GraphicsStrings = GraphicsStrings
    { header_ :: JavaHeader
    , aNIMATION :: IORef (String)
    , aNGLE :: IORef (String)
    , mOVEMENT_ANGLE :: IORef (String)
    , rOTATION :: IORef (String)
    , oPACITY :: IORef (String)
    , hTML :: IORef (String)
    , wIDTH :: IORef (String)
    , hEIGHT :: IORef (String)
    }

instance JavaNull GraphicsStrings where
    javaNull = javaNullRecord "GraphicsStrings"

instance JavaEquals GraphicsStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GraphicsStrings where
    (==) = jrecordEquals

instance JavaObjectClass GraphicsStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GraphicsStrings
newRecord_ = do
    header_ <- newJavaHeader
    aNIMATION <- newIORef ""
    aNGLE <- newIORef ""
    mOVEMENT_ANGLE <- newIORef ""
    rOTATION <- newIORef ""
    oPACITY <- newIORef ""
    hTML <- newIORef ""
    wIDTH <- newIORef ""
    hEIGHT <- newIORef ""
    let this = GraphicsStrings header_ aNIMATION aNGLE mOVEMENT_ANGLE rOTATION oPACITY hTML wIDTH hEIGHT
    jregisterLevel header_ this
    pure this

initFields_ :: GraphicsStrings -> IO ()
initFields_ this = do
    jset this.aNIMATION ("animation")
    jset this.aNGLE ("angle")
    jset this.mOVEMENT_ANGLE ("movement_angle")
    jset this.rOTATION ("rotation")
    jset this.oPACITY ("opacity")
    jset this.hTML ("HTML")
    jset this.wIDTH ("width")
    jset this.hEIGHT ("height")
    pure ()

new_ :: IO GraphicsStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GraphicsStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GraphicsStrings)
getInstance = do
        pure (GraphicsStrings.instance_)


