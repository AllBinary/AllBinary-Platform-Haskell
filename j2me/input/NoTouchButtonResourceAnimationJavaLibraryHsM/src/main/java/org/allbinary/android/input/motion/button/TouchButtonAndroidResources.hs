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
-- package org.allbinary.android.input.motion.button
module TouchButtonAndroidResources (module TouchButtonAndroidResources, module Init) where

import Init hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl)
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
import qualified Init -- org.allbinary.init.Init

data TouchButtonAndroidResources = TouchButtonAndroidResources
    { header_ :: JavaHeader
    , base :: Init.Init
    }

instance JavaNull TouchButtonAndroidResources where
    javaNull = javaNullRecord "TouchButtonAndroidResources"

instance JavaEquals TouchButtonAndroidResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonAndroidResources where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonAndroidResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TouchButtonAndroidResources
newRecord_ = do
    base <- Init.newRecord_
    let header_ = base.header_
    let this = TouchButtonAndroidResources header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: TouchButtonAndroidResources -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TouchButtonAndroidResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchButtonAndroidResources -> IO ()
init_ this = do
    Init.init_ this.base
    initFields_ this


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: TouchButtonAndroidResources))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: TouchButtonAndroidResources))

init_impl :: TouchButtonAndroidResources -> IO (())
init_impl this = do
        pure ()


