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
-- package org.allbinary.android.api5
module ActivityFractureUtilAPI5 (module ActivityFractureUtilAPI5, module ActivityFractureUtilAPI1) where

import ActivityFractureUtilAPI1 hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, process, process_super, process_impl, isTouch, isTouch_super, isTouch_impl, isMultiTouch, isMultiTouch_super, isMultiTouch_impl, isMultiTouchDistinct, isMultiTouchDistinct_super, isMultiTouchDistinct_impl, isFeature, isFeature_super, isFeature_impl, instance5, fEATURE_TOUCHSCREEN_MULTITOUCH, fEATURE_TOUCHSCREEN, fEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT)
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
import qualified Activity -- android.app.Activity
import qualified TouchScreenTypeFactory -- org.allbinary.input.motion.button.TouchScreenTypeFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified ActivityFractureUtilAPI1 -- org.allbinary.android.api1.ActivityFractureUtilAPI1
import qualified TouchScreenFactory -- org.allbinary.input.motion.button.TouchScreenFactory

data ActivityFractureUtilAPI5 = ActivityFractureUtilAPI5
    { header_ :: JavaHeader
    , base :: ActivityFractureUtilAPI1.ActivityFractureUtilAPI1
    , fEATURE_TOUCHSCREEN_MULTITOUCH :: IORef (String)
    , fEATURE_TOUCHSCREEN :: IORef (String)
    , fEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT :: IORef (String)
    }

instance JavaNull ActivityFractureUtilAPI5 where
    javaNull = javaNullRecord "ActivityFractureUtilAPI5"

instance JavaEquals ActivityFractureUtilAPI5 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ActivityFractureUtilAPI5 where
    (==) = jrecordEquals

instance JavaObjectClass ActivityFractureUtilAPI5 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance5 #-}
instance5 = unsafePerformIO ((new_))

newRecord_ :: IO ActivityFractureUtilAPI5
newRecord_ = do
    base <- ActivityFractureUtilAPI1.newRecord_
    let header_ = base.header_
    fEATURE_TOUCHSCREEN_MULTITOUCH <- newIORef ""
    fEATURE_TOUCHSCREEN <- newIORef ""
    fEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT <- newIORef ""
    let this = ActivityFractureUtilAPI5 header_ base fEATURE_TOUCHSCREEN_MULTITOUCH fEATURE_TOUCHSCREEN fEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "isTouch" (\() -> isTouch_impl this)
    jregisterMethod header_ "isMultiTouch" (\() -> isMultiTouch_impl this)
    jregisterMethod header_ "isMultiTouchDistinct" (\() -> isMultiTouchDistinct_impl this)
    jregisterMethod header_ "isFeature" (\() -> isFeature_impl this)
    pure this

initFields_ :: ActivityFractureUtilAPI5 -> IO ()
initFields_ this = do
    jset this.fEATURE_TOUCHSCREEN_MULTITOUCH ("android.hardware.touchscreen.multitouch")
    jset this.fEATURE_TOUCHSCREEN ("android.hardware.touchscreen")
    jset this.fEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT ("android.hardware.touchscreen.multitouch.distinct")
    pure ()

new_ :: IO ActivityFractureUtilAPI5
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ActivityFractureUtilAPI5 -> IO ()
init_ this = do
    ActivityFractureUtilAPI1.init_ this.base
    initFields_ this


getInstance :: IO (ActivityFractureUtilAPI5)
getInstance = do
        pure (ActivityFractureUtilAPI5.instance5)


process :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: ActivityFractureUtilAPI5))) () a1

process_super :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: ActivityFractureUtilAPI5)) a1

process_impl :: ActivityFractureUtilAPI5 -> Activity.Activity -> IO (())
process_impl this activity = do
        touchScreenFactory <- (TouchScreenFactory.getInstance)
        touchScreenTypeFactory <- (TouchScreenTypeFactory.getInstance)
        Control.Monad.void (TouchScreenFactory.setTouch touchScreenFactory (jio (ActivityFractureUtilAPI5.isTouch this activity)))
        Control.Monad.void (TouchScreenFactory.setMultiTouch touchScreenFactory (jio (ActivityFractureUtilAPI5.isMultiTouch this activity)))
        Control.Monad.void (TouchScreenFactory.setMultiTouchDistinct touchScreenFactory (jio (ActivityFractureUtilAPI5.isMultiTouchDistinct this activity)))
        Control.Monad.void (TouchScreenTypeFactory.update touchScreenTypeFactory activity)
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (PreLogUtil.put (jio (TouchScreenFactory.toString touchScreenFactory)) this (jget (commonStrings).pROCESS))
        pure ()


isTouch :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (Bool)
isTouch object_ a1 = jmethod object_ "isTouch" (\() -> (isTouch_impl (javaCast object_ :: ActivityFractureUtilAPI5))) () a1

isTouch_super :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (Bool)
isTouch_super object_ a1 = (isTouch_impl (javaCast object_ :: ActivityFractureUtilAPI5)) a1

isTouch_impl :: ActivityFractureUtilAPI5 -> Activity.Activity -> IO (Bool)
isTouch_impl this activity = do
        (ActivityFractureUtilAPI5.isFeature this activity (jget (this).fEATURE_TOUCHSCREEN))


isMultiTouch :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (Bool)
isMultiTouch object_ a1 = jmethod object_ "isMultiTouch" (\() -> (isMultiTouch_impl (javaCast object_ :: ActivityFractureUtilAPI5))) () a1

isMultiTouch_super :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (Bool)
isMultiTouch_super object_ a1 = (isMultiTouch_impl (javaCast object_ :: ActivityFractureUtilAPI5)) a1

isMultiTouch_impl :: ActivityFractureUtilAPI5 -> Activity.Activity -> IO (Bool)
isMultiTouch_impl this activity = do
        (ActivityFractureUtilAPI5.isFeature this activity (jget (this).fEATURE_TOUCHSCREEN_MULTITOUCH))


isMultiTouchDistinct :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (Bool)
isMultiTouchDistinct object_ a1 = jmethod object_ "isMultiTouchDistinct" (\() -> (isMultiTouchDistinct_impl (javaCast object_ :: ActivityFractureUtilAPI5))) () a1

isMultiTouchDistinct_super :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (Bool)
isMultiTouchDistinct_super object_ a1 = (isMultiTouchDistinct_impl (javaCast object_ :: ActivityFractureUtilAPI5)) a1

isMultiTouchDistinct_impl :: ActivityFractureUtilAPI5 -> Activity.Activity -> IO (Bool)
isMultiTouchDistinct_impl this activity = do
        (ActivityFractureUtilAPI5.isFeature this activity (jget (this).fEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT))


isFeature :: (JavaObjectClass this_) => this_ -> Activity.Activity -> String -> IO (Bool)
isFeature object_ a1 a2 = jmethod object_ "isFeature" (\() -> (isFeature_impl (javaCast object_ :: ActivityFractureUtilAPI5))) () a1 a2

isFeature_super :: (JavaObjectClass this_) => this_ -> Activity.Activity -> String -> IO (Bool)
isFeature_super object_ a1 a2 = (isFeature_impl (javaCast object_ :: ActivityFractureUtilAPI5)) a1 a2

isFeature_impl :: ActivityFractureUtilAPI5 -> Activity.Activity -> String -> IO (Bool)
isFeature_impl this activity property = do
        (Activity.hasSystemFeature ((jio (Activity.getPackageManager activity))) property)


