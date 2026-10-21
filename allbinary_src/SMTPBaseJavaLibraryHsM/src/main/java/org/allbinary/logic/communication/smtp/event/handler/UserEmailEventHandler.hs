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
-- package org.allbinary.logic.communication.smtp.event.handler
module UserEmailEventHandler where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified EmailEvent -- org.allbinary.logic.communication.smtp.event.EmailEvent
import qualified UserEmailEventListenerInterface -- org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface
import qualified UserEmailEventNameData -- org.allbinary.logic.communication.smtp.event.UserEmailEventNameData
import qualified EmailInfo -- org.allbinary.logic.communication.smtp.info.EmailInfo

data UserEmailEventHandler = UserEmailEventHandler
    { header_ :: JavaHeader
    , emailVector :: IORef (BasicArrayList.BasicArrayList)
    , emailInfo :: IORef (EmailInfo.EmailInfo)
    , userEmailEventNameData :: IORef (UserEmailEventNameData.UserEmailEventNameData)
    }

instance JavaNull UserEmailEventHandler where
    javaNull = javaNullRecord "UserEmailEventHandler"

instance JavaEquals UserEmailEventHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserEmailEventHandler where
    (==) = jrecordEquals

instance JavaObjectClass UserEmailEventHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserEmailEventHandler
newRecord_ = do
    header_ <- newJavaHeader
    emailVector <- newIORef javaNull
    emailInfo <- newIORef javaNull
    userEmailEventNameData <- newIORef javaNull
    let this = UserEmailEventHandler header_ emailVector emailInfo userEmailEventNameData
    jregisterLevel header_ this
    jregisterMethod header_ "receiveEmailInfo" (\() -> receiveEmailInfo_impl this)
    jregisterMethod header_ "addListener_overload1" (\() -> addListener_overload1_impl this)
    jregisterMethod header_ "addListener_overload2" (\() -> addListener_overload2_impl this)
    jregisterMethod header_ "removeListener" (\() -> removeListener_impl this)
    jregisterMethod header_ "fireEmailEvent" (\() -> fireEmailEvent_impl this)
    pure this

initFields_ :: UserEmailEventHandler -> IO ()
initFields_ this = do
    jset this.emailVector (javaNull)
    jset this.emailInfo (javaNull)
    jset this.userEmailEventNameData (javaNull)
    pure ()

new_ :: IO UserEmailEventHandler
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UserEmailEventHandler -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).emailVector (assignedValue)
        pure ()


-- throws Exception
receiveEmailInfo :: (JavaObjectClass this_) => this_ -> UserEmailEventNameData.UserEmailEventNameData -> EmailInfo.EmailInfo -> IO (())
receiveEmailInfo object_ a1 a2 = jmethod object_ "receiveEmailInfo" (\() -> (receiveEmailInfo_impl (javaCast object_ :: UserEmailEventHandler))) () a1 a2

receiveEmailInfo_super :: (JavaObjectClass this_) => this_ -> UserEmailEventNameData.UserEmailEventNameData -> EmailInfo.EmailInfo -> IO (())
receiveEmailInfo_super object_ a1 a2 = (receiveEmailInfo_impl (javaCast object_ :: UserEmailEventHandler)) a1 a2

receiveEmailInfo_impl :: UserEmailEventHandler -> UserEmailEventNameData.UserEmailEventNameData -> EmailInfo.EmailInfo -> IO (())
receiveEmailInfo_impl this userEmailEventNameData emailInfo = do
        jset (this).userEmailEventNameData (userEmailEventNameData)
        jset (this).emailInfo (emailInfo)
        Control.Monad.void (UserEmailEventHandler.fireEmailEvent this)
        pure ()


-- Java overloads of addListener: calls the overload for the types of the arguments
addListener :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
addListener this a1
    | jisInstanceOf a1 (javaNull :: BasicArrayList.BasicArrayList) = addListener_overload1 this (javaCast a1 :: BasicArrayList.BasicArrayList)
    | jisInstanceOf a1 (javaNull :: UserEmailEventListenerInterface.UserEmailEventListenerInterface) = addListener_overload2 this (javaCast a1 :: UserEmailEventListenerInterface.UserEmailEventListenerInterface)
    | otherwise = addListener_overload2 this (javaCast a1 :: UserEmailEventListenerInterface.UserEmailEventListenerInterface)

addListener_overload1 :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addListener_overload1 object_ a1 = jmethod object_ "addListener_overload1" (\() -> (addListener_overload1_impl (javaCast object_ :: UserEmailEventHandler))) () a1

addListener_overload1_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addListener_overload1_super object_ a1 = (addListener_overload1_impl (javaCast object_ :: UserEmailEventHandler)) a1

addListener_overload1_impl :: UserEmailEventHandler -> BasicArrayList.BasicArrayList -> IO (())
addListener_overload1_impl this vector = do
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let userEmailEventListenerInterface = (javaCast (jio (BasicArrayList.get vector index)) :: UserEmailEventListenerInterface.UserEmailEventListenerInterface)
            Control.Monad.void (UserEmailEventHandler.addListener this userEmailEventListenerInterface)
        pure ()


addListener_overload2 :: (JavaObjectClass this_) => this_ -> UserEmailEventListenerInterface.UserEmailEventListenerInterface -> IO (())
addListener_overload2 object_ a1 = jmethod object_ "addListener_overload2" (\() -> (addListener_overload2_impl (javaCast object_ :: UserEmailEventHandler))) () a1

addListener_overload2_super :: (JavaObjectClass this_) => this_ -> UserEmailEventListenerInterface.UserEmailEventListenerInterface -> IO (())
addListener_overload2_super object_ a1 = (addListener_overload2_impl (javaCast object_ :: UserEmailEventHandler)) a1

addListener_overload2_impl :: UserEmailEventHandler -> UserEmailEventListenerInterface.UserEmailEventListenerInterface -> IO (())
addListener_overload2_impl this emailEventListenerInterface = do
        Control.Monad.void (BasicArrayList.add ((jget (this).emailVector)) emailEventListenerInterface)
        pure ()


removeListener :: (JavaObjectClass this_) => this_ -> UserEmailEventListenerInterface.UserEmailEventListenerInterface -> IO (())
removeListener object_ a1 = jmethod object_ "removeListener" (\() -> (removeListener_impl (javaCast object_ :: UserEmailEventHandler))) () a1

removeListener_super :: (JavaObjectClass this_) => this_ -> UserEmailEventListenerInterface.UserEmailEventListenerInterface -> IO (())
removeListener_super object_ a1 = (removeListener_impl (javaCast object_ :: UserEmailEventHandler)) a1

removeListener_impl :: UserEmailEventHandler -> UserEmailEventListenerInterface.UserEmailEventListenerInterface -> IO (())
removeListener_impl this emailEventListenerInterface = do
        Control.Monad.void (BasicArrayList.remove ((jget (this).emailVector)) emailEventListenerInterface)
        pure ()


-- throws Exception
fireEmailEvent :: (JavaObjectClass this_) => this_ -> IO (())
fireEmailEvent object_ = jmethod object_ "fireEmailEvent" (\() -> (fireEmailEvent_impl (javaCast object_ :: UserEmailEventHandler))) ()

fireEmailEvent_super :: (JavaObjectClass this_) => this_ -> IO (())
fireEmailEvent_super object_ = (fireEmailEvent_impl (javaCast object_ :: UserEmailEventHandler))

fireEmailEvent_impl :: UserEmailEventHandler -> IO (())
fireEmailEvent_impl this = do
        emailEvent <- (EmailEvent.new_4 this (jget (this).userEmailEventNameData) (jget (this).emailInfo) 0)
        size <- (BasicArrayList.size ((jget (this).emailVector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let emailEventListenerInterface = (javaCast (jio (BasicArrayList.get ((jget (this).emailVector)) index)) :: UserEmailEventListenerInterface.UserEmailEventListenerInterface)
            Control.Monad.void (UserEmailEventListenerInterface.onEmailSendRequest emailEventListenerInterface emailEvent)
        pure ()


