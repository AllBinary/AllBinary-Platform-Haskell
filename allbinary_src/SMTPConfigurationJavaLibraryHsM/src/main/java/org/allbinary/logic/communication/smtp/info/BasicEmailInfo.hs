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
-- package org.allbinary.logic.communication.smtp.info
module BasicEmailInfo where

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
import qualified EmailServerConfigurationInterface -- org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data BasicEmailInfo = BasicEmailInfo
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , subject :: IORef (String)
    , textBody :: IORef (String)
    , emailServerConfigurationInterface :: IORef (EmailServerConfigurationInterface.EmailServerConfigurationInterface)
    }

instance JavaNull BasicEmailInfo where
    javaNull = javaNullRecord "BasicEmailInfo"

instance JavaEquals BasicEmailInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicEmailInfo where
    (==) = jrecordEquals

instance JavaObjectClass BasicEmailInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicEmailInfo
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    subject <- newIORef ""
    textBody <- newIORef ""
    emailServerConfigurationInterface <- newIORef javaNull
    let this = BasicEmailInfo header_ logUtil subject textBody emailServerConfigurationInterface
    jregisterLevel header_ this
    jregisterMethod header_ "getSubject" (\() -> getSubject_impl this)
    jregisterMethod header_ "getTextBody" (\() -> getTextBody_impl this)
    jregisterMethod header_ "getEmailServerConfigurationInterface" (\() -> getEmailServerConfigurationInterface_impl this)
    jregisterMethod header_ "setEmailServerConfigurationInterface" (\() -> setEmailServerConfigurationInterface_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: BasicEmailInfo -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.subject (javaNull)
    jset this.textBody (javaNull)
    jset this.emailServerConfigurationInterface (javaNull)
    pure ()

new_2 :: String -> String -> IO BasicEmailInfo
new_2 subject textBody = do
    this <- newRecord_
    init_2 this subject textBody
    pure this

init_2 :: BasicEmailInfo -> String -> String -> IO ()
init_2 this subject textBody = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).sTART) this (jget (commonStrings).cONSTRUCTOR))
        jset (this).subject (subject)
        jset (this).textBody (textBody)
        pure ()


getSubject :: (JavaObjectClass this_) => this_ -> IO (String)
getSubject object_ = jmethod object_ "getSubject" (\() -> (getSubject_impl (javaCast object_ :: BasicEmailInfo))) ()

getSubject_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSubject_super object_ = (getSubject_impl (javaCast object_ :: BasicEmailInfo))

getSubject_impl :: BasicEmailInfo -> IO (String)
getSubject_impl this = do
        pure ((jget (this).subject))


getTextBody :: (JavaObjectClass this_) => this_ -> IO (String)
getTextBody object_ = jmethod object_ "getTextBody" (\() -> (getTextBody_impl (javaCast object_ :: BasicEmailInfo))) ()

getTextBody_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTextBody_super object_ = (getTextBody_impl (javaCast object_ :: BasicEmailInfo))

getTextBody_impl :: BasicEmailInfo -> IO (String)
getTextBody_impl this = do
        pure ((jget (this).textBody))


getEmailServerConfigurationInterface :: (JavaObjectClass this_) => this_ -> IO (EmailServerConfigurationInterface.EmailServerConfigurationInterface)
getEmailServerConfigurationInterface object_ = jmethod object_ "getEmailServerConfigurationInterface" (\() -> (getEmailServerConfigurationInterface_impl (javaCast object_ :: BasicEmailInfo))) ()

getEmailServerConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> IO (EmailServerConfigurationInterface.EmailServerConfigurationInterface)
getEmailServerConfigurationInterface_super object_ = (getEmailServerConfigurationInterface_impl (javaCast object_ :: BasicEmailInfo))

getEmailServerConfigurationInterface_impl :: BasicEmailInfo -> IO (EmailServerConfigurationInterface.EmailServerConfigurationInterface)
getEmailServerConfigurationInterface_impl this = do
        pure ((jget (this).emailServerConfigurationInterface))


setEmailServerConfigurationInterface :: (JavaObjectClass this_) => this_ -> EmailServerConfigurationInterface.EmailServerConfigurationInterface -> IO (())
setEmailServerConfigurationInterface object_ a1 = jmethod object_ "setEmailServerConfigurationInterface" (\() -> (setEmailServerConfigurationInterface_impl (javaCast object_ :: BasicEmailInfo))) () a1

setEmailServerConfigurationInterface_super :: (JavaObjectClass this_) => this_ -> EmailServerConfigurationInterface.EmailServerConfigurationInterface -> IO (())
setEmailServerConfigurationInterface_super object_ a1 = (setEmailServerConfigurationInterface_impl (javaCast object_ :: BasicEmailInfo)) a1

setEmailServerConfigurationInterface_impl :: BasicEmailInfo -> EmailServerConfigurationInterface.EmailServerConfigurationInterface -> IO (())
setEmailServerConfigurationInterface_impl this emailServerConfigurationInterface = do
        jset (this).emailServerConfigurationInterface (emailServerConfigurationInterface)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BasicEmailInfo))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BasicEmailInfo))

toString_impl :: BasicEmailInfo -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (EmailServerConfigurationInterface.toString ((jio (BasicEmailInfo.getEmailServerConfigurationInterface this))))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer "Subject: \n")
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicEmailInfo.getSubject this)))
        Control.Monad.void (StringMaker.append stringBuffer "\nText Body: \n")
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicEmailInfo.getTextBody this)))
        (StringMaker.toString stringBuffer)


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BasicEmailInfo))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: BasicEmailInfo))

init_impl :: BasicEmailInfo -> IO (())
init_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


