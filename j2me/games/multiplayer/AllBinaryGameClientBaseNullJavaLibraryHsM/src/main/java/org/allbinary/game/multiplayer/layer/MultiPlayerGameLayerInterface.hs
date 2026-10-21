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
-- package org.allbinary.game.multiplayer.layer
module MultiPlayerGameLayerInterface where

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
import qualified MultiplayerBehavior -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data MultiPlayerGameLayerInterface = MultiPlayerGameLayerInterface
    { header_ :: JavaHeader
    }

instance JavaNull MultiPlayerGameLayerInterface where
    javaNull = javaNullRecord "MultiPlayerGameLayerInterface"

instance JavaEquals MultiPlayerGameLayerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MultiPlayerGameLayerInterface where
    (==) = jrecordEquals

instance JavaObjectClass MultiPlayerGameLayerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> MultiPlayerGameLayerInterface
fromHeader_ header = MultiPlayerGameLayerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (MultiPlayerGameLayerInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getMultiplayerBehavior :: (JavaObjectClass this_) => this_ -> IO (MultiplayerBehavior.MultiplayerBehavior)
getMultiplayerBehavior object_ = jmethod object_ "getMultiplayerBehavior" (\() -> (getMultiplayerBehavior_impl (javaCast object_ :: MultiPlayerGameLayerInterface))) ()

getMultiplayerBehavior_super :: (JavaObjectClass this_) => this_ -> IO (MultiplayerBehavior.MultiplayerBehavior)
getMultiplayerBehavior_super object_ = (getMultiplayerBehavior_impl (javaCast object_ :: MultiPlayerGameLayerInterface))

getMultiplayerBehavior_impl :: MultiPlayerGameLayerInterface -> IO (MultiplayerBehavior.MultiplayerBehavior)
getMultiplayerBehavior_impl this = javaAbstractMethod "getMultiplayerBehavior"


