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
-- package org.allbinary.game.ag.layer.hud.basic
module HudResources where

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

data HudResources = HudResources
    { header_ :: JavaHeader
    , rESOURCE_LIFE :: IORef (String)
    , rESOURCE_HEALTH :: IORef (String)
    }

instance JavaNull HudResources where
    javaNull = javaNullRecord "HudResources"

instance JavaEquals HudResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HudResources where
    (==) = jrecordEquals

instance JavaObjectClass HudResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HudResources
newRecord_ = do
    header_ <- newJavaHeader
    rESOURCE_LIFE <- newIORef ""
    rESOURCE_HEALTH <- newIORef ""
    let this = HudResources header_ rESOURCE_LIFE rESOURCE_HEALTH
    jregisterLevel header_ this
    pure this

initFields_ :: HudResources -> IO ()
initFields_ this = do
    jset this.rESOURCE_LIFE ("/hud_life_10_by_10.png")
    jset this.rESOURCE_HEALTH ("/hud_health_10_by_10.png")
    pure ()


getInstance :: IO (HudResources)
getInstance = do
        pure (HudResources.instance_)

new_ :: IO HudResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HudResources -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


