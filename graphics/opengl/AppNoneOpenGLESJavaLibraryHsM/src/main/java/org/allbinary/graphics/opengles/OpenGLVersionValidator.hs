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
-- package org.allbinary.graphics.opengles
module OpenGLVersionValidator where

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
import qualified Any -- same package or java.lang
import qualified ShaderComposite -- org.allbinary.graphics.opengles.shader.ShaderComposite

data OpenGLVersionValidator = OpenGLVersionValidator
    { header_ :: JavaHeader
    , eGL_CONTEXT_CLIENT_VERSION_VALUE :: IORef (Int)
    }

instance JavaNull OpenGLVersionValidator where
    javaNull = javaNullRecord "OpenGLVersionValidator"

instance JavaEquals OpenGLVersionValidator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLVersionValidator where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLVersionValidator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLVersionValidator
newRecord_ = do
    header_ <- newJavaHeader
    eGL_CONTEXT_CLIENT_VERSION_VALUE <- newIORef 0
    let this = OpenGLVersionValidator header_ eGL_CONTEXT_CLIENT_VERSION_VALUE
    jregisterLevel header_ this
    jregisterMethod header_ "isGL31OrHigher" (\() -> isGL31OrHigher_impl this)
    jregisterMethod header_ "isAvailable" (\() -> isAvailable_impl this)
    jregisterMethod header_ "setShaderComposite" (\() -> setShaderComposite_impl this)
    pure this

initFields_ :: OpenGLVersionValidator -> IO ()
initFields_ this = do
    jset this.eGL_CONTEXT_CLIENT_VERSION_VALUE ((Prelude.negate 1))
    pure ()

new_ :: IO OpenGLVersionValidator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLVersionValidator -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLVersionValidator)
getInstance = do
        pure (OpenGLVersionValidator.instance_)


isGL31OrHigher :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGL31OrHigher object_ = jmethod object_ "isGL31OrHigher" (\() -> (isGL31OrHigher_impl (javaCast object_ :: OpenGLVersionValidator))) ()

isGL31OrHigher_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGL31OrHigher_super object_ = (isGL31OrHigher_impl (javaCast object_ :: OpenGLVersionValidator))

isGL31OrHigher_impl :: OpenGLVersionValidator -> IO (Bool)
isGL31OrHigher_impl this = do
        pure (False)


isAvailable :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isAvailable object_ a1 = jmethod object_ "isAvailable" (\() -> (isAvailable_impl (javaCast object_ :: OpenGLVersionValidator))) () a1

isAvailable_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isAvailable_super object_ a1 = (isAvailable_impl (javaCast object_ :: OpenGLVersionValidator)) a1

isAvailable_impl :: OpenGLVersionValidator -> String -> IO (Bool)
isAvailable_impl this glVersionRequired = do
        pure (False)


setShaderComposite :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> ShaderComposite.ShaderComposite -> o2 -> IO (())
setShaderComposite object_ a1 a2 = jmethod object_ "setShaderComposite" (\() -> (setShaderComposite_impl (javaCast object_ :: OpenGLVersionValidator))) () a1 (jtoObject a2)

setShaderComposite_super :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> ShaderComposite.ShaderComposite -> o2 -> IO (())
setShaderComposite_super object_ a1 a2 = (setShaderComposite_impl (javaCast object_ :: OpenGLVersionValidator)) a1 (jtoObject a2)

setShaderComposite_impl :: OpenGLVersionValidator -> ShaderComposite.ShaderComposite -> JavaObject -> IO (())
setShaderComposite_impl this shaderComposite anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        pure ()


