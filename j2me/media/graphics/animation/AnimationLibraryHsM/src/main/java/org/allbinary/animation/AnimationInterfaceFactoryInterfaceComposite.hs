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
module AnimationInterfaceFactoryInterfaceComposite where

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
import qualified NullAnimationFactory -- same package or java.lang
import qualified Animation -- same package or java.lang
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties
import qualified AnimationInterfaceFactoryInterface

-- implements AnimationInterfaceFactoryInterface
data AnimationInterfaceFactoryInterfaceComposite = AnimationInterfaceFactoryInterfaceComposite
    { header_ :: JavaHeader
    , animationInterfaceFactoryInterfaceArray :: IORef (JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface))
    }

instance JavaNull AnimationInterfaceFactoryInterfaceComposite where
    javaNull = javaNullRecord "AnimationInterfaceFactoryInterfaceComposite"

instance JavaEquals AnimationInterfaceFactoryInterfaceComposite where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnimationInterfaceFactoryInterfaceComposite where
    (==) = jrecordEquals

instance JavaObjectClass AnimationInterfaceFactoryInterfaceComposite where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AnimationInterfaceFactoryInterfaceComposite
newRecord_ = do
    header_ <- newJavaHeader
    animationInterfaceFactoryInterfaceArray <- newIORef javaNull
    let this = AnimationInterfaceFactoryInterfaceComposite header_ animationInterfaceFactoryInterfaceArray
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getAnimationInterfaceFactoryInterfaceArray" (\() -> getAnimationInterfaceFactoryInterfaceArray_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: AnimationInterfaceFactoryInterfaceComposite -> IO ()
initFields_ this = do
    jset this.animationInterfaceFactoryInterfaceArray (javaNull)
    pure ()

new_1 :: JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface) -> IO AnimationInterfaceFactoryInterfaceComposite
new_1 basicAnimationInterfaceFactoryInterfaceArray = do
    this <- newRecord_
    init_1 this basicAnimationInterfaceFactoryInterfaceArray
    pure this

init_1 :: AnimationInterfaceFactoryInterfaceComposite -> JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface) -> IO ()
init_1 this basicAnimationInterfaceFactoryInterfaceArray = do
        initFields_ this
        jset (this).animationInterfaceFactoryInterfaceArray (basicAnimationInterfaceFactoryInterfaceArray)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: AnimationInterfaceFactoryInterfaceComposite))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: AnimationInterfaceFactoryInterfaceComposite)) a1

getInstance_impl :: AnimationInterfaceFactoryInterfaceComposite -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)


getAnimationInterfaceFactoryInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface))
getAnimationInterfaceFactoryInterfaceArray object_ = jmethod object_ "getAnimationInterfaceFactoryInterfaceArray" (\() -> (getAnimationInterfaceFactoryInterfaceArray_impl (javaCast object_ :: AnimationInterfaceFactoryInterfaceComposite))) ()

getAnimationInterfaceFactoryInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface))
getAnimationInterfaceFactoryInterfaceArray_super object_ = (getAnimationInterfaceFactoryInterfaceArray_impl (javaCast object_ :: AnimationInterfaceFactoryInterfaceComposite))

getAnimationInterfaceFactoryInterfaceArray_impl :: AnimationInterfaceFactoryInterfaceComposite -> IO (JavaArray (AnimationInterfaceFactoryInterface.AnimationInterfaceFactoryInterface))
getAnimationInterfaceFactoryInterfaceArray_impl this = do
        pure ((jget (this).animationInterfaceFactoryInterfaceArray))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: AnimationInterfaceFactoryInterfaceComposite))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: AnimationInterfaceFactoryInterfaceComposite)) a1

setInitialScale_impl :: AnimationInterfaceFactoryInterfaceComposite -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        pure ()


