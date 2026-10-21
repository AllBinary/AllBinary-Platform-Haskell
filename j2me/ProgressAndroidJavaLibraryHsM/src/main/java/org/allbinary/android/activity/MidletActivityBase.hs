{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.android.activity
module MidletActivityBase (module MidletActivityBase, module Activity) where

import Activity hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onGameFeatureChange, onGameFeatureChange_super, onGameFeatureChange_impl, onEvent, onEvent_super, onEvent_impl, onGameInitialized, onGameInitialized_super, onGameInitialized_impl, onSetProgress, onSetProgress_super, onSetProgress_impl, onDismissProgress, onDismissProgress_super, onDismissProgress_impl, onShowProgress, onShowProgress_super, onShowProgress_impl, getRootView, getRootView_super, getRootView_impl, getView, getView_super, getView_impl, setKeyInputView, setKeyInputView_super, setKeyInputView_impl, onGenericMotionEvent, onGenericMotionEvent_super, onGenericMotionEvent_impl)
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
import qualified MotionEvent -- android.view.MotionEvent
import qualified View -- android.view.View
import qualified GenericMotionEventVerifyInterface -- org.allbinary.android.GenericMotionEventVerifyInterface
import qualified GameFeatureEvent -- org.allbinary.game.configuration.event.GameFeatureEvent
import qualified GameFeatureListenerInterface -- org.allbinary.game.configuration.event.GameFeatureListenerInterface
import qualified GameInitializedEvent -- org.allbinary.game.configuration.event.GameInitializedEvent
import qualified GameInitializedListenerInterface -- org.allbinary.game.configuration.event.GameInitializedListenerInterface
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified SimpleProgressActivityInterface
import qualified KeyInputViewCompositeInterface

-- implements GameFeatureListenerInterface
-- implements GameInitializedListenerInterface
-- implements SimpleProgressActivityInterface
-- implements KeyInputViewCompositeInterface
-- implements GenericMotionEventVerifyInterface
data MidletActivityBase = MidletActivityBase
    { header_ :: JavaHeader
    , base :: Activity.Activity
    }

instance JavaNull MidletActivityBase where
    javaNull = javaNullRecord "MidletActivityBase"

instance JavaEquals MidletActivityBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MidletActivityBase where
    (==) = jrecordEquals

instance JavaObjectClass MidletActivityBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MidletActivityBase
newRecord_ = do
    base <- Activity.newRecord_
    let header_ = base.header_
    let this = MidletActivityBase header_ base
    jregisterLevel header_ this
    GameFeatureListenerInterface.registerInterface_ header_
    GameInitializedListenerInterface.registerInterface_ header_
    SimpleProgressActivityInterface.registerInterface_ header_
    KeyInputViewCompositeInterface.registerInterface_ header_
    GenericMotionEventVerifyInterface.registerInterface_ header_
    jregisterMethod header_ "onGameFeatureChange" (\() -> onGameFeatureChange_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onGameInitialized" (\() -> onGameInitialized_impl this)
    jregisterMethod header_ "onSetProgress" (\() -> onSetProgress_impl this)
    jregisterMethod header_ "onDismissProgress" (\() -> onDismissProgress_impl this)
    jregisterMethod header_ "onShowProgress" (\() -> onShowProgress_impl this)
    jregisterMethod header_ "getRootView" (\() -> getRootView_impl this)
    jregisterMethod header_ "getView" (\() -> getView_impl this)
    jregisterMethod header_ "setKeyInputView" (\() -> setKeyInputView_impl this)
    jregisterMethod header_ "onGenericMotionEvent" (\() -> onGenericMotionEvent_impl this)
    pure this

initFields_ :: MidletActivityBase -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MidletActivityBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MidletActivityBase -> IO ()
init_ this = do
    Activity.init_ this.base
    initFields_ this


onGameFeatureChange :: (JavaObjectClass this_) => this_ -> GameFeatureEvent.GameFeatureEvent -> IO (())
onGameFeatureChange object_ a1 = jmethod object_ "onGameFeatureChange" (\() -> (onGameFeatureChange_impl (javaCast object_ :: MidletActivityBase))) () a1

onGameFeatureChange_super :: (JavaObjectClass this_) => this_ -> GameFeatureEvent.GameFeatureEvent -> IO (())
onGameFeatureChange_super object_ a1 = (onGameFeatureChange_impl (javaCast object_ :: MidletActivityBase)) a1

onGameFeatureChange_impl :: MidletActivityBase -> GameFeatureEvent.GameFeatureEvent -> IO (())
onGameFeatureChange_impl this gameFeatureEvent = do
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: MidletActivityBase))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: MidletActivityBase)) a1

onEvent_impl :: MidletActivityBase -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        pure ()


onGameInitialized :: (JavaObjectClass this_) => this_ -> GameInitializedEvent.GameInitializedEvent -> IO (())
onGameInitialized object_ a1 = jmethod object_ "onGameInitialized" (\() -> (onGameInitialized_impl (javaCast object_ :: MidletActivityBase))) () a1

onGameInitialized_super :: (JavaObjectClass this_) => this_ -> GameInitializedEvent.GameInitializedEvent -> IO (())
onGameInitialized_super object_ a1 = (onGameInitialized_impl (javaCast object_ :: MidletActivityBase)) a1

onGameInitialized_impl :: MidletActivityBase -> GameInitializedEvent.GameInitializedEvent -> IO (())
onGameInitialized_impl this gameInitializedEvent = do
        pure ()


-- throws Exception
onSetProgress :: (JavaObjectClass this_) => this_ -> Int -> String -> IO (())
onSetProgress object_ a1 a2 = jmethod object_ "onSetProgress" (\() -> (onSetProgress_impl (javaCast object_ :: MidletActivityBase))) () a1 a2

onSetProgress_super :: (JavaObjectClass this_) => this_ -> Int -> String -> IO (())
onSetProgress_super object_ a1 a2 = (onSetProgress_impl (javaCast object_ :: MidletActivityBase)) a1 a2

onSetProgress_impl :: MidletActivityBase -> Int -> String -> IO (())
onSetProgress_impl this value text = do
        pure ()


-- throws Exception
onDismissProgress :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
onDismissProgress object_ a1 = jmethod object_ "onDismissProgress" (\() -> (onDismissProgress_impl (javaCast object_ :: MidletActivityBase))) () a1

onDismissProgress_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
onDismissProgress_super object_ a1 = (onDismissProgress_impl (javaCast object_ :: MidletActivityBase)) a1

onDismissProgress_impl :: MidletActivityBase -> JavaArray (Int) -> IO (())
onDismissProgress_impl this animationSequence = do
        pure ()


-- throws Exception
onShowProgress :: (JavaObjectClass this_) => this_ -> Bool -> JavaArray (Int) -> IO (())
onShowProgress object_ a1 a2 = jmethod object_ "onShowProgress" (\() -> (onShowProgress_impl (javaCast object_ :: MidletActivityBase))) () a1 a2

onShowProgress_super :: (JavaObjectClass this_) => this_ -> Bool -> JavaArray (Int) -> IO (())
onShowProgress_super object_ a1 a2 = (onShowProgress_impl (javaCast object_ :: MidletActivityBase)) a1 a2

onShowProgress_impl :: MidletActivityBase -> Bool -> JavaArray (Int) -> IO (())
onShowProgress_impl this indeterminate animationSequence = do
        pure ()


getRootView :: (JavaObjectClass this_) => this_ -> IO (View.View)
getRootView object_ = jmethod object_ "getRootView" (\() -> (getRootView_impl (javaCast object_ :: MidletActivityBase))) ()

getRootView_super :: (JavaObjectClass this_) => this_ -> IO (View.View)
getRootView_super object_ = (getRootView_impl (javaCast object_ :: MidletActivityBase))

getRootView_impl :: MidletActivityBase -> IO (View.View)
getRootView_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getView :: (JavaObjectClass this_) => this_ -> IO (View.View)
getView object_ = jmethod object_ "getView" (\() -> (getView_impl (javaCast object_ :: MidletActivityBase))) ()

getView_super :: (JavaObjectClass this_) => this_ -> IO (View.View)
getView_super object_ = (getView_impl (javaCast object_ :: MidletActivityBase))

getView_impl :: MidletActivityBase -> IO (View.View)
getView_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


setKeyInputView :: (JavaObjectClass this_) => this_ -> View.View -> IO (())
setKeyInputView object_ a1 = jmethod object_ "setKeyInputView" (\() -> (setKeyInputView_impl (javaCast object_ :: MidletActivityBase))) () a1

setKeyInputView_super :: (JavaObjectClass this_) => this_ -> View.View -> IO (())
setKeyInputView_super object_ a1 = (setKeyInputView_impl (javaCast object_ :: MidletActivityBase)) a1

setKeyInputView_impl :: MidletActivityBase -> View.View -> IO (())
setKeyInputView_impl this keyInputView = do
        pure ()


onGenericMotionEvent :: (JavaObjectClass this_) => this_ -> MotionEvent.MotionEvent -> IO (Bool)
onGenericMotionEvent object_ a1 = jmethod object_ "onGenericMotionEvent" (\() -> (onGenericMotionEvent_impl (javaCast object_ :: MidletActivityBase))) () a1

onGenericMotionEvent_super :: (JavaObjectClass this_) => this_ -> MotionEvent.MotionEvent -> IO (Bool)
onGenericMotionEvent_super object_ a1 = (onGenericMotionEvent_impl (javaCast object_ :: MidletActivityBase)) a1

onGenericMotionEvent_impl :: MidletActivityBase -> MotionEvent.MotionEvent -> IO (Bool)
onGenericMotionEvent_impl this event = do
        javaThrow ((JavaException "RuntimeException" ""))


