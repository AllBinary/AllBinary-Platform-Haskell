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
module TransformInfoInterfaceView where

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
import qualified TransformInfoInterface -- same package or java.lang
import qualified TransformInfoData -- same package or java.lang
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data TransformInfoInterfaceView = TransformInfoInterfaceView
    { header_ :: JavaHeader
    , transformInfoInterface :: IORef (TransformInfoInterface.TransformInfoInterface)
    }

instance JavaNull TransformInfoInterfaceView where
    javaNull = javaNullRecord "TransformInfoInterfaceView"

instance JavaEquals TransformInfoInterfaceView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoInterfaceView where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoInterfaceView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoInterfaceView
newRecord_ = do
    header_ <- newJavaHeader
    transformInfoInterface <- newIORef javaNull
    let this = TransformInfoInterfaceView header_ transformInfoInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: TransformInfoInterfaceView -> IO ()
initFields_ this = do
    jset this.transformInfoInterface (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO TransformInfoInterfaceView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: TransformInfoInterfaceView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        initFields_ this
        jset (this).transformInfoInterface (transformInfoInterface)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: TransformInfoInterfaceView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: TransformInfoInterfaceView)) a1

toXmlNode_impl :: TransformInfoInterfaceView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        (ModDomHelper.createNameValueNodes_3 document (jget ((jio (TransformInfoData.getInstance))).nAME) (jio (TransformInfoInterface.toHashMap ((jget (this).transformInfoInterface)))))


