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
module LockableFormPaintableFactory (module LockableFormPaintableFactory, module ItemPaintableFactory) where

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
import qualified LockablePaintable -- same package or java.lang
import qualified ItemPaintable -- same package or java.lang
import qualified PaintableForm -- same package or java.lang
import qualified ItemPaintableFactory

data LockableFormPaintableFactory = LockableFormPaintableFactory
    { header_ :: JavaHeader
    , base :: ItemPaintableFactory.ItemPaintableFactory
    , lockedIndex :: IORef (Int)
    }

instance JavaNull LockableFormPaintableFactory where
    javaNull = javaNullRecord "LockableFormPaintableFactory"

instance JavaEquals LockableFormPaintableFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LockableFormPaintableFactory where
    (==) = jrecordEquals

instance JavaObjectClass LockableFormPaintableFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO LockableFormPaintableFactory
newRecord_ = do
    base <- ItemPaintableFactory.newRecord_
    let header_ = base.header_
    lockedIndex <- newIORef 0
    let this = LockableFormPaintableFactory header_ base lockedIndex
    jregisterLevel header_ this
    jregisterMethod header_ "getInstanceItemPaintable" (\() -> getInstanceItemPaintable_impl this)
    pure this

initFields_ :: LockableFormPaintableFactory -> IO ()
initFields_ this = do
    jset this.lockedIndex (0)
    pure ()

new_1 :: Int -> IO LockableFormPaintableFactory
new_1 lockedIndex = do
    this <- newRecord_
    init_1 this lockedIndex
    pure this

init_1 :: LockableFormPaintableFactory -> Int -> IO ()
init_1 this lockedIndex = do
        ItemPaintableFactory.init_ this.base
        initFields_ this
        jset (this).lockedIndex (lockedIndex)
        pure ()


-- throws Exception
getInstanceItemPaintable :: (JavaObjectClass this_) => this_ -> PaintableForm.PaintableForm -> IO (ItemPaintable.ItemPaintable)
getInstanceItemPaintable object_ a1 = jmethod object_ "getInstanceItemPaintable" (\() -> (getInstanceItemPaintable_impl (javaCast object_ :: LockableFormPaintableFactory))) () a1

getInstanceItemPaintable_super :: (JavaObjectClass this_) => this_ -> PaintableForm.PaintableForm -> IO (ItemPaintable.ItemPaintable)
getInstanceItemPaintable_super object_ a1 = (getInstanceItemPaintable_impl (javaCast object_ :: LockableFormPaintableFactory)) a1

getInstanceItemPaintable_impl :: LockableFormPaintableFactory -> PaintableForm.PaintableForm -> IO (ItemPaintable.ItemPaintable)
getInstanceItemPaintable_impl this paintableForm = do
        (fmap (\value_ -> javaCast value_ :: ItemPaintable.ItemPaintable) (LockablePaintable.new_1 (jget (this).lockedIndex)))


