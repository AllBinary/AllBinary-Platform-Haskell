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
-- package org.allbinary.image.opengles
module OpenGLImageSpecificFactory where

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
import qualified OpenGLImageFactory -- same package or java.lang
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data OpenGLImageSpecificFactory = OpenGLImageSpecificFactory
    { header_ :: JavaHeader
    , imageFactory :: IORef (OpenGLImageFactory.OpenGLImageFactory)
    , updating :: IORef (Bool)
    }

instance JavaNull OpenGLImageSpecificFactory where
    javaNull = javaNullRecord "OpenGLImageSpecificFactory"

instance JavaEquals OpenGLImageSpecificFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLImageSpecificFactory where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLImageSpecificFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLImageSpecificFactory
newRecord_ = do
    header_ <- newJavaHeader
    imageFactory <- newIORef javaNull
    updating <- newIORef False
    let this = OpenGLImageSpecificFactory header_ imageFactory updating
    jregisterLevel header_ this
    jregisterMethod header_ "setImageFactory" (\() -> setImageFactory_impl this)
    jregisterMethod header_ "getImageFactory" (\() -> getImageFactory_impl this)
    pure this

initFields_ :: OpenGLImageSpecificFactory -> IO ()
initFields_ this = do
    jset this.imageFactory ((jget OpenGLImageFactory.nULL_OPENGL_IMAGE_FACTORY))
    jset this.updating (False)
    pure ()

new_ :: IO OpenGLImageSpecificFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLImageSpecificFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLImageSpecificFactory)
getInstance = do
        pure (OpenGLImageSpecificFactory.instance_)


setImageFactory :: (JavaObjectClass this_) => this_ -> OpenGLImageFactory.OpenGLImageFactory -> IO (())
setImageFactory object_ a1 = jmethod object_ "setImageFactory" (\() -> (setImageFactory_impl (javaCast object_ :: OpenGLImageSpecificFactory))) () a1

setImageFactory_super :: (JavaObjectClass this_) => this_ -> OpenGLImageFactory.OpenGLImageFactory -> IO (())
setImageFactory_super object_ a1 = (setImageFactory_impl (javaCast object_ :: OpenGLImageSpecificFactory)) a1

setImageFactory_impl :: OpenGLImageSpecificFactory -> OpenGLImageFactory.OpenGLImageFactory -> IO (())
setImageFactory_impl this imageFactory = do
        jset (this).imageFactory (imageFactory)
        Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Selected Image Factory: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jget (this).imageFactory)))))))) this "setImageFactory")
        pure ()


getImageFactory :: (JavaObjectClass this_) => this_ -> IO (OpenGLImageFactory.OpenGLImageFactory)
getImageFactory object_ = jmethod object_ "getImageFactory" (\() -> (getImageFactory_impl (javaCast object_ :: OpenGLImageSpecificFactory))) ()

getImageFactory_super :: (JavaObjectClass this_) => this_ -> IO (OpenGLImageFactory.OpenGLImageFactory)
getImageFactory_super object_ = (getImageFactory_impl (javaCast object_ :: OpenGLImageSpecificFactory))

getImageFactory_impl :: OpenGLImageSpecificFactory -> IO (OpenGLImageFactory.OpenGLImageFactory)
getImageFactory_impl this = do
        pure ((jget (this).imageFactory))


