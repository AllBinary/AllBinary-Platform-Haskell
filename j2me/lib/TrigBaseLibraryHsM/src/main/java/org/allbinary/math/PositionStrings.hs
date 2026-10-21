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
-- package org.allbinary.math
module PositionStrings where

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
import qualified JsType -- jsinterop.annotations.JsType
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsProperty -- jsinterop.annotations.JsProperty

data PositionStrings = PositionStrings
    { header_ :: JavaHeader
    , x :: IORef (String)
    , y :: IORef (String)
    , x_LABEL :: IORef (String)
    , y_LABEL :: IORef (String)
    , z_LABEL :: IORef (String)
    , dX_LABEL :: IORef (String)
    , dY_LABEL :: IORef (String)
    , dZ_LABEL :: IORef (String)
    }

instance JavaNull PositionStrings where
    javaNull = javaNullRecord "PositionStrings"

instance JavaEquals PositionStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PositionStrings where
    (==) = jrecordEquals

instance JavaObjectClass PositionStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PositionStrings
newRecord_ = do
    header_ <- newJavaHeader
    x <- newIORef ""
    y <- newIORef ""
    x_LABEL <- newIORef ""
    y_LABEL <- newIORef ""
    z_LABEL <- newIORef ""
    dX_LABEL <- newIORef ""
    dY_LABEL <- newIORef ""
    dZ_LABEL <- newIORef ""
    let this = PositionStrings header_ x y x_LABEL y_LABEL z_LABEL dX_LABEL dY_LABEL dZ_LABEL
    jregisterLevel header_ this
    pure this

initFields_ :: PositionStrings -> IO ()
initFields_ this = do
    jset this.x ("x")
    jset this.y ("y")
    jset this.x_LABEL ("x: ")
    jset this.y_LABEL ("y: ")
    jset this.z_LABEL ("z: ")
    jset this.dX_LABEL ("dx: ")
    jset this.dY_LABEL ("dy: ")
    jset this.dZ_LABEL ("dz: ")
    pure ()

new_ :: IO PositionStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PositionStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PositionStrings)
getInstance = do
        pure (PositionStrings.instance_)


