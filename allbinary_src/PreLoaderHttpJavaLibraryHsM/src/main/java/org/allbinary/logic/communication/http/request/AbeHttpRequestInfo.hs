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
-- package org.allbinary.logic.communication.http.request
module AbeHttpRequestInfo where

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
import qualified AbeHttpRequestInfoData -- same package or java.lang
import qualified Enumeration -- java.util.Enumeration
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data AbeHttpRequestInfo = AbeHttpRequestInfo
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , abeHttpRequestInfoData :: IORef (AbeHttpRequestInfoData.AbeHttpRequestInfoData)
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , httpUserAgent :: IORef (String)
    , remoteAddress :: IORef (String)
    , remoteHost :: IORef (String)
    , remoteHostByAddr :: IORef (String)
    , remotePort :: IORef (String)
    , requestedFilePath :: IORef (String)
    }

instance JavaNull AbeHttpRequestInfo where
    javaNull = javaNullRecord "AbeHttpRequestInfo"

instance JavaEquals AbeHttpRequestInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbeHttpRequestInfo where
    (==) = jrecordEquals

instance JavaObjectClass AbeHttpRequestInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AbeHttpRequestInfo
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    abeHttpRequestInfoData <- newIORef javaNull
    commonSeps <- newIORef javaNull
    httpUserAgent <- newIORef ""
    remoteAddress <- newIORef ""
    remoteHost <- newIORef ""
    remoteHostByAddr <- newIORef ""
    remotePort <- newIORef ""
    requestedFilePath <- newIORef ""
    let this = AbeHttpRequestInfo header_ nAME abeHttpRequestInfoData commonSeps httpUserAgent remoteAddress remoteHost remoteHostByAddr remotePort requestedFilePath
    jregisterLevel header_ this
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: AbeHttpRequestInfo -> IO ()
initFields_ this = do
    jset this.nAME ("AbeHttpRequestInfo")
    jset this.abeHttpRequestInfoData =<< (AbeHttpRequestInfoData.getInstance)
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.httpUserAgent (javaNull)
    jset this.remoteAddress (javaNull)
    jset this.remoteHost (javaNull)
    jset this.remoteHostByAddr (javaNull)
    jset this.remotePort (javaNull)
    jset this.requestedFilePath (javaNull)
    pure ()

new_1 :: HashMap.HashMap -> IO AbeHttpRequestInfo
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: AbeHttpRequestInfo -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        stringUtil <- (StringUtil.getInstance)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get hashMap (jget ((jget (this).abeHttpRequestInfoData)).hTTP_USER_AGENT))) :: String))
        jset (this).httpUserAgent (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get hashMap (jget ((jget (this).abeHttpRequestInfoData)).rEMOTE_ADDRESS))) :: String))
        jset (this).remoteAddress (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get hashMap (jget ((jget (this).abeHttpRequestInfoData)).rEMOTE_HOST))) :: String))
        jset (this).remoteHost (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get hashMap (jget ((jget (this).abeHttpRequestInfoData)).rEMOTE_HOST_BY_ADDRESS))) :: String))
        jset (this).remoteHostByAddr (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get hashMap (jget ((jget (this).abeHttpRequestInfoData)).rEMOTE_PORT))) :: String))
        jset (this).remotePort (assignedValue)
        assignedValue <- (StringUtil.getNonNull stringUtil (javaCast (jio (HashMap.get hashMap (jget ((jget (this).abeHttpRequestInfoData)).rEQUEST_FILE_PATH))) :: String))
        jset (this).requestedFilePath (assignedValue)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HttpServletRequest.HttpServletRequest -> IO AbeHttpRequestInfo
new_1 httpServletRequest = do
    this <- newRecord_
    init_1 this httpServletRequest
    pure this

init_1 :: AbeHttpRequestInfo -> HttpServletRequest.HttpServletRequest -> IO ()
init_1 this httpServletRequest = do
        initFields_ this
        stringUtil <- (StringUtil.getInstance)
        jset (this).httpUserAgent ((jget (stringUtil).eMPTY_STRING))
        enumuration <- (HttpServletRequest.getHeaderNames httpServletRequest)
        fix $ \loop -> when (jio (Enumeration.hasMoreElements enumuration)) $ javaIteration (loop) $ do
            let key = (javaCast (jio (Enumeration.nextElement enumuration)) :: String)
            value <- (HttpServletRequest.getHeader httpServletRequest key)
            when ((jstringIndexOf key "user" 0) >= 0) $ do
                jset (this).httpUserAgent (((("key: " ++ key) ++ " value: ") ++ value))
        jset (this).remoteHostByAddr ((jget (stringUtil).eMPTY_STRING))
        assignedValue <- (HttpServletRequest.getRemoteAddr httpServletRequest)
        jset (this).remoteAddress (assignedValue)
        assignedValue <- (HttpServletRequest.getRemoteHost httpServletRequest)
        jset (this).remoteHost (assignedValue)
        assignedValue <- (HttpServletRequest.getServletPath httpServletRequest)
        jset (this).requestedFilePath (assignedValue)
        jset (this).remotePort ((javaToString (jio (HttpServletRequest.getRemotePort httpServletRequest))))
        pure ()


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: AbeHttpRequestInfo))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: AbeHttpRequestInfo))

toHashMap_impl :: AbeHttpRequestInfo -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.abeHttpRequestInfoData)).hTTP_USER_AGENT) (jget (this).httpUserAgent))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.abeHttpRequestInfoData)).rEMOTE_ADDRESS) (jget (this).remoteAddress))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.abeHttpRequestInfoData)).rEMOTE_HOST) (jget (this).remoteHost))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.abeHttpRequestInfoData)).rEMOTE_HOST_BY_ADDRESS) (jget (this).remoteHostByAddr))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.abeHttpRequestInfoData)).rEMOTE_PORT) (jget (this).remotePort))
        Control.Monad.void (HashMap.put hashMap (jget ((jget this.abeHttpRequestInfoData)).rEQUEST_FILE_PATH) (jget (this).requestedFilePath))
        pure (hashMap)


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: AbeHttpRequestInfo))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: AbeHttpRequestInfo))

toVector_impl :: AbeHttpRequestInfo -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add vector (jget (this).httpUserAgent))
        Control.Monad.void (BasicArrayList.add vector (jget (this).remoteAddress))
        Control.Monad.void (BasicArrayList.add vector (jget (this).remoteHost))
        Control.Monad.void (BasicArrayList.add vector (jget (this).remoteHostByAddr))
        Control.Monad.void (BasicArrayList.add vector (jget (this).remotePort))
        Control.Monad.void (BasicArrayList.add vector (jget (this).requestedFilePath))
        pure (vector)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AbeHttpRequestInfo))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AbeHttpRequestInfo))

toString_impl :: AbeHttpRequestInfo -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).nAME)))) (jget ((jget (this).commonSeps)).cOLON_SEP)))) (jget ((jget this.abeHttpRequestInfoData)).hTTP_USER_AGENT)))) (jget ((jget (this).commonSeps)).cOLON_SEP)))) (jget (this).httpUserAgent)))) (jget ((jget (this).commonSeps)).sPACE)))) (jget ((jget this.abeHttpRequestInfoData)).rEMOTE_ADDRESS)))) (jget ((jget (this).commonSeps)).cOLON_SEP)))) (jget (this).remoteAddress)))) (jget ((jget (this).commonSeps)).sPACE)))) (jget ((jget this.abeHttpRequestInfoData)).rEMOTE_HOST)))) (jget ((jget (this).commonSeps)).cOLON_SEP)))) (jget (this).remoteHost)))) (jget ((jget (this).commonSeps)).sPACE)))) (jget ((jget this.abeHttpRequestInfoData)).rEMOTE_HOST_BY_ADDRESS)))) (jget ((jget (this).commonSeps)).cOLON_SEP)))) (jget (this).remoteHostByAddr)))) (jget ((jget (this).commonSeps)).sPACE)))) (jget ((jget this.abeHttpRequestInfoData)).rEMOTE_PORT)))) (jget ((jget (this).commonSeps)).cOLON_SEP)))) (jget (this).remotePort)))) (jget ((jget (this).commonSeps)).sPACE)))) (jget ((jget this.abeHttpRequestInfoData)).rEQUEST_FILE_PATH)))) (jget ((jget (this).commonSeps)).cOLON_SEP)))) (jget (this).requestedFilePath)))))


