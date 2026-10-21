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
-- package org.allbinary.business.user.commerce.inventory.item.special
module SpecialItemData where

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

data SpecialItemData = SpecialItemData
    { header_ :: JavaHeader
    }

instance JavaNull SpecialItemData where
    javaNull = javaNullRecord "SpecialItemData"

instance JavaEquals SpecialItemData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SpecialItemData where
    (==) = jrecordEquals

instance JavaObjectClass SpecialItemData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

sTART_TIME = "SPECIALITEM_START_TIME"

eND_TIME = "SPECIALITEM_END_TIME"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SpecialItemData
newRecord_ = do
    header_ <- newJavaHeader
    let this = SpecialItemData header_
    jregisterLevel header_ this
    pure this

initFields_ :: SpecialItemData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO SpecialItemData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SpecialItemData -> IO ()
init_ this = do
    initFields_ this


