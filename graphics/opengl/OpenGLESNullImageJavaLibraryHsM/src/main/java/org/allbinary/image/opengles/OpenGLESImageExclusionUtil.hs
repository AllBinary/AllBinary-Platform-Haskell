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
-- package org.allbinary.image.opengles
module OpenGLESImageExclusionUtil where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data OpenGLESImageExclusionUtil = OpenGLESImageExclusionUtil
    { header_ :: JavaHeader
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull OpenGLESImageExclusionUtil where
    javaNull = javaNullRecord "OpenGLESImageExclusionUtil"

instance JavaEquals OpenGLESImageExclusionUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLESImageExclusionUtil where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLESImageExclusionUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLESImageExclusionUtil
newRecord_ = do
    header_ <- newJavaHeader
    list <- newIORef javaNull
    let this = OpenGLESImageExclusionUtil header_ list
    jregisterLevel header_ this
    jregisterMethod header_ "isCustomScaling" (\() -> isCustomScaling_impl this)
    pure this

initFields_ :: OpenGLESImageExclusionUtil -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO OpenGLESImageExclusionUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLESImageExclusionUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLESImageExclusionUtil)
getInstance = do
        pure (OpenGLESImageExclusionUtil.instance_)


isCustomScaling :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Bool)
isCustomScaling object_ a1 = jmethod object_ "isCustomScaling" (\() -> (isCustomScaling_impl (javaCast object_ :: OpenGLESImageExclusionUtil))) () a1

isCustomScaling_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Bool)
isCustomScaling_super object_ a1 = (isCustomScaling_impl (javaCast object_ :: OpenGLESImageExclusionUtil)) a1

isCustomScaling_impl :: OpenGLESImageExclusionUtil -> Image.Image -> IO (Bool)
isCustomScaling_impl this image = do
        pure (False)


