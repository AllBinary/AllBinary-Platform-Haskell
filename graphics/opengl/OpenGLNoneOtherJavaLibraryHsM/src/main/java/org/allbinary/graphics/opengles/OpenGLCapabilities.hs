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
module OpenGLCapabilities where

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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data OpenGLCapabilities = OpenGLCapabilities
    { header_ :: JavaHeader
    , cUSTOM_GL_SURFACE_VIEW :: IORef (Bool)
    , vERSION_1_0 :: IORef (String)
    , vERSION_1_1 :: IORef (String)
    , vERSION_2_0 :: IORef (String)
    , vERSION_3_0 :: IORef (String)
    , vERSION_3_1 :: IORef (String)
    , vERSION_3_2 :: IORef (String)
    , vERSION_HIGHER_THAN_EXISTS :: IORef (String)
    , glVersion :: IORef (String)
    , shaderVersion :: IORef (Int)
    , glInstanceVersion :: IORef (String)
    , maxTextureSize :: IORef (Int)
    }

instance JavaNull OpenGLCapabilities where
    javaNull = javaNullRecord "OpenGLCapabilities"

instance JavaEquals OpenGLCapabilities where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLCapabilities where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLCapabilities where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLCapabilities
newRecord_ = do
    header_ <- newJavaHeader
    cUSTOM_GL_SURFACE_VIEW <- newIORef False
    vERSION_1_0 <- newIORef ""
    vERSION_1_1 <- newIORef ""
    vERSION_2_0 <- newIORef ""
    vERSION_3_0 <- newIORef ""
    vERSION_3_1 <- newIORef ""
    vERSION_3_2 <- newIORef ""
    vERSION_HIGHER_THAN_EXISTS <- newIORef ""
    glVersion <- newIORef ""
    shaderVersion <- newIORef 0
    glInstanceVersion <- newIORef ""
    maxTextureSize <- newIORef 0
    let this = OpenGLCapabilities header_ cUSTOM_GL_SURFACE_VIEW vERSION_1_0 vERSION_1_1 vERSION_2_0 vERSION_3_0 vERSION_3_1 vERSION_3_2 vERSION_HIGHER_THAN_EXISTS glVersion shaderVersion glInstanceVersion maxTextureSize
    jregisterLevel header_ this
    jregisterMethod header_ "isInitialized" (\() -> isInitialized_impl this)
    jregisterMethod header_ "initCapabilities" (\() -> initCapabilities_impl this)
    jregisterMethod header_ "isGlExtensionDrawTexture" (\() -> isGlExtensionDrawTexture_impl this)
    jregisterMethod header_ "getGlVersion" (\() -> getGlVersion_impl this)
    jregisterMethod header_ "isVertexBufferObjectSupport" (\() -> isVertexBufferObjectSupport_impl this)
    jregisterMethod header_ "isTextureSizeValid" (\() -> isTextureSizeValid_impl this)
    pure this

initFields_ :: OpenGLCapabilities -> IO ()
initFields_ this = do
    jset this.cUSTOM_GL_SURFACE_VIEW (True)
    jset this.vERSION_1_0 ("1.0")
    jset this.vERSION_1_1 ("1.1")
    jset this.vERSION_2_0 ("2.0")
    jset this.vERSION_3_0 ("3.0")
    jset this.vERSION_3_1 ("3.1")
    jset this.vERSION_3_2 ("3.2")
    jset this.vERSION_HIGHER_THAN_EXISTS ("999.999")
    jset this.glVersion ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.shaderVersion (0)
    jset this.glInstanceVersion ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.maxTextureSize (64)
    pure ()


getInstance :: IO (OpenGLCapabilities)
getInstance = do
        pure (OpenGLCapabilities.instance_)

new_ :: IO OpenGLCapabilities
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLCapabilities -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isInitialized :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized object_ = jmethod object_ "isInitialized" (\() -> (isInitialized_impl (javaCast object_ :: OpenGLCapabilities))) ()

isInitialized_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInitialized_super object_ = (isInitialized_impl (javaCast object_ :: OpenGLCapabilities))

isInitialized_impl :: OpenGLCapabilities -> IO (Bool)
isInitialized_impl this = do
        pure (True)


initCapabilities :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
initCapabilities object_ a1 = jmethod object_ "initCapabilities" (\() -> (initCapabilities_impl (javaCast object_ :: OpenGLCapabilities))) () (jtoObject a1)

initCapabilities_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
initCapabilities_super object_ a1 = (initCapabilities_impl (javaCast object_ :: OpenGLCapabilities)) (jtoObject a1)

initCapabilities_impl :: OpenGLCapabilities -> JavaObject -> IO (())
initCapabilities_impl this glObject_ = do
        let gl = jtoObject glObject_
        pure ()


isGlExtensionDrawTexture :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGlExtensionDrawTexture object_ = jmethod object_ "isGlExtensionDrawTexture" (\() -> (isGlExtensionDrawTexture_impl (javaCast object_ :: OpenGLCapabilities))) ()

isGlExtensionDrawTexture_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGlExtensionDrawTexture_super object_ = (isGlExtensionDrawTexture_impl (javaCast object_ :: OpenGLCapabilities))

isGlExtensionDrawTexture_impl :: OpenGLCapabilities -> IO (Bool)
isGlExtensionDrawTexture_impl this = do
        pure (False)


getGlVersion :: (JavaObjectClass this_) => this_ -> IO (String)
getGlVersion object_ = jmethod object_ "getGlVersion" (\() -> (getGlVersion_impl (javaCast object_ :: OpenGLCapabilities))) ()

getGlVersion_super :: (JavaObjectClass this_) => this_ -> IO (String)
getGlVersion_super object_ = (getGlVersion_impl (javaCast object_ :: OpenGLCapabilities))

getGlVersion_impl :: OpenGLCapabilities -> IO (String)
getGlVersion_impl this = do
        pure ((jget (this).glVersion))


isVertexBufferObjectSupport :: (JavaObjectClass this_) => this_ -> IO (Bool)
isVertexBufferObjectSupport object_ = jmethod object_ "isVertexBufferObjectSupport" (\() -> (isVertexBufferObjectSupport_impl (javaCast object_ :: OpenGLCapabilities))) ()

isVertexBufferObjectSupport_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isVertexBufferObjectSupport_super object_ = (isVertexBufferObjectSupport_impl (javaCast object_ :: OpenGLCapabilities))

isVertexBufferObjectSupport_impl :: OpenGLCapabilities -> IO (Bool)
isVertexBufferObjectSupport_impl this = do
        pure (False)


isTextureSizeValid :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isTextureSizeValid object_ a1 = jmethod object_ "isTextureSizeValid" (\() -> (isTextureSizeValid_impl (javaCast object_ :: OpenGLCapabilities))) () a1

isTextureSizeValid_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isTextureSizeValid_super object_ a1 = (isTextureSizeValid_impl (javaCast object_ :: OpenGLCapabilities)) a1

isTextureSizeValid_impl :: OpenGLCapabilities -> Int -> IO (Bool)
isTextureSizeValid_impl this widthAndHeight = do
        pure (True)


