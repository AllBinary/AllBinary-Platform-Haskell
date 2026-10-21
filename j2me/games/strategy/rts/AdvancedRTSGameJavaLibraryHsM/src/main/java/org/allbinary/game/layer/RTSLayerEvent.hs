{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
module RTSLayerEvent (module RTSLayerEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toString, toString_super, toString_impl, getRtsLayer, getRtsLayer_super, getRtsLayer_impl, setRtsLayer, setRtsLayer_super, setRtsLayer_impl, rtsLayer)
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
import qualified NullPathFindingLayer -- same package or java.lang
import qualified PathFindingLayerInterface -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data RTSLayerEvent = RTSLayerEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , rtsLayer :: IORef (PathFindingLayerInterface.PathFindingLayerInterface)
    }

instance JavaNull RTSLayerEvent where
    javaNull = javaNullRecord "RTSLayerEvent"

instance JavaEquals RTSLayerEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSLayerEvent where
    (==) = jrecordEquals

instance JavaObjectClass RTSLayerEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RTSLayerEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    rtsLayer <- newIORef javaNull
    let this = RTSLayerEvent header_ base rtsLayer
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getRtsLayer" (\() -> getRtsLayer_impl this)
    jregisterMethod header_ "setRtsLayer" (\() -> setRtsLayer_impl this)
    pure this

initFields_ :: RTSLayerEvent -> IO ()
initFields_ this = do
    jset this.rtsLayer ((javaCast NullPathFindingLayer.nULL_PATH_FINDING_LAYER :: PathFindingLayerInterface.PathFindingLayerInterface))
    pure ()

new_1 :: PathFindingLayerInterface.PathFindingLayerInterface -> IO RTSLayerEvent
new_1 rtsLayer = do
    this <- newRecord_
    init_1 this rtsLayer
    pure this

init_1 :: RTSLayerEvent -> PathFindingLayerInterface.PathFindingLayerInterface -> IO ()
init_1 this rtsLayer = do
        AllBinaryEventObject.init_1 this.base (rtsLayer)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: RTSLayerEvent))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: RTSLayerEvent))

toString_impl :: RTSLayerEvent -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "RTSLayerEvent: \n")
        Control.Monad.void (StringMaker.append stringBuffer "RTSLayer: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (PathFindingLayerInterface.toString ((jio (RTSLayerEvent.getRtsLayer this))))))
        (StringMaker.toString stringBuffer)


getRtsLayer :: (JavaObjectClass this_) => this_ -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getRtsLayer object_ = jmethod object_ "getRtsLayer" (\() -> (getRtsLayer_impl (javaCast object_ :: RTSLayerEvent))) ()

getRtsLayer_super :: (JavaObjectClass this_) => this_ -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getRtsLayer_super object_ = (getRtsLayer_impl (javaCast object_ :: RTSLayerEvent))

getRtsLayer_impl :: RTSLayerEvent -> IO (PathFindingLayerInterface.PathFindingLayerInterface)
getRtsLayer_impl this = do
        pure ((jget (this).rtsLayer))


setRtsLayer :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setRtsLayer object_ a1 = jmethod object_ "setRtsLayer" (\() -> (setRtsLayer_impl (javaCast object_ :: RTSLayerEvent))) () a1

setRtsLayer_super :: (JavaObjectClass this_) => this_ -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setRtsLayer_super object_ a1 = (setRtsLayer_impl (javaCast object_ :: RTSLayerEvent)) a1

setRtsLayer_impl :: RTSLayerEvent -> PathFindingLayerInterface.PathFindingLayerInterface -> IO (())
setRtsLayer_impl this rtsLayer = do
        jset (this).rtsLayer (rtsLayer)
        pure ()


