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
-- package org.allbinary.business.user.commerce.inventory.item.option
module BasicOptionItemData where

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

data BasicOptionItemData = BasicOptionItemData
    { header_ :: JavaHeader
    }

instance JavaNull BasicOptionItemData where
    javaNull = javaNullRecord "BasicOptionItemData"

instance JavaEquals BasicOptionItemData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicOptionItemData where
    (==) = jrecordEquals

instance JavaObjectClass BasicOptionItemData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

oPTION_ONE_TITLE = "BASICOPTIONITEM_OPTION_ONE_TITLE"

dEFAULT_OPTION_ITEM = "BASICOPTIONITEM_DEFAULT_OPTION_ITEM"

dEFAULT_OPTION_VALUE = "BASICOPTIONITEM_DEFAULT_OPTION_VALUE"

oPTION_ONE_ONE_ITEM = "BASICOPTIONITEM_OPTION_ONE_ONE_ITEM"

oPTION_ONE_ONE_VALUE = "BASICOPTIONITEM_OPTION_ONE_ONE_VALUE"

oPTION_ONE_TWO_ITEM = "BASICOPTIONITEM_OPTION_ONE_TWO_ITEM"

oPTION_ONE_TWO_VALUE = "BASICOPTIONITEM_OPTION_ONE_TWO_VALUE"

oPTION_ONE_THREE_ITEM = "BASICOPTIONITEM_OPTION_ONE_THREE_ITEM"

oPTION_ONE_THREE_VALUE = "BASICOPTIONITEM_OPTION_ONE_THREE_VALUE"

oPTION_ONE_FOUR_ITEM = "BASICOPTIONITEM_OPTION_ONE_FOUR_ITEM"

oPTION_ONE_FOUR_VALUE = "BASICOPTIONITEM_OPTION_ONE_FOUR_VALUE"

oPTION_ONE_FIVE_ITEM = "BASICOPTIONITEM_OPTION_ONE_FIVE_ITEM"

oPTION_ONE_FIVE_VALUE = "BASICOPTIONITEM_OPTION_ONE_FIVE_VALUE"

oPTION_ONE_SIX_ITEM = "BASICOPTIONITEM_OPTION_ONE_SIX_ITEM"

oPTION_ONE_SIX_VALUE = "BASICOPTIONITEM_OPTION_ONE_SIX_VALUE"

oPTION_ONE_SEVEN_ITEM = "BASICOPTIONITEM_OPTION_ONE_SEVEN_ITEM"

oPTION_ONE_SEVEN_VALUE = "BASICOPTIONITEM_OPTION_ONE_SEVEN_VALUE"

oPTION_ONE_EIGHT_ITEM = "BASICOPTIONITEM_OPTION_ONE_EIGHT_ITEM"

oPTION_ONE_EIGHT_VALUE = "BASICOPTIONITEM_OPTION_ONE_EIGHT_VALUE"

oPTION_ONE_NINE_ITEM = "BASICOPTIONITEM_OPTION_ONE_NINE_ITEM"

oPTION_ONE_NINE_VALUE = "BASICOPTIONITEM_OPTION_ONE_NINE_VALUE"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicOptionItemData
newRecord_ = do
    header_ <- newJavaHeader
    let this = BasicOptionItemData header_
    jregisterLevel header_ this
    pure this

initFields_ :: BasicOptionItemData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BasicOptionItemData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicOptionItemData -> IO ()
init_ this = do
    initFields_ this


