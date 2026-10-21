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
-- package org.allbinary.game.graphics.hud
module HudGraphicsPosition where

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
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory

data HudGraphicsPosition = HudGraphicsPosition
    { header_ :: JavaHeader
    , anchor :: IORef (Int)
    , point :: IORef (GPoint.GPoint)
    }

instance JavaNull HudGraphicsPosition where
    javaNull = javaNullRecord "HudGraphicsPosition"

instance JavaEquals HudGraphicsPosition where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HudGraphicsPosition where
    (==) = jrecordEquals

instance JavaObjectClass HudGraphicsPosition where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_HUD_GRAPHICS_POSITION #-}
nULL_HUD_GRAPHICS_POSITION = unsafePerformIO ((new_2 (jget ((jio (PointFactory.getInstance))).zERO_ZERO) 9))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HudGraphicsPosition
newRecord_ = do
    header_ <- newJavaHeader
    anchor <- newIORef 0
    point <- newIORef javaNull
    let this = HudGraphicsPosition header_ anchor point
    jregisterLevel header_ this
    jregisterMethod header_ "getAnchor" (\() -> getAnchor_impl this)
    jregisterMethod header_ "setAnchor" (\() -> setAnchor_impl this)
    jregisterMethod header_ "getPoint" (\() -> getPoint_impl this)
    jregisterMethod header_ "setPoint" (\() -> setPoint_impl this)
    pure this

initFields_ :: HudGraphicsPosition -> IO ()
initFields_ this = do
    jset this.anchor (0)
    jset this.point ((jget ((jio (PointFactory.getInstance))).zERO_ZERO))
    pure ()

new_2 :: GPoint.GPoint -> Int -> IO HudGraphicsPosition
new_2 point anchor = do
    this <- newRecord_
    init_2 this point anchor
    pure this

init_2 :: HudGraphicsPosition -> GPoint.GPoint -> Int -> IO ()
init_2 this point anchor = do
        initFields_ this
        Control.Monad.void (HudGraphicsPosition.setAnchor this anchor)
        Control.Monad.void (HudGraphicsPosition.setPoint this point)
        pure ()


getAnchor :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnchor object_ = jmethod object_ "getAnchor" (\() -> (getAnchor_impl (javaCast object_ :: HudGraphicsPosition))) ()

getAnchor_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnchor_super object_ = (getAnchor_impl (javaCast object_ :: HudGraphicsPosition))

getAnchor_impl :: HudGraphicsPosition -> IO (Int)
getAnchor_impl this = do
        pure ((jget (this).anchor))


setAnchor :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAnchor object_ a1 = jmethod object_ "setAnchor" (\() -> (setAnchor_impl (javaCast object_ :: HudGraphicsPosition))) () a1

setAnchor_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAnchor_super object_ a1 = (setAnchor_impl (javaCast object_ :: HudGraphicsPosition)) a1

setAnchor_impl :: HudGraphicsPosition -> Int -> IO (())
setAnchor_impl this anchor = do
        jset (this).anchor (anchor)
        pure ()


getPoint :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getPoint object_ = jmethod object_ "getPoint" (\() -> (getPoint_impl (javaCast object_ :: HudGraphicsPosition))) ()

getPoint_super :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getPoint_super object_ = (getPoint_impl (javaCast object_ :: HudGraphicsPosition))

getPoint_impl :: HudGraphicsPosition -> IO (GPoint.GPoint)
getPoint_impl this = do
        pure ((jget (this).point))


setPoint :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setPoint object_ a1 = jmethod object_ "setPoint" (\() -> (setPoint_impl (javaCast object_ :: HudGraphicsPosition))) () a1

setPoint_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setPoint_super object_ a1 = (setPoint_impl (javaCast object_ :: HudGraphicsPosition)) a1

setPoint_impl :: HudGraphicsPosition -> GPoint.GPoint -> IO (())
setPoint_impl this point = do
        jset (this).point (point)
        pure ()


