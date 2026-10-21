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
module BasicHudFactory where

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

data BasicHudFactory = BasicHudFactory
    { header_ :: JavaHeader
    , dIRECTION_EXCEPTION :: IORef (String)
    , vERTICAL :: IORef (Int)
    , hORIZONTAL :: IORef (Int)
    , bOTTOMLEFT :: IORef (Int)
    , bOTTOMRIGHT :: IORef (Int)
    , tOPLEFT :: IORef (Int)
    , tOPRIGHT :: IORef (Int)
    , bOTTOMCENTER :: IORef (Int)
    , tOPCENTER :: IORef (Int)
    , aBSOLUTE :: IORef (Int)
    }

instance JavaNull BasicHudFactory where
    javaNull = javaNullRecord "BasicHudFactory"

instance JavaEquals BasicHudFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicHudFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicHudFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicHudFactory
newRecord_ = do
    header_ <- newJavaHeader
    dIRECTION_EXCEPTION <- newIORef ""
    vERTICAL <- newIORef 0
    hORIZONTAL <- newIORef 0
    bOTTOMLEFT <- newIORef 0
    bOTTOMRIGHT <- newIORef 0
    tOPLEFT <- newIORef 0
    tOPRIGHT <- newIORef 0
    bOTTOMCENTER <- newIORef 0
    tOPCENTER <- newIORef 0
    aBSOLUTE <- newIORef 0
    let this = BasicHudFactory header_ dIRECTION_EXCEPTION vERTICAL hORIZONTAL bOTTOMLEFT bOTTOMRIGHT tOPLEFT tOPRIGHT bOTTOMCENTER tOPCENTER aBSOLUTE
    jregisterLevel header_ this
    pure this

initFields_ :: BasicHudFactory -> IO ()
initFields_ this = do
    jset this.dIRECTION_EXCEPTION ("Only Horizontal Direction is Allowed Currently")
    jset this.vERTICAL (0)
    jset this.hORIZONTAL (1)
    jset this.bOTTOMLEFT (0)
    jset this.bOTTOMRIGHT (1)
    jset this.tOPLEFT (2)
    jset this.tOPRIGHT (3)
    jset this.bOTTOMCENTER (4)
    jset this.tOPCENTER (5)
    jset this.aBSOLUTE (6)
    pure ()


getInstance :: IO (BasicHudFactory)
getInstance = do
        pure (BasicHudFactory.instance_)

new_ :: IO BasicHudFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicHudFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


