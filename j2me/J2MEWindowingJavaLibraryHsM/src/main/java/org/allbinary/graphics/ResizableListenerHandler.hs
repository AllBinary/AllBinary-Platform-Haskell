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
module ResizableListenerHandler where

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
import qualified ResizableListenerInterface -- same package or java.lang

data ResizableListenerHandler = ResizableListenerHandler
    { header_ :: JavaHeader
    }

instance JavaNull ResizableListenerHandler where
    javaNull = javaNullRecord "ResizableListenerHandler"

instance JavaEquals ResizableListenerHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ResizableListenerHandler where
    (==) = jrecordEquals

instance JavaObjectClass ResizableListenerHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ResizableListenerHandler
newRecord_ = do
    header_ <- newJavaHeader
    let this = ResizableListenerHandler header_
    jregisterLevel header_ this
    jregisterMethod header_ "setListener" (\() -> setListener_impl this)
    jregisterMethod header_ "fire" (\() -> fire_impl this)
    jregisterMethod header_ "fireEvent" (\() -> fireEvent_impl this)
    pure this

initFields_ :: ResizableListenerHandler -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ResizableListenerHandler
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ResizableListenerHandler -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ResizableListenerHandler)
getInstance = do
        pure (ResizableListenerHandler.instance_)


setListener :: (JavaObjectClass this_) => this_ -> ResizableListenerInterface.ResizableListenerInterface -> IO (())
setListener object_ a1 = jmethod object_ "setListener" (\() -> (setListener_impl (javaCast object_ :: ResizableListenerHandler))) () a1

setListener_super :: (JavaObjectClass this_) => this_ -> ResizableListenerInterface.ResizableListenerInterface -> IO (())
setListener_super object_ a1 = (setListener_impl (javaCast object_ :: ResizableListenerHandler)) a1

setListener_impl :: ResizableListenerHandler -> ResizableListenerInterface.ResizableListenerInterface -> IO (())
setListener_impl this resizableListenerInterface = do
        pure ()


fire :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
fire object_ a1 = jmethod object_ "fire" (\() -> (fire_impl (javaCast object_ :: ResizableListenerHandler))) () a1

fire_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
fire_super object_ a1 = (fire_impl (javaCast object_ :: ResizableListenerHandler)) a1

fire_impl :: ResizableListenerHandler -> Bool -> IO (())
fire_impl this isFullScreen = do
        pure ()


-- throws Exception
fireEvent :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
fireEvent object_ a1 = jmethod object_ "fireEvent" (\() -> (fireEvent_impl (javaCast object_ :: ResizableListenerHandler))) () a1

fireEvent_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
fireEvent_super object_ a1 = (fireEvent_impl (javaCast object_ :: ResizableListenerHandler)) a1

fireEvent_impl :: ResizableListenerHandler -> Bool -> IO (())
fireEvent_impl this value = do
        pure ()


