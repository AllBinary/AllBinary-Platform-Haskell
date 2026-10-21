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
module ModifierOpenGLESImageProcessor (module ModifierOpenGLESImageProcessor, module OpenGLESImageProcessor) where

import OpenGLESImageProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, colorMask, colorMask_super, colorMask_impl, instanceC)
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
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified OpenGLESImageProcessor

data ModifierOpenGLESImageProcessor = ModifierOpenGLESImageProcessor
    { header_ :: JavaHeader
    , base :: OpenGLESImageProcessor.OpenGLESImageProcessor
    }

instance JavaNull ModifierOpenGLESImageProcessor where
    javaNull = javaNullRecord "ModifierOpenGLESImageProcessor"

instance JavaEquals ModifierOpenGLESImageProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ModifierOpenGLESImageProcessor where
    (==) = jrecordEquals

instance JavaObjectClass ModifierOpenGLESImageProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO ModifierOpenGLESImageProcessor
newRecord_ = do
    base <- OpenGLESImageProcessor.newRecord_
    let header_ = base.header_
    let this = ModifierOpenGLESImageProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "colorMask" (\() -> colorMask_impl this)
    pure this

initFields_ :: ModifierOpenGLESImageProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ModifierOpenGLESImageProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ModifierOpenGLESImageProcessor -> IO ()
init_ this = do
    OpenGLESImageProcessor.init_ this.base
    initFields_ this


getInstance :: IO (ModifierOpenGLESImageProcessor)
getInstance = do
        pure (ModifierOpenGLESImageProcessor.instanceC)


colorMask :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> Float -> Float -> Float -> IO (())
colorMask object_ a1 a2 a3 a4 a5 = jmethod object_ "colorMask" (\() -> (colorMask_impl (javaCast object_ :: ModifierOpenGLESImageProcessor))) () a1 a2 a3 a4 a5

colorMask_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Float -> Float -> Float -> Float -> IO (())
colorMask_super object_ a1 a2 a3 a4 a5 = (colorMask_impl (javaCast object_ :: ModifierOpenGLESImageProcessor)) a1 a2 a3 a4 a5

colorMask_impl :: ModifierOpenGLESImageProcessor -> GL10.GL10 -> Float -> Float -> Float -> Float -> IO (())
colorMask_impl this gl red green blue alpha = do
        Control.Monad.void (GL10.glColor4f gl red green blue alpha)
        pure ()


