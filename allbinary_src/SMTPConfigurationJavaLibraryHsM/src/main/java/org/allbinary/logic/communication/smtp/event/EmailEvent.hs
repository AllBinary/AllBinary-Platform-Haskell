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
-- package org.allbinary.logic.communication.smtp.event
module EmailEvent (module EmailEvent, module EventObject) where

import EventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getEmailInfo, getEmailInfo_super, getEmailInfo_impl, getAttempts, getAttempts_super, getAttempts_impl, setAttempts, setAttempts_super, setAttempts_impl, toString, toString_super, toString_impl, emailInfo, userEmailEventNameData, attempts)
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
import qualified UserEmailEventNameData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified EventObject -- java.util.EventObject
import qualified EmailInfo -- org.allbinary.logic.communication.smtp.info.EmailInfo
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data EmailEvent = EmailEvent
    { header_ :: JavaHeader
    , base :: EventObject.EventObject
    , emailInfo :: IORef (EmailInfo.EmailInfo)
    , userEmailEventNameData :: IORef (UserEmailEventNameData.UserEmailEventNameData)
    , attempts :: IORef (Int)
    }

instance JavaNull EmailEvent where
    javaNull = javaNullRecord "EmailEvent"

instance JavaEquals EmailEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EmailEvent where
    (==) = jrecordEquals

instance JavaObjectClass EmailEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO EmailEvent
newRecord_ = do
    base <- EventObject.newRecord_
    let header_ = base.header_
    emailInfo <- newIORef javaNull
    userEmailEventNameData <- newIORef javaNull
    attempts <- newIORef 0
    let this = EmailEvent header_ base emailInfo userEmailEventNameData attempts
    jregisterLevel header_ this
    jregisterMethod header_ "getEmailInfo" (\() -> getEmailInfo_impl this)
    jregisterMethod header_ "getAttempts" (\() -> getAttempts_impl this)
    jregisterMethod header_ "setAttempts" (\() -> setAttempts_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: EmailEvent -> IO ()
initFields_ this = do
    jset this.emailInfo (javaNull)
    jset this.userEmailEventNameData (javaNull)
    jset this.attempts (0)
    pure ()

new_4 :: (JavaObjectClass o1) => o1 -> UserEmailEventNameData.UserEmailEventNameData -> EmailInfo.EmailInfo -> Int -> IO EmailEvent
new_4 emailEventHandlerObject_ userEmailEventNameData emailInfo attempts = do
    this <- newRecord_
    init_4 this emailEventHandlerObject_ userEmailEventNameData emailInfo attempts
    pure this

init_4 :: (JavaObjectClass o1) => EmailEvent -> o1 -> UserEmailEventNameData.UserEmailEventNameData -> EmailInfo.EmailInfo -> Int -> IO ()
init_4 this emailEventHandlerObject_ userEmailEventNameData emailInfo attempts = do
        let emailEventHandler = jtoObject emailEventHandlerObject_
        EventObject.init_1 this.base (emailEventHandler)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).userEmailEventNameData (userEmailEventNameData)
        jset (this).emailInfo (emailInfo)
        pure ()


getEmailInfo :: (JavaObjectClass this_) => this_ -> IO (EmailInfo.EmailInfo)
getEmailInfo object_ = jmethod object_ "getEmailInfo" (\() -> (getEmailInfo_impl (javaCast object_ :: EmailEvent))) ()

getEmailInfo_super :: (JavaObjectClass this_) => this_ -> IO (EmailInfo.EmailInfo)
getEmailInfo_super object_ = (getEmailInfo_impl (javaCast object_ :: EmailEvent))

getEmailInfo_impl :: EmailEvent -> IO (EmailInfo.EmailInfo)
getEmailInfo_impl this = do
        pure ((jget (this).emailInfo))


getAttempts :: (JavaObjectClass this_) => this_ -> IO (Int)
getAttempts object_ = jmethod object_ "getAttempts" (\() -> (getAttempts_impl (javaCast object_ :: EmailEvent))) ()

getAttempts_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAttempts_super object_ = (getAttempts_impl (javaCast object_ :: EmailEvent))

getAttempts_impl :: EmailEvent -> IO (Int)
getAttempts_impl this = do
        pure ((jget (this).attempts))


setAttempts :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAttempts object_ a1 = jmethod object_ "setAttempts" (\() -> (setAttempts_impl (javaCast object_ :: EmailEvent))) () a1

setAttempts_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAttempts_super object_ a1 = (setAttempts_impl (javaCast object_ :: EmailEvent)) a1

setAttempts_impl :: EmailEvent -> Int -> IO (())
setAttempts_impl this attempts = do
        jset (this).attempts (attempts)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: EmailEvent))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: EmailEvent))

toString_impl :: EmailEvent -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "EmailEvent Log: \n")
        Control.Monad.void (StringMaker.append stringBuffer "Event Name: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (UserEmailEventNameData.toString ((jget (this).userEmailEventNameData)))))
        Control.Monad.void (StringMaker.append stringBuffer (jio (EmailInfo.toString ((jio (EmailEvent.getEmailInfo this))))))
        Control.Monad.void (StringMaker.append stringBuffer "\nNumber of Attempts: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (EmailEvent.getAttempts this)))
        (StringMaker.toString stringBuffer)


