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
-- package org.allbinary.game.tracking
module TrackingEventCircularStaticPool where

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
import qualified TrackingEventFactory -- same package or java.lang
import qualified TrackingEvent -- same package or java.lang
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryEventCircularPool -- org.allbinary.logic.util.event.AllBinaryEventCircularPool

data TrackingEventCircularStaticPool = TrackingEventCircularStaticPool
    { header_ :: JavaHeader
    , eVENT_POOL :: IORef (AllBinaryEventCircularPool.AllBinaryEventCircularPool)
    }

instance JavaNull TrackingEventCircularStaticPool where
    javaNull = javaNullRecord "TrackingEventCircularStaticPool"

instance JavaEquals TrackingEventCircularStaticPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TrackingEventCircularStaticPool where
    (==) = jrecordEquals

instance JavaObjectClass TrackingEventCircularStaticPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TrackingEventCircularStaticPool
newRecord_ = do
    header_ <- newJavaHeader
    eVENT_POOL <- newIORef javaNull
    let this = TrackingEventCircularStaticPool header_ eVENT_POOL
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getNextInstance" (\() -> getNextInstance_impl this)
    pure this

initFields_ :: TrackingEventCircularStaticPool -> IO ()
initFields_ this = do
    jset this.eVENT_POOL =<< (AllBinaryEventCircularPool.new_1 20)
    pure ()

new_ :: IO TrackingEventCircularStaticPool
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TrackingEventCircularStaticPool -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TrackingEventCircularStaticPool)
getInstance = do
        pure ((jget TrackingEventCircularStaticPool.instance_))


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: TrackingEventCircularStaticPool))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: TrackingEventCircularStaticPool))

init_impl :: TrackingEventCircularStaticPool -> IO (())
init_impl this = do
        Control.Monad.void (AllBinaryEventCircularPool.initAllBinaryEventCircularPool ((jget (this).eVENT_POOL)) (jio (TrackingEventFactory.new_)))
        pure ()


-- throws Exception
getNextInstance :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (TrackingEvent.TrackingEvent)
getNextInstance object_ a1 = jmethod object_ "getNextInstance" (\() -> (getNextInstance_impl (javaCast object_ :: TrackingEventCircularStaticPool))) () a1

getNextInstance_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (TrackingEvent.TrackingEvent)
getNextInstance_super object_ a1 = (getNextInstance_impl (javaCast object_ :: TrackingEventCircularStaticPool)) a1

getNextInstance_impl :: TrackingEventCircularStaticPool -> AllBinaryLayer.AllBinaryLayer -> IO (TrackingEvent.TrackingEvent)
getNextInstance_impl this layerInterface = do
        let trackingEvent = (javaCast (jio (AllBinaryEventCircularPool.getNextInstance ((jget (this).eVENT_POOL)))) :: TrackingEvent.TrackingEvent)
        Control.Monad.void (TrackingEvent.setLayerInterfaceForCircularStaticPool trackingEvent layerInterface)
        pure (trackingEvent)


