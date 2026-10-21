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
-- package org.allbinary.data.tree.dom.document.mapping
module DomDocumentMappingInterface where

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
import qualified Document -- org.w3c.dom.Document

-- Java interface: the classes that implement it have these functions
data DomDocumentMappingInterface = DomDocumentMappingInterface
    { header_ :: JavaHeader
    }

instance JavaNull DomDocumentMappingInterface where
    javaNull = javaNullRecord "DomDocumentMappingInterface"

instance JavaEquals DomDocumentMappingInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DomDocumentMappingInterface where
    (==) = jrecordEquals

instance JavaObjectClass DomDocumentMappingInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> DomDocumentMappingInterface
fromHeader_ header = DomDocumentMappingInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (DomDocumentMappingInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: DomDocumentMappingInterface))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: DomDocumentMappingInterface))

toXmlDoc_impl :: DomDocumentMappingInterface -> IO (Document.Document)
toXmlDoc_impl this = javaAbstractMethod "toXmlDoc"


