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
-- package org.allbinary.graphics.opengles.shader
module NullOpenGLTextureProcessor where

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
import qualified OpenGLObject3dProcessor -- same package or java.lang

data NullOpenGLTextureProcessor = NullOpenGLTextureProcessor
    { header_ :: JavaHeader
    }

instance JavaNull NullOpenGLTextureProcessor where
    javaNull = javaNullRecord "NullOpenGLTextureProcessor"

instance JavaEquals NullOpenGLTextureProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullOpenGLTextureProcessor where
    (==) = jrecordEquals

instance JavaObjectClass NullOpenGLTextureProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((OpenGLObject3dProcessor.new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullOpenGLTextureProcessor
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullOpenGLTextureProcessor header_
    jregisterLevel header_ this
    pure this

initFields_ :: NullOpenGLTextureProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullOpenGLTextureProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullOpenGLTextureProcessor -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLObject3dProcessor.OpenGLObject3dProcessor)
getInstance = do
        pure (NullOpenGLTextureProcessor.instance_)


