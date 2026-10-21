{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.terrain
module TerrainEventListener where

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
import qualified TerrainEvent -- same package or java.lang
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified TerrainEventListenerInterface

-- implements TerrainEventListenerInterface
data TerrainEventListener = TerrainEventListener
    { header_ :: JavaHeader
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull TerrainEventListener where
    javaNull = javaNullRecord "TerrainEventListener"

instance JavaEquals TerrainEventListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TerrainEventListener where
    (==) = jrecordEquals

instance JavaObjectClass TerrainEventListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TerrainEventListener
newRecord_ = do
    header_ <- newJavaHeader
    list <- newIORef javaNull
    let this = TerrainEventListener header_ list
    jregisterLevel header_ this
    TerrainEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onTerrainEvent" (\() -> onTerrainEvent_impl this)
    jregisterMethod header_ "getList" (\() -> getList_impl this)
    pure this

initFields_ :: TerrainEventListener -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO TerrainEventListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TerrainEventListener -> IO ()
init_ this = do
    initFields_ this


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: TerrainEventListener))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: TerrainEventListener)) a1

onEvent_impl :: TerrainEventListener -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


onTerrainEvent :: (JavaObjectClass this_) => this_ -> TerrainEvent.TerrainEvent -> IO (())
onTerrainEvent object_ a1 = jmethod object_ "onTerrainEvent" (\() -> (onTerrainEvent_impl (javaCast object_ :: TerrainEventListener))) () a1

onTerrainEvent_super :: (JavaObjectClass this_) => this_ -> TerrainEvent.TerrainEvent -> IO (())
onTerrainEvent_super object_ a1 = (onTerrainEvent_impl (javaCast object_ :: TerrainEventListener)) a1

onTerrainEvent_impl :: TerrainEventListener -> TerrainEvent.TerrainEvent -> IO (())
onTerrainEvent_impl this terrainEvent = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) terrainEvent)
        pure ()


getList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList object_ = jmethod object_ "getList" (\() -> (getList_impl (javaCast object_ :: TerrainEventListener))) ()

getList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList_super object_ = (getList_impl (javaCast object_ :: TerrainEventListener))

getList_impl :: TerrainEventListener -> IO (BasicArrayList.BasicArrayList)
getList_impl this = do
        pure ((jget (this).list))


