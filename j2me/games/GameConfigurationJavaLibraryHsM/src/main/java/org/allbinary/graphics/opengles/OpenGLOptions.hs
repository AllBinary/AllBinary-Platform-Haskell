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
module OpenGLOptions where

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
import qualified OpenGLFeatureFactory -- same package or java.lang
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GameFeatureChoiceGroups -- org.allbinary.game.configuration.feature.GameFeatureChoiceGroups
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data OpenGLOptions = OpenGLOptions
    { header_ :: JavaHeader
    }

instance JavaNull OpenGLOptions where
    javaNull = javaNullRecord "OpenGLOptions"

instance JavaEquals OpenGLOptions where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLOptions where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLOptions where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLOptions
newRecord_ = do
    header_ <- newJavaHeader
    let this = OpenGLOptions header_
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: OpenGLOptions -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLOptions
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLOptions -> IO ()
init_ this = do
    initFields_ this


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: OpenGLOptions))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: OpenGLOptions))

init_impl :: OpenGLOptions -> IO (())
init_impl this = do
        openGLFeatureFactory <- (OpenGLFeatureFactory.getInstance)
        when (jio (Features.isFeature ((jio (Features.getInstance))) (jget (openGLFeatureFactory).oPENGL_OPTIONS))) $ do
            openGLMultipleList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.add openGLMultipleList (jget (openGLFeatureFactory).oPENGL))
            Control.Monad.void (GameFeatureChoiceGroups.add ((jio (GameFeatureChoiceGroups.getMultipleInstance))) "OpenGL (Complete Restart)" openGLMultipleList)
            openGLVersionSelectorMultipleList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.add openGLVersionSelectorMultipleList (jget (openGLFeatureFactory).oPENGL_AUTO_SELECT))
            Control.Monad.void (BasicArrayList.add openGLVersionSelectorMultipleList (jget (openGLFeatureFactory).oPENGL_MINIMUM))
            Control.Monad.void (GameFeatureChoiceGroups.add ((jio (GameFeatureChoiceGroups.getExclusiveInstance))) "OpenGL Version Selector" openGLVersionSelectorMultipleList)
            openGLImageColorMultipleList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.add openGLImageColorMultipleList (jget (openGLFeatureFactory).iMAGE_COLOR_DEPTH_4444))
            Control.Monad.void (BasicArrayList.add openGLImageColorMultipleList (jget (openGLFeatureFactory).iMAGE_COLOR_DEPTH_8888))
            Control.Monad.void (GameFeatureChoiceGroups.add ((jio (GameFeatureChoiceGroups.getExclusiveInstance))) "OpenGL Image Color RGBA" openGLImageColorMultipleList)
        pure ()


