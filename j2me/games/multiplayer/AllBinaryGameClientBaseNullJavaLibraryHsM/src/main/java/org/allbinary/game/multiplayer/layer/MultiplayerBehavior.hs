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
module MultiplayerBehavior where

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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data MultiplayerBehavior = MultiplayerBehavior
    { header_ :: JavaHeader
    }

instance JavaNull MultiplayerBehavior where
    javaNull = javaNullRecord "MultiplayerBehavior"

instance JavaEquals MultiplayerBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MultiplayerBehavior where
    (==) = jrecordEquals

instance JavaObjectClass MultiplayerBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_MULTIPLAYER_BEHAVIOR #-}
nULL_MULTIPLAYER_BEHAVIOR = unsafePerformIO ((new_1 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MultiplayerBehavior
newRecord_ = do
    header_ <- newJavaHeader
    let this = MultiplayerBehavior header_
    jregisterLevel header_ this
    jregisterMethod header_ "startTick" (\() -> startTick_impl this)
    jregisterMethod header_ "endTick" (\() -> endTick_impl this)
    jregisterMethod header_ "getApproximateElapsed" (\() -> getApproximateElapsed_impl this)
    pure this

initFields_ :: MultiplayerBehavior -> IO ()
initFields_ this = do
    pure ()

new_1 :: String -> IO MultiplayerBehavior
new_1 username = do
    this <- newRecord_
    init_1 this username
    pure this

init_1 :: MultiplayerBehavior -> String -> IO ()
init_1 this username = do
        initFields_ this
        pure ()
        pure ()


startTick :: (JavaObjectClass this_) => this_ -> IO (())
startTick object_ = jmethod object_ "startTick" (\() -> (startTick_impl (javaCast object_ :: MultiplayerBehavior))) ()

startTick_super :: (JavaObjectClass this_) => this_ -> IO (())
startTick_super object_ = (startTick_impl (javaCast object_ :: MultiplayerBehavior))

startTick_impl :: MultiplayerBehavior -> IO (())
startTick_impl this = do
        pure ()


endTick :: (JavaObjectClass this_) => this_ -> IO (())
endTick object_ = jmethod object_ "endTick" (\() -> (endTick_impl (javaCast object_ :: MultiplayerBehavior))) ()

endTick_super :: (JavaObjectClass this_) => this_ -> IO (())
endTick_super object_ = (endTick_impl (javaCast object_ :: MultiplayerBehavior))

endTick_impl :: MultiplayerBehavior -> IO (())
endTick_impl this = do
        pure ()


getApproximateElapsed :: (JavaObjectClass this_) => this_ -> IO (Int64)
getApproximateElapsed object_ = jmethod object_ "getApproximateElapsed" (\() -> (getApproximateElapsed_impl (javaCast object_ :: MultiplayerBehavior))) ()

getApproximateElapsed_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getApproximateElapsed_super object_ = (getApproximateElapsed_impl (javaCast object_ :: MultiplayerBehavior))

getApproximateElapsed_impl :: MultiplayerBehavior -> IO (Int64)
getApproximateElapsed_impl this = do
        pure (0)


