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
-- package org.allbinary.graphics.opengles.renderer
module RendererStrings where

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

data RendererStrings = RendererStrings
    { header_ :: JavaHeader
    , oN_SURFACE_CREATED :: IORef (String)
    , oN_SURFACE_CHANGED :: IORef (String)
    , oN_DRAW_FRAME :: IORef (String)
    , oN_DRAW_FRAME_THREED :: IORef (String)
    , oN_DRAW_FRAME_2D :: IORef (String)
    }

instance JavaNull RendererStrings where
    javaNull = javaNullRecord "RendererStrings"

instance JavaEquals RendererStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RendererStrings where
    (==) = jrecordEquals

instance JavaObjectClass RendererStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RendererStrings
newRecord_ = do
    header_ <- newJavaHeader
    oN_SURFACE_CREATED <- newIORef ""
    oN_SURFACE_CHANGED <- newIORef ""
    oN_DRAW_FRAME <- newIORef ""
    oN_DRAW_FRAME_THREED <- newIORef ""
    oN_DRAW_FRAME_2D <- newIORef ""
    let this = RendererStrings header_ oN_SURFACE_CREATED oN_SURFACE_CHANGED oN_DRAW_FRAME oN_DRAW_FRAME_THREED oN_DRAW_FRAME_2D
    jregisterLevel header_ this
    pure this

initFields_ :: RendererStrings -> IO ()
initFields_ this = do
    jset this.oN_SURFACE_CREATED ("onSurfaceCreated")
    jset this.oN_SURFACE_CHANGED ("onSurfaceChanged")
    jset this.oN_DRAW_FRAME ("onDrawFrame")
    jset this.oN_DRAW_FRAME_THREED ("onDrawFrameThreed")
    jset this.oN_DRAW_FRAME_2D ("onDrawFrame2d")
    pure ()

new_ :: IO RendererStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RendererStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (RendererStrings)
getInstance = do
        pure (RendererStrings.instance_)


