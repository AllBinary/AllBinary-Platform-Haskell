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
module XmlOptionItemData where

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

data XmlOptionItemData = XmlOptionItemData
    { header_ :: JavaHeader
    }

instance JavaNull XmlOptionItemData where
    javaNull = javaNullRecord "XmlOptionItemData"

instance JavaEquals XmlOptionItemData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq XmlOptionItemData where
    (==) = jrecordEquals

instance JavaObjectClass XmlOptionItemData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

xML_FILE_STATUS = "XMLOPTIONITEM_XML_FILE_STATUS"

oPTION_XML_FILE = "XMLOPTIONITEM_OPTION_XML_FILE"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO XmlOptionItemData
newRecord_ = do
    header_ <- newJavaHeader
    let this = XmlOptionItemData header_
    jregisterLevel header_ this
    pure this

initFields_ :: XmlOptionItemData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO XmlOptionItemData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: XmlOptionItemData -> IO ()
init_ this = do
    initFields_ this


