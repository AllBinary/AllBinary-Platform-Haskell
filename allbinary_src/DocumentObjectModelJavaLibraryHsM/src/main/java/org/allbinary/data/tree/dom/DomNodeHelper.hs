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
module DomNodeHelper where

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
import qualified DomSearchHelper -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

data DomNodeHelper = DomNodeHelper
    { header_ :: JavaHeader
    }

instance JavaNull DomNodeHelper where
    javaNull = javaNullRecord "DomNodeHelper"

instance JavaEquals DomNodeHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DomNodeHelper where
    (==) = jrecordEquals

instance JavaObjectClass DomNodeHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DomNodeHelper
newRecord_ = do
    header_ <- newJavaHeader
    let this = DomNodeHelper header_
    jregisterLevel header_ this
    pure this

initFields_ :: DomNodeHelper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DomNodeHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DomNodeHelper -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getFirstChildElement :: Node.Node -> IO (Node.Node)
getFirstChildElement parentNode = do
        node <- newIORef =<< (Node.getFirstChild parentNode)
        when (((jget node) /= javaNull) && ((jio (Node.getNodeType ((jget node)))) /= Node.eLEMENT_NODE)) $ do
            nodeList <- (Node.getChildNodes parentNode)
            forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
                assignedValue <- (NodeList.item nodeList index)
                jset node (assignedValue)
                when ((jio (Node.getNodeType ((jget node)))) == 1) $ do
                    throwIO JavaBreak
        pure ((jget node))


getTextNodeValue :: Node.Node -> IO (String)
getTextNodeValue node = do
    javaCatchReturn $ do
        nodeTextNode <- (Node.getFirstChild node)
        if (nodeTextNode /= javaNull) then do
            javaReturn =<< (Node.getNodeValue nodeTextNode)
        else do
            javaReturn ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


-- throws Exception
getTextNodeValue_2 :: String -> NodeList.NodeList -> IO (String)
getTextNodeValue_2 nodeName nodeList = do
        node <- (DomSearchHelper.getNode nodeName nodeList)
        (DomNodeHelper.getTextNodeValue node)


getTextNodesValue :: Node.Node -> IO (String)
getTextNodesValue node = do
        stringBuffer <- (StringMaker.new_)
        nodeList <- (Node.getChildNodes node)
        forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
            nodeTextNode <- (NodeList.item nodeList index)
            when ((jio (Node.getNodeType nodeTextNode)) == Node.tEXT_NODE) $ do
                when (nodeTextNode /= javaNull) $ do
                    Control.Monad.void (StringMaker.append stringBuffer (jio (Node.getNodeValue nodeTextNode)))
        (StringMaker.toString stringBuffer)


