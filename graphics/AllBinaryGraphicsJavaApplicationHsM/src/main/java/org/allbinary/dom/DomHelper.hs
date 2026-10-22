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
-- package org.allbinary.dom
module DomHelper where

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
import qualified ByteArrayOutputStream -- java.io.ByteArrayOutputStream
import qualified File -- java.io.File
import qualified DocumentBuilder -- javax.xml.parsers.DocumentBuilder
import qualified DocumentBuilderFactory -- javax.xml.parsers.DocumentBuilderFactory
import qualified Transformer -- javax.xml.transform.Transformer
import qualified TransformerFactory -- javax.xml.transform.TransformerFactory
import qualified DOMSource -- javax.xml.transform.dom.DOMSource
import qualified StreamResult -- javax.xml.transform.stream.StreamResult
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

data DomHelper = DomHelper
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull DomHelper where
    javaNull = javaNullRecord "DomHelper"

instance JavaEquals DomHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DomHelper where
    (==) = jrecordEquals

instance JavaObjectClass DomHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO DomHelper
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = DomHelper header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "createDocument" (\() -> createDocument_impl this)
    jregisterMethod header_ "createDocument_1" (\() -> createDocument_1_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "save" (\() -> save_impl this)
    jregisterMethod header_ "getChildNodeList" (\() -> getChildNodeList_impl this)
    jregisterMethod header_ "getChildrenWithoutTextNodes" (\() -> getChildrenWithoutTextNodes_impl this)
    jregisterMethod header_ "getWithoutTextNodes" (\() -> getWithoutTextNodes_impl this)
    jregisterMethod header_ "searchNodeList_overload1" (\() -> searchNodeList_overload1_impl this)
    jregisterMethod header_ "searchNodeList_overload2" (\() -> searchNodeList_overload2_impl this)
    pure this

initFields_ :: DomHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (DomHelper)
getInstance = do
        pure (DomHelper.instance_)

new_ :: IO DomHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DomHelper -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


createDocument :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
createDocument object_ = jmethod object_ "createDocument" (\() -> (createDocument_impl (javaCast object_ :: DomHelper))) ()

createDocument_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
createDocument_super object_ = (createDocument_impl (javaCast object_ :: DomHelper))

createDocument_impl :: DomHelper -> IO (Document.Document)
createDocument_impl this = do
        handle (\(e :: JavaException) -> do
            pure (javaNull)
            ) $ do
            factory <- (DocumentBuilderFactory.newInstance)
            builder <- (DocumentBuilderFactory.newDocumentBuilder factory)
            document <- (DocumentBuilder.newDocument builder)
            pure (document)


-- throws Exception
createDocument_1 :: (JavaObjectClass this_) => this_ -> File.File -> IO (Document.Document)
createDocument_1 object_ a1 = jmethod object_ "createDocument_1" (\() -> (createDocument_1_impl (javaCast object_ :: DomHelper))) () a1

createDocument_1_super :: (JavaObjectClass this_) => this_ -> File.File -> IO (Document.Document)
createDocument_1_super object_ a1 = (createDocument_1_impl (javaCast object_ :: DomHelper)) a1

createDocument_1_impl :: DomHelper -> File.File -> IO (Document.Document)
createDocument_1_impl this xmlFile = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            factory <- (DocumentBuilderFactory.newInstance)
            builder <- (DocumentBuilderFactory.newDocumentBuilder factory)
            document <- (DocumentBuilder.parse builder xmlFile)
            pure (document)


-- throws Exception
toString :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (String)
toString object_ a1 = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: DomHelper))) () a1

toString_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (String)
toString_super object_ a1 = (toString_impl (javaCast object_ :: DomHelper)) a1

toString_impl :: DomHelper -> Document.Document -> IO (String)
toString_impl this document = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            domSource <- (DOMSource.new_1 document)
            byteArrayOutputStream <- (ByteArrayOutputStream.new_)
            streamResult <- (StreamResult.new_1 byteArrayOutputStream)
            copyTransformerFactory <- (TransformerFactory.newInstance)
            copyTransformer <- (TransformerFactory.newTransformer copyTransformerFactory)
            Control.Monad.void (Transformer.transform copyTransformer domSource streamResult)
            (ByteArrayOutputStream.toString byteArrayOutputStream)


-- throws Exception
save :: (JavaObjectClass this_) => this_ -> File.File -> Document.Document -> IO (())
save object_ a1 a2 = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: DomHelper))) () a1 a2

save_super :: (JavaObjectClass this_) => this_ -> File.File -> Document.Document -> IO (())
save_super object_ a1 a2 = (save_impl (javaCast object_ :: DomHelper)) a1 a2

save_impl :: DomHelper -> File.File -> Document.Document -> IO (())
save_impl this file document = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            copyTransformerFactory <- (TransformerFactory.newInstance)
            copyTransformer <- (TransformerFactory.newTransformer copyTransformerFactory)
            domSource <- (DOMSource.new_1 document)
            Control.Monad.void (File.createNewFile file)
            streamResult <- (StreamResult.new_1 file)
            Control.Monad.void (Transformer.transform copyTransformer domSource streamResult)
        pure ()


-- throws Exception
getChildNodeList :: (JavaObjectClass this_) => this_ -> String -> NodeList.NodeList -> IO (NodeList.NodeList)
getChildNodeList object_ a1 a2 = jmethod object_ "getChildNodeList" (\() -> (getChildNodeList_impl (javaCast object_ :: DomHelper))) () a1 a2

getChildNodeList_super :: (JavaObjectClass this_) => this_ -> String -> NodeList.NodeList -> IO (NodeList.NodeList)
getChildNodeList_super object_ a1 a2 = (getChildNodeList_impl (javaCast object_ :: DomHelper)) a1 a2

getChildNodeList_impl :: DomHelper -> String -> NodeList.NodeList -> IO (NodeList.NodeList)
getChildNodeList_impl this nodeName nodeList = do
    javaCatchReturn $ do
        numberOfNodes <- (NodeList.getLength nodeList)
        forM_ [0 .. numberOfNodes - 1] $ \index -> javaIteration (pure ()) $ do
            node <- (NodeList.item nodeList index)
            when ((jio (Node.compareTo ((jio (Node.getNodeName node))) nodeName)) == 0) $ do
                javaReturn =<< (Node.getChildNodes node)
        javaThrow ((JavaException "Exception" (nodeName ++ " Node Not Found")))


-- throws Exception
getChildrenWithoutTextNodes :: (JavaObjectClass this_) => this_ -> String -> NodeList.NodeList -> IO (BasicArrayList.BasicArrayList)
getChildrenWithoutTextNodes object_ a1 a2 = jmethod object_ "getChildrenWithoutTextNodes" (\() -> (getChildrenWithoutTextNodes_impl (javaCast object_ :: DomHelper))) () a1 a2

getChildrenWithoutTextNodes_super :: (JavaObjectClass this_) => this_ -> String -> NodeList.NodeList -> IO (BasicArrayList.BasicArrayList)
getChildrenWithoutTextNodes_super object_ a1 a2 = (getChildrenWithoutTextNodes_impl (javaCast object_ :: DomHelper)) a1 a2

getChildrenWithoutTextNodes_impl :: DomHelper -> String -> NodeList.NodeList -> IO (BasicArrayList.BasicArrayList)
getChildrenWithoutTextNodes_impl this nodeName nodeList = do
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        childNodeList <- (DomHelper.getChildNodeList this nodeName nodeList)
        numberOfChildren <- (NodeList.getLength childNodeList)
        forM_ [0 .. numberOfChildren - 1] $ \index -> javaIteration (pure ()) $ do
            node <- (NodeList.item childNodeList index)
            when ((jio (Node.getNodeType node)) /= Node.tEXT_NODE) $ do
                Control.Monad.void (BasicArrayList.add list node)
        pure (list)


-- throws Exception
getWithoutTextNodes :: (JavaObjectClass this_) => this_ -> NodeList.NodeList -> IO (BasicArrayList.BasicArrayList)
getWithoutTextNodes object_ a1 = jmethod object_ "getWithoutTextNodes" (\() -> (getWithoutTextNodes_impl (javaCast object_ :: DomHelper))) () a1

getWithoutTextNodes_super :: (JavaObjectClass this_) => this_ -> NodeList.NodeList -> IO (BasicArrayList.BasicArrayList)
getWithoutTextNodes_super object_ a1 = (getWithoutTextNodes_impl (javaCast object_ :: DomHelper)) a1

getWithoutTextNodes_impl :: DomHelper -> NodeList.NodeList -> IO (BasicArrayList.BasicArrayList)
getWithoutTextNodes_impl this nodeList = do
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        numberOfChildren <- (NodeList.getLength nodeList)
        forM_ [0 .. numberOfChildren - 1] $ \index -> javaIteration (pure ()) $ do
            node <- (NodeList.item nodeList index)
            when ((jio (Node.getNodeType node)) /= Node.tEXT_NODE) $ do
                Control.Monad.void (BasicArrayList.add list node)
        pure (list)


-- Java overloads of searchNodeList: calls the overload for the types of the arguments
searchNodeList :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> IO (Node.Node)
searchNodeList this a1 a2
    | jisInstanceOf a2 (javaNull :: NodeList.NodeList) = searchNodeList_overload1 this a1 (javaCast a2 :: NodeList.NodeList)
    | jisInstanceOf a2 (javaNull :: BasicArrayList.BasicArrayList) = searchNodeList_overload2 this a1 (javaCast a2 :: BasicArrayList.BasicArrayList)
    | otherwise = searchNodeList_overload2 this a1 (javaCast a2 :: BasicArrayList.BasicArrayList)

-- throws Exception
searchNodeList_overload1 :: (JavaObjectClass this_) => this_ -> String -> NodeList.NodeList -> IO (Node.Node)
searchNodeList_overload1 object_ a1 a2 = jmethod object_ "searchNodeList_overload1" (\() -> (searchNodeList_overload1_impl (javaCast object_ :: DomHelper))) () a1 a2

searchNodeList_overload1_super :: (JavaObjectClass this_) => this_ -> String -> NodeList.NodeList -> IO (Node.Node)
searchNodeList_overload1_super object_ a1 a2 = (searchNodeList_overload1_impl (javaCast object_ :: DomHelper)) a1 a2

searchNodeList_overload1_impl :: DomHelper -> String -> NodeList.NodeList -> IO (Node.Node)
searchNodeList_overload1_impl this nodeName nodeList = do
    javaCatchReturn $ do
        numberOfNodes <- (NodeList.getLength nodeList)
        forM_ [0 .. numberOfNodes - 1] $ \index -> javaIteration (pure ()) $ do
            node <- (NodeList.item nodeList index)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("NodeName: " ++ javaToString (jio (Node.getNodeName node))) this "searchNodeList")
            when ((jio (Node.compareTo ((jio (Node.getNodeName node))) nodeName)) == 0) $ do
                javaReturn (node)
        javaThrow ((JavaException "Exception" (nodeName ++ " Node Not Found in search")))


-- throws Exception
searchNodeList_overload2 :: (JavaObjectClass this_) => this_ -> String -> BasicArrayList.BasicArrayList -> IO (Node.Node)
searchNodeList_overload2 object_ a1 a2 = jmethod object_ "searchNodeList_overload2" (\() -> (searchNodeList_overload2_impl (javaCast object_ :: DomHelper))) () a1 a2

searchNodeList_overload2_super :: (JavaObjectClass this_) => this_ -> String -> BasicArrayList.BasicArrayList -> IO (Node.Node)
searchNodeList_overload2_super object_ a1 a2 = (searchNodeList_overload2_impl (javaCast object_ :: DomHelper)) a1 a2

searchNodeList_overload2_impl :: DomHelper -> String -> BasicArrayList.BasicArrayList -> IO (Node.Node)
searchNodeList_overload2_impl this nodeName nodeList = do
    javaCatchReturn $ do
        numberOfNodes <- (BasicArrayList.size nodeList)
        forM_ [0 .. numberOfNodes - 1] $ \index -> javaIteration (pure ()) $ do
            let node = (javaCast (jio (BasicArrayList.get nodeList index)) :: Node.Node)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("NodeName: " ++ javaToString (jio (Node.getNodeName node))) this "searchNodeList")
            when ((jio (Node.compareTo ((jio (Node.getNodeName node))) nodeName)) == 0) $ do
                javaReturn (node)
        javaThrow ((JavaException "Exception" (nodeName ++ " Node Not Found in search")))


