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
-- package org.allbinary.game.midlet
module DemoGameMidletStateFactory where

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
import qualified DemoGameMidletState -- same package or java.lang

data DemoGameMidletStateFactory = DemoGameMidletStateFactory
    { header_ :: JavaHeader
    , nONE :: IORef (DemoGameMidletState.DemoGameMidletState)
    , sTART_DEMO :: IORef (DemoGameMidletState.DemoGameMidletState)
    , sTART_GAME :: IORef (DemoGameMidletState.DemoGameMidletState)
    , sTART_INPUT_MAPPING :: IORef (DemoGameMidletState.DemoGameMidletState)
    }

instance JavaNull DemoGameMidletStateFactory where
    javaNull = javaNullRecord "DemoGameMidletStateFactory"

instance JavaEquals DemoGameMidletStateFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DemoGameMidletStateFactory where
    (==) = jrecordEquals

instance JavaObjectClass DemoGameMidletStateFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sTATE #-}
sTATE = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DemoGameMidletStateFactory
newRecord_ = do
    header_ <- newJavaHeader
    nONE <- newIORef javaNull
    sTART_DEMO <- newIORef javaNull
    sTART_GAME <- newIORef javaNull
    sTART_INPUT_MAPPING <- newIORef javaNull
    let this = DemoGameMidletStateFactory header_ nONE sTART_DEMO sTART_GAME sTART_INPUT_MAPPING
    jregisterLevel header_ this
    pure this

initFields_ :: DemoGameMidletStateFactory -> IO ()
initFields_ this = do
    jset this.nONE =<< (DemoGameMidletState.new_)
    jset this.sTART_DEMO =<< (DemoGameMidletState.new_)
    jset this.sTART_GAME =<< (DemoGameMidletState.new_)
    jset this.sTART_INPUT_MAPPING =<< (DemoGameMidletState.new_)
    pure ()

new_ :: IO DemoGameMidletStateFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DemoGameMidletStateFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (DemoGameMidletStateFactory)
getInstance = do
        pure ((jget DemoGameMidletStateFactory.sTATE))


