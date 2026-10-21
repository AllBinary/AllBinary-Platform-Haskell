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
-- package org.allbinary.business.user.modules.configuration
module UserConfigurationDomDocumentMapping where

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
import qualified UserConfigurationInterface -- same package or java.lang
import qualified UserConfigurationView -- same package or java.lang
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified DomDocumentMappingInterface -- org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomDocumentMappingInterface
data UserConfigurationDomDocumentMapping = UserConfigurationDomDocumentMapping
    { header_ :: JavaHeader
    , userConfigurationInterface :: IORef (UserConfigurationInterface.UserConfigurationInterface)
    }

instance JavaNull UserConfigurationDomDocumentMapping where
    javaNull = javaNullRecord "UserConfigurationDomDocumentMapping"

instance JavaEquals UserConfigurationDomDocumentMapping where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserConfigurationDomDocumentMapping where
    (==) = jrecordEquals

instance JavaObjectClass UserConfigurationDomDocumentMapping where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserConfigurationDomDocumentMapping
newRecord_ = do
    header_ <- newJavaHeader
    userConfigurationInterface <- newIORef javaNull
    let this = UserConfigurationDomDocumentMapping header_ userConfigurationInterface
    jregisterLevel header_ this
    DomDocumentMappingInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "toDomDocumentString" (\() -> toDomDocumentString_impl this)
    pure this

initFields_ :: UserConfigurationDomDocumentMapping -> IO ()
initFields_ this = do
    jset this.userConfigurationInterface (javaNull)
    pure ()

new_1 :: UserConfigurationInterface.UserConfigurationInterface -> IO UserConfigurationDomDocumentMapping
new_1 userConfigurationInterface = do
    this <- newRecord_
    init_1 this userConfigurationInterface
    pure this

init_1 :: UserConfigurationDomDocumentMapping -> UserConfigurationInterface.UserConfigurationInterface -> IO ()
init_1 this userConfigurationInterface = do
        initFields_ this
        jset (this).userConfigurationInterface (userConfigurationInterface)
        pure ()


-- throws Exception
toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: UserConfigurationDomDocumentMapping))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: UserConfigurationDomDocumentMapping))

toXmlDoc_impl :: UserConfigurationDomDocumentMapping -> IO (Document.Document)
toXmlDoc_impl this = do
        document <- (DomDocumentHelper.create)
        node <- (UserConfigurationView.toXmlNode ((jio (UserConfigurationView.new_1 (jget (this).userConfigurationInterface)))) document)
        Control.Monad.void (Document.appendChild document node)
        pure (document)


-- throws Exception
toDomDocumentString :: (JavaObjectClass this_) => this_ -> IO (String)
toDomDocumentString object_ = jmethod object_ "toDomDocumentString" (\() -> (toDomDocumentString_impl (javaCast object_ :: UserConfigurationDomDocumentMapping))) ()

toDomDocumentString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toDomDocumentString_super object_ = (toDomDocumentString_impl (javaCast object_ :: UserConfigurationDomDocumentMapping))

toDomDocumentString_impl :: UserConfigurationDomDocumentMapping -> IO (String)
toDomDocumentString_impl this = do
        (XmlDocumentHelper.toString (jio (UserConfigurationDomDocumentMapping.toXmlDoc this)))


