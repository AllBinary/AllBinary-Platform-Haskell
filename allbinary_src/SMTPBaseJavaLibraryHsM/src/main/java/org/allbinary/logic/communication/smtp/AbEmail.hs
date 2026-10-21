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
-- package org.allbinary.logic.communication.smtp
module AbEmail where

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
import qualified Email -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified MimeMessage -- javax.mail.internet.MimeMessage
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified EmailInterface

-- implements EmailInterface
data AbEmail = AbEmail
    { header_ :: JavaHeader
    , email :: IORef (Email.Email)
    }

instance JavaNull AbEmail where
    javaNull = javaNullRecord "AbEmail"

instance JavaEquals AbEmail where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbEmail where
    (==) = jrecordEquals

instance JavaObjectClass AbEmail where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbEmail
newRecord_ = do
    header_ <- newJavaHeader
    email <- newIORef javaNull
    let this = AbEmail header_ email
    jregisterLevel header_ this
    EmailInterface.registerInterface_ header_
    jregisterMethod header_ "getMimeMessage" (\() -> getMimeMessage_impl this)
    jregisterMethod header_ "getDebugInfo" (\() -> getDebugInfo_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "getEmail" (\() -> getEmail_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    pure this

initFields_ :: AbEmail -> IO ()
initFields_ this = do
    jset this.email (javaNull)
    pure ()

new_7 :: String -> String -> String -> String -> String -> String -> String -> IO AbEmail
new_7 server from to subject textBody htmlAttachment contentBase = do
    this <- newRecord_
    init_7 this server from to subject textBody htmlAttachment contentBase
    pure this

init_7 :: AbEmail -> String -> String -> String -> String -> String -> String -> String -> IO ()
init_7 this server from to subject textBody htmlAttachment contentBase = do
        initFields_ this
        if (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGINGERROR))) then do
            assignedValue <- (Email.new_8 from to subject server textBody htmlAttachment contentBase True)
            jset (this).email (assignedValue)
        else do
            assignedValue <- (Email.new_7 from to subject server textBody htmlAttachment contentBase)
            jset (this).email (assignedValue)
        pure ()


getMimeMessage :: (JavaObjectClass this_) => this_ -> IO (MimeMessage.MimeMessage)
getMimeMessage object_ = jmethod object_ "getMimeMessage" (\() -> (getMimeMessage_impl (javaCast object_ :: AbEmail))) ()

getMimeMessage_super :: (JavaObjectClass this_) => this_ -> IO (MimeMessage.MimeMessage)
getMimeMessage_super object_ = (getMimeMessage_impl (javaCast object_ :: AbEmail))

getMimeMessage_impl :: AbEmail -> IO (MimeMessage.MimeMessage)
getMimeMessage_impl this = do
        (Email.getMimeMessage ((jget (this).email)))


getDebugInfo :: (JavaObjectClass this_) => this_ -> IO (String)
getDebugInfo object_ = jmethod object_ "getDebugInfo" (\() -> (getDebugInfo_impl (javaCast object_ :: AbEmail))) ()

getDebugInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDebugInfo_super object_ = (getDebugInfo_impl (javaCast object_ :: AbEmail))

getDebugInfo_impl :: AbEmail -> IO (String)
getDebugInfo_impl this = do
        (Email.getDebugInfo ((jget (this).email)))


-- throws Exception
log :: (JavaObjectClass this_) => this_ -> IO (String)
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: AbEmail))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (String)
log_super object_ = (log_impl (javaCast object_ :: AbEmail))

log_impl :: AbEmail -> IO (String)
log_impl this = do
        (Email.log ((jget (this).email)))


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: AbEmail))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: AbEmail))

toHashMap_impl :: AbEmail -> IO (HashMap.HashMap)
toHashMap_impl this = do
        (Email.toHashMap ((jget (this).email)))


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: AbEmail))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: AbEmail)) a1

toXmlNode_impl :: AbEmail -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        (Email.toXmlNode ((jget (this).email)) document)


getEmail :: (JavaObjectClass this_) => this_ -> IO (Email.Email)
getEmail object_ = jmethod object_ "getEmail" (\() -> (getEmail_impl (javaCast object_ :: AbEmail))) ()

getEmail_super :: (JavaObjectClass this_) => this_ -> IO (Email.Email)
getEmail_super object_ = (getEmail_impl (javaCast object_ :: AbEmail))

getEmail_impl :: AbEmail -> IO (Email.Email)
getEmail_impl this = do
        pure ((javaCast (jget (this).email) :: Email.Email))


-- throws Exception
toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: AbEmail))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: AbEmail))

toXmlDoc_impl :: AbEmail -> IO (Document.Document)
toXmlDoc_impl this = do
        (Email.toXmlDoc ((jget (this).email)))


