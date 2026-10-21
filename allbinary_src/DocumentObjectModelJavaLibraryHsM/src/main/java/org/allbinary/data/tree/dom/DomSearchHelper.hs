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
module DomSearchHelper where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

data DomSearchHelper = DomSearchHelper
    { header_ :: JavaHeader
    }

instance JavaNull DomSearchHelper where
    javaNull = javaNullRecord "DomSearchHelper"

instance JavaEquals DomSearchHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DomSearchHelper where
    (==) = jrecordEquals

instance JavaObjectClass DomSearchHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DomSearchHelper
newRecord_ = do
    header_ <- newJavaHeader
    let this = DomSearchHelper header_
    jregisterLevel header_ this
    pure this

initFields_ :: DomSearchHelper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DomSearchHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DomSearchHelper -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getNodeNoThrow :: String -> NodeList.NodeList -> IO (Node.Node)
getNodeNoThrow nodeName nodeList = do
    javaCatchReturn $ do
        numberOfNodes <- (NodeList.getLength nodeList)
        forM_ [0 .. numberOfNodes - 1] $ \index -> javaIteration (pure ()) $ do
            node <- (NodeList.item nodeList index)
            when ((jio (Node.compareTo ((jio (Node.getNodeName node))) nodeName)) == 0) $ do
                javaReturn (node)
        pure (javaNull)


-- throws Exception
getNode :: String -> NodeList.NodeList -> IO (Node.Node)
getNode nodeName nodeList = do
    javaCatchReturn $ do
        node <- (DomSearchHelper.getNodeNoThrow nodeName nodeList)
        if (node /= javaNull) then do
            javaReturn (node)
        else do
            javaThrow ((JavaException "Exception" (nodeName ++ " Node Not Found in search")))


-- throws Exception
getChildNodeList :: String -> NodeList.NodeList -> IO (NodeList.NodeList)
getChildNodeList nodeName nodeList = do
        node <- (DomSearchHelper.getNode nodeName nodeList)
        (Node.getChildNodes node)


-- throws Exception
getAllNodes :: String -> NodeList.NodeList -> IO (BasicArrayList.BasicArrayList)
getAllNodes nodeName nodeList = do
    javaCatchReturn $ do
        vector <- (DomSearchHelper.getAllNodesNoThrow nodeName nodeList)
        if (vector == javaNull) then do
            javaThrow ((JavaException "Exception" (nodeName ++ " Node Not Found in search")))
        else do
            javaReturn (vector)


getAllNodesNoThrow :: String -> NodeList.NodeList -> IO (BasicArrayList.BasicArrayList)
getAllNodesNoThrow nodeName nodeList = do
        nodeVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        numberOfNodes <- (NodeList.getLength nodeList)
        forM_ [0 .. numberOfNodes - 1] $ \index -> javaIteration (pure ()) $ do
            node <- (NodeList.item nodeList index)
            when ((jio (Node.compareTo ((jio (Node.getNodeName node))) nodeName)) == 0) $ do
                Control.Monad.void (BasicArrayList.add nodeVector node)
        pure (nodeVector)


