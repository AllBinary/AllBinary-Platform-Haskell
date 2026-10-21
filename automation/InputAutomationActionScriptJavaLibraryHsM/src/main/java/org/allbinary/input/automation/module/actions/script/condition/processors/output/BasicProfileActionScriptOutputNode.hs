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
-- package org.allbinary.input.automation.module.actions.script.condition.processors.output
module BasicProfileActionScriptOutputNode where

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
import qualified GenericProfileActionScriptOutputData -- same package or java.lang
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data BasicProfileActionScriptOutputNode = BasicProfileActionScriptOutputNode
    { header_ :: JavaHeader
    }

instance JavaNull BasicProfileActionScriptOutputNode where
    javaNull = javaNullRecord "BasicProfileActionScriptOutputNode"

instance JavaEquals BasicProfileActionScriptOutputNode where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicProfileActionScriptOutputNode where
    (==) = jrecordEquals

instance JavaObjectClass BasicProfileActionScriptOutputNode where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicProfileActionScriptOutputNode
newRecord_ = do
    header_ <- newJavaHeader
    let this = BasicProfileActionScriptOutputNode header_
    jregisterLevel header_ this
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: BasicProfileActionScriptOutputNode -> IO ()
initFields_ this = do
    pure ()

new_1 :: Node.Node -> IO BasicProfileActionScriptOutputNode
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: BasicProfileActionScriptOutputNode -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        actionNode <- (DomSearchHelper.getNode (jget GenericProfileActionScriptOutputData.nAME) (jio (Node.getChildNodes node)))
        pure ()

new_ :: IO BasicProfileActionScriptOutputNode
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicProfileActionScriptOutputNode -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: BasicProfileActionScriptOutputNode))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: BasicProfileActionScriptOutputNode)) a1

toXmlNode_impl :: BasicProfileActionScriptOutputNode -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (jget GenericProfileActionScriptOutputData.nAME))
        pure (node)


