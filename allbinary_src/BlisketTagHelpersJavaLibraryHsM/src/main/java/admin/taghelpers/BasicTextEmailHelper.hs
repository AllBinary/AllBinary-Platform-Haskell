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
-- package admin.taghelpers
module BasicTextEmailHelper (module BasicTextEmailHelper, module TagHelper) where

import TagHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, send, send_super, send_impl, abeClientInformation, hashMap, pageContext)
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
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified UserEmailEventNameData -- org.allbinary.logic.communication.smtp.event.UserEmailEventNameData
import qualified UserEmailEventHandler -- org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler
import qualified AdminUserEmailEventHandlerSingletons -- org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons
import qualified AdminEmailInfo -- org.allbinary.logic.communication.smtp.info.AdminEmailInfo
import qualified BasicEmailInfo -- org.allbinary.logic.communication.smtp.info.BasicEmailInfo
import qualified EmailInfo -- org.allbinary.logic.communication.smtp.info.EmailInfo
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified TagHelper

data BasicTextEmailHelper = BasicTextEmailHelper
    { header_ :: JavaHeader
    , base :: TagHelper.TagHelper
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , hashMap :: IORef (HashMap.HashMap)
    , pageContext :: IORef (PageContext.PageContext)
    }

instance JavaNull BasicTextEmailHelper where
    javaNull = javaNullRecord "BasicTextEmailHelper"

instance JavaEquals BasicTextEmailHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicTextEmailHelper where
    (==) = jrecordEquals

instance JavaObjectClass BasicTextEmailHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicTextEmailHelper
newRecord_ = do
    base <- TagHelper.newRecord_
    let header_ = base.header_
    abeClientInformation <- newIORef javaNull
    hashMap <- newIORef javaNull
    pageContext <- newIORef javaNull
    let this = BasicTextEmailHelper header_ base abeClientInformation hashMap pageContext
    jregisterLevel header_ this
    jregisterMethod header_ "send" (\() -> send_impl this)
    pure this

initFields_ :: BasicTextEmailHelper -> IO ()
initFields_ this = do
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    jset this.hashMap (javaNull)
    jset this.pageContext (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO BasicTextEmailHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: BasicTextEmailHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        TagHelper.init_ this.base
        initFields_ this
        jset (this).pageContext (pageContext)
        jset (this).hashMap (hashMap)
        pure ()


-- throws Exception
send :: (JavaObjectClass this_) => this_ -> IO (())
send object_ = jmethod object_ "send" (\() -> (send_impl (javaCast object_ :: BasicTextEmailHelper))) ()

send_super :: (JavaObjectClass this_) => this_ -> IO (())
send_super object_ = (send_impl (javaCast object_ :: BasicTextEmailHelper))

send_impl :: BasicTextEmailHelper -> IO (())
send_impl this = do
        let adminEmailSubject = (javaCast (jio (HashMap.get ((jget (this).hashMap)) "Subject")) :: String)
        let adminEmailTextBody = (javaCast (jio (HashMap.get ((jget (this).hashMap)) "Body")) :: String)
        let adminBasicEmailInfo = (javaCast (jio (AdminEmailInfo.new_2 adminEmailSubject adminEmailTextBody)) :: BasicEmailInfo.BasicEmailInfo)
        adminEmailInfo <- (EmailInfo.new_1 adminBasicEmailInfo)
        adminUserEmailEventHandler <- (fmap (\value_ -> javaCast value_ :: UserEmailEventHandler.UserEmailEventHandler) (AdminUserEmailEventHandlerSingletons.getInstance ((jio (AdminUserEmailEventHandlerSingletons.getInstance))) (jget (this).abeClientInformation) (UserEmailEventNameData.iNSTALLER)))
        Control.Monad.void (UserEmailEventHandler.receiveEmailInfo adminUserEmailEventHandler (UserEmailEventNameData.iNSTALLER) adminEmailInfo)
        pure ()


