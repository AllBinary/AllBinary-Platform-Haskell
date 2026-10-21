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
-- package org.allbinary.android.view
module BaseViewWrapper where

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

data BaseViewWrapper = BaseViewWrapper
    { header_ :: JavaHeader
    }

instance JavaNull BaseViewWrapper where
    javaNull = javaNullRecord "BaseViewWrapper"

instance JavaEquals BaseViewWrapper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseViewWrapper where
    (==) = jrecordEquals

instance JavaObjectClass BaseViewWrapper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_VIEW_WRAPPER #-}
nULL_VIEW_WRAPPER = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BaseViewWrapper
newRecord_ = do
    header_ <- newJavaHeader
    let this = BaseViewWrapper header_
    jregisterLevel header_ this
    jregisterMethod header_ "invalidate" (\() -> invalidate_impl this)
    jregisterMethod header_ "postInvalidate" (\() -> postInvalidate_impl this)
    pure this

initFields_ :: BaseViewWrapper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BaseViewWrapper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BaseViewWrapper -> IO ()
init_ this = do
    initFields_ this


invalidate :: (JavaObjectClass this_) => this_ -> IO (())
invalidate object_ = jmethod object_ "invalidate" (\() -> (invalidate_impl (javaCast object_ :: BaseViewWrapper))) ()

invalidate_super :: (JavaObjectClass this_) => this_ -> IO (())
invalidate_super object_ = (invalidate_impl (javaCast object_ :: BaseViewWrapper))

invalidate_impl :: BaseViewWrapper -> IO (())
invalidate_impl this = do
        pure ()


postInvalidate :: (JavaObjectClass this_) => this_ -> IO (())
postInvalidate object_ = jmethod object_ "postInvalidate" (\() -> (postInvalidate_impl (javaCast object_ :: BaseViewWrapper))) ()

postInvalidate_super :: (JavaObjectClass this_) => this_ -> IO (())
postInvalidate_super object_ = (postInvalidate_impl (javaCast object_ :: BaseViewWrapper))

postInvalidate_impl :: BaseViewWrapper -> IO (())
postInvalidate_impl this = do
        pure ()


