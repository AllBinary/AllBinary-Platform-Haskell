{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary
module DisposalUtil where

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
import qualified Image -- javax.microedition.lcdui.Image
import qualified Resource -- org.eclipse.swt.graphics.Resource

data DisposalUtil = DisposalUtil
    { header_ :: JavaHeader
    }

instance JavaNull DisposalUtil where
    javaNull = javaNullRecord "DisposalUtil"

instance JavaEquals DisposalUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DisposalUtil where
    (==) = jrecordEquals

instance JavaObjectClass DisposalUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DisposalUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = DisposalUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "disposeImage" (\() -> disposeImage_impl this)
    jregisterMethod header_ "disposeResource" (\() -> disposeResource_impl this)
    pure this

initFields_ :: DisposalUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DisposalUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DisposalUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (DisposalUtil)
getInstance = do
        pure (DisposalUtil.instance_)


disposeImage :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (())
disposeImage object_ a1 = jmethod object_ "disposeImage" (\() -> (disposeImage_impl (javaCast object_ :: DisposalUtil))) () a1

disposeImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (())
disposeImage_super object_ a1 = (disposeImage_impl (javaCast object_ :: DisposalUtil)) a1

disposeImage_impl :: DisposalUtil -> Image.Image -> IO (())
disposeImage_impl this image = do
        pure ()


disposeResource :: (JavaObjectClass this_) => this_ -> Resource.Resource -> IO (())
disposeResource object_ a1 = jmethod object_ "disposeResource" (\() -> (disposeResource_impl (javaCast object_ :: DisposalUtil))) () a1

disposeResource_super :: (JavaObjectClass this_) => this_ -> Resource.Resource -> IO (())
disposeResource_super object_ a1 = (disposeResource_impl (javaCast object_ :: DisposalUtil)) a1

disposeResource_impl :: DisposalUtil -> Resource.Resource -> IO (())
disposeResource_impl this resource = do
        when (Prelude.not (jio (Resource.isDisposed resource))) $ do
            Control.Monad.void (Resource.dispose resource)
        pure ()


