{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
module ItemIndexPaintable where

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
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem

data ItemIndexPaintable = ItemIndexPaintable
    { header_ :: JavaHeader
    }

instance JavaNull ItemIndexPaintable where
    javaNull = javaNullRecord "ItemIndexPaintable"

instance JavaEquals ItemIndexPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ItemIndexPaintable where
    (==) = jrecordEquals

instance JavaObjectClass ItemIndexPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ItemIndexPaintable
newRecord_ = do
    header_ <- newJavaHeader
    let this = ItemIndexPaintable header_
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: ItemIndexPaintable -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ItemIndexPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ItemIndexPaintable -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ItemIndexPaintable)
getInstance = do
        pure (ItemIndexPaintable.instance_)


-- throws Exception
paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paint object_ a1 a2 a3 a4 a5 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: ItemIndexPaintable))) () a1 a2 a3 a4 a5

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paint_super object_ a1 a2 a3 a4 a5 = (paint_impl (javaCast object_ :: ItemIndexPaintable)) a1 a2 a3 a4 a5

paint_impl :: ItemIndexPaintable -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paint_impl this graphics index item dx dy = do
        pure (0)


