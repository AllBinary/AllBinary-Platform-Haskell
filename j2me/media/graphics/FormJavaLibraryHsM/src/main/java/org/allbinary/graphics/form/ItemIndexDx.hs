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
module ItemIndexDx where

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
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem

data ItemIndexDx = ItemIndexDx
    { header_ :: JavaHeader
    }

instance JavaNull ItemIndexDx where
    javaNull = javaNullRecord "ItemIndexDx"

instance JavaEquals ItemIndexDx where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ItemIndexDx where
    (==) = jrecordEquals

instance JavaObjectClass ItemIndexDx where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ItemIndexDx
newRecord_ = do
    header_ <- newJavaHeader
    let this = ItemIndexDx header_
    jregisterLevel header_ this
    jregisterMethod header_ "getDx" (\() -> getDx_impl this)
    pure this

initFields_ :: ItemIndexDx -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ItemIndexDx
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ItemIndexDx -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ItemIndexDx)
getInstance = do
        pure (ItemIndexDx.instance_)


-- throws Exception
getDx :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getDx object_ a1 a2 a3 a4 = jmethod object_ "getDx" (\() -> (getDx_impl (javaCast object_ :: ItemIndexDx))) () a1 a2 a3 a4

getDx_super :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getDx_super object_ a1 a2 a3 a4 = (getDx_impl (javaCast object_ :: ItemIndexDx)) a1 a2 a3 a4

getDx_impl :: ItemIndexDx -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getDx_impl this index item dx dy = do
        pure (0)


