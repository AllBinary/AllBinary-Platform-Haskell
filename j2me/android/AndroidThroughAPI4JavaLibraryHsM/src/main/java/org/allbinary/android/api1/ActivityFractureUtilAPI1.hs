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
-- package org.allbinary.android.api1
module ActivityFractureUtilAPI1 (module ActivityFractureUtilAPI1, module ActivityFractureUtil) where

import ActivityFractureUtil hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, process, process_super, process_impl, setFullScreen, setFullScreen_super, setFullScreen_impl, instance_)
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
import qualified ActivityFractureUtil -- org.allbinary.android.ActivityFractureUtil
import qualified Activity -- android.app.Activity
import qualified WindowManager -- android.view.WindowManager

data ActivityFractureUtilAPI1 = ActivityFractureUtilAPI1
    { header_ :: JavaHeader
    , base :: ActivityFractureUtil.ActivityFractureUtil
    }

instance JavaNull ActivityFractureUtilAPI1 where
    javaNull = javaNullRecord "ActivityFractureUtilAPI1"

instance JavaEquals ActivityFractureUtilAPI1 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ActivityFractureUtilAPI1 where
    (==) = jrecordEquals

instance JavaObjectClass ActivityFractureUtilAPI1 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO ActivityFractureUtilAPI1
newRecord_ = do
    base <- ActivityFractureUtil.newRecord_
    let header_ = base.header_
    let this = ActivityFractureUtilAPI1 header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "setFullScreen" (\() -> setFullScreen_impl this)
    pure this

initFields_ :: ActivityFractureUtilAPI1 -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ActivityFractureUtilAPI1
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ActivityFractureUtilAPI1 -> IO ()
init_ this = do
    ActivityFractureUtil.init_ this.base
    initFields_ this


getInstance :: IO (ActivityFractureUtilAPI1)
getInstance = do
        pure (ActivityFractureUtilAPI1.instance_)


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: ActivityFractureUtilAPI1))) () a1

process_super :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: ActivityFractureUtilAPI1)) a1

process_impl :: ActivityFractureUtilAPI1 -> Activity.Activity -> IO (())
process_impl this activity = do
        pure ()


setFullScreen :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
setFullScreen object_ a1 = jmethod object_ "setFullScreen" (\() -> (setFullScreen_impl (javaCast object_ :: ActivityFractureUtilAPI1))) () a1

setFullScreen_super :: (JavaObjectClass this_) => this_ -> Activity.Activity -> IO (())
setFullScreen_super object_ a1 = (setFullScreen_impl (javaCast object_ :: ActivityFractureUtilAPI1)) a1

setFullScreen_impl :: ActivityFractureUtilAPI1 -> Activity.Activity -> IO (())
setFullScreen_impl this activity = do
        Control.Monad.void (Activity.setFlags ((jio (Activity.getWindow activity))) (jget (WindowManager.layoutParams).fLAG_FULLSCREEN) (jget (WindowManager.layoutParams).fLAG_FULLSCREEN))
        pure ()


