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
-- package org.allbinary.business.user.commerce.inventory.item.group
module BasicGroupItemData where

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

data BasicGroupItemData = BasicGroupItemData
    { header_ :: JavaHeader
    }

instance JavaNull BasicGroupItemData where
    javaNull = javaNullRecord "BasicGroupItemData"

instance JavaEquals BasicGroupItemData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicGroupItemData where
    (==) = jrecordEquals

instance JavaObjectClass BasicGroupItemData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

iTEM_ONE = "BASICGROUPITEM_ONE"

iTEM_TWO = "BASICGROUPITEM_TWO"

iTEM_THREE = "BASICGROUPITEM_THREE"

iTEM_FOUR = "BASICGROUPITEM_FOUR"

iTEM_FIVE = "BASICGROUPITEM_FIVE"

iTEM_SIX = "BASICGROUPITEM_SIX"

iTEM_SEVEN = "BASICGROUPITEM_SEVEN"

iTEM_EIGHT = "BASICGROUPITEM_EIGHT"

iTEM_NINE = "BASICGROUPITEM_NINE"

iTEM_TEN = "BASICGROUPITEM_TEN"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicGroupItemData
newRecord_ = do
    header_ <- newJavaHeader
    let this = BasicGroupItemData header_
    jregisterLevel header_ this
    pure this

initFields_ :: BasicGroupItemData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BasicGroupItemData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicGroupItemData -> IO ()
init_ this = do
    initFields_ this


