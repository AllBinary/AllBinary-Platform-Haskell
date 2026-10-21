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
-- package org.allbinary.game.displayable.canvas
module PreGameLockablePaintable (module PreGameLockablePaintable, module LockablePaintable) where

import LockablePaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, getPaintableForm, getPaintableForm_super, getPaintableForm_impl, halfWidth, paintableForm)
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
import qualified GameFeatureImageCacheFactory -- org.allbinary.image.GameFeatureImageCacheFactory
import qualified LockedResources -- org.allbinary.logic.system.security.licensing.LockedResources
import qualified LockedUtil -- org.allbinary.logic.system.security.licensing.LockedUtil
import qualified LockablePaintable -- org.allbinary.graphics.form.LockablePaintable
import qualified ScrollCurrentSelectionForm -- org.allbinary.graphics.form.ScrollCurrentSelectionForm

data PreGameLockablePaintable = PreGameLockablePaintable
    { header_ :: JavaHeader
    , base :: LockablePaintable.LockablePaintable
    , halfWidth :: IORef (Int)
    , paintableForm :: IORef (ScrollCurrentSelectionForm.ScrollCurrentSelectionForm)
    }

instance JavaNull PreGameLockablePaintable where
    javaNull = javaNullRecord "PreGameLockablePaintable"

instance JavaEquals PreGameLockablePaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PreGameLockablePaintable where
    (==) = jrecordEquals

instance JavaObjectClass PreGameLockablePaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PreGameLockablePaintable
newRecord_ = do
    base <- LockablePaintable.newRecord_
    let header_ = base.header_
    halfWidth <- newIORef 0
    paintableForm <- newIORef javaNull
    let this = PreGameLockablePaintable header_ base halfWidth paintableForm
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "getPaintableForm" (\() -> getPaintableForm_impl this)
    pure this

initFields_ :: PreGameLockablePaintable -> IO ()
initFields_ this = do
    jset this.halfWidth (0)
    jset this.paintableForm (javaNull)
    pure ()

new_2 :: ScrollCurrentSelectionForm.ScrollCurrentSelectionForm -> Int -> IO PreGameLockablePaintable
new_2 paintableForm lockedIndex = do
    this <- newRecord_
    init_2 this paintableForm lockedIndex
    pure this

init_2 :: PreGameLockablePaintable -> ScrollCurrentSelectionForm.ScrollCurrentSelectionForm -> Int -> IO ()
init_2 this paintableForm lockedIndex = do
        LockablePaintable.init_1 this.base (lockedIndex)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).paintableForm (paintableForm)
        jset (this).halfWidth (((jio (Image.getWidth ((jio (ImageCache.getWithKey ((jio (GameFeatureImageCacheFactory.getInstance))) (jget ((jio (LockedResources.getInstance))).lOCKED_DEMO_GAME_FEATURE_RESOURCE)))))) / 2))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paint object_ a1 a2 a3 a4 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: PreGameLockablePaintable))) () a1 a2 a3 a4

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paint_super object_ a1 a2 a3 a4 = (paint_impl (javaCast object_ :: PreGameLockablePaintable)) a1 a2 a3 a4

paint_impl :: PreGameLockablePaintable -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paint_impl this graphics currentIndex x y = do
        when ((jio (LockedUtil.isLocked ((jio (LockedUtil.getInstance))))) && ((jio (ScrollCurrentSelectionForm.getSelectedIndex ((jio (PreGameLockablePaintable.getPaintableForm this))))) >= (jio (LockablePaintable.getLockedIndex this)))) $ do
            Control.Monad.void (Animation.paintXY ((jio (LockablePaintable.getAnimation this))) graphics ((jio (ScrollCurrentSelectionForm.getDx ((jio (PreGameLockablePaintable.getPaintableForm this))))) - (jget (this).halfWidth)) ((jio (ScrollCurrentSelectionForm.getDy ((jio (PreGameLockablePaintable.getPaintableForm this))))) + 34))
        pure ()


getPaintableForm :: (JavaObjectClass this_) => this_ -> IO (ScrollCurrentSelectionForm.ScrollCurrentSelectionForm)
getPaintableForm object_ = jmethod object_ "getPaintableForm" (\() -> (getPaintableForm_impl (javaCast object_ :: PreGameLockablePaintable))) ()

getPaintableForm_super :: (JavaObjectClass this_) => this_ -> IO (ScrollCurrentSelectionForm.ScrollCurrentSelectionForm)
getPaintableForm_super object_ = (getPaintableForm_impl (javaCast object_ :: PreGameLockablePaintable))

getPaintableForm_impl :: PreGameLockablePaintable -> IO (ScrollCurrentSelectionForm.ScrollCurrentSelectionForm)
getPaintableForm_impl this = do
        pure ((jget (this).paintableForm))


