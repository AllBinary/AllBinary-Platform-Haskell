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
-- package org.allbinary.game.terrain
module TerrainEventCircularStaticPool where

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
import qualified TerrainEventFactory -- same package or java.lang
import qualified TerrainEvent -- same package or java.lang
import qualified BasicTerrainInfo -- same package or java.lang
import qualified AllBinaryEventCircularPool -- org.allbinary.logic.util.event.AllBinaryEventCircularPool

data TerrainEventCircularStaticPool = TerrainEventCircularStaticPool
    { header_ :: JavaHeader
    , eVENT_POOL :: IORef (AllBinaryEventCircularPool.AllBinaryEventCircularPool)
    }

instance JavaNull TerrainEventCircularStaticPool where
    javaNull = javaNullRecord "TerrainEventCircularStaticPool"

instance JavaEquals TerrainEventCircularStaticPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TerrainEventCircularStaticPool where
    (==) = jrecordEquals

instance JavaObjectClass TerrainEventCircularStaticPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TerrainEventCircularStaticPool
newRecord_ = do
    header_ <- newJavaHeader
    eVENT_POOL <- newIORef javaNull
    let this = TerrainEventCircularStaticPool header_ eVENT_POOL
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getNext" (\() -> getNext_impl this)
    pure this

initFields_ :: TerrainEventCircularStaticPool -> IO ()
initFields_ this = do
    jset this.eVENT_POOL =<< (AllBinaryEventCircularPool.new_1 20)
    pure ()

new_ :: IO TerrainEventCircularStaticPool
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TerrainEventCircularStaticPool -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TerrainEventCircularStaticPool)
getInstance = do
        pure (TerrainEventCircularStaticPool.instance_)


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: TerrainEventCircularStaticPool))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: TerrainEventCircularStaticPool))

init_impl :: TerrainEventCircularStaticPool -> IO (())
init_impl this = do
        Control.Monad.void (AllBinaryEventCircularPool.initAllBinaryEventCircularPool ((jget (this).eVENT_POOL)) (jio (TerrainEventFactory.new_)))
        pure ()


-- throws Exception
getNext :: (JavaObjectClass this_) => this_ -> BasicTerrainInfo.BasicTerrainInfo -> IO (TerrainEvent.TerrainEvent)
getNext object_ a1 = jmethod object_ "getNext" (\() -> (getNext_impl (javaCast object_ :: TerrainEventCircularStaticPool))) () a1

getNext_super :: (JavaObjectClass this_) => this_ -> BasicTerrainInfo.BasicTerrainInfo -> IO (TerrainEvent.TerrainEvent)
getNext_super object_ a1 = (getNext_impl (javaCast object_ :: TerrainEventCircularStaticPool)) a1

getNext_impl :: TerrainEventCircularStaticPool -> BasicTerrainInfo.BasicTerrainInfo -> IO (TerrainEvent.TerrainEvent)
getNext_impl this basicTerrainInfo = do
        let trackingEvent = (javaCast (jio (AllBinaryEventCircularPool.getNextInstance ((jget (this).eVENT_POOL)))) :: TerrainEvent.TerrainEvent)
        Control.Monad.void (TerrainEvent.setBasicTerrainInfoForCircularStaticPool trackingEvent basicTerrainInfo)
        pure (trackingEvent)


