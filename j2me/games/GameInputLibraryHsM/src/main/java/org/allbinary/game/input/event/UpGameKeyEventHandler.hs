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
-- package org.allbinary.game.input.event
module UpGameKeyEventHandler (module UpGameKeyEventHandler, module UpGameKeyEventHandlerBase) where

import UpGameKeyEventHandlerBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getInstanceForDevice, getInstanceForDevice_super, getInstanceForDevice_impl, getInstanceForPlayer, getInstanceForPlayer_super, getInstanceForPlayer_impl, removeAllListeners, removeAllListeners_super, removeAllListeners_impl, removeListenerSingleThreaded, removeListenerSingleThreaded_super, removeListenerSingleThreaded_impl, removeListener, removeListener_super, removeListener_impl, instance_, instanceArray, playerInputIdFactory)
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
import qualified LocalPlayerInputIdFactory -- org.allbinary.game.input.LocalPlayerInputIdFactory
import qualified EventListenerInterface -- org.allbinary.logic.util.event.EventListenerInterface
import qualified UpGameKeyEventHandlerBase

data UpGameKeyEventHandler = UpGameKeyEventHandler
    { header_ :: JavaHeader
    , base :: UpGameKeyEventHandlerBase.UpGameKeyEventHandlerBase
    , playerInputIdFactory :: IORef (LocalPlayerInputIdFactory.LocalPlayerInputIdFactory)
    }

instance JavaNull UpGameKeyEventHandler where
    javaNull = javaNullRecord "UpGameKeyEventHandler"

instance JavaEquals UpGameKeyEventHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UpGameKeyEventHandler where
    (==) = jrecordEquals

instance JavaObjectClass UpGameKeyEventHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

instanceArray = (jarrayFromList [(jio (UpGameKeyEventHandlerBase.new_)), (jio (UpGameKeyEventHandlerBase.new_)), (jio (UpGameKeyEventHandlerBase.new_)), (jio (UpGameKeyEventHandlerBase.new_)), (jio (UpGameKeyEventHandlerBase.new_)), (jio (UpGameKeyEventHandlerBase.new_))])

newRecord_ :: IO UpGameKeyEventHandler
newRecord_ = do
    base <- UpGameKeyEventHandlerBase.newRecord_
    let header_ = base.header_
    playerInputIdFactory <- newIORef javaNull
    let this = UpGameKeyEventHandler header_ base playerInputIdFactory
    jregisterLevel header_ this
    jregisterMethod header_ "getInstanceForDevice" (\() -> getInstanceForDevice_impl this)
    jregisterMethod header_ "getInstanceForPlayer" (\() -> getInstanceForPlayer_impl this)
    jregisterMethod header_ "removeAllListeners" (\() -> removeAllListeners_impl this)
    jregisterMethod header_ "removeListenerSingleThreaded" (\() -> removeListenerSingleThreaded_impl this)
    jregisterMethod header_ "removeListener" (\() -> removeListener_impl this)
    pure this

initFields_ :: UpGameKeyEventHandler -> IO ()
initFields_ this = do
    jset this.playerInputIdFactory =<< (LocalPlayerInputIdFactory.getInstance)
    pure ()


getInstance :: IO (UpGameKeyEventHandler)
getInstance = do
        pure (UpGameKeyEventHandler.instance_)


getInstanceForDevice :: (JavaObjectClass this_) => this_ -> Int -> IO (UpGameKeyEventHandlerBase.UpGameKeyEventHandlerBase)
getInstanceForDevice object_ a1 = jmethod object_ "getInstanceForDevice" (\() -> (getInstanceForDevice_impl (javaCast object_ :: UpGameKeyEventHandler))) () a1

getInstanceForDevice_super :: (JavaObjectClass this_) => this_ -> Int -> IO (UpGameKeyEventHandlerBase.UpGameKeyEventHandlerBase)
getInstanceForDevice_super object_ a1 = (getInstanceForDevice_impl (javaCast object_ :: UpGameKeyEventHandler)) a1

getInstanceForDevice_impl :: UpGameKeyEventHandler -> Int -> IO (UpGameKeyEventHandlerBase.UpGameKeyEventHandlerBase)
getInstanceForDevice_impl this deviceId = do
        playerInputId <- (LocalPlayerInputIdFactory.getPlayerForDevice ((jget (this).playerInputIdFactory)) deviceId)
        pure ((jindex UpGameKeyEventHandler.instanceArray (playerInputId)))


getInstanceForPlayer :: (JavaObjectClass this_) => this_ -> Int -> IO (UpGameKeyEventHandlerBase.UpGameKeyEventHandlerBase)
getInstanceForPlayer object_ a1 = jmethod object_ "getInstanceForPlayer" (\() -> (getInstanceForPlayer_impl (javaCast object_ :: UpGameKeyEventHandler))) () a1

getInstanceForPlayer_super :: (JavaObjectClass this_) => this_ -> Int -> IO (UpGameKeyEventHandlerBase.UpGameKeyEventHandlerBase)
getInstanceForPlayer_super object_ a1 = (getInstanceForPlayer_impl (javaCast object_ :: UpGameKeyEventHandler)) a1

getInstanceForPlayer_impl :: UpGameKeyEventHandler -> Int -> IO (UpGameKeyEventHandlerBase.UpGameKeyEventHandlerBase)
getInstanceForPlayer_impl this playerInputId = do
        pure ((jindex UpGameKeyEventHandler.instanceArray (playerInputId)))

new_ :: IO UpGameKeyEventHandler
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UpGameKeyEventHandler -> IO ()
init_ this = do
        UpGameKeyEventHandlerBase.init_ this.base
        initFields_ this
        pure ()
        pure ()


removeAllListeners :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners object_ = jmethod object_ "removeAllListeners" (\() -> (removeAllListeners_impl (javaCast object_ :: UpGameKeyEventHandler))) ()

removeAllListeners_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAllListeners_super object_ = (removeAllListeners_impl (javaCast object_ :: UpGameKeyEventHandler))

removeAllListeners_impl :: UpGameKeyEventHandler -> IO (())
removeAllListeners_impl this = do
        Control.Monad.void (UpGameKeyEventHandlerBase.removeAllListeners_super this.base)
        forM_ [((jlength UpGameKeyEventHandler.instanceArray) - 1), ((jlength UpGameKeyEventHandler.instanceArray) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (removeAllListeners ((jindex UpGameKeyEventHandler.instanceArray (index))))
        pure ()


removeListenerSingleThreaded :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListenerSingleThreaded object_ a1 = jmethod object_ "removeListenerSingleThreaded" (\() -> (removeListenerSingleThreaded_impl (javaCast object_ :: UpGameKeyEventHandler))) () a1

removeListenerSingleThreaded_super :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListenerSingleThreaded_super object_ a1 = (removeListenerSingleThreaded_impl (javaCast object_ :: UpGameKeyEventHandler)) a1

removeListenerSingleThreaded_impl :: UpGameKeyEventHandler -> EventListenerInterface.EventListenerInterface -> IO (())
removeListenerSingleThreaded_impl this eventListenerInterface = do
        Control.Monad.void (UpGameKeyEventHandlerBase.removeListenerSingleThreaded_super this.base eventListenerInterface)
        forM_ [((jlength UpGameKeyEventHandler.instanceArray) - 1), ((jlength UpGameKeyEventHandler.instanceArray) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (removeListenerSingleThreaded ((jindex UpGameKeyEventHandler.instanceArray (index))) eventListenerInterface)
        pure ()


removeListener :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener object_ a1 = jmethod object_ "removeListener" (\() -> (removeListener_impl (javaCast object_ :: UpGameKeyEventHandler))) () a1

removeListener_super :: (JavaObjectClass this_) => this_ -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener_super object_ a1 = (removeListener_impl (javaCast object_ :: UpGameKeyEventHandler)) a1

removeListener_impl :: UpGameKeyEventHandler -> EventListenerInterface.EventListenerInterface -> IO (())
removeListener_impl this eventListenerInterface = do
        Control.Monad.void (UpGameKeyEventHandlerBase.removeListener_super this.base eventListenerInterface)
        forM_ [((jlength UpGameKeyEventHandler.instanceArray) - 1), ((jlength UpGameKeyEventHandler.instanceArray) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (removeListener ((jindex UpGameKeyEventHandler.instanceArray (index))) eventListenerInterface)
        pure ()


