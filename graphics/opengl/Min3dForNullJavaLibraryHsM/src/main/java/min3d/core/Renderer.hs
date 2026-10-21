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
-- package min3d.core
module Renderer where

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
import qualified EGLConfig -- javax.microedition.khronos.egl.EGLConfig
import qualified GL10 -- javax.microedition.khronos.opengles.GL10

-- Java interface: the classes that implement it have these functions
data Renderer = Renderer
    { header_ :: JavaHeader
    }

instance JavaNull Renderer where
    javaNull = javaNullRecord "Renderer"

instance JavaEquals Renderer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Renderer where
    (==) = jrecordEquals

instance JavaObjectClass Renderer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> Renderer
fromHeader_ header = Renderer header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (Renderer header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


onSurfaceCreated :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> EGLConfig.EGLConfig -> IO (())
onSurfaceCreated object_ a1 a2 = jmethod object_ "onSurfaceCreated" (\() -> (onSurfaceCreated_impl (javaCast object_ :: Renderer))) () a1 a2

onSurfaceCreated_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> EGLConfig.EGLConfig -> IO (())
onSurfaceCreated_super object_ a1 a2 = (onSurfaceCreated_impl (javaCast object_ :: Renderer)) a1 a2

onSurfaceCreated_impl :: Renderer -> GL10.GL10 -> EGLConfig.EGLConfig -> IO (())
onSurfaceCreated_impl this gl config = javaAbstractMethod "onSurfaceCreated"


onSurfaceChanged :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> IO (())
onSurfaceChanged object_ a1 a2 a3 = jmethod object_ "onSurfaceChanged" (\() -> (onSurfaceChanged_impl (javaCast object_ :: Renderer))) () a1 a2 a3

onSurfaceChanged_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> IO (())
onSurfaceChanged_super object_ a1 a2 a3 = (onSurfaceChanged_impl (javaCast object_ :: Renderer)) a1 a2 a3

onSurfaceChanged_impl :: Renderer -> GL10.GL10 -> Int -> Int -> IO (())
onSurfaceChanged_impl this gl width height = javaAbstractMethod "onSurfaceChanged"


onDrawFrame :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
onDrawFrame object_ a1 = jmethod object_ "onDrawFrame" (\() -> (onDrawFrame_impl (javaCast object_ :: Renderer))) () a1

onDrawFrame_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
onDrawFrame_super object_ a1 = (onDrawFrame_impl (javaCast object_ :: Renderer)) a1

onDrawFrame_impl :: Renderer -> GL10.GL10 -> IO (())
onDrawFrame_impl this gl = javaAbstractMethod "onDrawFrame"


