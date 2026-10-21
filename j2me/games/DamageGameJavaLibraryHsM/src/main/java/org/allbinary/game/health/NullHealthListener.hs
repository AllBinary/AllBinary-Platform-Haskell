{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.game.health
module NullHealthListener where

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
import qualified HealthListenerInterface

-- implements HealthListenerInterface
data NullHealthListener = NullHealthListener
    { header_ :: JavaHeader
    }

instance JavaNull NullHealthListener where
    javaNull = javaNullRecord "NullHealthListener"

instance JavaEquals NullHealthListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullHealthListener where
    (==) = jrecordEquals

instance JavaObjectClass NullHealthListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_HEALTH_LISTENER #-}
nULL_HEALTH_LISTENER = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullHealthListener
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullHealthListener header_
    jregisterLevel header_ this
    HealthListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onHealthChange" (\() -> onHealthChange_impl this)
    pure this

initFields_ :: NullHealthListener -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullHealthListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullHealthListener -> IO ()
init_ this = do
    initFields_ this


onHealthChange :: (JavaObjectClass this_) => this_ -> IO (())
onHealthChange object_ = jmethod object_ "onHealthChange" (\() -> (onHealthChange_impl (javaCast object_ :: NullHealthListener))) ()

onHealthChange_super :: (JavaObjectClass this_) => this_ -> IO (())
onHealthChange_super object_ = (onHealthChange_impl (javaCast object_ :: NullHealthListener))

onHealthChange_impl :: NullHealthListener -> IO (())
onHealthChange_impl this = do
        pure ()


