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
-- package org.allbinary.animation
module NullAnimationFactory where

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
import qualified Animation -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties
import qualified AnimationInterfaceFactoryInterface
import qualified ProceduralAnimationInterfaceFactoryInterface

-- implements AnimationInterfaceFactoryInterface
-- implements ProceduralAnimationInterfaceFactoryInterface
data NullAnimationFactory = NullAnimationFactory
    { header_ :: JavaHeader
    , nULL_ANIMATION :: IORef (Animation.Animation)
    , eMPTY_ARRAY :: IORef (JavaArray (Animation.Animation))
    }

instance JavaNull NullAnimationFactory where
    javaNull = javaNullRecord "NullAnimationFactory"

instance JavaEquals NullAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass NullAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_NOT_FOR_USE_ANIMATION_FACTORY #-}
nULL_NOT_FOR_USE_ANIMATION_FACTORY = unsafePerformIO ((new_) >>= newIORef)

{-# NOINLINE nULL_ANIMATION_FACTORY #-}
nULL_ANIMATION_FACTORY = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullAnimationFactory
newRecord_ = do
    header_ <- newJavaHeader
    nULL_ANIMATION <- newIORef javaNull
    eMPTY_ARRAY <- newIORef javaNull
    let this = NullAnimationFactory header_ nULL_ANIMATION eMPTY_ARRAY
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    ProceduralAnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getInstanceAnimation" (\() -> getInstanceAnimation_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: NullAnimationFactory -> IO ()
initFields_ this = do
    jset this.nULL_ANIMATION =<< (Animation.new_ {- Java anonymous class body: implement it as a record of functions
        -- paintXY
-})
    jset this.eMPTY_ARRAY ((jnewArray (0) javaNull))
    pure ()

new_ :: IO NullAnimationFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullAnimationFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getFactoryInstance :: IO (NullAnimationFactory)
getFactoryInstance = do
        pure ((jget NullAnimationFactory.nULL_ANIMATION_FACTORY))


getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: NullAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: NullAnimationFactory)) a1

getInstance_impl :: NullAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        pure ((jget (this).nULL_ANIMATION))


-- throws Exception
getInstanceAnimation :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation object_ a1 = jmethod object_ "getInstanceAnimation" (\() -> (getInstanceAnimation_impl (javaCast object_ :: NullAnimationFactory))) () a1

getInstanceAnimation_super :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_super object_ a1 = (getInstanceAnimation_impl (javaCast object_ :: NullAnimationFactory)) a1

getInstanceAnimation_impl :: NullAnimationFactory -> Animation.Animation -> IO (Animation.Animation)
getInstanceAnimation_impl this animationInterface = do
        pure ((jget (this).nULL_ANIMATION))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: NullAnimationFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: NullAnimationFactory)) a1

setInitialScale_impl :: NullAnimationFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        pure ()


