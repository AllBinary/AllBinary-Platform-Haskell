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
-- package org.allbinary.game.tick
module NullTickable where

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
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified TickableInterface

-- implements TickableInterface
data NullTickable = NullTickable
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    }

instance JavaNull NullTickable where
    javaNull = javaNullRecord "NullTickable"

instance JavaEquals NullTickable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullTickable where
    (==) = jrecordEquals

instance JavaObjectClass NullTickable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullTickable
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    let this = NullTickable header_ nAME
    jregisterLevel header_ this
    TickableInterface.registerInterface_ header_
    jregisterMethod header_ "processTick" (\() -> processTick_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    pure this

initFields_ :: NullTickable -> IO ()
initFields_ this = do
    jset this.nAME ("NulLTickable")
    pure ()

new_ :: IO NullTickable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullTickable -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (NullTickable)
getInstance = do
        pure (NullTickable.sINGLETON)


-- throws Exception
processTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick object_ a1 = jmethod object_ "processTick" (\() -> (processTick_impl (javaCast object_ :: NullTickable))) () a1

processTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_super object_ a1 = (processTick_impl (javaCast object_ :: NullTickable)) a1

processTick_impl :: NullTickable -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_impl this allBinaryLayerManager = do
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: NullTickable))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: NullTickable))

getName_impl :: NullTickable -> IO (String)
getName_impl this = do
        pure ((jget (this).nAME))


