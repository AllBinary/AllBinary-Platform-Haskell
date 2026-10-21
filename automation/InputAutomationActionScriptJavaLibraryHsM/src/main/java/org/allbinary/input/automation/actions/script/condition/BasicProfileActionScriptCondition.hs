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
-- package org.allbinary.input.automation.actions.script.condition
module BasicProfileActionScriptCondition (module BasicProfileActionScriptCondition, module ProfileActionScriptItem) where

import ProfileActionScriptItem hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addProcessorNodes, addProcessorNodes_super, addProcessorNodes_impl, init, init_super, init_impl, getConditionJPopupMenu, getConditionJPopupMenu_super, getConditionJPopupMenu_impl, getInputJPopupMenu, getInputJPopupMenu_super, getInputJPopupMenu_impl, getOutputJPopupMenu, getOutputJPopupMenu_super, getOutputJPopupMenu_impl, addProcessor, addProcessor_super, addProcessor_impl, removeProcessor, removeProcessor_super, removeProcessor_impl, removeCondition, removeCondition_super, removeCondition_impl, addCondition, addCondition_super, addCondition_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, getProfileActionConditionInterfaceVector, getProfileActionConditionInterfaceVector_super, getProfileActionConditionInterfaceVector_impl, setProfileActionConditionInterfaceVector, setProfileActionConditionInterfaceVector_super, setProfileActionConditionInterfaceVector_impl, actionPerformed, actionPerformed_super, actionPerformed_impl, getProfileActionProcessorInterfaceVector, getProfileActionProcessorInterfaceVector_super, getProfileActionProcessorInterfaceVector_impl, setProfileActionProcessorInterfaceVector, setProfileActionProcessorInterfaceVector_super, setProfileActionProcessorInterfaceVector_impl, updateTree, updateTree_super, updateTree_impl, shouldProcess, shouldProcess_super, shouldProcess_impl, process, process_super, process_impl, logUtil, profileActionProcessorInterfaceVector, profileActionConditionInterfaceVector)
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
import qualified GenericProfileActionScriptConditionData -- same package or java.lang
import qualified ProfileActionScriptConditionFactory -- same package or java.lang
import qualified JMenu -- same package or java.lang
import qualified JMenuItem -- same package or java.lang
import qualified TimeIntervalActionScriptCondition -- same package or java.lang
import qualified AlwaysActionScriptCondition -- same package or java.lang
import qualified ColorAtActionScriptCondition -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified ActionEvent -- java.awt.event.ActionEvent
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified TreePath -- javax.swing.tree.TreePath
import qualified JTreeInterfaceFactory -- org.allbinary.input.automation.actions.script.JTreeInterfaceFactory
import qualified ProfileActionScriptItem -- org.allbinary.input.automation.actions.script.ProfileActionScriptItem
import qualified ProfileActionScriptNodeInterface -- org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface
import qualified ProfileActionScriptProcessorInterface -- org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface
import qualified GenericProfileActionScriptInputData -- org.allbinary.input.automation.actions.script.condition.processors.input.GenericProfileActionScriptInputData
import qualified KeyboardActionScriptInput -- org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput
import qualified MouseActionScriptInput -- org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput
import qualified ProfileActionScriptInputFactory -- org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputFactory
import qualified GenericProfileActionScriptOutputData -- org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData
import qualified ImageActionScriptOutput -- org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput
import qualified ProfileActionScriptOutputFactory -- org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList
-- import javax.swing.*
import qualified ProfileActionScriptConditionInterface

-- implements ProfileActionScriptConditionInterface
data BasicProfileActionScriptCondition = BasicProfileActionScriptCondition
    { header_ :: JavaHeader
    , base :: ProfileActionScriptItem.ProfileActionScriptItem
    , logUtil :: IORef (LogUtil.LogUtil)
    , profileActionProcessorInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    , profileActionConditionInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull BasicProfileActionScriptCondition where
    javaNull = javaNullRecord "BasicProfileActionScriptCondition"

instance JavaEquals BasicProfileActionScriptCondition where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicProfileActionScriptCondition where
    (==) = jrecordEquals

instance JavaObjectClass BasicProfileActionScriptCondition where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicProfileActionScriptCondition
newRecord_ = do
    base <- ProfileActionScriptItem.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    profileActionProcessorInterfaceVector <- newIORef javaNull
    profileActionConditionInterfaceVector <- newIORef javaNull
    let this = BasicProfileActionScriptCondition header_ base logUtil profileActionProcessorInterfaceVector profileActionConditionInterfaceVector
    jregisterLevel header_ this
    ProfileActionScriptConditionInterface.registerInterface_ header_
    jregisterMethod header_ "addProcessorNodes" (\() -> addProcessorNodes_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getConditionJPopupMenu" (\() -> getConditionJPopupMenu_impl this)
    jregisterMethod header_ "getInputJPopupMenu" (\() -> getInputJPopupMenu_impl this)
    jregisterMethod header_ "getOutputJPopupMenu" (\() -> getOutputJPopupMenu_impl this)
    jregisterMethod header_ "addProcessor" (\() -> addProcessor_impl this)
    jregisterMethod header_ "removeProcessor" (\() -> removeProcessor_impl this)
    jregisterMethod header_ "removeCondition" (\() -> removeCondition_impl this)
    jregisterMethod header_ "addCondition" (\() -> addCondition_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "getProfileActionConditionInterfaceVector" (\() -> getProfileActionConditionInterfaceVector_impl this)
    jregisterMethod header_ "setProfileActionConditionInterfaceVector" (\() -> setProfileActionConditionInterfaceVector_impl this)
    jregisterMethod header_ "actionPerformed" (\() -> actionPerformed_impl this)
    jregisterMethod header_ "getProfileActionProcessorInterfaceVector" (\() -> getProfileActionProcessorInterfaceVector_impl this)
    jregisterMethod header_ "setProfileActionProcessorInterfaceVector" (\() -> setProfileActionProcessorInterfaceVector_impl this)
    jregisterMethod header_ "updateTree" (\() -> updateTree_impl this)
    jregisterMethod header_ "shouldProcess" (\() -> shouldProcess_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: BasicProfileActionScriptCondition -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.profileActionProcessorInterfaceVector (javaNull)
    jset this.profileActionConditionInterfaceVector (javaNull)
    pure ()

new_2 :: String -> Node.Node -> IO BasicProfileActionScriptCondition
new_2 label node = do
    this <- newRecord_
    init_2 this label node
    pure this

init_2 :: BasicProfileActionScriptCondition -> String -> Node.Node -> IO ()
init_2 this label node = do
        ProfileActionScriptItem.init_2 this.base (label) (node)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (BasicProfileActionScriptCondition.init this)
        nodeList <- (Node.getChildNodes node)
        forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
            actionItemNode <- (NodeList.item nodeList index)
            when ((jio (Node.getNodeType actionItemNode)) == Node.eLEMENT_NODE) $ do
                if ((jio (Node.compareTo ((jio (Node.getNodeName actionItemNode))) (jget GenericProfileActionScriptConditionData.nAME))) == 0) then do
                    Control.Monad.void (BasicProfileActionScriptCondition.addCondition this (jio (ProfileActionScriptConditionFactory.getInstance actionItemNode)))
                else if ((jio (Node.compareTo ((jio (Node.getNodeName actionItemNode))) (jget GenericProfileActionScriptInputData.nAME))) == 0) then do
                    Control.Monad.void (BasicProfileActionScriptCondition.addProcessor this (jio (ProfileActionScriptInputFactory.getInstance actionItemNode)))
                else when ((jio (Node.compareTo ((jio (Node.getNodeName actionItemNode))) (jget GenericProfileActionScriptOutputData.nAME))) == 0) $ do
                    Control.Monad.void (BasicProfileActionScriptCondition.addProcessor this (jio (ProfileActionScriptOutputFactory.getInstance actionItemNode)))
        pure ()


-- throws Exception
addProcessorNodes :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (())
addProcessorNodes object_ a1 = jmethod object_ "addProcessorNodes" (\() -> (addProcessorNodes_impl (javaCast object_ :: BasicProfileActionScriptCondition))) () a1

addProcessorNodes_super :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (())
addProcessorNodes_super object_ a1 = (addProcessorNodes_impl (javaCast object_ :: BasicProfileActionScriptCondition)) a1

addProcessorNodes_impl :: BasicProfileActionScriptCondition -> Node.Node -> IO (())
addProcessorNodes_impl this node = do
        nodeList <- (Node.getChildNodes node)
        forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
            processorActionItemNode <- (NodeList.item nodeList index)
            if ((jio (Node.compareTo ((jio (Node.getNodeName processorActionItemNode))) (jget GenericProfileActionScriptInputData.nAME))) == 0) then do
                Control.Monad.void (BasicProfileActionScriptCondition.addProcessor this (jio (ProfileActionScriptInputFactory.getInstance processorActionItemNode)))
            else when ((jio (Node.compareTo ((jio (Node.getNodeName processorActionItemNode))) (jget GenericProfileActionScriptOutputData.nAME))) == 0) $ do
                Control.Monad.void (BasicProfileActionScriptCondition.addProcessor this (jio (ProfileActionScriptOutputFactory.getInstance processorActionItemNode)))
        pure ()

new_1 :: String -> IO BasicProfileActionScriptCondition
new_1 label = do
    this <- newRecord_
    init_1 this label
    pure this

init_1 :: BasicProfileActionScriptCondition -> String -> IO ()
init_1 this label = do
        ProfileActionScriptItem.init_1 this.base (label)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (BasicProfileActionScriptCondition.init this)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BasicProfileActionScriptCondition))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: BasicProfileActionScriptCondition))

init_impl :: BasicProfileActionScriptCondition -> IO (())
init_impl this = do
        Control.Monad.void (BasicProfileActionScriptCondition.setProfileActionProcessorInterfaceVector this (jio (BasicArrayListD.new_)))
        Control.Monad.void (BasicProfileActionScriptCondition.setProfileActionConditionInterfaceVector this (jio (BasicArrayListD.new_)))
        Control.Monad.void (JPopupMenu.add ((jio (ProfileActionScriptItem.getJPopupMenu this))) (jio (BasicProfileActionScriptCondition.getConditionJPopupMenu this)))
        Control.Monad.void (JPopupMenu.add ((jio (ProfileActionScriptItem.getJPopupMenu this))) (jio (BasicProfileActionScriptCondition.getInputJPopupMenu this)))
        Control.Monad.void (JPopupMenu.add ((jio (ProfileActionScriptItem.getJPopupMenu this))) (jio (BasicProfileActionScriptCondition.getOutputJPopupMenu this)))
        pure ()


getConditionJPopupMenu :: (JavaObjectClass this_) => this_ -> IO (JMenu.JMenu)
getConditionJPopupMenu object_ = jmethod object_ "getConditionJPopupMenu" (\() -> (getConditionJPopupMenu_impl (javaCast object_ :: BasicProfileActionScriptCondition))) ()

getConditionJPopupMenu_super :: (JavaObjectClass this_) => this_ -> IO (JMenu.JMenu)
getConditionJPopupMenu_super object_ = (getConditionJPopupMenu_impl (javaCast object_ :: BasicProfileActionScriptCondition))

getConditionJPopupMenu_impl :: BasicProfileActionScriptCondition -> IO (JMenu.JMenu)
getConditionJPopupMenu_impl this = do
        jMenu <- (JMenu.new_1 nEW_CONDITION)
        jMenuItemColorAt <- (JMenuItem.new_1 nEW_COLOR_AT)
        jMenuItemAlways <- (JMenuItem.new_1 nEW_ALWAYS)
        jMenuItemTimeInterval <- (JMenuItem.new_1 nEW_TIME_INTERVAL)
        Control.Monad.void (JMenuItem.addActionListener jMenuItemColorAt this)
        Control.Monad.void (JMenuItem.addActionListener jMenuItemAlways this)
        Control.Monad.void (JMenuItem.addActionListener jMenuItemTimeInterval this)
        Control.Monad.void (JMenu.add jMenu jMenuItemColorAt)
        Control.Monad.void (JMenu.add jMenu jMenuItemAlways)
        Control.Monad.void (JMenu.add jMenu jMenuItemTimeInterval)
        pure (jMenu)


getInputJPopupMenu :: (JavaObjectClass this_) => this_ -> IO (JMenu.JMenu)
getInputJPopupMenu object_ = jmethod object_ "getInputJPopupMenu" (\() -> (getInputJPopupMenu_impl (javaCast object_ :: BasicProfileActionScriptCondition))) ()

getInputJPopupMenu_super :: (JavaObjectClass this_) => this_ -> IO (JMenu.JMenu)
getInputJPopupMenu_super object_ = (getInputJPopupMenu_impl (javaCast object_ :: BasicProfileActionScriptCondition))

getInputJPopupMenu_impl :: BasicProfileActionScriptCondition -> IO (JMenu.JMenu)
getInputJPopupMenu_impl this = do
        jMenu <- (JMenu.new_1 nEW_INPUT)
        jMenuItemKey <- (JMenuItem.new_1 nEW_KEY_INPUT)
        jMenuItemMouse <- (JMenuItem.new_1 nEW_MOUSE_INPUT)
        jMenuItemJoystick <- (JMenuItem.new_1 nEW_JOYSTICK_INPUT)
        Control.Monad.void (JMenuItem.addActionListener jMenuItemKey this)
        Control.Monad.void (JMenuItem.addActionListener jMenuItemMouse this)
        Control.Monad.void (JMenuItem.addActionListener jMenuItemJoystick this)
        Control.Monad.void (JMenu.add jMenu jMenuItemKey)
        Control.Monad.void (JMenu.add jMenu jMenuItemMouse)
        Control.Monad.void (JMenu.add jMenu jMenuItemJoystick)
        pure (jMenu)


getOutputJPopupMenu :: (JavaObjectClass this_) => this_ -> IO (JMenu.JMenu)
getOutputJPopupMenu object_ = jmethod object_ "getOutputJPopupMenu" (\() -> (getOutputJPopupMenu_impl (javaCast object_ :: BasicProfileActionScriptCondition))) ()

getOutputJPopupMenu_super :: (JavaObjectClass this_) => this_ -> IO (JMenu.JMenu)
getOutputJPopupMenu_super object_ = (getOutputJPopupMenu_impl (javaCast object_ :: BasicProfileActionScriptCondition))

getOutputJPopupMenu_impl :: BasicProfileActionScriptCondition -> IO (JMenu.JMenu)
getOutputJPopupMenu_impl this = do
        jMenu <- (JMenu.new_1 nEW_OUTPUT)
        jMenuItemImage <- (JMenuItem.new_1 nEW_IMAGE_OUTPUT)
        Control.Monad.void (JMenuItem.addActionListener jMenuItemImage this)
        Control.Monad.void (JMenu.add jMenu jMenuItemImage)
        pure (jMenu)


addProcessor :: (JavaObjectClass this_) => this_ -> ProfileActionScriptProcessorInterface.ProfileActionScriptProcessorInterface -> IO (())
addProcessor object_ a1 = jmethod object_ "addProcessor" (\() -> (addProcessor_impl (javaCast object_ :: BasicProfileActionScriptCondition))) () a1

addProcessor_super :: (JavaObjectClass this_) => this_ -> ProfileActionScriptProcessorInterface.ProfileActionScriptProcessorInterface -> IO (())
addProcessor_super object_ a1 = (addProcessor_impl (javaCast object_ :: BasicProfileActionScriptCondition)) a1

addProcessor_impl :: BasicProfileActionScriptCondition -> ProfileActionScriptProcessorInterface.ProfileActionScriptProcessorInterface -> IO (())
addProcessor_impl this profileActionProcessorInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this "addInput")
        Control.Monad.void (BasicArrayList.add ((jio (BasicProfileActionScriptCondition.getProfileActionProcessorInterfaceVector this))) profileActionProcessorInterface)
        Control.Monad.void (ProfileActionScriptItem.add this profileActionProcessorInterface)
        pure ()


removeProcessor :: (JavaObjectClass this_) => this_ -> ProfileActionScriptProcessorInterface.ProfileActionScriptProcessorInterface -> IO (())
removeProcessor object_ a1 = jmethod object_ "removeProcessor" (\() -> (removeProcessor_impl (javaCast object_ :: BasicProfileActionScriptCondition))) () a1

removeProcessor_super :: (JavaObjectClass this_) => this_ -> ProfileActionScriptProcessorInterface.ProfileActionScriptProcessorInterface -> IO (())
removeProcessor_super object_ a1 = (removeProcessor_impl (javaCast object_ :: BasicProfileActionScriptCondition)) a1

removeProcessor_impl :: BasicProfileActionScriptCondition -> ProfileActionScriptProcessorInterface.ProfileActionScriptProcessorInterface -> IO (())
removeProcessor_impl this profileActionProcessorInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this "removeInput")
        Control.Monad.void (BasicArrayList.remove ((jio (BasicProfileActionScriptCondition.getProfileActionProcessorInterfaceVector this))) profileActionProcessorInterface)
        Control.Monad.void (ProfileActionScriptItem.remove this profileActionProcessorInterface)
        pure ()


removeCondition :: (JavaObjectClass this_) => this_ -> ProfileActionScriptNodeInterface.ProfileActionScriptNodeInterface -> IO (())
removeCondition object_ a1 = jmethod object_ "removeCondition" (\() -> (removeCondition_impl (javaCast object_ :: BasicProfileActionScriptCondition))) () a1

removeCondition_super :: (JavaObjectClass this_) => this_ -> ProfileActionScriptNodeInterface.ProfileActionScriptNodeInterface -> IO (())
removeCondition_super object_ a1 = (removeCondition_impl (javaCast object_ :: BasicProfileActionScriptCondition)) a1

removeCondition_impl :: BasicProfileActionScriptCondition -> ProfileActionScriptNodeInterface.ProfileActionScriptNodeInterface -> IO (())
removeCondition_impl this profileActionScriptNodeInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this "removeCondition")
        Control.Monad.void (BasicArrayList.remove ((jio (BasicProfileActionScriptCondition.getProfileActionConditionInterfaceVector this))) profileActionScriptNodeInterface)
        Control.Monad.void (ProfileActionScriptItem.remove this profileActionScriptNodeInterface)
        pure ()


addCondition :: (JavaObjectClass this_) => this_ -> ProfileActionScriptNodeInterface.ProfileActionScriptNodeInterface -> IO (())
addCondition object_ a1 = jmethod object_ "addCondition" (\() -> (addCondition_impl (javaCast object_ :: BasicProfileActionScriptCondition))) () a1

addCondition_super :: (JavaObjectClass this_) => this_ -> ProfileActionScriptNodeInterface.ProfileActionScriptNodeInterface -> IO (())
addCondition_super object_ a1 = (addCondition_impl (javaCast object_ :: BasicProfileActionScriptCondition)) a1

addCondition_impl :: BasicProfileActionScriptCondition -> ProfileActionScriptNodeInterface.ProfileActionScriptNodeInterface -> IO (())
addCondition_impl this profileActionScriptNodeInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this "addCondition")
        Control.Monad.void (BasicArrayList.add ((jio (BasicProfileActionScriptCondition.getProfileActionConditionInterfaceVector this))) profileActionScriptNodeInterface)
        Control.Monad.void (ProfileActionScriptItem.add this profileActionScriptNodeInterface)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: BasicProfileActionScriptCondition))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: BasicProfileActionScriptCondition)) a1

toXmlNode_impl :: BasicProfileActionScriptCondition -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (jget GenericProfileActionScriptConditionData.nAME))
        profileActionConditionInterfaceVector <- (BasicProfileActionScriptCondition.getProfileActionConditionInterfaceVector this)
        size <- (BasicArrayList.size profileActionConditionInterfaceVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let profileActionConditionInterface = (javaCast (jio (BasicArrayList.get profileActionConditionInterfaceVector index)) :: ProfileActionScriptConditionInterface.ProfileActionScriptConditionInterface)
            Control.Monad.void (Node.appendChild node (jio (ProfileActionScriptConditionInterface.toXmlNode profileActionConditionInterface document)))
        profileActionProcessorInterfaceVector <- (BasicProfileActionScriptCondition.getProfileActionProcessorInterfaceVector this)
        size2 <- (BasicArrayList.size profileActionProcessorInterfaceVector)
        forM_ [0 .. size2 - 1] $ \index -> javaIteration (pure ()) $ do
            let profileActionProcessorInterface = (javaCast (jio (BasicArrayList.get profileActionProcessorInterfaceVector index)) :: ProfileActionScriptProcessorInterface.ProfileActionScriptProcessorInterface)
            Control.Monad.void (Node.appendChild node (jio (ProfileActionScriptProcessorInterface.toXmlNode profileActionProcessorInterface document)))
        pure (node)


getProfileActionConditionInterfaceVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getProfileActionConditionInterfaceVector object_ = jmethod object_ "getProfileActionConditionInterfaceVector" (\() -> (getProfileActionConditionInterfaceVector_impl (javaCast object_ :: BasicProfileActionScriptCondition))) ()

getProfileActionConditionInterfaceVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getProfileActionConditionInterfaceVector_super object_ = (getProfileActionConditionInterfaceVector_impl (javaCast object_ :: BasicProfileActionScriptCondition))

getProfileActionConditionInterfaceVector_impl :: BasicProfileActionScriptCondition -> IO (BasicArrayList.BasicArrayList)
getProfileActionConditionInterfaceVector_impl this = do
        pure ((jget (this).profileActionConditionInterfaceVector))


setProfileActionConditionInterfaceVector :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setProfileActionConditionInterfaceVector object_ a1 = jmethod object_ "setProfileActionConditionInterfaceVector" (\() -> (setProfileActionConditionInterfaceVector_impl (javaCast object_ :: BasicProfileActionScriptCondition))) () a1

setProfileActionConditionInterfaceVector_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setProfileActionConditionInterfaceVector_super object_ a1 = (setProfileActionConditionInterfaceVector_impl (javaCast object_ :: BasicProfileActionScriptCondition)) a1

setProfileActionConditionInterfaceVector_impl :: BasicProfileActionScriptCondition -> BasicArrayList.BasicArrayList -> IO (())
setProfileActionConditionInterfaceVector_impl this profileActionConditionInterfaceVector = do
        jset (this).profileActionConditionInterfaceVector (profileActionConditionInterfaceVector)
        pure ()


actionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
actionPerformed object_ a1 = jmethod object_ "actionPerformed" (\() -> (actionPerformed_impl (javaCast object_ :: BasicProfileActionScriptCondition))) () a1

actionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
actionPerformed_super object_ a1 = (actionPerformed_impl (javaCast object_ :: BasicProfileActionScriptCondition)) a1

actionPerformed_impl :: BasicProfileActionScriptCondition -> ActionEvent.ActionEvent -> IO (())
actionPerformed_impl this actionEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Error" this "actionPerformed" e)
            ) $ do
            Control.Monad.void (ProfileActionScriptItem.actionPerformed_super this.base actionEvent)
            if ((jio (ActionEvent.compareTo ((jio (ActionEvent.getActionCommand actionEvent))) dELETE)) == 0) then do
                when (javaInstanceOf (jio (ProfileActionScriptItem.getParent this)) "ProfileActionScriptNodeInterface") $ do
                    let profileActionScriptNodeInterface = (javaCast (jio (ProfileActionScriptItem.getParent this)) :: ProfileActionScriptNodeInterface.ProfileActionScriptNodeInterface)
                    Control.Monad.void (ProfileActionScriptNodeInterface.removeCondition profileActionScriptNodeInterface this)
                    Control.Monad.void (JTreeInterface.updateJTree ((jio (JTreeInterfaceFactory.getJTreeInterface ((jio (JTreeInterfaceFactory.getInstance)))))))
            else if ((jio (ActionEvent.compareTo ((jio (ActionEvent.getActionCommand actionEvent))) nEW_COLOR_AT)) == 0) then do
                Control.Monad.void (BasicProfileActionScriptCondition.addCondition this (jio (ColorAtActionScriptCondition.new_)))
                Control.Monad.void (BasicProfileActionScriptCondition.updateTree this)
            else if ((jio (ActionEvent.compareTo ((jio (ActionEvent.getActionCommand actionEvent))) nEW_ALWAYS)) == 0) then do
                Control.Monad.void (BasicProfileActionScriptCondition.addCondition this (jio (AlwaysActionScriptCondition.new_)))
                Control.Monad.void (BasicProfileActionScriptCondition.updateTree this)
            else if ((jio (ActionEvent.compareTo ((jio (ActionEvent.getActionCommand actionEvent))) nEW_TIME_INTERVAL)) == 0) then do
                Control.Monad.void (BasicProfileActionScriptCondition.addCondition this (jio (TimeIntervalActionScriptCondition.new_)))
                Control.Monad.void (BasicProfileActionScriptCondition.updateTree this)
            else if ((jio (ActionEvent.compareTo ((jio (ActionEvent.getActionCommand actionEvent))) nEW_KEY_INPUT)) == 0) then do
                Control.Monad.void (BasicProfileActionScriptCondition.addProcessor this (jio (KeyboardActionScriptInput.new_)))
                Control.Monad.void (BasicProfileActionScriptCondition.updateTree this)
            else if ((jio (ActionEvent.compareTo ((jio (ActionEvent.getActionCommand actionEvent))) nEW_MOUSE_INPUT)) == 0) then do
                Control.Monad.void (BasicProfileActionScriptCondition.addProcessor this (jio (MouseActionScriptInput.new_)))
                Control.Monad.void (BasicProfileActionScriptCondition.updateTree this)
            else when ((jio (ActionEvent.compareTo ((jio (ActionEvent.getActionCommand actionEvent))) nEW_IMAGE_OUTPUT)) == 0) $ do
                Control.Monad.void (BasicProfileActionScriptCondition.addProcessor this (jio (ImageActionScriptOutput.new_)))
                Control.Monad.void (BasicProfileActionScriptCondition.updateTree this)
        pure ()


getProfileActionProcessorInterfaceVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getProfileActionProcessorInterfaceVector object_ = jmethod object_ "getProfileActionProcessorInterfaceVector" (\() -> (getProfileActionProcessorInterfaceVector_impl (javaCast object_ :: BasicProfileActionScriptCondition))) ()

getProfileActionProcessorInterfaceVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getProfileActionProcessorInterfaceVector_super object_ = (getProfileActionProcessorInterfaceVector_impl (javaCast object_ :: BasicProfileActionScriptCondition))

getProfileActionProcessorInterfaceVector_impl :: BasicProfileActionScriptCondition -> IO (BasicArrayList.BasicArrayList)
getProfileActionProcessorInterfaceVector_impl this = do
        pure ((jget (this).profileActionProcessorInterfaceVector))


setProfileActionProcessorInterfaceVector :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setProfileActionProcessorInterfaceVector object_ a1 = jmethod object_ "setProfileActionProcessorInterfaceVector" (\() -> (setProfileActionProcessorInterfaceVector_impl (javaCast object_ :: BasicProfileActionScriptCondition))) () a1

setProfileActionProcessorInterfaceVector_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setProfileActionProcessorInterfaceVector_super object_ a1 = (setProfileActionProcessorInterfaceVector_impl (javaCast object_ :: BasicProfileActionScriptCondition)) a1

setProfileActionProcessorInterfaceVector_impl :: BasicProfileActionScriptCondition -> BasicArrayList.BasicArrayList -> IO (())
setProfileActionProcessorInterfaceVector_impl this profileActionProcessorInterfaceVector = do
        jset (this).profileActionProcessorInterfaceVector (profileActionProcessorInterfaceVector)
        pure ()


updateTree :: (JavaObjectClass this_) => this_ -> IO (())
updateTree object_ = jmethod object_ "updateTree" (\() -> (updateTree_impl (javaCast object_ :: BasicProfileActionScriptCondition))) ()

updateTree_super :: (JavaObjectClass this_) => this_ -> IO (())
updateTree_super object_ = (updateTree_impl (javaCast object_ :: BasicProfileActionScriptCondition))

updateTree_impl :: BasicProfileActionScriptCondition -> IO (())
updateTree_impl this = do
        Control.Monad.void (JTreeInterface.updateJTree ((jio (JTreeInterfaceFactory.getJTreeInterface ((jio (JTreeInterfaceFactory.getInstance)))))))
        treePath <- (TreePath.new_1 this)
        Control.Monad.void (JTreeInterface.expandPath ((jio (JTreeInterface.getActionScriptJTree ((jio (JTreeInterfaceFactory.getJTreeInterface ((jio (JTreeInterfaceFactory.getInstance))))))))) treePath)
        pure ()


-- throws Exception
shouldProcess :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
shouldProcess object_ a1 = jmethod object_ "shouldProcess" (\() -> (shouldProcess_impl (javaCast object_ :: BasicProfileActionScriptCondition))) () a1

shouldProcess_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
shouldProcess_super object_ a1 = (shouldProcess_impl (javaCast object_ :: BasicProfileActionScriptCondition)) a1

shouldProcess_impl :: BasicProfileActionScriptCondition -> Int64 -> IO (Bool)
shouldProcess_impl this frame = do
    javaCatchReturn $ do
        profileActionConditionInterfaceVector <- (BasicProfileActionScriptCondition.getProfileActionConditionInterfaceVector this)
        size <- (BasicArrayList.size profileActionConditionInterfaceVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let profileActionScriptConditionInterface = (javaCast (jio (BasicArrayList.get profileActionConditionInterfaceVector index)) :: ProfileActionScriptConditionInterface.ProfileActionScriptConditionInterface)
            when (Prelude.not (jio (ProfileActionScriptConditionInterface.shouldProcess profileActionScriptConditionInterface frame))) $ do
                javaReturn (False)
        pure (True)


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: BasicProfileActionScriptCondition))) () a1

process_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: BasicProfileActionScriptCondition)) a1

process_impl :: BasicProfileActionScriptCondition -> Int64 -> IO (())
process_impl this frame = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Start - Processing "))) (jio (BasicArrayList.size ((jio (BasicProfileActionScriptCondition.getProfileActionProcessorInterfaceVector this)))))))) " inputs"))))) this (jget ((jget (this).base.commonStrings)).pROCESS))
        profileActionProcessorInterfaceVector <- (BasicProfileActionScriptCondition.getProfileActionProcessorInterfaceVector this)
        size <- (BasicArrayList.size profileActionProcessorInterfaceVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let profileActionScriptProcessorInterface = (javaCast (jio (BasicArrayList.get profileActionProcessorInterfaceVector index)) :: ProfileActionScriptProcessorInterface.ProfileActionScriptProcessorInterface)
            Control.Monad.void (ProfileActionScriptProcessorInterface.process profileActionScriptProcessorInterface frame)
        pure ()


