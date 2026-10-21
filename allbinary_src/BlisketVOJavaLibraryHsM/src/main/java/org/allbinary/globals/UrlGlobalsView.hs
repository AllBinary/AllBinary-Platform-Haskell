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
-- package org.allbinary.globals
module UrlGlobalsView where

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
import qualified UrlGlobalsData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data UrlGlobalsView = UrlGlobalsView
    { header_ :: JavaHeader
    }

instance JavaNull UrlGlobalsView where
    javaNull = javaNullRecord "UrlGlobalsView"

instance JavaEquals UrlGlobalsView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UrlGlobalsView where
    (==) = jrecordEquals

instance JavaObjectClass UrlGlobalsView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UrlGlobalsView
newRecord_ = do
    header_ <- newJavaHeader
    let this = UrlGlobalsView header_
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: UrlGlobalsView -> IO ()
initFields_ this = do
    pure ()

new_ :: IO UrlGlobalsView
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UrlGlobalsView -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: UrlGlobalsView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: UrlGlobalsView)) a1

toXmlNode_impl :: UrlGlobalsView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (UrlGlobalsData.wEBAPPPATH) (jio (getWebappPath ((jget ((jget (org.allbinary).globals)).uRLGLOBALS)))))
        node <- (ModDomHelper.createNameValueNodes document (UrlGlobalsData.nAME) hashMap)
        pure (node)


