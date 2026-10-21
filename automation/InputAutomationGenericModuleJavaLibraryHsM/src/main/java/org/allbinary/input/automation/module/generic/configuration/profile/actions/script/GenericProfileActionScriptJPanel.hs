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
module GenericProfileActionScriptJPanel (module GenericProfileActionScriptJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateJTree, updateJTree_super, updateJTree_impl, getGenericProfileActionScript, getGenericProfileActionScript_super, getGenericProfileActionScript_impl, setGenericProfileActionScript, setGenericProfileActionScript_super, setGenericProfileActionScript_impl, getActionScriptJTree, getActionScriptJTree_super, getActionScriptJTree_impl, setActionScriptJTree, setActionScriptJTree_super, setActionScriptJTree_impl, initComponents, initComponents_super, initComponents_impl, actionScriptJTreeMouseReleased, actionScriptJTreeMouseReleased_super, actionScriptJTreeMouseReleased_impl, actionScriptJTreeMouseClicked, actionScriptJTreeMouseClicked_super, actionScriptJTreeMouseClicked_impl, logUtil, commonStrings, defaultMutableTreeNode, genericProfileActionScript, actionScriptJTree, jScrollPane1)
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
import qualified GenericProfileActionScript -- same package or java.lang
import qualified JTree -- same package or java.lang
import qualified JScrollPane -- same package or java.lang
import qualified GridLayout -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified MouseAdapter -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified JPopupMenu -- same package or java.lang
import qualified JComponent -- same package or java.lang
import qualified MouseEvent -- java.awt.event.MouseEvent
import qualified DefaultMutableTreeNode -- javax.swing.tree.DefaultMutableTreeNode
import qualified DefaultTreeModel -- javax.swing.tree.DefaultTreeModel
import qualified TreePath -- javax.swing.tree.TreePath
import qualified JTreeInterface -- org.allbinary.input.automation.actions.script.JTreeInterface
import qualified CustomTreeNodeInterface -- org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
-- import javax.swing.*
import qualified JPanel

-- implements JTreeInterface
data GenericProfileActionScriptJPanel = GenericProfileActionScriptJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , defaultMutableTreeNode :: IORef (DefaultMutableTreeNode.DefaultMutableTreeNode)
    , genericProfileActionScript :: IORef (GenericProfileActionScript.GenericProfileActionScript)
    , actionScriptJTree :: IORef (JTree.JTree)
    , jScrollPane1 :: IORef (JScrollPane.JScrollPane)
    }

instance JavaNull GenericProfileActionScriptJPanel where
    javaNull = javaNullRecord "GenericProfileActionScriptJPanel"

instance JavaEquals GenericProfileActionScriptJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericProfileActionScriptJPanel where
    (==) = jrecordEquals

instance JavaObjectClass GenericProfileActionScriptJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GenericProfileActionScriptJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    defaultMutableTreeNode <- newIORef javaNull
    genericProfileActionScript <- newIORef javaNull
    actionScriptJTree <- newIORef javaNull
    jScrollPane1 <- newIORef javaNull
    let this = GenericProfileActionScriptJPanel header_ base logUtil commonStrings defaultMutableTreeNode genericProfileActionScript actionScriptJTree jScrollPane1
    jregisterLevel header_ this
    JTreeInterface.registerInterface_ header_
    jregisterMethod header_ "updateJTree" (\() -> updateJTree_impl this)
    jregisterMethod header_ "getGenericProfileActionScript" (\() -> getGenericProfileActionScript_impl this)
    jregisterMethod header_ "setGenericProfileActionScript" (\() -> setGenericProfileActionScript_impl this)
    jregisterMethod header_ "getActionScriptJTree" (\() -> getActionScriptJTree_impl this)
    jregisterMethod header_ "setActionScriptJTree" (\() -> setActionScriptJTree_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "actionScriptJTreeMouseReleased" (\() -> actionScriptJTreeMouseReleased_impl this)
    jregisterMethod header_ "actionScriptJTreeMouseClicked" (\() -> actionScriptJTreeMouseClicked_impl this)
    pure this

initFields_ :: GenericProfileActionScriptJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.defaultMutableTreeNode =<< (DefaultMutableTreeNode.new_1 "Root")
    jset this.genericProfileActionScript (javaNull)
    jset this.actionScriptJTree (javaNull)
    jset this.jScrollPane1 (javaNull)
    pure ()

new_ :: IO GenericProfileActionScriptJPanel
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GenericProfileActionScriptJPanel -> IO ()
init_ this = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (GenericProfileActionScriptJPanel.initComponents this)
        pure ()


updateJTree :: (JavaObjectClass this_) => this_ -> IO (())
updateJTree object_ = jmethod object_ "updateJTree" (\() -> (updateJTree_impl (javaCast object_ :: GenericProfileActionScriptJPanel))) ()

updateJTree_super :: (JavaObjectClass this_) => this_ -> IO (())
updateJTree_super object_ = (updateJTree_impl (javaCast object_ :: GenericProfileActionScriptJPanel))

updateJTree_impl :: GenericProfileActionScriptJPanel -> IO (())
updateJTree_impl this = do
        defaultTreeModel <- (DefaultTreeModel.new_1 (jio (GenericProfileActionScriptJPanel.getGenericProfileActionScript this)))
        Control.Monad.void (JTree.setModel ((jio (GenericProfileActionScriptJPanel.getActionScriptJTree this))) defaultTreeModel)
        Control.Monad.void (JPanel.repaint this)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Updated UI" this "updateJTree")
        pure ()


getGenericProfileActionScript :: (JavaObjectClass this_) => this_ -> IO (GenericProfileActionScript.GenericProfileActionScript)
getGenericProfileActionScript object_ = jmethod object_ "getGenericProfileActionScript" (\() -> (getGenericProfileActionScript_impl (javaCast object_ :: GenericProfileActionScriptJPanel))) ()

getGenericProfileActionScript_super :: (JavaObjectClass this_) => this_ -> IO (GenericProfileActionScript.GenericProfileActionScript)
getGenericProfileActionScript_super object_ = (getGenericProfileActionScript_impl (javaCast object_ :: GenericProfileActionScriptJPanel))

getGenericProfileActionScript_impl :: GenericProfileActionScriptJPanel -> IO (GenericProfileActionScript.GenericProfileActionScript)
getGenericProfileActionScript_impl this = do
        pure ((jget (this).genericProfileActionScript))


setGenericProfileActionScript :: (JavaObjectClass this_) => this_ -> GenericProfileActionScript.GenericProfileActionScript -> IO (())
setGenericProfileActionScript object_ a1 = jmethod object_ "setGenericProfileActionScript" (\() -> (setGenericProfileActionScript_impl (javaCast object_ :: GenericProfileActionScriptJPanel))) () a1

setGenericProfileActionScript_super :: (JavaObjectClass this_) => this_ -> GenericProfileActionScript.GenericProfileActionScript -> IO (())
setGenericProfileActionScript_super object_ a1 = (setGenericProfileActionScript_impl (javaCast object_ :: GenericProfileActionScriptJPanel)) a1

setGenericProfileActionScript_impl :: GenericProfileActionScriptJPanel -> GenericProfileActionScript.GenericProfileActionScript -> IO (())
setGenericProfileActionScript_impl this genericProfileActionScript = do
        jset (this).genericProfileActionScript (genericProfileActionScript)
        pure ()


getActionScriptJTree :: (JavaObjectClass this_) => this_ -> IO (JTree.JTree)
getActionScriptJTree object_ = jmethod object_ "getActionScriptJTree" (\() -> (getActionScriptJTree_impl (javaCast object_ :: GenericProfileActionScriptJPanel))) ()

getActionScriptJTree_super :: (JavaObjectClass this_) => this_ -> IO (JTree.JTree)
getActionScriptJTree_super object_ = (getActionScriptJTree_impl (javaCast object_ :: GenericProfileActionScriptJPanel))

getActionScriptJTree_impl :: GenericProfileActionScriptJPanel -> IO (JTree.JTree)
getActionScriptJTree_impl this = do
        pure ((jget (this).actionScriptJTree))


setActionScriptJTree :: (JavaObjectClass this_) => this_ -> JTree.JTree -> IO (())
setActionScriptJTree object_ a1 = jmethod object_ "setActionScriptJTree" (\() -> (setActionScriptJTree_impl (javaCast object_ :: GenericProfileActionScriptJPanel))) () a1

setActionScriptJTree_super :: (JavaObjectClass this_) => this_ -> JTree.JTree -> IO (())
setActionScriptJTree_super object_ a1 = (setActionScriptJTree_impl (javaCast object_ :: GenericProfileActionScriptJPanel)) a1

setActionScriptJTree_impl :: GenericProfileActionScriptJPanel -> JTree.JTree -> IO (())
setActionScriptJTree_impl this actionScriptJTree = do
        jset (this).actionScriptJTree (actionScriptJTree)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: GenericProfileActionScriptJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: GenericProfileActionScriptJPanel))

initComponents_impl :: GenericProfileActionScriptJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JScrollPane.new_)
        jset (this).jScrollPane1 (assignedValue)
        assignedValue <- (JTree.new_)
        jset (this).actionScriptJTree (assignedValue)
        Control.Monad.void (JPanel.setLayout this (jio (GridLayout.new_2 1 0)))
        Control.Monad.void (JTree.setPreferredSize ((jget (this).actionScriptJTree)) (jio (Dimension.new_2 500 500)))
        Control.Monad.void (JTree.addMouseListener ((jget (this).actionScriptJTree)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mouseClicked
            -- mouseReleased
-}))
        Control.Monad.void (JScrollPane.setViewportView ((jget (this).jScrollPane1)) (jget (this).actionScriptJTree))
        Control.Monad.void (JPanel.add this (jget (this).jScrollPane1))
        pure ()


actionScriptJTreeMouseReleased :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
actionScriptJTreeMouseReleased object_ a1 = jmethod object_ "actionScriptJTreeMouseReleased" (\() -> (actionScriptJTreeMouseReleased_impl (javaCast object_ :: GenericProfileActionScriptJPanel))) () a1

actionScriptJTreeMouseReleased_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
actionScriptJTreeMouseReleased_super object_ a1 = (actionScriptJTreeMouseReleased_impl (javaCast object_ :: GenericProfileActionScriptJPanel)) a1

actionScriptJTreeMouseReleased_impl :: GenericProfileActionScriptJPanel -> MouseEvent.MouseEvent -> IO (())
actionScriptJTreeMouseReleased_impl this evt = do
        button <- (MouseEvent.getButton evt)
        when (button == MouseEvent.bUTTON3) $ do
            treePath <- (JTree.getSelectionPath ((jio (GenericProfileActionScriptJPanel.getActionScriptJTree this))))
            when (treePath /= javaNull) $ do
                anyType <- (TreePath.getLastPathComponent treePath)
                when (javaInstanceOf anyType "CustomTreeNodeInterface") $ do
                    let customTreeNodeInterface = (javaCast anyType :: CustomTreeNodeInterface.CustomTreeNodeInterface)
                    jPopupMenu <- (CustomTreeNodeInterface.getJPopupMenu customTreeNodeInterface)
                    Control.Monad.void (JPopupMenu.show jPopupMenu (javaCast (jio (MouseEvent.getSource evt)) :: JComponent.JComponent) (jio (MouseEvent.getX evt)) (jio (MouseEvent.getY evt)))
        pure ()


actionScriptJTreeMouseClicked :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
actionScriptJTreeMouseClicked object_ a1 = jmethod object_ "actionScriptJTreeMouseClicked" (\() -> (actionScriptJTreeMouseClicked_impl (javaCast object_ :: GenericProfileActionScriptJPanel))) () a1

actionScriptJTreeMouseClicked_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
actionScriptJTreeMouseClicked_super object_ a1 = (actionScriptJTreeMouseClicked_impl (javaCast object_ :: GenericProfileActionScriptJPanel)) a1

actionScriptJTreeMouseClicked_impl :: GenericProfileActionScriptJPanel -> MouseEvent.MouseEvent -> IO (())
actionScriptJTreeMouseClicked_impl this evt = do
        pure ()


