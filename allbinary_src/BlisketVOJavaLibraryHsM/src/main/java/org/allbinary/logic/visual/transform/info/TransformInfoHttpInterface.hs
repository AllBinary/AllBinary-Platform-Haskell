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
module TransformInfoHttpInterface (module TransformInfoHttpInterface, module TransformInfoInterface) where

import TransformInfoInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getWeblisketSession, getWeblisketSession_super, getWeblisketSession_impl, getPageContext, getPageContext_super, getPageContext_impl, getPropertiesHashMap, getPropertiesHashMap_super, getPropertiesHashMap_impl, toString)
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
import qualified WeblisketSessionInterface -- org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface
import qualified TransformInfoInterface

-- Java interface: the classes that implement it have these functions
data TransformInfoHttpInterface = TransformInfoHttpInterface
    { header_ :: JavaHeader
    }

instance JavaNull TransformInfoHttpInterface where
    javaNull = javaNullRecord "TransformInfoHttpInterface"

instance JavaEquals TransformInfoHttpInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoHttpInterface where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoHttpInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TransformInfoHttpInterface
fromHeader_ header = TransformInfoHttpInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TransformInfoHttpInterface header)
    TransformInfoInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getWeblisketSession :: (JavaObjectClass this_) => this_ -> IO (WeblisketSessionInterface.WeblisketSessionInterface)
getWeblisketSession object_ = jmethod object_ "getWeblisketSession" (\() -> (getWeblisketSession_impl (javaCast object_ :: TransformInfoHttpInterface))) ()

getWeblisketSession_super :: (JavaObjectClass this_) => this_ -> IO (WeblisketSessionInterface.WeblisketSessionInterface)
getWeblisketSession_super object_ = (getWeblisketSession_impl (javaCast object_ :: TransformInfoHttpInterface))

getWeblisketSession_impl :: TransformInfoHttpInterface -> IO (WeblisketSessionInterface.WeblisketSessionInterface)
getWeblisketSession_impl this = javaAbstractMethod "getWeblisketSession"


getPageContext :: (JavaObjectClass this_) => this_ -> IO (PageContext.PageContext)
getPageContext object_ = jmethod object_ "getPageContext" (\() -> (getPageContext_impl (javaCast object_ :: TransformInfoHttpInterface))) ()

getPageContext_super :: (JavaObjectClass this_) => this_ -> IO (PageContext.PageContext)
getPageContext_super object_ = (getPageContext_impl (javaCast object_ :: TransformInfoHttpInterface))

getPageContext_impl :: TransformInfoHttpInterface -> IO (PageContext.PageContext)
getPageContext_impl this = javaAbstractMethod "getPageContext"


getPropertiesHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getPropertiesHashMap object_ = jmethod object_ "getPropertiesHashMap" (\() -> (getPropertiesHashMap_impl (javaCast object_ :: TransformInfoHttpInterface))) ()

getPropertiesHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getPropertiesHashMap_super object_ = (getPropertiesHashMap_impl (javaCast object_ :: TransformInfoHttpInterface))

getPropertiesHashMap_impl :: TransformInfoHttpInterface -> IO (HashMap.HashMap)
getPropertiesHashMap_impl this = javaAbstractMethod "getPropertiesHashMap"


