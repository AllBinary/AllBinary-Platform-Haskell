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
-- package org.allbinary.input.automation.module.generic.configuration.profile.actions.script
module GenericProfileActionScript (module GenericProfileActionScript, module DefaultMutableTreeNode) where

import DefaultMutableTreeNode hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addCondition, addCondition_super, addCondition_impl, removeCondition, removeCondition_super, removeCondition_impl, toHashMap, toHashMap_super, toHashMap_impl, getProfileActionConditionInterfaceVector, getProfileActionConditionInterfaceVector_super, getProfileActionConditionInterfaceVector_impl, setProfileActionConditionInterfaceVector, setProfileActionConditionInterfaceVector_super, setProfileActionConditionInterfaceVector_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, logUtil, commonStrings, genericProfileActionJPanel, profileActionConditionInterfaceVector, nAME)
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
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DefaultMutableTreeNode -- javax.swing.tree.DefaultMutableTreeNode
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ProfileActionScriptNodeInterface -- org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface
import qualified ProfileActionScriptConditionFactory -- org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory
import qualified ProfileActionScriptConditionInterface -- org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface
import qualified GenericProfileActionData -- org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActionData
import qualified GenericProfileActionJPanel -- org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActionJPanel
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

-- implements ProfileActionScriptNodeInterface
data GenericProfileActionScript = GenericProfileActionScript
    { header_ :: JavaHeader
    , base :: DefaultMutableTreeNode.DefaultMutableTreeNode
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , genericProfileActionJPanel :: IORef (GenericProfileActionJPanel.GenericProfileActionJPanel)
    , profileActionConditionInterfaceVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull GenericProfileActionScript where
    javaNull = javaNullRecord "GenericProfileActionScript"

instance JavaEquals GenericProfileActionScript where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericProfileActionScript where
    (==) = jrecordEquals

instance JavaObjectClass GenericProfileActionScript where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "Root"

newRecord_ :: IO GenericProfileActionScript
newRecord_ = do
    base <- DefaultMutableTreeNode.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    genericProfileActionJPanel <- newIORef javaNull
    profileActionConditionInterfaceVector <- newIORef javaNull
    let this = GenericProfileActionScript header_ base logUtil commonStrings genericProfileActionJPanel profileActionConditionInterfaceVector
    jregisterLevel header_ this
    ProfileActionScriptNodeInterface.registerInterface_ header_
    jregisterMethod header_ "addCondition" (\() -> addCondition_impl this)
    jregisterMethod header_ "removeCondition" (\() -> removeCondition_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "getProfileActionConditionInterfaceVector" (\() -> getProfileActionConditionInterfaceVector_impl this)
    jregisterMethod header_ "setProfileActionConditionInterfaceVector" (\() -> setProfileActionConditionInterfaceVector_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: GenericProfileActionScript -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.genericProfileActionJPanel (javaNull)
    jset this.profileActionConditionInterfaceVector (javaNull)
    pure ()

new_2 :: GenericProfileActionJPanel.GenericProfileActionJPanel -> Node.Node -> IO GenericProfileActionScript
new_2 genericProfileActionJPanel node = do
    this <- newRecord_
    init_2 this genericProfileActionJPanel node
    pure this

init_2 :: GenericProfileActionScript -> GenericProfileActionJPanel.GenericProfileActionJPanel -> Node.Node -> IO ()
init_2 this genericProfileActionJPanel node = do
        DefaultMutableTreeNode.init_1 this.base (nAME)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).genericProfileActionJPanel (genericProfileActionJPanel)
        Control.Monad.void (GenericProfileActionScript.setProfileActionConditionInterfaceVector this (jio (BasicArrayListD.new_)))
        actionScriptNode <- (DomSearchHelper.getNode (jget GenericProfileActionData.sCRIPT) (jio (Node.getChildNodes node)))
        if (actionScriptNode /= javaNull) then do
            nodeList <- (Node.getChildNodes actionScriptNode)
            forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
                actionConditionNode <- (NodeList.item nodeList index)
                when ((jio (Node.getNodeType actionConditionNode)) == Node.eLEMENT_NODE) $ do
                    Control.Monad.void (GenericProfileActionScript.addCondition this (jio (ProfileActionScriptConditionFactory.getInstance actionConditionNode)))
        else do
            javaThrow ((JavaException "Exception" "Profile Action Script Node Null"))
        pure ()

new_1 :: GenericProfileActionJPanel.GenericProfileActionJPanel -> IO GenericProfileActionScript
new_1 genericProfileActionJPanel = do
    this <- newRecord_
    init_1 this genericProfileActionJPanel
    pure this

init_1 :: GenericProfileActionScript -> GenericProfileActionJPanel.GenericProfileActionJPanel -> IO ()
init_1 this genericProfileActionJPanel = do
        DefaultMutableTreeNode.init_ this.base
        initFields_ this
        jset (this).genericProfileActionJPanel (genericProfileActionJPanel)
        Control.Monad.void (GenericProfileActionScript.setProfileActionConditionInterfaceVector this (jio (BasicArrayListD.new_)))
        pure ()


addCondition :: (JavaObjectClass this_) => this_ -> ProfileActionScriptNodeInterface.ProfileActionScriptNodeInterface -> IO (())
addCondition object_ a1 = jmethod object_ "addCondition" (\() -> (addCondition_impl (javaCast object_ :: GenericProfileActionScript))) () a1

addCondition_super :: (JavaObjectClass this_) => this_ -> ProfileActionScriptNodeInterface.ProfileActionScriptNodeInterface -> IO (())
addCondition_super object_ a1 = (addCondition_impl (javaCast object_ :: GenericProfileActionScript)) a1

addCondition_impl :: GenericProfileActionScript -> ProfileActionScriptNodeInterface.ProfileActionScriptNodeInterface -> IO (())
addCondition_impl this profileActionScriptNodeInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "addCondition")
        Control.Monad.void (BasicArrayList.add ((jio (GenericProfileActionScript.getProfileActionConditionInterfaceVector this))) profileActionScriptNodeInterface)
        Control.Monad.void (DefaultMutableTreeNode.add this profileActionScriptNodeInterface)
        pure ()


removeCondition :: (JavaObjectClass this_) => this_ -> ProfileActionScriptNodeInterface.ProfileActionScriptNodeInterface -> IO (())
removeCondition object_ a1 = jmethod object_ "removeCondition" (\() -> (removeCondition_impl (javaCast object_ :: GenericProfileActionScript))) () a1

removeCondition_super :: (JavaObjectClass this_) => this_ -> ProfileActionScriptNodeInterface.ProfileActionScriptNodeInterface -> IO (())
removeCondition_super object_ a1 = (removeCondition_impl (javaCast object_ :: GenericProfileActionScript)) a1

removeCondition_impl :: GenericProfileActionScript -> ProfileActionScriptNodeInterface.ProfileActionScriptNodeInterface -> IO (())
removeCondition_impl this profileActionScriptNodeInterface = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "removeCondition")
        Control.Monad.void (BasicArrayList.remove ((jio (GenericProfileActionScript.getProfileActionConditionInterfaceVector this))) profileActionScriptNodeInterface)
        Control.Monad.void (DefaultMutableTreeNode.remove this profileActionScriptNodeInterface)
        pure ()


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: GenericProfileActionScript))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: GenericProfileActionScript))

toHashMap_impl :: GenericProfileActionScript -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("HashMap: " ++ (jio (HashMap.toString hashMap))) this "toHashMap()")
        pure (hashMap)


getProfileActionConditionInterfaceVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getProfileActionConditionInterfaceVector object_ = jmethod object_ "getProfileActionConditionInterfaceVector" (\() -> (getProfileActionConditionInterfaceVector_impl (javaCast object_ :: GenericProfileActionScript))) ()

getProfileActionConditionInterfaceVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getProfileActionConditionInterfaceVector_super object_ = (getProfileActionConditionInterfaceVector_impl (javaCast object_ :: GenericProfileActionScript))

getProfileActionConditionInterfaceVector_impl :: GenericProfileActionScript -> IO (BasicArrayList.BasicArrayList)
getProfileActionConditionInterfaceVector_impl this = do
        pure ((jget (this).profileActionConditionInterfaceVector))


setProfileActionConditionInterfaceVector :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setProfileActionConditionInterfaceVector object_ a1 = jmethod object_ "setProfileActionConditionInterfaceVector" (\() -> (setProfileActionConditionInterfaceVector_impl (javaCast object_ :: GenericProfileActionScript))) () a1

setProfileActionConditionInterfaceVector_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setProfileActionConditionInterfaceVector_super object_ a1 = (setProfileActionConditionInterfaceVector_impl (javaCast object_ :: GenericProfileActionScript)) a1

setProfileActionConditionInterfaceVector_impl :: GenericProfileActionScript -> BasicArrayList.BasicArrayList -> IO (())
setProfileActionConditionInterfaceVector_impl this profileActionConditionInterfaceVector = do
        jset (this).profileActionConditionInterfaceVector (profileActionConditionInterfaceVector)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: GenericProfileActionScript))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: GenericProfileActionScript)) a1

toXmlNode_impl :: GenericProfileActionScript -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (jget GenericProfileActionData.sCRIPT))
        vector <- (GenericProfileActionScript.getProfileActionConditionInterfaceVector this)
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let profileActionConditionInterface = (javaCast (jio (BasicArrayList.get vector index)) :: ProfileActionScriptConditionInterface.ProfileActionScriptConditionInterface)
            Control.Monad.void (Node.appendChild node (jio (ProfileActionScriptConditionInterface.toXmlNode profileActionConditionInterface document)))
        pure (node)


