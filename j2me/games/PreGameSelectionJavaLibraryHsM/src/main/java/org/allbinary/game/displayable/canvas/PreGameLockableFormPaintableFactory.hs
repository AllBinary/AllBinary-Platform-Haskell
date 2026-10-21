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
module PreGameLockableFormPaintableFactory (module PreGameLockableFormPaintableFactory, module ItemPaintableFactory) where

import ItemPaintableFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstanceItemPaintable, getInstanceItemPaintable_super, getInstanceItemPaintable_impl, lockedIndex)
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
import qualified PreGameLockablePaintable -- same package or java.lang
import qualified ItemPaintable -- org.allbinary.graphics.form.ItemPaintable
import qualified ItemPaintableFactory -- org.allbinary.graphics.form.ItemPaintableFactory
import qualified PaintableForm -- org.allbinary.graphics.form.PaintableForm
import qualified ScrollCurrentSelectionForm -- org.allbinary.graphics.form.ScrollCurrentSelectionForm

data PreGameLockableFormPaintableFactory = PreGameLockableFormPaintableFactory
    { header_ :: JavaHeader
    , base :: ItemPaintableFactory.ItemPaintableFactory
    , lockedIndex :: IORef (Int)
    }

instance JavaNull PreGameLockableFormPaintableFactory where
    javaNull = javaNullRecord "PreGameLockableFormPaintableFactory"

instance JavaEquals PreGameLockableFormPaintableFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PreGameLockableFormPaintableFactory where
    (==) = jrecordEquals

instance JavaObjectClass PreGameLockableFormPaintableFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PreGameLockableFormPaintableFactory
newRecord_ = do
    base <- ItemPaintableFactory.newRecord_
    let header_ = base.header_
    lockedIndex <- newIORef 0
    let this = PreGameLockableFormPaintableFactory header_ base lockedIndex
    jregisterLevel header_ this
    jregisterMethod header_ "getInstanceItemPaintable" (\() -> getInstanceItemPaintable_impl this)
    pure this

initFields_ :: PreGameLockableFormPaintableFactory -> IO ()
initFields_ this = do
    jset this.lockedIndex (0)
    pure ()

new_1 :: Int -> IO PreGameLockableFormPaintableFactory
new_1 lockedIndex = do
    this <- newRecord_
    init_1 this lockedIndex
    pure this

init_1 :: PreGameLockableFormPaintableFactory -> Int -> IO ()
init_1 this lockedIndex = do
        ItemPaintableFactory.init_ this.base
        initFields_ this
        jset (this).lockedIndex (lockedIndex)
        pure ()


-- throws Exception
getInstanceItemPaintable :: (JavaObjectClass this_) => this_ -> PaintableForm.PaintableForm -> IO (ItemPaintable.ItemPaintable)
getInstanceItemPaintable object_ a1 = jmethod object_ "getInstanceItemPaintable" (\() -> (getInstanceItemPaintable_impl (javaCast object_ :: PreGameLockableFormPaintableFactory))) () a1

getInstanceItemPaintable_super :: (JavaObjectClass this_) => this_ -> PaintableForm.PaintableForm -> IO (ItemPaintable.ItemPaintable)
getInstanceItemPaintable_super object_ a1 = (getInstanceItemPaintable_impl (javaCast object_ :: PreGameLockableFormPaintableFactory)) a1

getInstanceItemPaintable_impl :: PreGameLockableFormPaintableFactory -> PaintableForm.PaintableForm -> IO (ItemPaintable.ItemPaintable)
getInstanceItemPaintable_impl this paintableForm = do
        (fmap (\value_ -> javaCast value_ :: ItemPaintable.ItemPaintable) (PreGameLockablePaintable.new_2 (javaCast paintableForm :: ScrollCurrentSelectionForm.ScrollCurrentSelectionForm) (jget (this).lockedIndex)))


