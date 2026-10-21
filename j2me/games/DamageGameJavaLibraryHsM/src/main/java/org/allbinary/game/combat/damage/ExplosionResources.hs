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
-- package org.allbinary.game.combat.damage
module ExplosionResources where

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

data ExplosionResources = ExplosionResources
    { header_ :: JavaHeader
    , eXPLOSION_90_RESOURCE :: IORef (String)
    , eXPLOSION_60_RESOURCE :: IORef (String)
    , hALF_EXPLOSION_RESOURCE :: IORef (String)
    , tHIRD_EXPLOSION_RESOURCE :: IORef (String)
    }

instance JavaNull ExplosionResources where
    javaNull = javaNullRecord "ExplosionResources"

instance JavaEquals ExplosionResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ExplosionResources where
    (==) = jrecordEquals

instance JavaObjectClass ExplosionResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ExplosionResources
newRecord_ = do
    header_ <- newJavaHeader
    eXPLOSION_90_RESOURCE <- newIORef ""
    eXPLOSION_60_RESOURCE <- newIORef ""
    hALF_EXPLOSION_RESOURCE <- newIORef ""
    tHIRD_EXPLOSION_RESOURCE <- newIORef ""
    let this = ExplosionResources header_ eXPLOSION_90_RESOURCE eXPLOSION_60_RESOURCE hALF_EXPLOSION_RESOURCE tHIRD_EXPLOSION_RESOURCE
    jregisterLevel header_ this
    pure this

initFields_ :: ExplosionResources -> IO ()
initFields_ this = do
    jset this.eXPLOSION_90_RESOURCE ("/explosion_sprite_90_by_90.png")
    jset this.eXPLOSION_60_RESOURCE ("/explosion_sprite_60_by_60.png")
    jset this.hALF_EXPLOSION_RESOURCE ("/explosion_sprite_30_by_30.png")
    jset this.tHIRD_EXPLOSION_RESOURCE ("/explosion_sprite_15_by_15.png")
    pure ()


getInstance :: IO (ExplosionResources)
getInstance = do
        pure (ExplosionResources.instance_)

new_ :: IO ExplosionResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ExplosionResources -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


