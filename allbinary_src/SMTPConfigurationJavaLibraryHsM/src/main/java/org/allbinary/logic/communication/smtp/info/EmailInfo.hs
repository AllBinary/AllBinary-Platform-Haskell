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
module EmailInfo where

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
import qualified BasicEmailInfo -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data EmailInfo = EmailInfo
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , basicEmailInfo :: IORef (BasicEmailInfo.BasicEmailInfo)
    , htmlAttachment :: IORef (String)
    , contentBase :: IORef (String)
    }

instance JavaNull EmailInfo where
    javaNull = javaNullRecord "EmailInfo"

instance JavaEquals EmailInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EmailInfo where
    (==) = jrecordEquals

instance JavaObjectClass EmailInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO EmailInfo
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    basicEmailInfo <- newIORef javaNull
    htmlAttachment <- newIORef ""
    contentBase <- newIORef ""
    let this = EmailInfo header_ logUtil basicEmailInfo htmlAttachment contentBase
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getBasicEmailInfo" (\() -> getBasicEmailInfo_impl this)
    jregisterMethod header_ "getHtmlAttachment" (\() -> getHtmlAttachment_impl this)
    jregisterMethod header_ "getContentBase" (\() -> getContentBase_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: EmailInfo -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.basicEmailInfo (javaNull)
    jset this.htmlAttachment ("")
    jset this.contentBase ("")
    pure ()

new_1 :: BasicEmailInfo.BasicEmailInfo -> IO EmailInfo
new_1 basicEmailInfo = do
    this <- newRecord_
    init_1 this basicEmailInfo
    pure this

init_1 :: EmailInfo -> BasicEmailInfo.BasicEmailInfo -> IO ()
init_1 this basicEmailInfo = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).sTART) this (jget (commonStrings).cONSTRUCTOR))
        Control.Monad.void (EmailInfo.init this basicEmailInfo javaNull javaNull)
        pure ()

new_3 :: BasicEmailInfo.BasicEmailInfo -> String -> String -> IO EmailInfo
new_3 basicEmailInfo htmlAttachment contentBase = do
    this <- newRecord_
    init_3 this basicEmailInfo htmlAttachment contentBase
    pure this

init_3 :: EmailInfo -> BasicEmailInfo.BasicEmailInfo -> String -> String -> IO ()
init_3 this basicEmailInfo htmlAttachment contentBase = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).sTART) this (jget (commonStrings).cONSTRUCTOR))
        Control.Monad.void (EmailInfo.init this basicEmailInfo javaNull javaNull)
        pure ()


init :: (JavaObjectClass this_) => this_ -> BasicEmailInfo.BasicEmailInfo -> String -> String -> IO (())
init object_ a1 a2 a3 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: EmailInfo))) () a1 a2 a3

init_super :: (JavaObjectClass this_) => this_ -> BasicEmailInfo.BasicEmailInfo -> String -> String -> IO (())
init_super object_ a1 a2 a3 = (init_impl (javaCast object_ :: EmailInfo)) a1 a2 a3

init_impl :: EmailInfo -> BasicEmailInfo.BasicEmailInfo -> String -> String -> IO (())
init_impl this basicEmailInfo htmlAttachment contentBase = do
        jset (this).basicEmailInfo (basicEmailInfo)
        jset (this).htmlAttachment (htmlAttachment)
        jset (this).contentBase (contentBase)
        pure ()


getBasicEmailInfo :: (JavaObjectClass this_) => this_ -> IO (BasicEmailInfo.BasicEmailInfo)
getBasicEmailInfo object_ = jmethod object_ "getBasicEmailInfo" (\() -> (getBasicEmailInfo_impl (javaCast object_ :: EmailInfo))) ()

getBasicEmailInfo_super :: (JavaObjectClass this_) => this_ -> IO (BasicEmailInfo.BasicEmailInfo)
getBasicEmailInfo_super object_ = (getBasicEmailInfo_impl (javaCast object_ :: EmailInfo))

getBasicEmailInfo_impl :: EmailInfo -> IO (BasicEmailInfo.BasicEmailInfo)
getBasicEmailInfo_impl this = do
        pure ((jget (this).basicEmailInfo))


getHtmlAttachment :: (JavaObjectClass this_) => this_ -> IO (String)
getHtmlAttachment object_ = jmethod object_ "getHtmlAttachment" (\() -> (getHtmlAttachment_impl (javaCast object_ :: EmailInfo))) ()

getHtmlAttachment_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHtmlAttachment_super object_ = (getHtmlAttachment_impl (javaCast object_ :: EmailInfo))

getHtmlAttachment_impl :: EmailInfo -> IO (String)
getHtmlAttachment_impl this = do
        pure ((jget (this).htmlAttachment))


getContentBase :: (JavaObjectClass this_) => this_ -> IO (String)
getContentBase object_ = jmethod object_ "getContentBase" (\() -> (getContentBase_impl (javaCast object_ :: EmailInfo))) ()

getContentBase_super :: (JavaObjectClass this_) => this_ -> IO (String)
getContentBase_super object_ = (getContentBase_impl (javaCast object_ :: EmailInfo))

getContentBase_impl :: EmailInfo -> IO (String)
getContentBase_impl this = do
        pure ((jget (this).contentBase))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: EmailInfo))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: EmailInfo))

toString_impl :: EmailInfo -> IO (String)
toString_impl this = do
        pure (("Email Info: \n " ++ (jio (BasicEmailInfo.toString ((jio (EmailInfo.getBasicEmailInfo this)))))))


