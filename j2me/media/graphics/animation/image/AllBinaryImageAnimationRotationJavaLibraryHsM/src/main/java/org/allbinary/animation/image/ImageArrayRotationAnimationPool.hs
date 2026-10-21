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
module ImageArrayRotationAnimationPool (module ImageArrayRotationAnimationPool, module BasicArrayListResetablePool) where

import BasicArrayListResetablePool hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, remove, remove_super, remove_impl, iMAGE_ROTATION_ANIMATION_POOL)
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
import qualified ImageArrayRotationAnimationCacheableInterfaceFactory -- same package or java.lang
import qualified ImageArrayRotationAnimationInfo -- same package or java.lang
import qualified ImageArrayRotationAnimationCacheable -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified BasicArrayListResetablePool -- org.allbinary.logic.util.cache.BasicArrayListResetablePool
import qualified CacheableInterface -- org.allbinary.logic.util.cache.CacheableInterface
import qualified CacheableInterfaceFactoryInterface -- org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface
import qualified PoolInterface -- org.allbinary.logic.util.cache.PoolInterface

data ImageArrayRotationAnimationPool = ImageArrayRotationAnimationPool
    { header_ :: JavaHeader
    , base :: BasicArrayListResetablePool.BasicArrayListResetablePool
    }

instance JavaNull ImageArrayRotationAnimationPool where
    javaNull = javaNullRecord "ImageArrayRotationAnimationPool"

instance JavaEquals ImageArrayRotationAnimationPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageArrayRotationAnimationPool where
    (==) = jrecordEquals

instance JavaObjectClass ImageArrayRotationAnimationPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE iMAGE_ROTATION_ANIMATION_POOL #-}
iMAGE_ROTATION_ANIMATION_POOL = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: PoolInterface.PoolInterface) (new_1 (jio (ImageArrayRotationAnimationCacheableInterfaceFactory.new_)))) >>= newIORef)

newRecord_ :: IO ImageArrayRotationAnimationPool
newRecord_ = do
    base <- BasicArrayListResetablePool.newRecord_
    let header_ = base.header_
    let this = ImageArrayRotationAnimationPool header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    pure this

initFields_ :: ImageArrayRotationAnimationPool -> IO ()
initFields_ this = do
    pure ()

new_1 :: CacheableInterfaceFactoryInterface.CacheableInterfaceFactoryInterface -> IO ImageArrayRotationAnimationPool
new_1 cacheableInterfaceFactoryInterface = do
    this <- newRecord_
    init_1 this cacheableInterfaceFactoryInterface
    pure this

init_1 :: ImageArrayRotationAnimationPool -> CacheableInterfaceFactoryInterface.CacheableInterfaceFactoryInterface -> IO ()
init_1 this cacheableInterfaceFactoryInterface = do
        BasicArrayListResetablePool.init_1 this.base (cacheableInterfaceFactoryInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getInstance :: IO (PoolInterface.PoolInterface)
getInstance = do
        pure ((jget ImageArrayRotationAnimationPool.iMAGE_ROTATION_ANIMATION_POOL))


-- throws Exception
remove :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CacheableInterface.CacheableInterface)
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: ImageArrayRotationAnimationPool))) () (jtoObject a1)

remove_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CacheableInterface.CacheableInterface)
remove_super object_ a1 = (remove_impl (javaCast object_ :: ImageArrayRotationAnimationPool)) (jtoObject a1)

remove_impl :: ImageArrayRotationAnimationPool -> JavaObject -> IO (CacheableInterface.CacheableInterface)
remove_impl this keyObject_ = do
        let key = jtoObject keyObject_
        cacheableInterface <- (BasicArrayListResetablePool.remove_super this.base key)
        let allBinaryImageRotationAnimationInfo = (javaCast key :: ImageArrayRotationAnimationInfo.ImageArrayRotationAnimationInfo)
        let imageArrayRotationAnimationCacheable = ((javaCast cacheableInterface :: ImageArrayRotationAnimationCacheable.ImageArrayRotationAnimationCacheable))
        Control.Monad.void (ImageArrayRotationAnimationCacheable.setImageArray imageArrayRotationAnimationCacheable (jio (ImageArrayRotationAnimationInfo.getImageArray allBinaryImageRotationAnimationInfo)))
        pure (cacheableInterface)


