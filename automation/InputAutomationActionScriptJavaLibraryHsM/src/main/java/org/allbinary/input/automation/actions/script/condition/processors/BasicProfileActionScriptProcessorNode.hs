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
-- package org.allbinary.input.automation.actions.script.condition.processors
module BasicProfileActionScriptProcessorNode where

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
import qualified GenericProfileActionScriptProcessorData -- same package or java.lang
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data BasicProfileActionScriptProcessorNode = BasicProfileActionScriptProcessorNode
    { header_ :: JavaHeader
    }

instance JavaNull BasicProfileActionScriptProcessorNode where
    javaNull = javaNullRecord "BasicProfileActionScriptProcessorNode"

instance JavaEquals BasicProfileActionScriptProcessorNode where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicProfileActionScriptProcessorNode where
    (==) = jrecordEquals

instance JavaObjectClass BasicProfileActionScriptProcessorNode where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicProfileActionScriptProcessorNode
newRecord_ = do
    header_ <- newJavaHeader
    let this = BasicProfileActionScriptProcessorNode header_
    jregisterLevel header_ this
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: BasicProfileActionScriptProcessorNode -> IO ()
initFields_ this = do
    pure ()

new_1 :: Node.Node -> IO BasicProfileActionScriptProcessorNode
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: BasicProfileActionScriptProcessorNode -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        actionNode <- (DomSearchHelper.getNode (jget GenericProfileActionScriptProcessorData.nAME) (jio (Node.getChildNodes node)))
        pure ()

new_ :: IO BasicProfileActionScriptProcessorNode
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicProfileActionScriptProcessorNode -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: BasicProfileActionScriptProcessorNode))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: BasicProfileActionScriptProcessorNode)) a1

toXmlNode_impl :: BasicProfileActionScriptProcessorNode -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (jget GenericProfileActionScriptProcessorData.nAME))
        pure (node)


