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
-- package org.allbinary.game.init
module DefaultGameInitializationListener where

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
import qualified Thread -- same package or java.lang
import qualified GameInitializedEvent -- org.allbinary.game.configuration.event.GameInitializedEvent
import qualified GameInitializedEventHandler -- org.allbinary.game.configuration.event.GameInitializedEventHandler
import qualified GameInitializedListenerInterface -- org.allbinary.game.configuration.event.GameInitializedListenerInterface
import qualified FeatureResourceInitializationUtil -- org.allbinary.game.resource.FeatureResourceInitializationUtil
import qualified SWTJOGLProcessor -- org.allbinary.graphics.threed.SWTJOGLProcessor
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements GameInitializedListenerInterface
data DefaultGameInitializationListener = DefaultGameInitializationListener
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , swtJOGLProcessor :: IORef (SWTJOGLProcessor.SWTJOGLProcessor)
    , firstTime :: IORef (Bool)
    }

instance JavaNull DefaultGameInitializationListener where
    javaNull = javaNullRecord "DefaultGameInitializationListener"

instance JavaEquals DefaultGameInitializationListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DefaultGameInitializationListener where
    (==) = jrecordEquals

instance JavaObjectClass DefaultGameInitializationListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DefaultGameInitializationListener
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    swtJOGLProcessor <- newIORef javaNull
    firstTime <- newIORef False
    let this = DefaultGameInitializationListener header_ logUtil swtJOGLProcessor firstTime
    jregisterLevel header_ this
    GameInitializedListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onGameInitialized" (\() -> onGameInitialized_impl this)
    pure this

initFields_ :: DefaultGameInitializationListener -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.swtJOGLProcessor =<< (SWTJOGLProcessor.getInstance)
    jset this.firstTime (True)
    pure ()

new_ :: IO DefaultGameInitializationListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DefaultGameInitializationListener -> IO ()
init_ this = do
        initFields_ this
        gameInitializedEventHandler <- (GameInitializedEventHandler.getInstance)
        Control.Monad.void (GameInitializedEventHandler.removeAllListeners gameInitializedEventHandler)
        Control.Monad.void (GameInitializedEventHandler.addListenerInterface gameInitializedEventHandler (javaCast this :: GameInitializedListenerInterface.GameInitializedListenerInterface))
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: DefaultGameInitializationListener))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: DefaultGameInitializationListener)) a1

onEvent_impl :: DefaultGameInitializationListener -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


onGameInitialized :: (JavaObjectClass this_) => this_ -> GameInitializedEvent.GameInitializedEvent -> IO (())
onGameInitialized object_ a1 = jmethod object_ "onGameInitialized" (\() -> (onGameInitialized_impl (javaCast object_ :: DefaultGameInitializationListener))) () a1

onGameInitialized_super :: (JavaObjectClass this_) => this_ -> GameInitializedEvent.GameInitializedEvent -> IO (())
onGameInitialized_super object_ a1 = (onGameInitialized_impl (javaCast object_ :: DefaultGameInitializationListener)) a1

onGameInitialized_impl :: DefaultGameInitializationListener -> GameInitializedEvent.GameInitializedEvent -> IO (())
onGameInitialized_impl this gameInitializedEvent = do
        let oN_GAME_INITIALIZED = "onGameInitialized"
        commonStrings <- (CommonStrings.getInstance)
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this oN_GAME_INITIALIZED e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).sTART) this oN_GAME_INITIALIZED)
            fix $ \loop -> when (Prelude.not (jio (SWTJOGLProcessor.isHolderCreated ((jget (this).swtJOGLProcessor))))) $ javaIteration (loop) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).uPDATE) this oN_GAME_INITIALIZED)
                Control.Monad.void (threadDelay (Prelude.fromIntegral 20 * 1000))
            Control.Monad.void (FeatureResourceInitializationUtil.init ((jio (FeatureResourceInitializationUtil.getInstance))) (jio (GameInitializedEvent.getLevel gameInitializedEvent)))
            if (jget (this).firstTime) then do
                jset (this).firstTime (False)
            else do
                Control.Monad.void (SWTJOGLProcessor.onSurfaceChanged ((jget (this).swtJOGLProcessor)))
        pure ()


