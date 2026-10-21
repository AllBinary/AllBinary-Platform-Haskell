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
-- package org.allbinary.data.tree.dom.document
module DomDocumentQueueInterface where

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
import qualified DomDocumentMappingInterface -- org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface

-- Java interface: the classes that implement it have these functions
data DomDocumentQueueInterface = DomDocumentQueueInterface
    { header_ :: JavaHeader
    }

instance JavaNull DomDocumentQueueInterface where
    javaNull = javaNullRecord "DomDocumentQueueInterface"

instance JavaEquals DomDocumentQueueInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DomDocumentQueueInterface where
    (==) = jrecordEquals

instance JavaObjectClass DomDocumentQueueInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> DomDocumentQueueInterface
fromHeader_ header = DomDocumentQueueInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (DomDocumentQueueInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
offer :: (JavaObjectClass this_) => this_ -> DomDocumentMappingInterface.DomDocumentMappingInterface -> IO (Bool)
offer object_ a1 = jmethod object_ "offer" (\() -> (offer_impl (javaCast object_ :: DomDocumentQueueInterface))) () a1

offer_super :: (JavaObjectClass this_) => this_ -> DomDocumentMappingInterface.DomDocumentMappingInterface -> IO (Bool)
offer_super object_ a1 = (offer_impl (javaCast object_ :: DomDocumentQueueInterface)) a1

offer_impl :: DomDocumentQueueInterface -> DomDocumentMappingInterface.DomDocumentMappingInterface -> IO (Bool)
offer_impl this domDocumentMappingInterface = javaAbstractMethod "offer"


-- throws Exception
remove :: (JavaObjectClass this_) => this_ -> IO (DomDocumentMappingInterface.DomDocumentMappingInterface)
remove object_ = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: DomDocumentQueueInterface))) ()

remove_super :: (JavaObjectClass this_) => this_ -> IO (DomDocumentMappingInterface.DomDocumentMappingInterface)
remove_super object_ = (remove_impl (javaCast object_ :: DomDocumentQueueInterface))

remove_impl :: DomDocumentQueueInterface -> IO (DomDocumentMappingInterface.DomDocumentMappingInterface)
remove_impl this = javaAbstractMethod "remove"


