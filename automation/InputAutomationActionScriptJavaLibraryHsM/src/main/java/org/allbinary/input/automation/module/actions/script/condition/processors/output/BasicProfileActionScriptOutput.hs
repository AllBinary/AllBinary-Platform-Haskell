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
module BasicProfileActionScriptOutput (module BasicProfileActionScriptOutput, module BasicProfileActionScriptProcessor) where

import BasicProfileActionScriptProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toXmlNode, toXmlNode_super, toXmlNode_impl)
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
import qualified BasicProfileActionScriptProcessor -- org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified ProfileActionScriptOutputInterface

-- implements ProfileActionScriptOutputInterface
data BasicProfileActionScriptOutput = BasicProfileActionScriptOutput
    { header_ :: JavaHeader
    , base :: BasicProfileActionScriptProcessor.BasicProfileActionScriptProcessor
    }

instance JavaNull BasicProfileActionScriptOutput where
    javaNull = javaNullRecord "BasicProfileActionScriptOutput"

instance JavaEquals BasicProfileActionScriptOutput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicProfileActionScriptOutput where
    (==) = jrecordEquals

instance JavaObjectClass BasicProfileActionScriptOutput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicProfileActionScriptOutput
newRecord_ = do
    base <- BasicProfileActionScriptProcessor.newRecord_
    let header_ = base.header_
    let this = BasicProfileActionScriptOutput header_ base
    jregisterLevel header_ this
    ProfileActionScriptOutputInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: BasicProfileActionScriptOutput -> IO ()
initFields_ this = do
    pure ()

new_2 :: String -> Node.Node -> IO BasicProfileActionScriptOutput
new_2 label node = do
    this <- newRecord_
    init_2 this label node
    pure this

init_2 :: BasicProfileActionScriptOutput -> String -> Node.Node -> IO ()
init_2 this label node = do
        BasicProfileActionScriptProcessor.init_2 this.base (label) (node)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_1 :: String -> IO BasicProfileActionScriptOutput
new_1 label = do
    this <- newRecord_
    init_1 this label
    pure this

init_1 :: BasicProfileActionScriptOutput -> String -> IO ()
init_1 this label = do
        BasicProfileActionScriptProcessor.init_1 this.base (label)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: BasicProfileActionScriptOutput))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: BasicProfileActionScriptOutput)) a1

toXmlNode_impl :: BasicProfileActionScriptOutput -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (jget GenericProfileActionScriptOutputData.nAME))
        pure (node)


