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
-- package admin.tags
module XmlOptionItemsTag (module XmlOptionItemsTag, module TableTag) where

import TableTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified XmlOptionItemsHelperFactory -- admin.taghelpers.XmlOptionItemsHelperFactory
import qualified XmlOptionItemsRequestHelperFactory -- admin.taghelpers.XmlOptionItemsRequestHelperFactory
import qualified TableTag

data XmlOptionItemsTag = XmlOptionItemsTag
    { header_ :: JavaHeader
    , base :: TableTag.TableTag
    }

instance JavaNull XmlOptionItemsTag where
    javaNull = javaNullRecord "XmlOptionItemsTag"

instance JavaEquals XmlOptionItemsTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq XmlOptionItemsTag where
    (==) = jrecordEquals

instance JavaObjectClass XmlOptionItemsTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO XmlOptionItemsTag
newRecord_ = do
    base <- TableTag.newRecord_
    let header_ = base.header_
    let this = XmlOptionItemsTag header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: XmlOptionItemsTag -> IO ()
initFields_ this = do
    pure ()

new_ :: IO XmlOptionItemsTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: XmlOptionItemsTag -> IO ()
init_ this = do
        TableTag.init_ this.base
        initFields_ this
        Control.Monad.void (TableTag.setTagHelperFactory this (javaCast (jio (XmlOptionItemsHelperFactory.new_))))
        Control.Monad.void (TableTag.setTagRequestHelperFactory this (javaCast (jio (XmlOptionItemsRequestHelperFactory.new_))))
        pure ()


