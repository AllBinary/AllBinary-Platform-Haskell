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
module TransformInfoDomNode where

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
import qualified TransformInfo -- same package or java.lang
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified Attr -- org.w3c.dom.Attr
import qualified NamedNodeMap -- org.w3c.dom.NamedNodeMap
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

data TransformInfoDomNode = TransformInfoDomNode
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , transformInfoInterface :: IORef (TransformInfoInterface.TransformInfoInterface)
    , mappedName :: IORef (String)
    }

instance JavaNull TransformInfoDomNode where
    javaNull = javaNullRecord "TransformInfoDomNode"

instance JavaEquals TransformInfoDomNode where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoDomNode where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoDomNode where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoDomNode
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    transformInfoInterface <- newIORef javaNull
    mappedName <- newIORef ""
    let this = TransformInfoDomNode header_ logUtil transformInfoInterface mappedName
    jregisterLevel header_ this
    jregisterMethod header_ "getTransformInfoInterface" (\() -> getTransformInfoInterface_impl this)
    jregisterMethod header_ "getMappedName" (\() -> getMappedName_impl this)
    jregisterMethod header_ "getReplaceKey" (\() -> getReplaceKey_impl this)
    pure this

initFields_ :: TransformInfoDomNode -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.transformInfoInterface (javaNull)
    jset this.mappedName (javaNull)
    pure ()

new_1 :: Node.Node -> IO TransformInfoDomNode
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: TransformInfoDomNode -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Constructing TransformInfo From TransformInfoDomNode: " ++ javaToString (jio (Node.getNodeName node))) this "TransformInfoDomNode(Node node)")
        transformInfoData <- (TransformInfoData.getInstance)
        attributes <- (Node.getAttributes node)
        let attrNode = (javaCast (jio (NamedNodeMap.getNamedItem attributes (jget (transformInfoData).nAME))) :: Attr.Attr)
        name <- (Attr.getValue attrNode)
        nodeList <- (Node.getChildNodes node)
        if ((jio (NodeList.getLength nodeList)) > 1) then do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Constructing Complete TransformInfo Node For: ")
                Control.Monad.void (StringMaker.append stringBuffer name)
                Control.Monad.void (StringMaker.append stringBuffer " with ")
                Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jio (NodeList.getLength nodeList)))))
                Control.Monad.void (StringMaker.append stringBuffer " children")
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "TransformInfoObjectConfigComponent(Node node)")
            objectFileNameNode <- (DomSearchHelper.getNode (jget (transformInfoData).oBJECTFILENAME) nodeList)
            objectFileName <- (DomNodeHelper.getTextNodeValue objectFileNameNode)
            objectConfigFileNameNode <- (DomSearchHelper.getNode (jget (transformInfoData).oBJECTCONFIGFILENAME) nodeList)
            objectConfigFileName <- (DomNodeHelper.getTextNodeValue objectConfigFileNameNode)
            templateFileNameNode <- (DomSearchHelper.getNode (jget (transformInfoData).tEMPLATEFILENAME) nodeList)
            templateFileName <- (DomNodeHelper.getTextNodeValue templateFileNameNode)
            dataFileNameNode <- (DomSearchHelper.getNode (jget (transformInfoData).dATAFILENAME) nodeList)
            dataFileName <- (DomNodeHelper.getTextNodeValue dataFileNameNode)
            jset (this).transformInfoInterface ((javaCast (jio (TransformInfo.new_5 name objectFileName objectConfigFileName templateFileName dataFileName)) :: TransformInfoInterface.TransformInfoInterface))
        else do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Constructing Partial TransformInfo Node For: ")
                Control.Monad.void (StringMaker.append stringBuffer name)
                Control.Monad.void (StringMaker.append stringBuffer " with ")
                Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jio (NodeList.getLength nodeList)))))
                Control.Monad.void (StringMaker.append stringBuffer " children")
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "TransformInfoObjectConfigComponent(Node node)")
            jset (this).transformInfoInterface ((javaCast (jio (TransformInfo.new_1 name)) :: TransformInfoInterface.TransformInfoInterface))
        let templateAttrNode = (javaCast (jio (NamedNodeMap.getNamedItem attributes (jget (transformInfoData).mAPPED))) :: Attr.Attr)
        if (templateAttrNode /= javaNull) then do
            assignedValue <- (Attr.getValue templateAttrNode)
            jset (this).mappedName (assignedValue)
        else do
            assignedValue <- (TransformInfoInterface.getName ((jio (TransformInfoDomNode.getTransformInfoInterface this))))
            jset (this).mappedName (assignedValue)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: TransformInfoInterface.TransformInfoInterface -> IO TransformInfoDomNode
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: TransformInfoDomNode -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        initFields_ this
        jset (this).transformInfoInterface (transformInfoInterface)
        assignedValue <- (TransformInfoInterface.getName transformInfoInterface)
        jset (this).mappedName (assignedValue)
        pure ()

new_2 :: TransformInfoInterface.TransformInfoInterface -> String -> IO TransformInfoDomNode
new_2 transformInfoInterface mappedName = do
    this <- newRecord_
    init_2 this transformInfoInterface mappedName
    pure this

init_2 :: TransformInfoDomNode -> TransformInfoInterface.TransformInfoInterface -> String -> IO ()
init_2 this transformInfoInterface mappedName = do
        initFields_ this
        jset (this).transformInfoInterface (transformInfoInterface)
        jset (this).mappedName (mappedName)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_2 :: String -> String -> IO TransformInfoDomNode
new_2 name mappedName = do
    this <- newRecord_
    init_2 this name mappedName
    pure this

init_2 :: TransformInfoDomNode -> String -> String -> IO ()
init_2 this name mappedName = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: TransformInfoInterface.TransformInfoInterface) (TransformInfo.new_1 name))
        jset (this).transformInfoInterface (assignedValue)
        jset (this).mappedName (mappedName)
        pure ()


getTransformInfoInterface :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface object_ = jmethod object_ "getTransformInfoInterface" (\() -> (getTransformInfoInterface_impl (javaCast object_ :: TransformInfoDomNode))) ()

getTransformInfoInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_super object_ = (getTransformInfoInterface_impl (javaCast object_ :: TransformInfoDomNode))

getTransformInfoInterface_impl :: TransformInfoDomNode -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_impl this = do
        pure ((jget (this).transformInfoInterface))


getMappedName :: (JavaObjectClass this_) => this_ -> IO (String)
getMappedName object_ = jmethod object_ "getMappedName" (\() -> (getMappedName_impl (javaCast object_ :: TransformInfoDomNode))) ()

getMappedName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMappedName_super object_ = (getMappedName_impl (javaCast object_ :: TransformInfoDomNode))

getMappedName_impl :: TransformInfoDomNode -> IO (String)
getMappedName_impl this = do
        pure ((jget (this).mappedName))


getReplaceKey :: (JavaObjectClass this_) => this_ -> IO (String)
getReplaceKey object_ = jmethod object_ "getReplaceKey" (\() -> (getReplaceKey_impl (javaCast object_ :: TransformInfoDomNode))) ()

getReplaceKey_super :: (JavaObjectClass this_) => this_ -> IO (String)
getReplaceKey_super object_ = (getReplaceKey_impl (javaCast object_ :: TransformInfoDomNode))

getReplaceKey_impl :: TransformInfoDomNode -> IO (String)
getReplaceKey_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "<transform:component name=\"")
        Control.Monad.void (StringMaker.append stringBuffer "body")
        Control.Monad.void (StringMaker.append stringBuffer "\"/>")
        key <- (StringMaker.toString stringBuffer)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Component Key: " ++ key) this "getReplaceKey()")
        pure (key)


