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
-- package org.allbinary.business.user.commerce.inventory.item
module ItemData where

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

data ItemData = ItemData
    { header_ :: JavaHeader
    }

instance JavaNull ItemData where
    javaNull = javaNullRecord "ItemData"

instance JavaEquals ItemData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ItemData where
    (==) = jrecordEquals

instance JavaObjectClass ItemData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

iTEM = "ITEM"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ItemData
newRecord_ = do
    header_ <- newJavaHeader
    let this = ItemData header_
    jregisterLevel header_ this
    pure this

initFields_ :: ItemData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ItemData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ItemData -> IO ()
init_ this = do
    initFields_ this


