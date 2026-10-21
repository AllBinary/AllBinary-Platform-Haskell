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
-- package org.allbinary.animation.image
module ImageArrayRotationAnimationCacheable (module ImageArrayRotationAnimationCacheable, module AdjustedImageArrayRotationAnimation) where

import AdjustedImageArrayRotationAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getKey, getKey_super, getKey_impl, toString, toString_super, toString_impl)
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
import qualified ImageArrayRotationAnimationInfo -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CacheableInterface -- org.allbinary.logic.util.cache.CacheableInterface
import qualified AdjustedImageArrayRotationAnimation

-- implements CacheableInterface
data ImageArrayRotationAnimationCacheable = ImageArrayRotationAnimationCacheable
    { header_ :: JavaHeader
    , base :: AdjustedImageArrayRotationAnimation.AdjustedImageArrayRotationAnimation
    }

instance JavaNull ImageArrayRotationAnimationCacheable where
    javaNull = javaNullRecord "ImageArrayRotationAnimationCacheable"

instance JavaEquals ImageArrayRotationAnimationCacheable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageArrayRotationAnimationCacheable where
    (==) = jrecordEquals

instance JavaObjectClass ImageArrayRotationAnimationCacheable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageArrayRotationAnimationCacheable
newRecord_ = do
    base <- AdjustedImageArrayRotationAnimation.newRecord_
    let header_ = base.header_
    let this = ImageArrayRotationAnimationCacheable header_ base
    jregisterLevel header_ this
    CacheableInterface.registerInterface_ header_
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: ImageArrayRotationAnimationCacheable -> IO ()
initFields_ this = do
    pure ()

new_2 :: (JavaObjectClass o1) => o1 -> AnimationBehavior.AnimationBehavior -> IO ImageArrayRotationAnimationCacheable
new_2 anyTypeObject_ animationBehavior = do
    this <- newRecord_
    init_2 this anyTypeObject_ animationBehavior
    pure this

init_2 :: (JavaObjectClass o1) => ImageArrayRotationAnimationCacheable -> o1 -> AnimationBehavior.AnimationBehavior -> IO ()
init_2 this anyTypeObject_ animationBehavior = do
        let anyType = jtoObject anyTypeObject_
        AdjustedImageArrayRotationAnimation.init_6 this.base (jio (getImageArray (((javaCast anyType :: ImageArrayRotationAnimationInfo.ImageArrayRotationAnimationInfo))))) (jio (getAngleInfoP (((javaCast anyType :: ImageArrayRotationAnimationInfo.ImageArrayRotationAnimationInfo))))) (jio (getTotalAngle (((javaCast anyType :: ImageArrayRotationAnimationInfo.ImageArrayRotationAnimationInfo))))) (jio (getDx (((javaCast anyType :: ImageArrayRotationAnimationInfo.ImageArrayRotationAnimationInfo))))) (jio (getDy (((javaCast anyType :: ImageArrayRotationAnimationInfo.ImageArrayRotationAnimationInfo))))) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: ImageArrayRotationAnimationCacheable))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: ImageArrayRotationAnimationCacheable))

getKey_impl :: ImageArrayRotationAnimationCacheable -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ImageArrayRotationAnimationCacheable))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ImageArrayRotationAnimationCacheable))

toString_impl :: ImageArrayRotationAnimationCacheable -> IO (String)
toString_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


