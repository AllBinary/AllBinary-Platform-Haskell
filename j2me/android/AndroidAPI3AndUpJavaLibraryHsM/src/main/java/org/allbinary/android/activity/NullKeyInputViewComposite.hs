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
module NullKeyInputViewComposite where

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
import qualified Runnable -- same package or java.lang
import qualified View -- android.view.View
import qualified KeyInputViewCompositeInterface

-- implements KeyInputViewCompositeInterface
data NullKeyInputViewComposite = NullKeyInputViewComposite
    { header_ :: JavaHeader
    }

instance JavaNull NullKeyInputViewComposite where
    javaNull = javaNullRecord "NullKeyInputViewComposite"

instance JavaEquals NullKeyInputViewComposite where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullKeyInputViewComposite where
    (==) = jrecordEquals

instance JavaObjectClass NullKeyInputViewComposite where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_KEY_INPUT_VIEW_COMPOSITE #-}
nULL_KEY_INPUT_VIEW_COMPOSITE = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullKeyInputViewComposite
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullKeyInputViewComposite header_
    jregisterLevel header_ this
    KeyInputViewCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "setKeyInputView" (\() -> setKeyInputView_impl this)
    jregisterMethod header_ "getRootView" (\() -> getRootView_impl this)
    jregisterMethod header_ "getView" (\() -> getView_impl this)
    jregisterMethod header_ "runOnUiThread" (\() -> runOnUiThread_impl this)
    pure this

initFields_ :: NullKeyInputViewComposite -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullKeyInputViewComposite
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullKeyInputViewComposite -> IO ()
init_ this = do
    initFields_ this


setKeyInputView :: (JavaObjectClass this_) => this_ -> View.View -> IO (())
setKeyInputView object_ a1 = jmethod object_ "setKeyInputView" (\() -> (setKeyInputView_impl (javaCast object_ :: NullKeyInputViewComposite))) () a1

setKeyInputView_super :: (JavaObjectClass this_) => this_ -> View.View -> IO (())
setKeyInputView_super object_ a1 = (setKeyInputView_impl (javaCast object_ :: NullKeyInputViewComposite)) a1

setKeyInputView_impl :: NullKeyInputViewComposite -> View.View -> IO (())
setKeyInputView_impl this keyInputView = do
        pure ()


getRootView :: (JavaObjectClass this_) => this_ -> IO (View.View)
getRootView object_ = jmethod object_ "getRootView" (\() -> (getRootView_impl (javaCast object_ :: NullKeyInputViewComposite))) ()

getRootView_super :: (JavaObjectClass this_) => this_ -> IO (View.View)
getRootView_super object_ = (getRootView_impl (javaCast object_ :: NullKeyInputViewComposite))

getRootView_impl :: NullKeyInputViewComposite -> IO (View.View)
getRootView_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getView :: (JavaObjectClass this_) => this_ -> IO (View.View)
getView object_ = jmethod object_ "getView" (\() -> (getView_impl (javaCast object_ :: NullKeyInputViewComposite))) ()

getView_super :: (JavaObjectClass this_) => this_ -> IO (View.View)
getView_super object_ = (getView_impl (javaCast object_ :: NullKeyInputViewComposite))

getView_impl :: NullKeyInputViewComposite -> IO (View.View)
getView_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


runOnUiThread :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
runOnUiThread object_ a1 = jmethod object_ "runOnUiThread" (\() -> (runOnUiThread_impl (javaCast object_ :: NullKeyInputViewComposite))) () a1

runOnUiThread_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
runOnUiThread_super object_ a1 = (runOnUiThread_impl (javaCast object_ :: NullKeyInputViewComposite)) a1

runOnUiThread_impl :: NullKeyInputViewComposite -> Runnable.Runnable -> IO (())
runOnUiThread_impl this action = do
        pure ()


