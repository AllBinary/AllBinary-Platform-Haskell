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
-- package org.allbinary.business.context
module AbContext where

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
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified WeblisketSessionInterface -- org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data AbContext = AbContext
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , propertiesHashMap :: IORef (HashMap.HashMap)
    , pageContext :: IORef (PageContext.PageContext)
    }

instance JavaNull AbContext where
    javaNull = javaNullRecord "AbContext"

instance JavaEquals AbContext where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbContext where
    (==) = jrecordEquals

instance JavaObjectClass AbContext where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbContext
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    propertiesHashMap <- newIORef javaNull
    pageContext <- newIORef javaNull
    let this = AbContext header_ logUtil commonStrings propertiesHashMap pageContext
    jregisterLevel header_ this
    jregisterMethod header_ "getWeblisketSession" (\() -> getWeblisketSession_impl this)
    jregisterMethod header_ "getPageContext" (\() -> getPageContext_impl this)
    jregisterMethod header_ "getPropertiesHashMap" (\() -> getPropertiesHashMap_impl this)
    pure this

initFields_ :: AbContext -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.propertiesHashMap (javaNull)
    jset this.pageContext (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO AbContext
new_2 propertiesHashMap pageContext = do
    this <- newRecord_
    init_2 this propertiesHashMap pageContext
    pure this

init_2 :: AbContext -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this propertiesHashMap pageContext = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Properties HashMap: " ++ (jio (HashMap.toString propertiesHashMap))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        jset (this).propertiesHashMap (propertiesHashMap)
        jset (this).pageContext (pageContext)
        pure ()


getWeblisketSession :: (JavaObjectClass this_) => this_ -> IO (WeblisketSessionInterface.WeblisketSessionInterface)
getWeblisketSession object_ = jmethod object_ "getWeblisketSession" (\() -> (getWeblisketSession_impl (javaCast object_ :: AbContext))) ()

getWeblisketSession_super :: (JavaObjectClass this_) => this_ -> IO (WeblisketSessionInterface.WeblisketSessionInterface)
getWeblisketSession_super object_ = (getWeblisketSession_impl (javaCast object_ :: AbContext))

getWeblisketSession_impl :: AbContext -> IO (WeblisketSessionInterface.WeblisketSessionInterface)
getWeblisketSession_impl this = do
        (fmap (\value_ -> javaCast value_ :: WeblisketSessionInterface.WeblisketSessionInterface) (WeblisketSession.new_2 (jget (this).propertiesHashMap) (jget this.pageContext)))


getPageContext :: (JavaObjectClass this_) => this_ -> IO (PageContext.PageContext)
getPageContext object_ = jmethod object_ "getPageContext" (\() -> (getPageContext_impl (javaCast object_ :: AbContext))) ()

getPageContext_super :: (JavaObjectClass this_) => this_ -> IO (PageContext.PageContext)
getPageContext_super object_ = (getPageContext_impl (javaCast object_ :: AbContext))

getPageContext_impl :: AbContext -> IO (PageContext.PageContext)
getPageContext_impl this = do
        pure ((jget (this).pageContext))


getPropertiesHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getPropertiesHashMap object_ = jmethod object_ "getPropertiesHashMap" (\() -> (getPropertiesHashMap_impl (javaCast object_ :: AbContext))) ()

getPropertiesHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getPropertiesHashMap_super object_ = (getPropertiesHashMap_impl (javaCast object_ :: AbContext))

getPropertiesHashMap_impl :: AbContext -> IO (HashMap.HashMap)
getPropertiesHashMap_impl this = do
        pure ((jget (this).propertiesHashMap))


