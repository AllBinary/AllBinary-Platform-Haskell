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
-- package org.allbinary.graphics
module ScreenListenerHandler where

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
import qualified ScreenEmptyListener -- same package or java.lang
import qualified ScreenListenerInterface -- same package or java.lang

data ScreenListenerHandler = ScreenListenerHandler
    { header_ :: JavaHeader
    , screenListenerInterface :: IORef (ScreenListenerInterface.ScreenListenerInterface)
    }

instance JavaNull ScreenListenerHandler where
    javaNull = javaNullRecord "ScreenListenerHandler"

instance JavaEquals ScreenListenerHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScreenListenerHandler where
    (==) = jrecordEquals

instance JavaObjectClass ScreenListenerHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ScreenListenerHandler
newRecord_ = do
    header_ <- newJavaHeader
    screenListenerInterface <- newIORef javaNull
    let this = ScreenListenerHandler header_ screenListenerInterface
    jregisterLevel header_ this
    jregisterMethod header_ "setListener" (\() -> setListener_impl this)
    jregisterMethod header_ "fireWithState" (\() -> fireWithState_impl this)
    jregisterMethod header_ "fire" (\() -> fire_impl this)
    pure this

initFields_ :: ScreenListenerHandler -> IO ()
initFields_ this = do
    jset this.screenListenerInterface =<< (fmap (\value_ -> javaCast value_ :: ScreenListenerInterface.ScreenListenerInterface) (ScreenEmptyListener.new_))
    pure ()

new_ :: IO ScreenListenerHandler
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ScreenListenerHandler -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ScreenListenerHandler)
getInstance = do
        pure (ScreenListenerHandler.instance_)


setListener :: (JavaObjectClass this_) => this_ -> ScreenListenerInterface.ScreenListenerInterface -> IO (())
setListener object_ a1 = jmethod object_ "setListener" (\() -> (setListener_impl (javaCast object_ :: ScreenListenerHandler))) () a1

setListener_super :: (JavaObjectClass this_) => this_ -> ScreenListenerInterface.ScreenListenerInterface -> IO (())
setListener_super object_ a1 = (setListener_impl (javaCast object_ :: ScreenListenerHandler)) a1

setListener_impl :: ScreenListenerHandler -> ScreenListenerInterface.ScreenListenerInterface -> IO (())
setListener_impl this screenListenerInterface = do
        jset (this).screenListenerInterface (screenListenerInterface)
        pure ()


fireWithState :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
fireWithState object_ a1 = jmethod object_ "fireWithState" (\() -> (fireWithState_impl (javaCast object_ :: ScreenListenerHandler))) () a1

fireWithState_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
fireWithState_super object_ a1 = (fireWithState_impl (javaCast object_ :: ScreenListenerHandler)) a1

fireWithState_impl :: ScreenListenerHandler -> Bool -> IO (())
fireWithState_impl this isFullScreen = do
        Control.Monad.void (ScreenListenerInterface.onFullScreen ((jget (this).screenListenerInterface)) isFullScreen)
        pure ()


fire :: (JavaObjectClass this_) => this_ -> IO (())
fire object_ = jmethod object_ "fire" (\() -> (fire_impl (javaCast object_ :: ScreenListenerHandler))) ()

fire_super :: (JavaObjectClass this_) => this_ -> IO (())
fire_super object_ = (fire_impl (javaCast object_ :: ScreenListenerHandler))

fire_impl :: ScreenListenerHandler -> IO (())
fire_impl this = do
        Control.Monad.void (ScreenListenerInterface.onFullScreenDisplay ((jget (this).screenListenerInterface)))
        pure ()


