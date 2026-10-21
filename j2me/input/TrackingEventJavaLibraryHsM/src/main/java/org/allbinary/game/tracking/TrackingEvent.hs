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
module TrackingEvent (module TrackingEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, getLayerInterface, getLayerInterface_super, getLayerInterface_impl, setLayerInterface, setLayerInterface_super, setLayerInterface_impl, setLayerInterfaceForCircularStaticPool, setLayerInterfaceForCircularStaticPool_super, setLayerInterfaceForCircularStaticPool_impl, toString, toString_super, toString_impl, layerInterface)
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
import qualified TrackingEventHandler -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data TrackingEvent = TrackingEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , layerInterface :: IORef (AllBinaryLayer.AllBinaryLayer)
    }

instance JavaNull TrackingEvent where
    javaNull = javaNullRecord "TrackingEvent"

instance JavaEquals TrackingEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TrackingEvent where
    (==) = jrecordEquals

instance JavaObjectClass TrackingEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TrackingEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    layerInterface <- newIORef javaNull
    let this = TrackingEvent header_ base layerInterface
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getLayerInterface" (\() -> getLayerInterface_impl this)
    jregisterMethod header_ "setLayerInterface" (\() -> setLayerInterface_impl this)
    jregisterMethod header_ "setLayerInterfaceForCircularStaticPool" (\() -> setLayerInterfaceForCircularStaticPool_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: TrackingEvent -> IO ()
initFields_ this = do
    jset this.layerInterface (AllBinaryLayer.nULL_ALLBINARY_LAYER)
    pure ()

new_1 :: (JavaObjectClass o1) => o1 -> IO TrackingEvent
new_1 allBinaryLayerInterfaceObject_ = do
    this <- newRecord_
    init_1 this allBinaryLayerInterfaceObject_
    pure this

init_1 :: (JavaObjectClass o1) => TrackingEvent -> o1 -> IO ()
init_1 this allBinaryLayerInterfaceObject_ = do
        let allBinaryLayerInterface = jtoObject allBinaryLayerInterfaceObject_
        AllBinaryEventObject.init_1 this.base (allBinaryLayerInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        when (allBinaryLayerInterface /= (jio (TrackingEventHandler.getInstance))) $ do
            Control.Monad.void (TrackingEvent.setLayerInterface this (javaCast allBinaryLayerInterface :: AllBinaryLayer.AllBinaryLayer))
        pure ()


init :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: TrackingEvent))) () (jtoObject a1)

init_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: TrackingEvent)) (jtoObject a1)

init_impl :: TrackingEvent -> JavaObject -> IO (())
init_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        Control.Monad.void (AllBinaryEventObject.setSource this anyType)
        pure ()


getLayerInterface :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface object_ = jmethod object_ "getLayerInterface" (\() -> (getLayerInterface_impl (javaCast object_ :: TrackingEvent))) ()

getLayerInterface_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface_super object_ = (getLayerInterface_impl (javaCast object_ :: TrackingEvent))

getLayerInterface_impl :: TrackingEvent -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface_impl this = do
        pure ((jget (this).layerInterface))


setLayerInterface :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
setLayerInterface object_ a1 = jmethod object_ "setLayerInterface" (\() -> (setLayerInterface_impl (javaCast object_ :: TrackingEvent))) () a1

setLayerInterface_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
setLayerInterface_super object_ a1 = (setLayerInterface_impl (javaCast object_ :: TrackingEvent)) a1

setLayerInterface_impl :: TrackingEvent -> AllBinaryLayer.AllBinaryLayer -> IO (())
setLayerInterface_impl this layerInterface = do
        jset (this).layerInterface (layerInterface)
        pure ()


setLayerInterfaceForCircularStaticPool :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
setLayerInterfaceForCircularStaticPool object_ a1 = jmethod object_ "setLayerInterfaceForCircularStaticPool" (\() -> (setLayerInterfaceForCircularStaticPool_impl (javaCast object_ :: TrackingEvent))) () a1

setLayerInterfaceForCircularStaticPool_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
setLayerInterfaceForCircularStaticPool_super object_ a1 = (setLayerInterfaceForCircularStaticPool_impl (javaCast object_ :: TrackingEvent)) a1

setLayerInterfaceForCircularStaticPool_impl :: TrackingEvent -> AllBinaryLayer.AllBinaryLayer -> IO (())
setLayerInterfaceForCircularStaticPool_impl this layerInterface = do
        jset (this).layerInterface (layerInterface)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: TrackingEvent))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: TrackingEvent))

toString_impl :: TrackingEvent -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "TrackingEvent: \n")
        Control.Monad.void (StringMaker.append stringBuffer "LayerInterface: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (AllBinaryLayer.toString ((jget (this).layerInterface)))))
        (StringMaker.toString stringBuffer)


