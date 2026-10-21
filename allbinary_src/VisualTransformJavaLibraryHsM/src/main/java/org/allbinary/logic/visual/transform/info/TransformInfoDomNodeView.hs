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
module TransformInfoDomNodeView (module TransformInfoDomNodeView, module TransformInfoDomNode) where

import TransformInfoDomNode hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toXmlNode, toXmlNode_super, toXmlNode_impl)
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
import qualified Attr -- org.w3c.dom.Attr
import qualified Document -- org.w3c.dom.Document
import qualified NamedNodeMap -- org.w3c.dom.NamedNodeMap
import qualified Node -- org.w3c.dom.Node
import qualified TransformInfoDomNode

-- implements DomNodeInterface
data TransformInfoDomNodeView = TransformInfoDomNodeView
    { header_ :: JavaHeader
    , base :: TransformInfoDomNode.TransformInfoDomNode
    }

instance JavaNull TransformInfoDomNodeView where
    javaNull = javaNullRecord "TransformInfoDomNodeView"

instance JavaEquals TransformInfoDomNodeView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoDomNodeView where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoDomNodeView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TransformInfoDomNodeView
newRecord_ = do
    base <- TransformInfoDomNode.newRecord_
    let header_ = base.header_
    let this = TransformInfoDomNodeView header_ base
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: TransformInfoDomNodeView -> IO ()
initFields_ this = do
    pure ()

new_2 :: TransformInfoInterface.TransformInfoInterface -> String -> IO TransformInfoDomNodeView
new_2 transformInfoInterface mapping = do
    this <- newRecord_
    init_2 this transformInfoInterface mapping
    pure this

init_2 :: TransformInfoDomNodeView -> TransformInfoInterface.TransformInfoInterface -> String -> IO ()
init_2 this transformInfoInterface mapping = do
        TransformInfoDomNode.init_2 this.base (transformInfoInterface) (mapping)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO TransformInfoDomNodeView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: TransformInfoDomNodeView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        TransformInfoDomNode.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_2 :: String -> String -> IO TransformInfoDomNodeView
new_2 name mappedName = do
    this <- newRecord_
    init_2 this name mappedName
    pure this

init_2 :: TransformInfoDomNodeView -> String -> String -> IO ()
init_2 this name mappedName = do
        TransformInfoDomNode.init_2 this.base (name) (mappedName)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: String -> IO TransformInfoDomNodeView
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: TransformInfoDomNodeView -> String -> IO ()
init_1 this name = do
        TransformInfoDomNode.init_2 this.base (name) (javaNull)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: TransformInfoDomNodeView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: TransformInfoDomNodeView)) a1

toXmlNode_impl :: TransformInfoDomNodeView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        transformInfoData <- (TransformInfoData.getInstance)
        subViewNode <- (Document.createElement document (jget (transformInfoData).nAME))
        viewNameAttr <- (Document.createAttribute document (jget (transformInfoData).nAME))
        Control.Monad.void (Attr.setValue viewNameAttr (jio (TransformInfoInterface.getName ((jio (TransformInfoDomNode.getTransformInfoInterface this))))))
        componentNodeAttributes <- (Node.getAttributes subViewNode)
        Control.Monad.void (NamedNodeMap.setNamedItem componentNodeAttributes viewNameAttr)
        when ((jio (TransformInfoDomNode.getMappedName this)) /= javaNull) $ do
            mappedNameAttr <- (Document.createAttribute document (jget (transformInfoData).mAPPED))
            Control.Monad.void (Attr.setValue mappedNameAttr (jio (TransformInfoDomNode.getMappedName this)))
            Control.Monad.void (NamedNodeMap.setNamedItem componentNodeAttributes mappedNameAttr)
        pure (subViewNode)


