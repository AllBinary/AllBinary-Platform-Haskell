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
module BasicProfileActionScriptProcessor (module BasicProfileActionScriptProcessor, module ProfileActionScriptItem) where

import ProfileActionScriptItem hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, actionPerformed, actionPerformed_super, actionPerformed_impl, toXmlNode, toXmlNode_super, toXmlNode_impl)
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
import qualified ActionEvent -- java.awt.event.ActionEvent
import qualified JTreeInterfaceFactory -- org.allbinary.input.automation.actions.script.JTreeInterfaceFactory
import qualified ProfileActionScriptItem -- org.allbinary.input.automation.actions.script.ProfileActionScriptItem
import qualified ProfileActionScriptConditionInterface -- org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified ProfileActionScriptProcessorInterface

-- implements ProfileActionScriptProcessorInterface
data BasicProfileActionScriptProcessor = BasicProfileActionScriptProcessor
    { header_ :: JavaHeader
    , base :: ProfileActionScriptItem.ProfileActionScriptItem
    }

instance JavaNull BasicProfileActionScriptProcessor where
    javaNull = javaNullRecord "BasicProfileActionScriptProcessor"

instance JavaEquals BasicProfileActionScriptProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicProfileActionScriptProcessor where
    (==) = jrecordEquals

instance JavaObjectClass BasicProfileActionScriptProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicProfileActionScriptProcessor
newRecord_ = do
    base <- ProfileActionScriptItem.newRecord_
    let header_ = base.header_
    let this = BasicProfileActionScriptProcessor header_ base
    jregisterLevel header_ this
    ProfileActionScriptProcessorInterface.registerInterface_ header_
    jregisterMethod header_ "actionPerformed" (\() -> actionPerformed_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: BasicProfileActionScriptProcessor -> IO ()
initFields_ this = do
    pure ()

new_2 :: String -> Node.Node -> IO BasicProfileActionScriptProcessor
new_2 label node = do
    this <- newRecord_
    init_2 this label node
    pure this

init_2 :: BasicProfileActionScriptProcessor -> String -> Node.Node -> IO ()
init_2 this label node = do
        ProfileActionScriptItem.init_2 this.base (label) (node)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_1 :: String -> IO BasicProfileActionScriptProcessor
new_1 label = do
    this <- newRecord_
    init_1 this label
    pure this

init_1 :: BasicProfileActionScriptProcessor -> String -> IO ()
init_1 this label = do
        ProfileActionScriptItem.init_1 this.base (label)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


actionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
actionPerformed object_ a1 = jmethod object_ "actionPerformed" (\() -> (actionPerformed_impl (javaCast object_ :: BasicProfileActionScriptProcessor))) () a1

actionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
actionPerformed_super object_ a1 = (actionPerformed_impl (javaCast object_ :: BasicProfileActionScriptProcessor)) a1

actionPerformed_impl :: BasicProfileActionScriptProcessor -> ActionEvent.ActionEvent -> IO (())
actionPerformed_impl this actionEvent = do
        Control.Monad.void (ProfileActionScriptItem.actionPerformed_super this.base actionEvent)
        when ((jio (ActionEvent.compareTo ((jio (ActionEvent.getActionCommand actionEvent))) dELETE)) == 0) $ do
            when (javaInstanceOf (jio (ProfileActionScriptItem.getParent this)) "ProfileActionScriptConditionInterface") $ do
                let profileActionScriptConditionInterface = (javaCast (jio (ProfileActionScriptItem.getParent this)) :: ProfileActionScriptConditionInterface.ProfileActionScriptConditionInterface)
                Control.Monad.void (ProfileActionScriptConditionInterface.removeProcessor profileActionScriptConditionInterface (javaCast this :: ProfileActionScriptProcessorInterface.ProfileActionScriptProcessorInterface))
                Control.Monad.void (JTreeInterface.updateJTree ((jio (JTreeInterfaceFactory.getJTreeInterface ((jio (JTreeInterfaceFactory.getInstance)))))))
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: BasicProfileActionScriptProcessor))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: BasicProfileActionScriptProcessor)) a1

toXmlNode_impl :: BasicProfileActionScriptProcessor -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (jget GenericProfileActionScriptProcessorData.nAME))
        pure (node)


