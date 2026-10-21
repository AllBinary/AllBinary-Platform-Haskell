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
module BaseAnimationInterfaceFactoryInterfaceComposite where

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
import qualified BasicAnimationInterfaceFactoryInterface -- same package or java.lang
import qualified NullAnimationFactory -- same package or java.lang
import qualified Animation -- same package or java.lang
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties
import qualified AnimationInterfaceFactoryInterface

-- implements AnimationInterfaceFactoryInterface
data BaseAnimationInterfaceFactoryInterfaceComposite = BaseAnimationInterfaceFactoryInterfaceComposite
    { header_ :: JavaHeader
    , basicAnimationInterfaceFactoryInterfaceArray :: IORef (JavaArray (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface))
    }

instance JavaNull BaseAnimationInterfaceFactoryInterfaceComposite where
    javaNull = javaNullRecord "BaseAnimationInterfaceFactoryInterfaceComposite"

instance JavaEquals BaseAnimationInterfaceFactoryInterfaceComposite where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseAnimationInterfaceFactoryInterfaceComposite where
    (==) = jrecordEquals

instance JavaObjectClass BaseAnimationInterfaceFactoryInterfaceComposite where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BaseAnimationInterfaceFactoryInterfaceComposite
newRecord_ = do
    header_ <- newJavaHeader
    basicAnimationInterfaceFactoryInterfaceArray <- newIORef javaNull
    let this = BaseAnimationInterfaceFactoryInterfaceComposite header_ basicAnimationInterfaceFactoryInterfaceArray
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getBasicAnimationInterfaceFactoryInterfaceArray" (\() -> getBasicAnimationInterfaceFactoryInterfaceArray_impl this)
    jregisterMethod header_ "setBasicAnimationInterfaceFactoryInterfaceArray" (\() -> setBasicAnimationInterfaceFactoryInterfaceArray_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    pure this

initFields_ :: BaseAnimationInterfaceFactoryInterfaceComposite -> IO ()
initFields_ this = do
    jset this.basicAnimationInterfaceFactoryInterfaceArray (javaNull)
    pure ()

new_1 :: JavaArray (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface) -> IO BaseAnimationInterfaceFactoryInterfaceComposite
new_1 basicAnimationInterfaceFactoryInterfaceArray = do
    this <- newRecord_
    init_1 this basicAnimationInterfaceFactoryInterfaceArray
    pure this

init_1 :: BaseAnimationInterfaceFactoryInterfaceComposite -> JavaArray (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface) -> IO ()
init_1 this basicAnimationInterfaceFactoryInterfaceArray = do
        initFields_ this
        jset (this).basicAnimationInterfaceFactoryInterfaceArray (basicAnimationInterfaceFactoryInterfaceArray)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: BaseAnimationInterfaceFactoryInterfaceComposite))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: BaseAnimationInterfaceFactoryInterfaceComposite)) a1

getInstance_impl :: BaseAnimationInterfaceFactoryInterfaceComposite -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)


getBasicAnimationInterfaceFactoryInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface))
getBasicAnimationInterfaceFactoryInterfaceArray object_ = jmethod object_ "getBasicAnimationInterfaceFactoryInterfaceArray" (\() -> (getBasicAnimationInterfaceFactoryInterfaceArray_impl (javaCast object_ :: BaseAnimationInterfaceFactoryInterfaceComposite))) ()

getBasicAnimationInterfaceFactoryInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface))
getBasicAnimationInterfaceFactoryInterfaceArray_super object_ = (getBasicAnimationInterfaceFactoryInterfaceArray_impl (javaCast object_ :: BaseAnimationInterfaceFactoryInterfaceComposite))

getBasicAnimationInterfaceFactoryInterfaceArray_impl :: BaseAnimationInterfaceFactoryInterfaceComposite -> IO (JavaArray (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface))
getBasicAnimationInterfaceFactoryInterfaceArray_impl this = do
        pure ((jget (this).basicAnimationInterfaceFactoryInterfaceArray))


setBasicAnimationInterfaceFactoryInterfaceArray :: (JavaObjectClass this_) => this_ -> JavaArray (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface) -> IO (())
setBasicAnimationInterfaceFactoryInterfaceArray object_ a1 = jmethod object_ "setBasicAnimationInterfaceFactoryInterfaceArray" (\() -> (setBasicAnimationInterfaceFactoryInterfaceArray_impl (javaCast object_ :: BaseAnimationInterfaceFactoryInterfaceComposite))) () a1

setBasicAnimationInterfaceFactoryInterfaceArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface) -> IO (())
setBasicAnimationInterfaceFactoryInterfaceArray_super object_ a1 = (setBasicAnimationInterfaceFactoryInterfaceArray_impl (javaCast object_ :: BaseAnimationInterfaceFactoryInterfaceComposite)) a1

setBasicAnimationInterfaceFactoryInterfaceArray_impl :: BaseAnimationInterfaceFactoryInterfaceComposite -> JavaArray (BasicAnimationInterfaceFactoryInterface.BasicAnimationInterfaceFactoryInterface) -> IO (())
setBasicAnimationInterfaceFactoryInterfaceArray_impl this basicAnimationInterfaceFactoryInterfaceArray = do
        jset (this).basicAnimationInterfaceFactoryInterfaceArray (basicAnimationInterfaceFactoryInterfaceArray)
        pure ()


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: BaseAnimationInterfaceFactoryInterfaceComposite))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: BaseAnimationInterfaceFactoryInterfaceComposite)) a1

setInitialScale_impl :: BaseAnimationInterfaceFactoryInterfaceComposite -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        pure ()


