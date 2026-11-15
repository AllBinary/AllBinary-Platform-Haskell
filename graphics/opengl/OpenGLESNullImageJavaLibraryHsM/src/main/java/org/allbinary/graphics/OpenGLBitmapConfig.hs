{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
-- package org.allbinary.graphics
module OpenGLBitmapConfig where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified Any -- same package or java.lang

data OpenGLBitmapConfig = OpenGLBitmapConfig
    { header_ :: JavaHeader
    , bitmapConfig :: IORef (Any.Any)
    }

instance JavaNull OpenGLBitmapConfig where
    javaNull = javaNullRecord "OpenGLBitmapConfig"

instance JavaEquals OpenGLBitmapConfig where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLBitmapConfig where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLBitmapConfig where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO OpenGLBitmapConfig
newRecord_ = do
    header_ <- newJavaHeader
    bitmapConfig <- newIORef javaNull
    let this = OpenGLBitmapConfig header_ bitmapConfig
    jregisterLevel header_ this
    pure this

initFields_ :: OpenGLBitmapConfig -> IO ()
initFields_ this = do
    jset this.bitmapConfig (javaNull)
    pure ()

new_1 :: (JavaObjectClass o1) => o1 -> IO OpenGLBitmapConfig
new_1 bitmapConfigObject_ = do
    this <- newRecord_
    init_1 this bitmapConfigObject_
    pure this

init_1 :: (JavaObjectClass o1) => OpenGLBitmapConfig -> o1 -> IO ()
init_1 this bitmapConfigObject_ = do
        let bitmapConfig = jtoObject bitmapConfigObject_
        initFields_ this
        jset (this).bitmapConfig (bitmapConfig)
        pure ()


