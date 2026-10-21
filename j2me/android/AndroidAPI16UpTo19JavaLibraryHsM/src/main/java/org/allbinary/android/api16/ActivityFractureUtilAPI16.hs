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
-- package org.allbinary.android.api16
module ActivityFractureUtilAPI16 (module ActivityFractureUtilAPI16, module ActivityFractureUtilAPI5) where

import ActivityFractureUtilAPI5 hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, setFullScreen, setFullScreen_super, setFullScreen_impl, instance16)
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
import qualified View -- android.view.View
import qualified ActivityFractureUtilAPI5 -- org.allbinary.android.api5.ActivityFractureUtilAPI5

data ActivityFractureUtilAPI16 = ActivityFractureUtilAPI16
    { header_ :: JavaHeader
    , base :: ActivityFractureUtilAPI5.ActivityFractureUtilAPI5
    }

instance JavaNull ActivityFractureUtilAPI16 where
    javaNull = javaNullRecord "ActivityFractureUtilAPI16"

instance JavaEquals ActivityFractureUtilAPI16 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ActivityFractureUtilAPI16 where
    (==) = jrecordEquals

instance JavaObjectClass ActivityFractureUtilAPI16 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance16 #-}
instance16 = unsafePerformIO ((new_))

newRecord_ :: IO ActivityFractureUtilAPI16
newRecord_ = do
    base <- ActivityFractureUtilAPI5.newRecord_
    let header_ = base.header_
    let this = ActivityFractureUtilAPI16 header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "setFullScreen" (\() -> setFullScreen_impl this)
    pure this

initFields_ :: ActivityFractureUtilAPI16 -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ActivityFractureUtilAPI16
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ActivityFractureUtilAPI16 -> IO ()
init_ this = do
    ActivityFractureUtilAPI5.init_ this.base
    initFields_ this


getInstance :: IO (ActivityFractureUtilAPI16)
getInstance = do
        pure (ActivityFractureUtilAPI16.instance16)


setFullScreen :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
setFullScreen object_ a1 = jmethod object_ "setFullScreen" (\() -> (setFullScreen_impl (javaCast object_ :: ActivityFractureUtilAPI16))) () a1

setFullScreen_super :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
setFullScreen_super object_ a1 = (setFullScreen_impl (javaCast object_ :: ActivityFractureUtilAPI16)) a1

setFullScreen_impl :: ActivityFractureUtilAPI16 -> Activity.Activity -> IO (())
setFullScreen_impl this activity = do
        decorView <- (Activity.getDecorView ((jio (Activity.getWindow activity))))
        let visibility = (View.sYSTEM_UI_FLAG_HIDE_NAVIGATION Data.Bits..|. View.sYSTEM_UI_FLAG_FULLSCREEN)
        Control.Monad.void (View.setSystemUiVisibility decorView visibility)
        pure ()


