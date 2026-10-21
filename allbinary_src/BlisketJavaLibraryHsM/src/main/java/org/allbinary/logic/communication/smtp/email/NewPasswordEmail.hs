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
-- package org.allbinary.logic.communication.smtp.email
module NewPasswordEmail where

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
import qualified UserInterface -- org.allbinary.business.user.UserInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified UserEmailEventNameData -- org.allbinary.logic.communication.smtp.event.UserEmailEventNameData
import qualified UserEmailEventHandler -- org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler
import qualified AdminUserEmailEventHandlerSingletons -- org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons
import qualified UserEmailEventHandlerSingletons -- org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons
import qualified AdminEmailInfo -- org.allbinary.logic.communication.smtp.info.AdminEmailInfo
import qualified BasicEmailInfo -- org.allbinary.logic.communication.smtp.info.BasicEmailInfo
import qualified EmailInfo -- org.allbinary.logic.communication.smtp.info.EmailInfo
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data NewPasswordEmail = NewPasswordEmail
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , userInterface :: IORef (UserInterface.UserInterface)
    , newPassword :: IORef (String)
    }

instance JavaNull NewPasswordEmail where
    javaNull = javaNullRecord "NewPasswordEmail"

instance JavaEquals NewPasswordEmail where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NewPasswordEmail where
    (==) = jrecordEquals

instance JavaObjectClass NewPasswordEmail where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NewPasswordEmail
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    userInterface <- newIORef javaNull
    newPassword <- newIORef ""
    let this = NewPasswordEmail header_ logUtil commonStrings abeClientInformation userInterface newPassword
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "notifyStoreAdmin" (\() -> notifyStoreAdmin_impl this)
    jregisterMethod header_ "notifyUser" (\() -> notifyUser_impl this)
    pure this

initFields_ :: NewPasswordEmail -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.abeClientInformation (javaNull)
    jset this.userInterface (javaNull)
    jset this.newPassword (javaNull)
    pure ()

new_3 :: AbeClientInformationInterface.AbeClientInformationInterface -> UserInterface.UserInterface -> String -> IO NewPasswordEmail
new_3 abeClientInformation userInterface newPassword = do
    this <- newRecord_
    init_3 this abeClientInformation userInterface newPassword
    pure this

init_3 :: NewPasswordEmail -> AbeClientInformationInterface.AbeClientInformationInterface -> UserInterface.UserInterface -> String -> IO ()
init_3 this abeClientInformation userInterface newPassword = do
        initFields_ this
        jset (this).abeClientInformation (abeClientInformation)
        jset (this).userInterface (userInterface)
        jset (this).newPassword (newPassword)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: NewPasswordEmail))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: NewPasswordEmail))

process_impl :: NewPasswordEmail -> IO (())
process_impl this = do
        Control.Monad.void (NewPasswordEmail.notifyStoreAdmin this)
        Control.Monad.void (NewPasswordEmail.notifyUser this)
        pure ()


-- throws Exception
notifyStoreAdmin :: (JavaObjectClass this_) => this_ -> IO (())
notifyStoreAdmin object_ = jmethod object_ "notifyStoreAdmin" (\() -> (notifyStoreAdmin_impl (javaCast object_ :: NewPasswordEmail))) ()

notifyStoreAdmin_super :: (JavaObjectClass this_) => this_ -> IO (())
notifyStoreAdmin_super object_ = (notifyStoreAdmin_impl (javaCast object_ :: NewPasswordEmail))

notifyStoreAdmin_impl :: NewPasswordEmail -> IO (())
notifyStoreAdmin_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "emailAdmin" e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "notifyStoreAdmin" this "notifyStoreAdmin")
            let emailSubject = ("New Password For User: " ++ javaToString (jio (UserInterface.getUserName ((jget (this).userInterface)))))
            let emailBody = ("New Password: " ++ (jget (this).newPassword))
            let basicEmailInfo = (javaCast (jio (AdminEmailInfo.new_2 emailSubject emailBody)) :: BasicEmailInfo.BasicEmailInfo)
            emailInfo <- (EmailInfo.new_1 basicEmailInfo)
            adminUserEmailEventHandler <- (fmap (\value_ -> javaCast value_ :: UserEmailEventHandler.UserEmailEventHandler) (AdminUserEmailEventHandlerSingletons.getInstance ((jio (AdminUserEmailEventHandlerSingletons.getInstance))) (jget (this).abeClientInformation) (UserEmailEventNameData.nEWPASSWORD)))
            Control.Monad.void (UserEmailEventHandler.receiveEmailInfo adminUserEmailEventHandler (UserEmailEventNameData.nEWPASSWORD) emailInfo)
        pure ()


-- throws Exception
notifyUser :: (JavaObjectClass this_) => this_ -> IO (())
notifyUser object_ = jmethod object_ "notifyUser" (\() -> (notifyUser_impl (javaCast object_ :: NewPasswordEmail))) ()

notifyUser_super :: (JavaObjectClass this_) => this_ -> IO (())
notifyUser_super object_ = (notifyUser_impl (javaCast object_ :: NewPasswordEmail))

notifyUser_impl :: NewPasswordEmail -> IO (())
notifyUser_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "notifyUser" e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Email User" this "notifyUser()")
            let subject = "New Password"
            let body = ("New Password: " ++ (jget (this).newPassword))
            let basicEmailInfo = (javaCast (jio (AdminEmailInfo.new_2 subject body)) :: BasicEmailInfo.BasicEmailInfo)
            emailInfo <- (EmailInfo.new_1 basicEmailInfo)
            userEmailEventHandler <- (fmap (\value_ -> javaCast value_ :: UserEmailEventHandler.UserEmailEventHandler) (UserEmailEventHandlerSingletons.getInstance ((jio (UserEmailEventHandlerSingletons.getInstance))) (jget (this).abeClientInformation) (UserEmailEventNameData.nEWPASSWORD) (jget (this).userInterface)))
            Control.Monad.void (UserEmailEventHandler.receiveEmailInfo userEmailEventHandler (UserEmailEventNameData.nEWPASSWORD) emailInfo)
        pure ()


