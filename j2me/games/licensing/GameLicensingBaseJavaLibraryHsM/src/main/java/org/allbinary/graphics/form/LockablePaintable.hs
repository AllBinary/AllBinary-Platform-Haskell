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
-- package org.allbinary.graphics.form
module LockablePaintable (module LockablePaintable, module ItemPaintable) where

import ItemPaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, getLockedIndex, getLockedIndex_super, getLockedIndex_impl, getAnimation, getAnimation_super, getAnimation_impl, animation, lockedIndex)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Animation -- org.allbinary.animation.Animation
import qualified FeaturedAnimationInterfaceFactoryInterfaceFactory -- org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
import qualified LockedResources -- org.allbinary.logic.system.security.licensing.LockedResources
import qualified LockedUtil -- org.allbinary.logic.system.security.licensing.LockedUtil
import qualified ItemPaintable

data LockablePaintable = LockablePaintable
    { header_ :: JavaHeader
    , base :: ItemPaintable.ItemPaintable
    , animation :: IORef (Animation.Animation)
    , lockedIndex :: IORef (Int)
    }

instance JavaNull LockablePaintable where
    javaNull = javaNullRecord "LockablePaintable"

instance JavaEquals LockablePaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LockablePaintable where
    (==) = jrecordEquals

instance JavaObjectClass LockablePaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO LockablePaintable
newRecord_ = do
    base <- ItemPaintable.newRecord_
    let header_ = base.header_
    animation <- newIORef javaNull
    lockedIndex <- newIORef 0
    let this = LockablePaintable header_ base animation lockedIndex
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "getLockedIndex" (\() -> getLockedIndex_impl this)
    jregisterMethod header_ "getAnimation" (\() -> getAnimation_impl this)
    pure this

initFields_ :: LockablePaintable -> IO ()
initFields_ this = do
    jset this.animation =<< (AnimationInterfaceFactoryInterface.getInstance ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.get ((jio (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance))) (jget ((jio (LockedResources.getInstance))).lOCKED_DEMO_GAME_FEATURE_RESOURCE)))) 0)
    jset this.lockedIndex (0)
    pure ()

new_1 :: Int -> IO LockablePaintable
new_1 lockedIndex = do
    this <- newRecord_
    init_1 this lockedIndex
    pure this

init_1 :: LockablePaintable -> Int -> IO ()
init_1 this lockedIndex = do
        ItemPaintable.init_ this.base
        initFields_ this
        jset (this).lockedIndex (lockedIndex)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paint object_ a1 a2 a3 a4 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: LockablePaintable))) () a1 a2 a3 a4

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paint_super object_ a1 a2 a3 a4 = (paint_impl (javaCast object_ :: LockablePaintable)) a1 a2 a3 a4

paint_impl :: LockablePaintable -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paint_impl this graphics currentIndex x y = do
        when ((jio (LockedUtil.isLocked ((jio (LockedUtil.getInstance))))) && (currentIndex >= (jio (LockablePaintable.getLockedIndex this)))) $ do
            Control.Monad.void (Animation.paintXY ((jio (LockablePaintable.getAnimation this))) graphics x y)
        pure ()


getLockedIndex :: (JavaObjectClass this_) => this_ -> IO (Int)
getLockedIndex object_ = jmethod object_ "getLockedIndex" (\() -> (getLockedIndex_impl (javaCast object_ :: LockablePaintable))) ()

getLockedIndex_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLockedIndex_super object_ = (getLockedIndex_impl (javaCast object_ :: LockablePaintable))

getLockedIndex_impl :: LockablePaintable -> IO (Int)
getLockedIndex_impl this = do
        pure ((jget (this).lockedIndex))


getAnimation :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimation object_ = jmethod object_ "getAnimation" (\() -> (getAnimation_impl (javaCast object_ :: LockablePaintable))) ()

getAnimation_super :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimation_super object_ = (getAnimation_impl (javaCast object_ :: LockablePaintable))

getAnimation_impl :: LockablePaintable -> IO (Animation.Animation)
getAnimation_impl this = do
        pure ((jget (this).animation))


