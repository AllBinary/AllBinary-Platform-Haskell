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
-- package org.allbinary.input.automation.module.generic.configuration.profile
module GenericProfileDataWorkerTypeInterface where

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
data GenericProfileDataWorkerTypeInterface = GenericProfileDataWorkerTypeInterface
    { header_ :: JavaHeader
    }

instance JavaNull GenericProfileDataWorkerTypeInterface where
    javaNull = javaNullRecord "GenericProfileDataWorkerTypeInterface"

instance JavaEquals GenericProfileDataWorkerTypeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericProfileDataWorkerTypeInterface where
    (==) = jrecordEquals

instance JavaObjectClass GenericProfileDataWorkerTypeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GenericProfileDataWorkerTypeInterface
fromHeader_ header = GenericProfileDataWorkerTypeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GenericProfileDataWorkerTypeInterface header)


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: GenericProfileDataWorkerTypeInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: GenericProfileDataWorkerTypeInterface))

getName_impl :: GenericProfileDataWorkerTypeInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: GenericProfileDataWorkerTypeInterface))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: GenericProfileDataWorkerTypeInterface)) a1

setName_impl :: GenericProfileDataWorkerTypeInterface -> String -> IO (())
setName_impl this name = javaAbstractMethod "setName"


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: GenericProfileDataWorkerTypeInterface))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: GenericProfileDataWorkerTypeInterface))

toString_impl :: GenericProfileDataWorkerTypeInterface -> IO (String)
toString_impl this = javaAbstractMethod "toString"


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: GenericProfileDataWorkerTypeInterface))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: GenericProfileDataWorkerTypeInterface)) a1

toXmlNode_impl :: GenericProfileDataWorkerTypeInterface -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = javaAbstractMethod "toXmlNode"


