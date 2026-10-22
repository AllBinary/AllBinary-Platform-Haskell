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
-- package org.allbinary.media.graphics.geography.map.event
module GeographicMapCellPositionEventUtil where

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
import qualified GeographicMapCellPositionEvent -- same package or java.lang
import qualified GeographicMapCellPositionEventHandler -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified CellPositionFactory -- org.allbinary.graphics.CellPositionFactory
import qualified GeographicMapCellPositionTracking -- org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking

data GeographicMapCellPositionEventUtil = GeographicMapCellPositionEventUtil
    { header_ :: JavaHeader
    , geographicMapCellPositionEvent :: IORef (GeographicMapCellPositionEvent.GeographicMapCellPositionEvent)
    , geographicMapCellPositionEventHandler :: IORef (GeographicMapCellPositionEventHandler.GeographicMapCellPositionEventHandler)
    }

instance JavaNull GeographicMapCellPositionEventUtil where
    javaNull = javaNullRecord "GeographicMapCellPositionEventUtil"

instance JavaEquals GeographicMapCellPositionEventUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellPositionEventUtil where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellPositionEventUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GeographicMapCellPositionEventUtil
newRecord_ = do
    header_ <- newJavaHeader
    geographicMapCellPositionEvent <- newIORef javaNull
    geographicMapCellPositionEventHandler <- newIORef javaNull
    let this = GeographicMapCellPositionEventUtil header_ geographicMapCellPositionEvent geographicMapCellPositionEventHandler
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    pure this

initFields_ :: GeographicMapCellPositionEventUtil -> IO ()
initFields_ this = do
    jset this.geographicMapCellPositionEvent (javaNull)
    jset this.geographicMapCellPositionEventHandler =<< (GeographicMapCellPositionEventHandler.getInstance)
    pure ()

new_1 :: (JavaObjectClass o1) => o1 -> IO GeographicMapCellPositionEventUtil
new_1 anyTypeObject_ = do
    this <- newRecord_
    init_1 this anyTypeObject_
    pure this

init_1 :: (JavaObjectClass o1) => GeographicMapCellPositionEventUtil -> o1 -> IO ()
init_1 this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        initFields_ this
        assignedValue <- (GeographicMapCellPositionEvent.new_2 anyType (jget ((jio (CellPositionFactory.getInstance))).nONE))
        jset (this).geographicMapCellPositionEvent (assignedValue)
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> GeographicMapCellPositionTracking.GeographicMapCellPositionTracking -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: GeographicMapCellPositionEventUtil))) () a1

update_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPositionTracking.GeographicMapCellPositionTracking -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: GeographicMapCellPositionEventUtil)) a1

update_impl :: GeographicMapCellPositionEventUtil -> GeographicMapCellPositionTracking.GeographicMapCellPositionTracking -> IO (())
update_impl this geographicMapCellPositionTracking = do
        Control.Monad.void (GeographicMapCellPositionEvent.setGeographicMapCellPosition ((jget (this).geographicMapCellPositionEvent)) (jio (GeographicMapCellPositionTracking.getCurrentGeographicMapCellPosition geographicMapCellPositionTracking)))
        Control.Monad.void (GeographicMapCellPositionEventHandler.fireEvent ((jget (this).geographicMapCellPositionEventHandler)) (javaCast (jget (this).geographicMapCellPositionEvent)))
        pure ()


-- throws Exception
remove :: (JavaObjectClass this_) => this_ -> GeographicMapCellPositionTracking.GeographicMapCellPositionTracking -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: GeographicMapCellPositionEventUtil))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPositionTracking.GeographicMapCellPositionTracking -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: GeographicMapCellPositionEventUtil)) a1

remove_impl :: GeographicMapCellPositionEventUtil -> GeographicMapCellPositionTracking.GeographicMapCellPositionTracking -> IO (())
remove_impl this geographicMapCellPositionTracking = do
        Control.Monad.void (GeographicMapCellPositionEvent.setGeographicMapCellPosition ((jget (this).geographicMapCellPositionEvent)) (jio (GeographicMapCellPositionTracking.getCurrentGeographicMapCellPosition geographicMapCellPositionTracking)))
        Control.Monad.void (GeographicMapCellPositionEventHandler.fireRemoveEvent ((jget (this).geographicMapCellPositionEventHandler)) (javaCast (jget (this).geographicMapCellPositionEvent)))
        pure ()


