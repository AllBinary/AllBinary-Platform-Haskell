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
-- package org.allbinary.logic.communication.smtp.event.modules.event.user
module UserEmailEventListenerModule where

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
import qualified BasicEmail -- org.allbinary.logic.communication.smtp.BasicEmail
import qualified EmailInterface -- org.allbinary.logic.communication.smtp.EmailInterface
import qualified EmailEvent -- org.allbinary.logic.communication.smtp.event.EmailEvent
import qualified UserEmailEventListenerInterface -- org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface
import qualified EmailQueueFactory -- org.allbinary.logic.communication.smtp.queue.EmailQueueFactory

-- implements UserEmailEventListenerInterface
data UserEmailEventListenerModule = UserEmailEventListenerModule
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , userInterface :: IORef (UserInterface.UserInterface)
    }

instance JavaNull UserEmailEventListenerModule where
    javaNull = javaNullRecord "UserEmailEventListenerModule"

instance JavaEquals UserEmailEventListenerModule where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserEmailEventListenerModule where
    (==) = jrecordEquals

instance JavaObjectClass UserEmailEventListenerModule where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserEmailEventListenerModule
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    userInterface <- newIORef javaNull
    let this = UserEmailEventListenerModule header_ logUtil userInterface
    jregisterLevel header_ this
    UserEmailEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onEmailSendFailure" (\() -> onEmailSendFailure_impl this)
    jregisterMethod header_ "onEmailSendRequest" (\() -> onEmailSendRequest_impl this)
    pure this

initFields_ :: UserEmailEventListenerModule -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.userInterface (javaNull)
    pure ()

new_1 :: UserInterface.UserInterface -> IO UserEmailEventListenerModule
new_1 userInterface = do
    this <- newRecord_
    init_1 this userInterface
    pure this

init_1 :: UserEmailEventListenerModule -> UserInterface.UserInterface -> IO ()
init_1 this userInterface = do
        initFields_ this
        jset (this).userInterface (userInterface)
        pure ()


-- throws Exception
onEmailSendFailure :: (JavaObjectClass this_) => this_ -> EmailEvent.EmailEvent -> IO (())
onEmailSendFailure object_ a1 = jmethod object_ "onEmailSendFailure" (\() -> (onEmailSendFailure_impl (javaCast object_ :: UserEmailEventListenerModule))) () a1

onEmailSendFailure_super :: (JavaObjectClass this_) => this_ -> EmailEvent.EmailEvent -> IO (())
onEmailSendFailure_super object_ a1 = (onEmailSendFailure_impl (javaCast object_ :: UserEmailEventListenerModule)) a1

onEmailSendFailure_impl :: UserEmailEventListenerModule -> EmailEvent.EmailEvent -> IO (())
onEmailSendFailure_impl this emailEvent = do
        to <- (UserInterface.getSecondaryEmail ((jget (this).userInterface)))
        email <- (BasicEmail.new_2 (jio (EmailEvent.getEmailInfo emailEvent)) to)
        Control.Monad.void (EmailQueueInterface.offer ((jio (EmailQueueFactory.getInstance))) (javaCast (jio (BasicEmail.getEmail email)) :: EmailInterface.EmailInterface))
        pure ()


-- throws Exception
onEmailSendRequest :: (JavaObjectClass this_) => this_ -> EmailEvent.EmailEvent -> IO (())
onEmailSendRequest object_ a1 = jmethod object_ "onEmailSendRequest" (\() -> (onEmailSendRequest_impl (javaCast object_ :: UserEmailEventListenerModule))) () a1

onEmailSendRequest_super :: (JavaObjectClass this_) => this_ -> EmailEvent.EmailEvent -> IO (())
onEmailSendRequest_super object_ a1 = (onEmailSendRequest_impl (javaCast object_ :: UserEmailEventListenerModule)) a1

onEmailSendRequest_impl :: UserEmailEventListenerModule -> EmailEvent.EmailEvent -> IO (())
onEmailSendRequest_impl this emailEvent = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Add Email To Que For Sending: " ++ (jio (EmailEvent.toString emailEvent))) this "onEmailSendRequest")
        to <- (UserInterface.getMainEmail ((jget (this).userInterface)))
        email <- (BasicEmail.new_2 (jio (EmailEvent.getEmailInfo emailEvent)) to)
        Control.Monad.void (EmailQueueInterface.offer ((jio (EmailQueueFactory.getInstance))) (javaCast (jio (BasicEmail.getEmail email)) :: EmailInterface.EmailInterface))
        pure ()


