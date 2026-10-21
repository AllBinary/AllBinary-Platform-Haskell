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
module ItemPaintableFactory (module ItemPaintableFactory, module ItemPaintable) where

import ItemPaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getInstanceItemPaintable, getInstanceItemPaintable_super, getInstanceItemPaintable_impl, instance_)
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
import qualified PaintableForm -- same package or java.lang
import qualified ItemPaintable

data ItemPaintableFactory = ItemPaintableFactory
    { header_ :: JavaHeader
    , base :: ItemPaintable.ItemPaintable
    }

instance JavaNull ItemPaintableFactory where
    javaNull = javaNullRecord "ItemPaintableFactory"

instance JavaEquals ItemPaintableFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ItemPaintableFactory where
    (==) = jrecordEquals

instance JavaObjectClass ItemPaintableFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO ItemPaintableFactory
newRecord_ = do
    base <- ItemPaintable.newRecord_
    let header_ = base.header_
    let this = ItemPaintableFactory header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getInstanceItemPaintable" (\() -> getInstanceItemPaintable_impl this)
    pure this

initFields_ :: ItemPaintableFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ItemPaintableFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ItemPaintableFactory -> IO ()
init_ this = do
    ItemPaintable.init_ this.base
    initFields_ this


getInstance :: IO (ItemPaintableFactory)
getInstance = do
        pure (ItemPaintableFactory.instance_)


-- throws Exception
getInstanceItemPaintable :: (JavaObjectClass this_) => this_ -> PaintableForm.PaintableForm -> IO (ItemPaintable.ItemPaintable)
getInstanceItemPaintable object_ a1 = jmethod object_ "getInstanceItemPaintable" (\() -> (getInstanceItemPaintable_impl (javaCast object_ :: ItemPaintableFactory))) () a1

getInstanceItemPaintable_super :: (JavaObjectClass this_) => this_ -> PaintableForm.PaintableForm -> IO (ItemPaintable.ItemPaintable)
getInstanceItemPaintable_super object_ a1 = (getInstanceItemPaintable_impl (javaCast object_ :: ItemPaintableFactory)) a1

getInstanceItemPaintable_impl :: ItemPaintableFactory -> PaintableForm.PaintableForm -> IO (ItemPaintable.ItemPaintable)
getInstanceItemPaintable_impl this paintableForm = do
        pure ((javaCast ItemPaintableFactory.instance_ :: ItemPaintable.ItemPaintable))


