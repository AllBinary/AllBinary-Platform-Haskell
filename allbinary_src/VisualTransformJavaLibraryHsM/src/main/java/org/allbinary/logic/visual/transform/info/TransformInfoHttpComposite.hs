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
-- package org.allbinary.logic.visual.transform.info
module TransformInfoHttpComposite where

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
import qualified TransformInfoHttpInterface -- same package or java.lang
import qualified TransformInfoInterface -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data TransformInfoHttpComposite = TransformInfoHttpComposite
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , transformInfoInterface :: IORef (TransformInfoHttpInterface.TransformInfoHttpInterface)
    }

instance JavaNull TransformInfoHttpComposite where
    javaNull = javaNullRecord "TransformInfoHttpComposite"

instance JavaEquals TransformInfoHttpComposite where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoHttpComposite where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoHttpComposite where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoHttpComposite
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    transformInfoInterface <- newIORef javaNull
    let this = TransformInfoHttpComposite header_ logUtil commonStrings transformInfoInterface
    jregisterLevel header_ this
    jregisterMethod header_ "getTransformInfoInterface" (\() -> getTransformInfoInterface_impl this)
    jregisterMethod header_ "getWeblisketSession" (\() -> getWeblisketSession_impl this)
    jregisterMethod header_ "getPageContext" (\() -> getPageContext_impl this)
    jregisterMethod header_ "getPropertiesHashMap" (\() -> getPropertiesHashMap_impl this)
    pure this

initFields_ :: TransformInfoHttpComposite -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.transformInfoInterface (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO TransformInfoHttpComposite
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: TransformInfoHttpComposite -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        jset (this).transformInfoInterface ((javaCast transformInfoInterface :: TransformInfoHttpInterface.TransformInfoHttpInterface))
        pure ()


-- throws Exception
getTransformInfoInterface :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface object_ = jmethod object_ "getTransformInfoInterface" (\() -> (getTransformInfoInterface_impl (javaCast object_ :: TransformInfoHttpComposite))) ()

getTransformInfoInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_super object_ = (getTransformInfoInterface_impl (javaCast object_ :: TransformInfoHttpComposite))

getTransformInfoInterface_impl :: TransformInfoHttpComposite -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_impl this = do
        pure ((javaCast (jget (this).transformInfoInterface) :: TransformInfoInterface.TransformInfoInterface))


getWeblisketSession :: (JavaObjectClass this_) => this_ -> IO (WeblisketSession.WeblisketSession)
getWeblisketSession object_ = jmethod object_ "getWeblisketSession" (\() -> (getWeblisketSession_impl (javaCast object_ :: TransformInfoHttpComposite))) ()

getWeblisketSession_super :: (JavaObjectClass this_) => this_ -> IO (WeblisketSession.WeblisketSession)
getWeblisketSession_super object_ = (getWeblisketSession_impl (javaCast object_ :: TransformInfoHttpComposite))

getWeblisketSession_impl :: TransformInfoHttpComposite -> IO (WeblisketSession.WeblisketSession)
getWeblisketSession_impl this = do
        (WeblisketSession.new_2 (jio (TransformInfoHttpComposite.getPropertiesHashMap this)) (jio (TransformInfoHttpComposite.getPageContext this)))


getPageContext :: (JavaObjectClass this_) => this_ -> IO (PageContext.PageContext)
getPageContext object_ = jmethod object_ "getPageContext" (\() -> (getPageContext_impl (javaCast object_ :: TransformInfoHttpComposite))) ()

getPageContext_super :: (JavaObjectClass this_) => this_ -> IO (PageContext.PageContext)
getPageContext_super object_ = (getPageContext_impl (javaCast object_ :: TransformInfoHttpComposite))

getPageContext_impl :: TransformInfoHttpComposite -> IO (PageContext.PageContext)
getPageContext_impl this = do
        (TransformInfoHttpInterface.getPageContext ((jget (this).transformInfoInterface)))


getPropertiesHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getPropertiesHashMap object_ = jmethod object_ "getPropertiesHashMap" (\() -> (getPropertiesHashMap_impl (javaCast object_ :: TransformInfoHttpComposite))) ()

getPropertiesHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getPropertiesHashMap_super object_ = (getPropertiesHashMap_impl (javaCast object_ :: TransformInfoHttpComposite))

getPropertiesHashMap_impl :: TransformInfoHttpComposite -> IO (HashMap.HashMap)
getPropertiesHashMap_impl this = do
        (TransformInfoHttpInterface.getPropertiesHashMap ((jget (this).transformInfoInterface)))


