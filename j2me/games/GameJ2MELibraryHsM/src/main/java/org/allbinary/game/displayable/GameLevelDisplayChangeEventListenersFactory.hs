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
-- package org.allbinary.game.displayable
module GameLevelDisplayChangeEventListenersFactory where

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
import qualified DisplayChangeEventHandler -- org.allbinary.graphics.displayable.event.DisplayChangeEventHandler
import qualified DisplayChangeEventListener -- org.allbinary.graphics.displayable.event.DisplayChangeEventListener
import qualified BasicEventHandler -- org.allbinary.logic.util.event.handler.BasicEventHandler
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data GameLevelDisplayChangeEventListenersFactory = GameLevelDisplayChangeEventListenersFactory
    { header_ :: JavaHeader
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull GameLevelDisplayChangeEventListenersFactory where
    javaNull = javaNullRecord "GameLevelDisplayChangeEventListenersFactory"

instance JavaEquals GameLevelDisplayChangeEventListenersFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameLevelDisplayChangeEventListenersFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameLevelDisplayChangeEventListenersFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameLevelDisplayChangeEventListenersFactory
newRecord_ = do
    header_ <- newJavaHeader
    list <- newIORef javaNull
    let this = GameLevelDisplayChangeEventListenersFactory header_ list
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    pure this

initFields_ :: GameLevelDisplayChangeEventListenersFactory -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO GameLevelDisplayChangeEventListenersFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameLevelDisplayChangeEventListenersFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GameLevelDisplayChangeEventListenersFactory)
getInstance = do
        pure (GameLevelDisplayChangeEventListenersFactory.instance_)


add :: (JavaObjectClass this_) => this_ -> DisplayChangeEventListener.DisplayChangeEventListener -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: GameLevelDisplayChangeEventListenersFactory))) () a1

add_super :: (JavaObjectClass this_) => this_ -> DisplayChangeEventListener.DisplayChangeEventListener -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: GameLevelDisplayChangeEventListenersFactory)) a1

add_impl :: GameLevelDisplayChangeEventListenersFactory -> DisplayChangeEventListener.DisplayChangeEventListener -> IO (())
add_impl this displayChangeEventListener = do
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) displayChangeEventListener)
        Control.Monad.void (DisplayChangeEventHandler.addListenerInterface ((jio (DisplayChangeEventHandler.getInstance))) (javaCast displayChangeEventListener))
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: GameLevelDisplayChangeEventListenersFactory))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: GameLevelDisplayChangeEventListenersFactory))

clear_impl :: GameLevelDisplayChangeEventListenersFactory -> IO (())
clear_impl this = do
        displayChangeEventHandler <- (fmap (\value_ -> javaCast value_ :: BasicEventHandler.BasicEventHandler) (DisplayChangeEventHandler.getInstance))
        displayChangeEventListener <- newIORef (javaNull)
        index <- newIORef =<< (BasicArrayList.size ((jget (this).list)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset displayChangeEventListener ((javaCast (jindex ((jget ((jget (this).list)).objectArray)) ((jget index))) :: DisplayChangeEventListener.DisplayChangeEventListener))
            Control.Monad.void (BasicEventHandler.removeListener displayChangeEventHandler (javaCast (jget displayChangeEventListener)))
        Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        pure ()


