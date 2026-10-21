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
-- package org.allbinary.logic.visual.transform.data
module TransformDocumentInterface where

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
import qualified Node -- org.w3c.dom.Node

-- Java interface: the classes that implement it have these functions
data TransformDocumentInterface = TransformDocumentInterface
    { header_ :: JavaHeader
    }

instance JavaNull TransformDocumentInterface where
    javaNull = javaNullRecord "TransformDocumentInterface"

instance JavaEquals TransformDocumentInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformDocumentInterface where
    (==) = jrecordEquals

instance JavaObjectClass TransformDocumentInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TransformDocumentInterface
fromHeader_ header = TransformDocumentInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TransformDocumentInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getBaseNode :: (JavaObjectClass this_) => this_ -> IO (Node.Node)
getBaseNode object_ = jmethod object_ "getBaseNode" (\() -> (getBaseNode_impl (javaCast object_ :: TransformDocumentInterface))) ()

getBaseNode_super :: (JavaObjectClass this_) => this_ -> IO (Node.Node)
getBaseNode_super object_ = (getBaseNode_impl (javaCast object_ :: TransformDocumentInterface))

getBaseNode_impl :: TransformDocumentInterface -> IO (Node.Node)
getBaseNode_impl this = javaAbstractMethod "getBaseNode"


getDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
getDoc object_ = jmethod object_ "getDoc" (\() -> (getDoc_impl (javaCast object_ :: TransformDocumentInterface))) ()

getDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
getDoc_super object_ = (getDoc_impl (javaCast object_ :: TransformDocumentInterface))

getDoc_impl :: TransformDocumentInterface -> IO (Document.Document)
getDoc_impl this = javaAbstractMethod "getDoc"


