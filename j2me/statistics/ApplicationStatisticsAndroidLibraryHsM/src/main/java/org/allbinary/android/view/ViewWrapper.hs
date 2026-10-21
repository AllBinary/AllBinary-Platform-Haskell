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
module ViewWrapper (module ViewWrapper, module BaseViewWrapper) where

import BaseViewWrapper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, invalidate, invalidate_super, invalidate_impl, postInvalidate, postInvalidate_super, postInvalidate_impl, view)
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
import qualified View -- android.view.View
import qualified BaseViewWrapper

data ViewWrapper = ViewWrapper
    { header_ :: JavaHeader
    , base :: BaseViewWrapper.BaseViewWrapper
    , view :: IORef (View.View)
    }

instance JavaNull ViewWrapper where
    javaNull = javaNullRecord "ViewWrapper"

instance JavaEquals ViewWrapper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ViewWrapper where
    (==) = jrecordEquals

instance JavaObjectClass ViewWrapper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ViewWrapper
newRecord_ = do
    base <- BaseViewWrapper.newRecord_
    let header_ = base.header_
    view <- newIORef javaNull
    let this = ViewWrapper header_ base view
    jregisterLevel header_ this
    jregisterMethod header_ "invalidate" (\() -> invalidate_impl this)
    jregisterMethod header_ "postInvalidate" (\() -> postInvalidate_impl this)
    pure this

initFields_ :: ViewWrapper -> IO ()
initFields_ this = do
    jset this.view (javaNull)
    pure ()

new_1 :: View.View -> IO ViewWrapper
new_1 view = do
    this <- newRecord_
    init_1 this view
    pure this

init_1 :: ViewWrapper -> View.View -> IO ()
init_1 this view = do
        BaseViewWrapper.init_ this.base
        initFields_ this
        jset (this).view (view)
        pure ()


invalidate :: (JavaObjectClass this_) => this_ -> IO (())
invalidate object_ = jmethod object_ "invalidate" (\() -> (invalidate_impl (javaCast object_ :: ViewWrapper))) ()

invalidate_super :: (JavaObjectClass this_) => this_ -> IO (())
invalidate_super object_ = (invalidate_impl (javaCast object_ :: ViewWrapper))

invalidate_impl :: ViewWrapper -> IO (())
invalidate_impl this = do
        Control.Monad.void (View.invalidate ((jget (this).view)))
        pure ()


postInvalidate :: (JavaObjectClass this_) => this_ -> IO (())
postInvalidate object_ = jmethod object_ "postInvalidate" (\() -> (postInvalidate_impl (javaCast object_ :: ViewWrapper))) ()

postInvalidate_super :: (JavaObjectClass this_) => this_ -> IO (())
postInvalidate_super object_ = (postInvalidate_impl (javaCast object_ :: ViewWrapper))

postInvalidate_impl :: ViewWrapper -> IO (())
postInvalidate_impl this = do
        Control.Monad.void (View.postInvalidate ((jget (this).view)))
        pure ()


