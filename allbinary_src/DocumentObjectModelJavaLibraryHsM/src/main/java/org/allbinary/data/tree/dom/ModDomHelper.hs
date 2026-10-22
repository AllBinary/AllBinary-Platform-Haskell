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
-- package org.allbinary.data.tree.dom
module ModDomHelper where

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
import qualified DomData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified ClassUtil -- org.allbinary.logic.java.anyType.clazz.ClassUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data ModDomHelper = ModDomHelper
    { header_ :: JavaHeader
    }

instance JavaNull ModDomHelper where
    javaNull = javaNullRecord "ModDomHelper"

instance JavaEquals ModDomHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ModDomHelper where
    (==) = jrecordEquals

instance JavaObjectClass ModDomHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ModDomHelper
newRecord_ = do
    header_ <- newJavaHeader
    let this = ModDomHelper header_
    jregisterLevel header_ this
    pure this

initFields_ :: ModDomHelper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ModDomHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ModDomHelper -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
createTextNode :: Document.Document -> String -> String -> IO (Node.Node)
createTextNode document name text = do
        newValueNode <- (Document.createElement document name)
        newValueTextNode <- (Document.createTextNode document text)
        Control.Monad.void (Node.appendChild newValueNode newValueTextNode)
        pure (newValueNode)


-- throws Exception
createValueNode :: Document.Document -> String -> IO (Node.Node)
createValueNode document text = do
        (ModDomHelper.createTextNode document (DomData.vALUE) text)


-- throws Exception
createNameNode :: Document.Document -> String -> IO (Node.Node)
createNameNode document text = do
        (ModDomHelper.createTextNode document (DomData.nAME) text)


-- throws Exception
createIndexNode :: Document.Document -> Int -> IO (Node.Node)
createIndexNode document index = do
        (ModDomHelper.createTextNode document (DomData.iNDEX) (javaToString (Prelude.fromIntegral (index) :: Int)))


-- Java overloads of createNameValueNodes: calls the overload for the types of the arguments
createNameValueNodes :: (JavaObjectClass o4) => Document.Document -> String -> String -> o4 -> IO (Node.Node)
createNameValueNodes a1 a2 a3 a4
    | jisInstanceOf a4 (javaNull :: String) = createNameValueNodes_overload1 a1 a2 a3 (javaCast a4 :: String)
    | jisInstanceOf a4 (javaNull :: BasicArrayList.BasicArrayList) = createNameValueNodes_overload2 a1 a2 a3 (javaCast a4 :: BasicArrayList.BasicArrayList)
    | otherwise = createNameValueNodes_overload2 a1 a2 a3 (javaCast a4 :: BasicArrayList.BasicArrayList)

-- throws Exception
createNameValueNodes_overload1 :: Document.Document -> String -> String -> String -> IO (Node.Node)
createNameValueNodes_overload1 document elementName nameText valueText = do
        newNode <- (Document.createElement document elementName)
        Control.Monad.void (Node.appendChild newNode (jio (ModDomHelper.createNameNode document nameText)))
        Control.Monad.void (Node.appendChild newNode (jio (ModDomHelper.createValueNode document valueText)))
        pure (newNode)


-- Java overloads of createNameValueNodes: calls the overload for the types of the arguments
createNameValueNodes_3 :: (JavaObjectClass o2, JavaObjectClass o3) => Document.Document -> o2 -> o3 -> IO (Node.Node)
createNameValueNodes_3 a1 a2 a3
    | jisInstanceOf a2 (javaNull :: String) && jisInstanceOf a3 (javaNull :: String) = createNameValueNodes_3_overload1 a1 (javaCast a2 :: String) (javaCast a3 :: String)
    | jisInstanceOf a2 (javaNull :: String) && jisInstanceOf a3 (javaNull :: HashMap.HashMap) = createNameValueNodes_3_overload2 a1 (javaCast a2 :: String) (javaCast a3 :: HashMap.HashMap)
    | jisInstanceOf a2 (javaNull :: Node.Node) && jisInstanceOf a3 (javaNull :: HashMap.HashMap) = createNameValueNodes_3_overload3 a1 (javaCast a2 :: Node.Node) (javaCast a3 :: HashMap.HashMap)
    | otherwise = createNameValueNodes_3_overload3 a1 (javaCast a2 :: Node.Node) (javaCast a3 :: HashMap.HashMap)

-- throws Exception
createNameValueNodes_3_overload1 :: Document.Document -> String -> String -> IO (Node.Node)
createNameValueNodes_3_overload1 document elementNameAndNameText valueText = do
        newNode <- (ModDomHelper.createNameValueNodes document elementNameAndNameText elementNameAndNameText valueText)
        pure (newNode)


-- Java overloads of createNameValueIndexNodes: calls the overload for the types of the arguments
createNameValueIndexNodes :: (JavaObjectClass o3, JavaObjectClass o4) => Document.Document -> String -> o3 -> o4 -> IO (Node.Node)
createNameValueIndexNodes a1 a2 a3 a4
    | jisInstanceOf a3 (javaNull :: Int) && jisInstanceOf a4 (javaNull :: String) = createNameValueIndexNodes_overload1 a1 a2 (javaCast a3 :: Int) (javaCast a4 :: String)
    | jisInstanceOf a3 (javaNull :: String) && jisInstanceOf a4 (javaNull :: BasicArrayList.BasicArrayList) = createNameValueIndexNodes_overload2 a1 a2 (javaCast a3 :: String) (javaCast a4 :: BasicArrayList.BasicArrayList)
    | otherwise = createNameValueIndexNodes_overload2 a1 a2 (javaCast a3 :: String) (javaCast a4 :: BasicArrayList.BasicArrayList)

-- throws Exception
createNameValueIndexNodes_overload1 :: Document.Document -> String -> Int -> String -> IO (Node.Node)
createNameValueIndexNodes_overload1 document elementNameAndNameText index valueText = do
        newNode <- (ModDomHelper.createNameValueNodes_3 document elementNameAndNameText valueText)
        Control.Monad.void (Node.appendChild newNode (jio (ModDomHelper.createIndexNode document index)))
        pure (newNode)


-- throws Exception
createNameValueNodes_3_overload2 :: Document.Document -> String -> HashMap.HashMap -> IO (Node.Node)
createNameValueNodes_3_overload2 document rootNode hashMap = do
        node <- (Document.createElement document rootNode)
        (ModDomHelper.createNameValueNodes_3 document node hashMap)


-- throws Exception
createNameValueNodes_3_overload3 :: Document.Document -> Node.Node -> HashMap.HashMap -> IO (Node.Node)
createNameValueNodes_3_overload3 document node hashMap = do
        stringUtil <- (StringUtil.getInstance)
        keySet <- (HashMap.keySet hashMap)
        keyArray <- (Set.toArray keySet)
        let size = (jlength keyArray)
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let objectKey = (jindex keyArray (i))
            let name = (javaCast objectKey :: String)
            let anyType = (javaCast (jio (HashMap.get hashMap objectKey)) :: Any.Any)
            if (anyType == javaNull) then do
                let value = (jget (stringUtil).eMPTY_STRING)
                Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes_3 document name value)))
            else if (javaInstanceOf anyType "String") then do
                value <- (StringUtil.getNonNull stringUtil (javaCast anyType :: String))
                Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes_3 document name value)))
            else if (javaInstanceOf anyType "HashMap") then do
                Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes_3 document name hashMap)))
            else do
                javaThrow ((JavaException "Exception" ("HashMap value is the wrong instance and is: " ++ javaToString (jio (ClassUtil.viewAll anyType (jget ((jio (CommonSeps.getInstance))).nEW_LINE))))))
        pure (node)


-- throws Exception
createNameValueNodes_overload2 :: Document.Document -> String -> String -> BasicArrayList.BasicArrayList -> IO (Node.Node)
createNameValueNodes_overload2 document rootNodeName duplicateNodeName valueVector = do
        stringUtil <- (StringUtil.getInstance)
        node <- (Document.createElement document rootNodeName)
        size <- (BasicArrayList.size valueVector)
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            value <- (StringUtil.getNonNull stringUtil (javaCast (jio (BasicArrayList.get valueVector i)) :: String))
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes_3 document duplicateNodeName value)))
        pure (node)


-- throws Exception
createNameValueIndexNodes_overload2 :: Document.Document -> String -> String -> BasicArrayList.BasicArrayList -> IO (Node.Node)
createNameValueIndexNodes_overload2 document rootNodeName duplicateNodeName valueVector = do
        stringUtil <- (StringUtil.getInstance)
        node <- (Document.createElement document rootNodeName)
        size <- (BasicArrayList.size valueVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            value <- (StringUtil.getNonNull stringUtil (javaCast (jio (BasicArrayList.get valueVector index)) :: String))
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueIndexNodes document duplicateNodeName index value)))
        pure (node)


-- Java overloads of createNodeWithValueNodes: calls the overload for the types of the arguments
createNodeWithValueNodes :: (JavaObjectClass o2) => Document.Document -> o2 -> HashMap.HashMap -> IO (Node.Node)
createNodeWithValueNodes a1 a2 a3
    | jisInstanceOf a2 (javaNull :: String) = createNodeWithValueNodes_overload1 a1 (javaCast a2 :: String) a3
    | jisInstanceOf a2 (javaNull :: Node.Node) = createNodeWithValueNodes_overload2 a1 (javaCast a2 :: Node.Node) a3
    | otherwise = createNodeWithValueNodes_overload2 a1 (javaCast a2 :: Node.Node) a3

-- throws Exception
createNodeWithValueNodes_overload1 :: Document.Document -> String -> HashMap.HashMap -> IO (Node.Node)
createNodeWithValueNodes_overload1 document rootNode hashMap = do
        node <- (Document.createElement document rootNode)
        (ModDomHelper.createNodeWithValueNodes document node hashMap)


-- throws Exception
createNodeWithValueNodes_overload2 :: Document.Document -> Node.Node -> HashMap.HashMap -> IO (Node.Node)
createNodeWithValueNodes_overload2 document node hashMap = do
        stringUtil <- (StringUtil.getInstance)
        keySet <- (HashMap.keySet hashMap)
        keyArray <- (Set.toArray keySet)
        let size = (jlength keyArray)
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let name = (javaCast (jindex keyArray (i)) :: String)
            let anyType = (javaCast (jio (HashMap.get hashMap name)) :: Any.Any)
            value <- (StringUtil.getNonNull stringUtil (javaCast anyType :: String))
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createTextNode document name value)))
        pure (node)


