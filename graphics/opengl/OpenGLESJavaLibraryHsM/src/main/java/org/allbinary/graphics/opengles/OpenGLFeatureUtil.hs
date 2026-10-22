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
-- package org.allbinary.graphics.opengles
module OpenGLFeatureUtil where

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
import qualified OpenGLConfiguration -- same package or java.lang
import qualified OpenGLFeatureFactory -- same package or java.lang
import qualified Features -- org.allbinary.game.configuration.feature.Features

data OpenGLFeatureUtil = OpenGLFeatureUtil
    { header_ :: JavaHeader
    , anyThreed :: IORef (Bool)
    }

instance JavaNull OpenGLFeatureUtil where
    javaNull = javaNullRecord "OpenGLFeatureUtil"

instance JavaEquals OpenGLFeatureUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLFeatureUtil where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLFeatureUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLFeatureUtil
newRecord_ = do
    header_ <- newJavaHeader
    anyThreed <- newIORef False
    let this = OpenGLFeatureUtil header_ anyThreed
    jregisterLevel header_ this
    jregisterMethod header_ "isAnyThreed" (\() -> isAnyThreed_impl this)
    pure this

initFields_ :: OpenGLFeatureUtil -> IO ()
initFields_ this = do
    jset this.anyThreed (False)
    pure ()


getInstance :: IO (OpenGLFeatureUtil)
getInstance = do
        pure (OpenGLFeatureUtil.instance_)

new_ :: IO OpenGLFeatureUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLFeatureUtil -> IO ()
init_ this = do
        initFields_ this
        openGLConfiguration <- (OpenGLConfiguration.getInstance)
        features <- (Features.getInstance)
        openGLFeatureFactory <- (OpenGLFeatureFactory.getInstance)
        jset (this).anyThreed (((jio (OpenGLConfiguration.isOpenGL openGLConfiguration)) && (((jio (Features.isFeature features (javaCast (jget (openGLFeatureFactory).oPENGL_2D_AND_3D)))) || (jio (Features.isFeature features (javaCast (jget (openGLFeatureFactory).oPENGL_3D))))))))
        pure ()


isAnyThreed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAnyThreed object_ = jmethod object_ "isAnyThreed" (\() -> (isAnyThreed_impl (javaCast object_ :: OpenGLFeatureUtil))) ()

isAnyThreed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAnyThreed_super object_ = (isAnyThreed_impl (javaCast object_ :: OpenGLFeatureUtil))

isAnyThreed_impl :: OpenGLFeatureUtil -> IO (Bool)
isAnyThreed_impl this = do
        pure ((jget (this).anyThreed))


