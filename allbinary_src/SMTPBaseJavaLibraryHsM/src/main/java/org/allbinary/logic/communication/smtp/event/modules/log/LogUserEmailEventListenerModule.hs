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
-- package org.allbinary.logic.communication.smtp.event.modules.log
module LogUserEmailEventListenerModule where

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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified EmailEvent -- org.allbinary.logic.communication.smtp.event.EmailEvent
import qualified UserEmailEventListenerInterface -- org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface

-- implements UserEmailEventListenerInterface
data LogUserEmailEventListenerModule = LogUserEmailEventListenerModule
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull LogUserEmailEventListenerModule where
    javaNull = javaNullRecord "LogUserEmailEventListenerModule"

instance JavaEquals LogUserEmailEventListenerModule where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogUserEmailEventListenerModule where
    (==) = jrecordEquals

instance JavaObjectClass LogUserEmailEventListenerModule where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogUserEmailEventListenerModule
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = LogUserEmailEventListenerModule header_ logUtil
    jregisterLevel header_ this
    UserEmailEventListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onEmailSendRequest" (\() -> onEmailSendRequest_impl this)
    pure this

initFields_ :: LogUserEmailEventListenerModule -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO LogUserEmailEventListenerModule
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogUserEmailEventListenerModule -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
onEmailSendRequest :: (JavaObjectClass this_) => this_ -> EmailEvent.EmailEvent -> IO (())
onEmailSendRequest object_ a1 = jmethod object_ "onEmailSendRequest" (\() -> (onEmailSendRequest_impl (javaCast object_ :: LogUserEmailEventListenerModule))) () a1

onEmailSendRequest_super :: (JavaObjectClass this_) => this_ -> EmailEvent.EmailEvent -> IO (())
onEmailSendRequest_super object_ a1 = (onEmailSendRequest_impl (javaCast object_ :: LogUserEmailEventListenerModule)) a1

onEmailSendRequest_impl :: LogUserEmailEventListenerModule -> EmailEvent.EmailEvent -> IO (())
onEmailSendRequest_impl this userEmailInfoEvent = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            let message = ("Logging EmailEvent - Temporary Listener for debugging.\n\n" ++ (jio (EmailEvent.toString userEmailInfoEvent)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) message this "onEmailSendRequest")
        pure ()


