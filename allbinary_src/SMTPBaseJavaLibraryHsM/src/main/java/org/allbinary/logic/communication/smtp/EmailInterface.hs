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
module EmailInterface (module EmailInterface, module DomNodeInterface, module DomDocumentMappingInterface) where

import DomNodeInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getDebugInfo, getDebugInfo_super, getDebugInfo_impl, getMimeMessage, getMimeMessage_super, getMimeMessage_impl, log, log_super, log_impl, toString)
import DomDocumentMappingInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getDebugInfo, getDebugInfo_super, getDebugInfo_impl, getMimeMessage, getMimeMessage_super, getMimeMessage_impl, log, log_super, log_impl, toString)
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
import qualified MimeMessage -- javax.mail.internet.MimeMessage
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified DomDocumentMappingInterface -- org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface

-- Java interface: the classes that implement it have these functions
data EmailInterface = EmailInterface
    { header_ :: JavaHeader
    }

instance JavaNull EmailInterface where
    javaNull = javaNullRecord "EmailInterface"

instance JavaEquals EmailInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EmailInterface where
    (==) = jrecordEquals

instance JavaObjectClass EmailInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> EmailInterface
fromHeader_ header = EmailInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (EmailInterface header)
    DomNodeInterface.registerInterface_ header
    DomDocumentMappingInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getDebugInfo :: (JavaObjectClass this_) => this_ -> IO (String)
getDebugInfo object_ = jmethod object_ "getDebugInfo" (\() -> (getDebugInfo_impl (javaCast object_ :: EmailInterface))) ()

getDebugInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDebugInfo_super object_ = (getDebugInfo_impl (javaCast object_ :: EmailInterface))

getDebugInfo_impl :: EmailInterface -> IO (String)
getDebugInfo_impl this = javaAbstractMethod "getDebugInfo"


getMimeMessage :: (JavaObjectClass this_) => this_ -> IO (MimeMessage.MimeMessage)
getMimeMessage object_ = jmethod object_ "getMimeMessage" (\() -> (getMimeMessage_impl (javaCast object_ :: EmailInterface))) ()

getMimeMessage_super :: (JavaObjectClass this_) => this_ -> IO (MimeMessage.MimeMessage)
getMimeMessage_super object_ = (getMimeMessage_impl (javaCast object_ :: EmailInterface))

getMimeMessage_impl :: EmailInterface -> IO (MimeMessage.MimeMessage)
getMimeMessage_impl this = javaAbstractMethod "getMimeMessage"


-- throws Exception
log :: (JavaObjectClass this_) => this_ -> IO (String)
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: EmailInterface))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (String)
log_super object_ = (log_impl (javaCast object_ :: EmailInterface))

log_impl :: EmailInterface -> IO (String)
log_impl this = javaAbstractMethod "log"


