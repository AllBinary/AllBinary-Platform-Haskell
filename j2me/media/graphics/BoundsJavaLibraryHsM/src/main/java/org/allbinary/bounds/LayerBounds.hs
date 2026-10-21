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
-- package org.allbinary.bounds
module LayerBounds where

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
import qualified BoundsVisitorInterface -- same package or java.lang
import qualified BoundsChangeEvent -- org.allbinary.bounds.event.BoundsChangeEvent
import qualified BoundsChangeEventListener -- org.allbinary.bounds.event.BoundsChangeEventListener
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings

-- implements BoundsChangeEventListener
data LayerBounds = LayerBounds
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , rectangle :: IORef (Rectangle.Rectangle)
    }

instance JavaNull LayerBounds where
    javaNull = javaNullRecord "LayerBounds"

instance JavaEquals LayerBounds where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerBounds where
    (==) = jrecordEquals

instance JavaObjectClass LayerBounds where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LayerBounds
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    rectangle <- newIORef javaNull
    let this = LayerBounds header_ logUtil rectangle
    jregisterLevel header_ this
    BoundsChangeEventListener.registerInterface_ header_
    jregisterMethod header_ "getRectangleP" (\() -> getRectangleP_impl this)
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onBoundsChangeEvent" (\() -> onBoundsChangeEvent_impl this)
    pure this

initFields_ :: LayerBounds -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.rectangle (javaNull)
    pure ()

new_1 :: Rectangle.Rectangle -> IO LayerBounds
new_1 rectangle = do
    this <- newRecord_
    init_1 this rectangle
    pure this

init_1 :: LayerBounds -> Rectangle.Rectangle -> IO ()
init_1 this rectangle = do
        initFields_ this
        jset (this).rectangle (rectangle)
        pure ()


getRectangleP :: (JavaObjectClass this_) => this_ -> IO (Rectangle.Rectangle)
getRectangleP object_ = jmethod object_ "getRectangleP" (\() -> (getRectangleP_impl (javaCast object_ :: LayerBounds))) ()

getRectangleP_super :: (JavaObjectClass this_) => this_ -> IO (Rectangle.Rectangle)
getRectangleP_super object_ = (getRectangleP_impl (javaCast object_ :: LayerBounds))

getRectangleP_impl :: LayerBounds -> IO (Rectangle.Rectangle)
getRectangleP_impl this = do
        pure ((jget (this).rectangle))


visit :: (JavaObjectClass this_) => this_ -> BoundsVisitorInterface.BoundsVisitorInterface -> IO (())
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: LayerBounds))) () a1

visit_super :: (JavaObjectClass this_) => this_ -> BoundsVisitorInterface.BoundsVisitorInterface -> IO (())
visit_super object_ a1 = (visit_impl (javaCast object_ :: LayerBounds)) a1

visit_impl :: LayerBounds -> BoundsVisitorInterface.BoundsVisitorInterface -> IO (())
visit_impl this boundsVisitorInterface = do
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: LayerBounds))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: LayerBounds)) a1

onEvent_impl :: LayerBounds -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


onBoundsChangeEvent :: (JavaObjectClass this_) => this_ -> BoundsChangeEvent.BoundsChangeEvent -> IO (())
onBoundsChangeEvent object_ a1 = jmethod object_ "onBoundsChangeEvent" (\() -> (onBoundsChangeEvent_impl (javaCast object_ :: LayerBounds))) () a1

onBoundsChangeEvent_super :: (JavaObjectClass this_) => this_ -> BoundsChangeEvent.BoundsChangeEvent -> IO (())
onBoundsChangeEvent_super object_ a1 = (onBoundsChangeEvent_impl (javaCast object_ :: LayerBounds)) a1

onBoundsChangeEvent_impl :: LayerBounds -> BoundsChangeEvent.BoundsChangeEvent -> IO (())
onBoundsChangeEvent_impl this boundsChangeEvent = do
        assignedValue <- (BoundsChangeEvent.getRectangle boundsChangeEvent)
        jset (this).rectangle (assignedValue)
        pure ()


