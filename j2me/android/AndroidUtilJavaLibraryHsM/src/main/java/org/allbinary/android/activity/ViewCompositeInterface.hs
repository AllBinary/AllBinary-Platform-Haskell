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
-- package org.allbinary.android.activity
module ViewCompositeInterface where

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

-- Java interface: the classes that implement it have these functions
data ViewCompositeInterface = ViewCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull ViewCompositeInterface where
    javaNull = javaNullRecord "ViewCompositeInterface"

instance JavaEquals ViewCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ViewCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass ViewCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ViewCompositeInterface
fromHeader_ header = ViewCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ViewCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getRootView :: (JavaObjectClass this_) => this_ -> IO (View.View)
getRootView object_ = jmethod object_ "getRootView" (\() -> (getRootView_impl (javaCast object_ :: ViewCompositeInterface))) ()

getRootView_super :: (JavaObjectClass this_) => this_ -> IO (View.View)
getRootView_super object_ = (getRootView_impl (javaCast object_ :: ViewCompositeInterface))

getRootView_impl :: ViewCompositeInterface -> IO (View.View)
getRootView_impl this = javaAbstractMethod "getRootView"


getView :: (JavaObjectClass this_) => this_ -> IO (View.View)
getView object_ = jmethod object_ "getView" (\() -> (getView_impl (javaCast object_ :: ViewCompositeInterface))) ()

getView_super :: (JavaObjectClass this_) => this_ -> IO (View.View)
getView_super object_ = (getView_impl (javaCast object_ :: ViewCompositeInterface))

getView_impl :: ViewCompositeInterface -> IO (View.View)
getView_impl this = javaAbstractMethod "getView"


runOnUiThread :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
runOnUiThread object_ a1 = jmethod object_ "runOnUiThread" (\() -> (runOnUiThread_impl (javaCast object_ :: ViewCompositeInterface))) () a1

runOnUiThread_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
runOnUiThread_super object_ a1 = (runOnUiThread_impl (javaCast object_ :: ViewCompositeInterface)) a1

runOnUiThread_impl :: ViewCompositeInterface -> Runnable.Runnable -> IO (())
runOnUiThread_impl this action = javaAbstractMethod "runOnUiThread"


