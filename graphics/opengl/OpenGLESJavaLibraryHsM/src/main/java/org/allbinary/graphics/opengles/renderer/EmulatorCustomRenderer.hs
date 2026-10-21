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
-- package org.allbinary.graphics.opengles.renderer
module EmulatorCustomRenderer where

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
import qualified RendererStrings -- same package or java.lang
import qualified EGLConfig -- javax.microedition.khronos.egl.EGLConfig
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified InitEmulatorFactory -- org.allbinary.emulator.InitEmulatorFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil

data EmulatorCustomRenderer = EmulatorCustomRenderer
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , renderStrings :: IORef (RendererStrings.RendererStrings)
    }

instance JavaNull EmulatorCustomRenderer where
    javaNull = javaNullRecord "EmulatorCustomRenderer"

instance JavaEquals EmulatorCustomRenderer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EmulatorCustomRenderer where
    (==) = jrecordEquals

instance JavaObjectClass EmulatorCustomRenderer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO EmulatorCustomRenderer
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    renderStrings <- newIORef javaNull
    let this = EmulatorCustomRenderer header_ logUtil commonStrings renderStrings
    jregisterLevel header_ this
    jregisterMethod header_ "onSurfaceCreated" (\() -> onSurfaceCreated_impl this)
    pure this

initFields_ :: EmulatorCustomRenderer -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.renderStrings =<< (RendererStrings.getInstance)
    pure ()

new_ :: IO EmulatorCustomRenderer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: EmulatorCustomRenderer -> IO ()
init_ this = do
    initFields_ this


onSurfaceCreated :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> EGLConfig.EGLConfig -> IO (())
onSurfaceCreated object_ a1 a2 = jmethod object_ "onSurfaceCreated" (\() -> (onSurfaceCreated_impl (javaCast object_ :: EmulatorCustomRenderer))) () a1 a2

onSurfaceCreated_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> EGLConfig.EGLConfig -> IO (())
onSurfaceCreated_super object_ a1 a2 = (onSurfaceCreated_impl (javaCast object_ :: EmulatorCustomRenderer)) a1 a2

onSurfaceCreated_impl :: EmulatorCustomRenderer -> GL10.GL10 -> EGLConfig.EGLConfig -> IO (())
onSurfaceCreated_impl this gl eglConfig = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).renderStrings)).oN_SURFACE_CREATED))
        initEmulatorFactory <- (InitEmulatorFactory.getInstance)
        when (Prelude.not (jio (InitEmulatorFactory.isInitEmulator initEmulatorFactory))) $ do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).renderStrings)).oN_SURFACE_CREATED) e)
                ) $ do
                let wAIT_FOR_EMULATOR = "Waiting on Emulator Initialization"
                fix $ \loop -> when (Prelude.not (jio (InitEmulatorFactory.isInitEmulator initEmulatorFactory))) $ javaIteration (loop) $ do
                    Control.Monad.void (PreLogUtil.put wAIT_FOR_EMULATOR this (jget ((jget (this).renderStrings)).oN_SURFACE_CREATED))
                    Control.Monad.void (threadDelay (Prelude.fromIntegral 180 * 1000))
        pure ()


