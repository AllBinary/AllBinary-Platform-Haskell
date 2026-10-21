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
-- package org.allbinary.game
module Intermission where

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
import qualified NullIntermissionEnableListener -- same package or java.lang
import qualified IntermissionEnableListenerInterface -- same package or java.lang
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified IntermissionInterface

-- implements IntermissionInterface
data Intermission = Intermission
    { header_ :: JavaHeader
    , enabled :: IORef (Bool)
    , timeElapsedHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , intermissionEnableListener :: IORef (IntermissionEnableListenerInterface.IntermissionEnableListenerInterface)
    }

instance JavaNull Intermission where
    javaNull = javaNullRecord "Intermission"

instance JavaEquals Intermission where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Intermission where
    (==) = jrecordEquals

instance JavaObjectClass Intermission where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Intermission
newRecord_ = do
    header_ <- newJavaHeader
    enabled <- newIORef False
    timeElapsedHelper <- newIORef javaNull
    intermissionEnableListener <- newIORef javaNull
    let this = Intermission header_ enabled timeElapsedHelper intermissionEnableListener
    jregisterLevel header_ this
    IntermissionInterface.registerInterface_ header_
    jregisterMethod header_ "setListener" (\() -> setListener_impl this)
    jregisterMethod header_ "getTimeDelayHelper" (\() -> getTimeDelayHelper_impl this)
    jregisterMethod header_ "setEnabled" (\() -> setEnabled_impl this)
    jregisterMethod header_ "isEnabled" (\() -> isEnabled_impl this)
    pure this

initFields_ :: Intermission -> IO ()
initFields_ this = do
    jset this.enabled (False)
    jset this.timeElapsedHelper =<< (TimeDelayHelper.new_1 0)
    jset this.intermissionEnableListener =<< (NullIntermissionEnableListener.getInstance)
    pure ()

new_ :: IO Intermission
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Intermission -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


setListener :: (JavaObjectClass this_) => this_ -> IntermissionEnableListenerInterface.IntermissionEnableListenerInterface -> IO (())
setListener object_ a1 = jmethod object_ "setListener" (\() -> (setListener_impl (javaCast object_ :: Intermission))) () a1

setListener_super :: (JavaObjectClass this_) => this_ -> IntermissionEnableListenerInterface.IntermissionEnableListenerInterface -> IO (())
setListener_super object_ a1 = (setListener_impl (javaCast object_ :: Intermission)) a1

setListener_impl :: Intermission -> IntermissionEnableListenerInterface.IntermissionEnableListenerInterface -> IO (())
setListener_impl this enableListener = do
        jset (this).intermissionEnableListener (enableListener)
        pure ()


getTimeDelayHelper :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper object_ = jmethod object_ "getTimeDelayHelper" (\() -> (getTimeDelayHelper_impl (javaCast object_ :: Intermission))) ()

getTimeDelayHelper_super :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper_super object_ = (getTimeDelayHelper_impl (javaCast object_ :: Intermission))

getTimeDelayHelper_impl :: Intermission -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper_impl this = do
        pure ((jget (this).timeElapsedHelper))


setEnabled :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setEnabled object_ a1 = jmethod object_ "setEnabled" (\() -> (setEnabled_impl (javaCast object_ :: Intermission))) () a1

setEnabled_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setEnabled_super object_ a1 = (setEnabled_impl (javaCast object_ :: Intermission)) a1

setEnabled_impl :: Intermission -> Bool -> IO (())
setEnabled_impl this enabled = do
        jset (this).enabled (enabled)
        when (jio (Intermission.isEnabled this)) $ do
            Control.Monad.void (TimeDelayHelper.setStartTimeTNT ((jio (Intermission.getTimeDelayHelper this))))
        Control.Monad.void (IntermissionEnableListenerInterface.notifyIntermission ((jget (this).intermissionEnableListener)) enabled)
        pure ()


isEnabled :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled object_ = jmethod object_ "isEnabled" (\() -> (isEnabled_impl (javaCast object_ :: Intermission))) ()

isEnabled_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled_super object_ = (isEnabled_impl (javaCast object_ :: Intermission))

isEnabled_impl :: Intermission -> IO (Bool)
isEnabled_impl this = do
        pure ((jget (this).enabled))


