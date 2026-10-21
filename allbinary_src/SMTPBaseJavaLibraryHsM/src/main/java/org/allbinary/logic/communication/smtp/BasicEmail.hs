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
module BasicEmail where

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
import qualified AbEmail -- same package or java.lang
import qualified Email -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified MimeMessage -- javax.mail.internet.MimeMessage
import qualified BasicEmailInfo -- org.allbinary.logic.communication.smtp.info.BasicEmailInfo
import qualified EmailInfo -- org.allbinary.logic.communication.smtp.info.EmailInfo
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified EmailInterface

-- implements EmailInterface
data BasicEmail = BasicEmail
    { header_ :: JavaHeader
    , email :: IORef (AbEmail.AbEmail)
    }

instance JavaNull BasicEmail where
    javaNull = javaNullRecord "BasicEmail"

instance JavaEquals BasicEmail where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicEmail where
    (==) = jrecordEquals

instance JavaObjectClass BasicEmail where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicEmail
newRecord_ = do
    header_ <- newJavaHeader
    email <- newIORef javaNull
    let this = BasicEmail header_ email
    jregisterLevel header_ this
    EmailInterface.registerInterface_ header_
    jregisterMethod header_ "getEmail" (\() -> getEmail_impl this)
    jregisterMethod header_ "getMimeMessage" (\() -> getMimeMessage_impl this)
    jregisterMethod header_ "getDebugInfo" (\() -> getDebugInfo_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    pure this

initFields_ :: BasicEmail -> IO ()
initFields_ this = do
    jset this.email (javaNull)
    pure ()

new_2 :: EmailInfo.EmailInfo -> String -> IO BasicEmail
new_2 emailInfo to = do
    this <- newRecord_
    init_2 this emailInfo to
    pure this

init_2 :: BasicEmail -> EmailInfo.EmailInfo -> String -> IO ()
init_2 this emailInfo to = do
        initFields_ this
        basicEmailInfo <- (EmailInfo.getBasicEmailInfo emailInfo)
        assignedValue <- (AbEmail.new_7 (jio (EmailServerConfigurationInterface.getSmtpServer ((jio (BasicEmailInfo.getEmailServerConfigurationInterface basicEmailInfo))))) (jio (EmailServerConfigurationInterface.getAccountName ((jio (BasicEmailInfo.getEmailServerConfigurationInterface basicEmailInfo))))) to (jio (BasicEmailInfo.getSubject basicEmailInfo)) (jio (BasicEmailInfo.getTextBody basicEmailInfo)) (jio (EmailInfo.getHtmlAttachment emailInfo)) (jio (EmailInfo.getContentBase emailInfo)))
        jset (this).email (assignedValue)
        pure ()


getEmail :: (JavaObjectClass this_) => this_ -> IO (Email.Email)
getEmail object_ = jmethod object_ "getEmail" (\() -> (getEmail_impl (javaCast object_ :: BasicEmail))) ()

getEmail_super :: (JavaObjectClass this_) => this_ -> IO (Email.Email)
getEmail_super object_ = (getEmail_impl (javaCast object_ :: BasicEmail))

getEmail_impl :: BasicEmail -> IO (Email.Email)
getEmail_impl this = do
        pure ((javaCast (jio (AbEmail.getEmail ((jget (this).email)))) :: Email.Email))


getMimeMessage :: (JavaObjectClass this_) => this_ -> IO (MimeMessage.MimeMessage)
getMimeMessage object_ = jmethod object_ "getMimeMessage" (\() -> (getMimeMessage_impl (javaCast object_ :: BasicEmail))) ()

getMimeMessage_super :: (JavaObjectClass this_) => this_ -> IO (MimeMessage.MimeMessage)
getMimeMessage_super object_ = (getMimeMessage_impl (javaCast object_ :: BasicEmail))

getMimeMessage_impl :: BasicEmail -> IO (MimeMessage.MimeMessage)
getMimeMessage_impl this = do
        (AbEmail.getMimeMessage ((jget (this).email)))


getDebugInfo :: (JavaObjectClass this_) => this_ -> IO (String)
getDebugInfo object_ = jmethod object_ "getDebugInfo" (\() -> (getDebugInfo_impl (javaCast object_ :: BasicEmail))) ()

getDebugInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDebugInfo_super object_ = (getDebugInfo_impl (javaCast object_ :: BasicEmail))

getDebugInfo_impl :: BasicEmail -> IO (String)
getDebugInfo_impl this = do
        (AbEmail.getDebugInfo ((jget (this).email)))


-- throws Exception
log :: (JavaObjectClass this_) => this_ -> IO (String)
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: BasicEmail))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (String)
log_super object_ = (log_impl (javaCast object_ :: BasicEmail))

log_impl :: BasicEmail -> IO (String)
log_impl this = do
        (AbEmail.log ((jget (this).email)))


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: BasicEmail))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: BasicEmail))

toHashMap_impl :: BasicEmail -> IO (HashMap.HashMap)
toHashMap_impl this = do
        (AbEmail.toHashMap ((jget (this).email)))


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: BasicEmail))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: BasicEmail)) a1

toXmlNode_impl :: BasicEmail -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        (AbEmail.toXmlNode ((jget (this).email)) document)


-- throws Exception
toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: BasicEmail))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: BasicEmail))

toXmlDoc_impl :: BasicEmail -> IO (Document.Document)
toXmlDoc_impl this = do
        (AbEmail.toXmlDoc ((jget (this).email)))


