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
-- package org.allbinary.graphics.j2me.workarea
module WorkAreaJTreeJPanel (module WorkAreaJTreeJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, add, add_super, add_impl, updateTree, updateTree_super, updateTree_impl, getNode_overload1, getNode_overload1_super, getNode_overload1_impl, getNode, getNode_overload2, getNode_overload2_super, getNode_overload2_impl, getNode, deselectAll, deselectAll_super, deselectAll_impl, selectGraphicItem, selectGraphicItem_super, selectGraphicItem_impl, removeGraphicItem, removeGraphicItem_super, removeGraphicItem_impl, removeCanvas, removeCanvas_super, removeCanvas_impl, remove, remove_super, remove_impl, copy, copy_super, copy_impl, copy_1, copy_1_super, copy_1_impl, copy, rotate, rotate_super, rotate_impl, getRootTreeNode, getRootTreeNode_super, getRootTreeNode_impl, expand, expand_super, expand_impl, expand_1, expand_1_super, expand_1_impl, expand, initComponents, initComponents_super, initComponents_impl, rotateJMenuItemMousePressed, rotateJMenuItemMousePressed_super, rotateJMenuItemMousePressed_impl, workAreaJTreeMousePressed, workAreaJTreeMousePressed_super, workAreaJTreeMousePressed_impl, itemJPopupMenuPopupMenuWillBecomeInvisible, itemJPopupMenuPopupMenuWillBecomeInvisible_super, itemJPopupMenuPopupMenuWillBecomeInvisible_impl, itemJPopupMenuPopupMenuWillBecomeVisible, itemJPopupMenuPopupMenuWillBecomeVisible_super, itemJPopupMenuPopupMenuWillBecomeVisible_impl, copyJMenuItemMousePressed, copyJMenuItemMousePressed_super, copyJMenuItemMousePressed_impl, deleteJMenuItemMousePressed, deleteJMenuItemMousePressed_super, deleteJMenuItemMousePressed_impl, workAreaPropertiesJPanelMousePressed, workAreaPropertiesJPanelMousePressed_super, workAreaPropertiesJPanelMousePressed_impl, logUtil, commonStrings, rootTreeNode, workAreaJTree, highlightedBasicArrayList, copyJMenuItem, deleteJMenuItem, itemJPopupMenu, itemJScrollPane1, rotateJMenuItem, workAreaPropertiesJPanel)
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
import qualified JTree -- same package or java.lang
import qualified MouseAdapter -- same package or java.lang
import qualified MouseEvent -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified JPopupMenu -- same package or java.lang
import qualified JMenuItem -- same package or java.lang
import qualified JScrollPane -- same package or java.lang
import qualified PopupMenuListener -- same package or java.lang
import qualified PopupMenuEvent -- same package or java.lang
import qualified GridLayout -- same package or java.lang
import qualified DefaultMutableTreeNode -- javax.swing.tree.DefaultMutableTreeNode
import qualified MutableTreeNode -- javax.swing.tree.MutableTreeNode
import qualified TreePath -- javax.swing.tree.TreePath
import qualified CanvasTreeLabel -- org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel
import qualified MyCanvasEvent -- org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent
import qualified MyCanvasEventService -- org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService
import qualified MyCanvasEventSource -- org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource
import qualified MyGraphicItemEvent -- org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent
import qualified MyGraphicItemEventService -- org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService
import qualified MyGraphicItemEventSource -- org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventSource
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
-- import javax.swing.*
import qualified JPanel

data WorkAreaJTreeJPanel = WorkAreaJTreeJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , rootTreeNode :: IORef (DefaultMutableTreeNode.DefaultMutableTreeNode)
    , workAreaJTree :: IORef (JTree.JTree)
    , highlightedBasicArrayList :: IORef (BasicArrayList.BasicArrayList)
    , copyJMenuItem :: IORef (JMenuItem.JMenuItem)
    , deleteJMenuItem :: IORef (JMenuItem.JMenuItem)
    , itemJPopupMenu :: IORef (JPopupMenu.JPopupMenu)
    , itemJScrollPane1 :: IORef (JScrollPane.JScrollPane)
    , rotateJMenuItem :: IORef (JMenuItem.JMenuItem)
    , workAreaPropertiesJPanel :: IORef (JPanel.JPanel)
    }

instance JavaNull WorkAreaJTreeJPanel where
    javaNull = javaNullRecord "WorkAreaJTreeJPanel"

instance JavaEquals WorkAreaJTreeJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WorkAreaJTreeJPanel where
    (==) = jrecordEquals

instance JavaObjectClass WorkAreaJTreeJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO WorkAreaJTreeJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    rootTreeNode <- newIORef javaNull
    workAreaJTree <- newIORef javaNull
    highlightedBasicArrayList <- newIORef javaNull
    copyJMenuItem <- newIORef javaNull
    deleteJMenuItem <- newIORef javaNull
    itemJPopupMenu <- newIORef javaNull
    itemJScrollPane1 <- newIORef javaNull
    rotateJMenuItem <- newIORef javaNull
    workAreaPropertiesJPanel <- newIORef javaNull
    let this = WorkAreaJTreeJPanel header_ base logUtil commonStrings rootTreeNode workAreaJTree highlightedBasicArrayList copyJMenuItem deleteJMenuItem itemJPopupMenu itemJScrollPane1 rotateJMenuItem workAreaPropertiesJPanel
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "updateTree" (\() -> updateTree_impl this)
    jregisterMethod header_ "getNode_overload1" (\() -> getNode_overload1_impl this)
    jregisterMethod header_ "getNode_overload2" (\() -> getNode_overload2_impl this)
    jregisterMethod header_ "deselectAll" (\() -> deselectAll_impl this)
    jregisterMethod header_ "selectGraphicItem" (\() -> selectGraphicItem_impl this)
    jregisterMethod header_ "removeGraphicItem" (\() -> removeGraphicItem_impl this)
    jregisterMethod header_ "removeCanvas" (\() -> removeCanvas_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "copy" (\() -> copy_impl this)
    jregisterMethod header_ "copy_1" (\() -> copy_1_impl this)
    jregisterMethod header_ "rotate" (\() -> rotate_impl this)
    jregisterMethod header_ "getRootTreeNode" (\() -> getRootTreeNode_impl this)
    jregisterMethod header_ "expand" (\() -> expand_impl this)
    jregisterMethod header_ "expand_1" (\() -> expand_1_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "rotateJMenuItemMousePressed" (\() -> rotateJMenuItemMousePressed_impl this)
    jregisterMethod header_ "workAreaJTreeMousePressed" (\() -> workAreaJTreeMousePressed_impl this)
    jregisterMethod header_ "itemJPopupMenuPopupMenuWillBecomeInvisible" (\() -> itemJPopupMenuPopupMenuWillBecomeInvisible_impl this)
    jregisterMethod header_ "itemJPopupMenuPopupMenuWillBecomeVisible" (\() -> itemJPopupMenuPopupMenuWillBecomeVisible_impl this)
    jregisterMethod header_ "copyJMenuItemMousePressed" (\() -> copyJMenuItemMousePressed_impl this)
    jregisterMethod header_ "deleteJMenuItemMousePressed" (\() -> deleteJMenuItemMousePressed_impl this)
    jregisterMethod header_ "workAreaPropertiesJPanelMousePressed" (\() -> workAreaPropertiesJPanelMousePressed_impl this)
    pure this

initFields_ :: WorkAreaJTreeJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.rootTreeNode (javaNull)
    jset this.workAreaJTree (javaNull)
    jset this.highlightedBasicArrayList (javaNull)
    jset this.copyJMenuItem (javaNull)
    jset this.deleteJMenuItem (javaNull)
    jset this.itemJPopupMenu (javaNull)
    jset this.itemJScrollPane1 (javaNull)
    jset this.rotateJMenuItem (javaNull)
    jset this.workAreaPropertiesJPanel (javaNull)
    pure ()

new_1 :: String -> IO WorkAreaJTreeJPanel
new_1 workAreaName = do
    this <- newRecord_
    init_1 this workAreaName
    pure this

init_1 :: WorkAreaJTreeJPanel -> String -> IO ()
init_1 this workAreaName = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (WorkAreaJTreeJPanel.initComponents this)
        assignedValue <- (DefaultMutableTreeNode.new_1 workAreaName)
        jset (this).rootTreeNode (assignedValue)
        Control.Monad.void (JPanel.removeAll ((jget (this).workAreaPropertiesJPanel)))
        Control.Monad.void (WorkAreaJTreeJPanel.updateTree this)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).highlightedBasicArrayList (assignedValue)
        pure ()


add :: (JavaObjectClass this_) => this_ -> MutableTreeNode.MutableTreeNode -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1

add_super :: (JavaObjectClass this_) => this_ -> MutableTreeNode.MutableTreeNode -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1

add_impl :: WorkAreaJTreeJPanel -> MutableTreeNode.MutableTreeNode -> IO (())
add_impl this treeNode = do
        Control.Monad.void (DefaultMutableTreeNode.add ((jget (this).rootTreeNode)) treeNode)
        pure ()


updateTree :: (JavaObjectClass this_) => this_ -> IO (())
updateTree object_ = jmethod object_ "updateTree" (\() -> (updateTree_impl (javaCast object_ :: WorkAreaJTreeJPanel))) ()

updateTree_super :: (JavaObjectClass this_) => this_ -> IO (())
updateTree_super object_ = (updateTree_impl (javaCast object_ :: WorkAreaJTreeJPanel))

updateTree_impl :: WorkAreaJTreeJPanel -> IO (())
updateTree_impl this = do
        assignedValue <- (JTree.new_1 (jget (this).rootTreeNode))
        jset (this).workAreaJTree (assignedValue)
        Control.Monad.void (JTree.addMouseListener ((jget (this).workAreaJTree)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPanel.removeAll ((jget (this).workAreaPropertiesJPanel)))
        Control.Monad.void (JPanel.add ((jget (this).workAreaPropertiesJPanel)) (jget (this).workAreaJTree))
        pure ()


-- Java overloads of getNode: calls the overload for the types of the arguments
getNode :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (BasicArrayList.BasicArrayList)
getNode this a1
    | jisInstanceOf a1 (javaNull :: JavaArray (TreePath.TreePath)) = getNode_overload1 this (javaCast a1 :: JavaArray (TreePath.TreePath))
    | jisInstanceOf a1 (javaNull :: TreePath.TreePath) = getNode_overload2 this (javaCast a1 :: TreePath.TreePath)
    | otherwise = getNode_overload2 this (javaCast a1 :: TreePath.TreePath)

getNode_overload1 :: (JavaObjectClass this_) => this_ -> JavaArray (TreePath.TreePath) -> IO (BasicArrayList.BasicArrayList)
getNode_overload1 object_ a1 = jmethod object_ "getNode_overload1" (\() -> (getNode_overload1_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1

getNode_overload1_super :: (JavaObjectClass this_) => this_ -> JavaArray (TreePath.TreePath) -> IO (BasicArrayList.BasicArrayList)
getNode_overload1_super object_ a1 = (getNode_overload1_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1

getNode_overload1_impl :: WorkAreaJTreeJPanel -> JavaArray (TreePath.TreePath) -> IO (BasicArrayList.BasicArrayList)
getNode_overload1_impl this treePathArray = do
        basicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        when (treePathArray /= javaNull) $ do
            forM_ [0 .. (jlength treePathArray) - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (BasicArrayList.add basicArrayList (jio (WorkAreaJTreeJPanel.getNode this (jindex treePathArray (index)))))
        pure (basicArrayList)


getNode_overload2 :: (JavaObjectClass this_) => this_ -> TreePath.TreePath -> IO (DefaultMutableTreeNode.DefaultMutableTreeNode)
getNode_overload2 object_ a1 = jmethod object_ "getNode_overload2" (\() -> (getNode_overload2_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1

getNode_overload2_super :: (JavaObjectClass this_) => this_ -> TreePath.TreePath -> IO (DefaultMutableTreeNode.DefaultMutableTreeNode)
getNode_overload2_super object_ a1 = (getNode_overload2_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1

getNode_overload2_impl :: WorkAreaJTreeJPanel -> TreePath.TreePath -> IO (DefaultMutableTreeNode.DefaultMutableTreeNode)
getNode_overload2_impl this treePath = do
    javaCatchReturn $ do
        when (treePath /= javaNull) $ do
            obj <- (TreePath.getPath treePath)
            when (obj /= javaNull) $ do
                let node = (javaCast (jindex obj (((jlength obj) - 1))) :: DefaultMutableTreeNode.DefaultMutableTreeNode)
                javaReturn (node)
        pure (javaNull)


-- throws Exception
deselectAll :: (JavaObjectClass this_) => this_ -> IO (())
deselectAll object_ = jmethod object_ "deselectAll" (\() -> (deselectAll_impl (javaCast object_ :: WorkAreaJTreeJPanel))) ()

deselectAll_super :: (JavaObjectClass this_) => this_ -> IO (())
deselectAll_super object_ = (deselectAll_impl (javaCast object_ :: WorkAreaJTreeJPanel))

deselectAll_impl :: WorkAreaJTreeJPanel -> IO (())
deselectAll_impl this = do
        size <- (BasicArrayList.size ((jget (this).highlightedBasicArrayList)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("size: " ++ javaToString size) this "deselectAll")
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let node = (javaCast (jio (BasicArrayList.get ((jget (this).highlightedBasicArrayList)) index)) :: DefaultMutableTreeNode.DefaultMutableTreeNode)
            Control.Monad.void (MyGraphicItemEventService.fire (jio (MyGraphicItemEvent.new_1 (javaCast (jio (MyGraphicItemEventSource.new_2 (jget MyGraphicItemEventService.dESELECT) node)) :: Any.Any))))
        Control.Monad.void (BasicArrayList.clear ((jget (this).highlightedBasicArrayList)))
        pure ()


-- throws Exception
selectGraphicItem :: (JavaObjectClass this_) => this_ -> DefaultMutableTreeNode.DefaultMutableTreeNode -> IO (())
selectGraphicItem object_ a1 = jmethod object_ "selectGraphicItem" (\() -> (selectGraphicItem_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1

selectGraphicItem_super :: (JavaObjectClass this_) => this_ -> DefaultMutableTreeNode.DefaultMutableTreeNode -> IO (())
selectGraphicItem_super object_ a1 = (selectGraphicItem_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1

selectGraphicItem_impl :: WorkAreaJTreeJPanel -> DefaultMutableTreeNode.DefaultMutableTreeNode -> IO (())
selectGraphicItem_impl this node = do
        Control.Monad.void (BasicArrayList.add ((jget (this).highlightedBasicArrayList)) node)
        Control.Monad.void (MyGraphicItemEventService.fire (jio (MyGraphicItemEvent.new_1 (javaCast (jio (MyGraphicItemEventSource.new_2 (jget MyGraphicItemEventService.sELECT) node)) :: Any.Any))))
        pure ()


-- throws Exception
removeGraphicItem :: (JavaObjectClass this_) => this_ -> DefaultMutableTreeNode.DefaultMutableTreeNode -> IO (())
removeGraphicItem object_ a1 = jmethod object_ "removeGraphicItem" (\() -> (removeGraphicItem_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1

removeGraphicItem_super :: (JavaObjectClass this_) => this_ -> DefaultMutableTreeNode.DefaultMutableTreeNode -> IO (())
removeGraphicItem_super object_ a1 = (removeGraphicItem_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1

removeGraphicItem_impl :: WorkAreaJTreeJPanel -> DefaultMutableTreeNode.DefaultMutableTreeNode -> IO (())
removeGraphicItem_impl this node = do
        Control.Monad.void (MyGraphicItemEventService.fire (jio (MyGraphicItemEvent.new_1 (javaCast (jio (MyGraphicItemEventSource.new_2 (jget MyGraphicItemEventService.dELETE) node)) :: Any.Any))))
        pure ()


-- throws Exception
removeCanvas :: (JavaObjectClass this_) => this_ -> DefaultMutableTreeNode.DefaultMutableTreeNode -> IO (())
removeCanvas object_ a1 = jmethod object_ "removeCanvas" (\() -> (removeCanvas_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1

removeCanvas_super :: (JavaObjectClass this_) => this_ -> DefaultMutableTreeNode.DefaultMutableTreeNode -> IO (())
removeCanvas_super object_ a1 = (removeCanvas_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1

removeCanvas_impl :: WorkAreaJTreeJPanel -> DefaultMutableTreeNode.DefaultMutableTreeNode -> IO (())
removeCanvas_impl this node = do
        Control.Monad.void (MyCanvasEventService.fire (jio (MyCanvasEvent.new_1 (javaCast (jio (MyCanvasEventSource.new_2 (jget MyCanvasEventService.dELETE) node)) :: Any.Any))))
        pure ()


-- throws Exception
remove :: (JavaObjectClass this_) => this_ -> TreePath.TreePath -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> TreePath.TreePath -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1

remove_impl :: WorkAreaJTreeJPanel -> TreePath.TreePath -> IO (())
remove_impl this treePath = do
        node <- (fmap (\value_ -> javaCast value_ :: DefaultMutableTreeNode.DefaultMutableTreeNode) (WorkAreaJTreeJPanel.getNode this treePath))
        when (node /= javaNull) $ do
            if (javaInstanceOf (jio (DefaultMutableTreeNode.getUserObject node)) "CanvasTreeLabel") then do
                Control.Monad.void (WorkAreaJTreeJPanel.removeCanvas this node)
            else do
                Control.Monad.void (WorkAreaJTreeJPanel.removeGraphicItem this node)
        let parent = (javaCast (jio (DefaultMutableTreeNode.getParent node)) :: DefaultMutableTreeNode.DefaultMutableTreeNode)
        Control.Monad.void (DefaultMutableTreeNode.remove parent node)
        pure ()


-- throws Exception
copy :: (JavaObjectClass this_) => this_ -> IO (())
copy object_ = jmethod object_ "copy" (\() -> (copy_impl (javaCast object_ :: WorkAreaJTreeJPanel))) ()

copy_super :: (JavaObjectClass this_) => this_ -> IO (())
copy_super object_ = (copy_impl (javaCast object_ :: WorkAreaJTreeJPanel))

copy_impl :: WorkAreaJTreeJPanel -> IO (())
copy_impl this = do
        treePath <- (JTree.getSelectionPath ((jget (this).workAreaJTree)))
        Control.Monad.void (WorkAreaJTreeJPanel.copy_1 this treePath)
        Control.Monad.void (WorkAreaJTreeJPanel.updateTree this)
        Control.Monad.void (WorkAreaJTreeJPanel.expand this)
        Control.Monad.void (JPanel.repaint this)
        pure ()


-- throws Exception
copy_1 :: (JavaObjectClass this_) => this_ -> TreePath.TreePath -> IO (())
copy_1 object_ a1 = jmethod object_ "copy_1" (\() -> (copy_1_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1

copy_1_super :: (JavaObjectClass this_) => this_ -> TreePath.TreePath -> IO (())
copy_1_super object_ a1 = (copy_1_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1

copy_1_impl :: WorkAreaJTreeJPanel -> TreePath.TreePath -> IO (())
copy_1_impl this treePath = do
        node <- (fmap (\value_ -> javaCast value_ :: DefaultMutableTreeNode.DefaultMutableTreeNode) (WorkAreaJTreeJPanel.getNode this treePath))
        when (node /= javaNull) $ do
            if (javaInstanceOf (jio (DefaultMutableTreeNode.getUserObject node)) "CanvasTreeLabel") then do
                Control.Monad.void (MyCanvasEventService.fire (jio (MyCanvasEvent.new_1 (javaCast (jio (MyCanvasEventSource.new_2 (jget MyCanvasEventService.dUPLICATE) node)) :: Any.Any))))
            else do
                Control.Monad.void (MyGraphicItemEventService.fire (jio (MyGraphicItemEvent.new_1 (javaCast (jio (MyGraphicItemEventSource.new_2 (jget MyGraphicItemEventService.dUPLICATE) node)) :: Any.Any))))
        pure ()


-- throws Exception
rotate :: (JavaObjectClass this_) => this_ -> TreePath.TreePath -> Double -> IO (())
rotate object_ a1 a2 = jmethod object_ "rotate" (\() -> (rotate_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1 a2

rotate_super :: (JavaObjectClass this_) => this_ -> TreePath.TreePath -> Double -> IO (())
rotate_super object_ a1 a2 = (rotate_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1 a2

rotate_impl :: WorkAreaJTreeJPanel -> TreePath.TreePath -> Double -> IO (())
rotate_impl this treePath angle = do
        node <- (fmap (\value_ -> javaCast value_ :: DefaultMutableTreeNode.DefaultMutableTreeNode) (WorkAreaJTreeJPanel.getNode this treePath))
        when (node /= javaNull) $ do
            if (javaInstanceOf (jio (DefaultMutableTreeNode.getUserObject node)) "CanvasTreeLabel") then do
                Control.Monad.void (MyCanvasEventService.fire (jio (MyCanvasEvent.new_1 (javaCast (jio (MyCanvasEventSource.new_3 (jget MyCanvasEventService.rOTATE) angle node)) :: Any.Any))))
            else do
                Control.Monad.void (MyGraphicItemEventService.fire (jio (MyGraphicItemEvent.new_1 (javaCast (jio (MyGraphicItemEventSource.new_3 (jget MyGraphicItemEventService.rOTATE) angle node)) :: Any.Any))))
        pure ()


getRootTreeNode :: (JavaObjectClass this_) => this_ -> IO (MutableTreeNode.MutableTreeNode)
getRootTreeNode object_ = jmethod object_ "getRootTreeNode" (\() -> (getRootTreeNode_impl (javaCast object_ :: WorkAreaJTreeJPanel))) ()

getRootTreeNode_super :: (JavaObjectClass this_) => this_ -> IO (MutableTreeNode.MutableTreeNode)
getRootTreeNode_super object_ = (getRootTreeNode_impl (javaCast object_ :: WorkAreaJTreeJPanel))

getRootTreeNode_impl :: WorkAreaJTreeJPanel -> IO (MutableTreeNode.MutableTreeNode)
getRootTreeNode_impl this = do
        pure ((javaCast (jget (this).rootTreeNode) :: MutableTreeNode.MutableTreeNode))


expand :: (JavaObjectClass this_) => this_ -> IO (())
expand object_ = jmethod object_ "expand" (\() -> (expand_impl (javaCast object_ :: WorkAreaJTreeJPanel))) ()

expand_super :: (JavaObjectClass this_) => this_ -> IO (())
expand_super object_ = (expand_impl (javaCast object_ :: WorkAreaJTreeJPanel))

expand_impl :: WorkAreaJTreeJPanel -> IO (())
expand_impl this = do
        Control.Monad.void (JTree.expandRow ((jget (this).workAreaJTree)) 0)
        Control.Monad.void (JTree.expandRow ((jget (this).workAreaJTree)) 1)
        pure ()


expand_1 :: (JavaObjectClass this_) => this_ -> TreePath.TreePath -> IO (())
expand_1 object_ a1 = jmethod object_ "expand_1" (\() -> (expand_1_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1

expand_1_super :: (JavaObjectClass this_) => this_ -> TreePath.TreePath -> IO (())
expand_1_super object_ a1 = (expand_1_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1

expand_1_impl :: WorkAreaJTreeJPanel -> TreePath.TreePath -> IO (())
expand_1_impl this treePath = do
        Control.Monad.void (JTree.expandPath ((jget (this).workAreaJTree)) treePath)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: WorkAreaJTreeJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: WorkAreaJTreeJPanel))

initComponents_impl :: WorkAreaJTreeJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JPopupMenu.new_)
        jset this.itemJPopupMenu (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).deleteJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).copyJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).rotateJMenuItem (assignedValue)
        assignedValue <- (JScrollPane.new_)
        jset (this).itemJScrollPane1 (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).workAreaPropertiesJPanel (assignedValue)
        Control.Monad.void (JPopupMenu.addPopupMenuListener ((jget this.itemJPopupMenu)) (PopupMenuListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- popupMenuCanceled
            -- popupMenuWillBecomeInvisible
            -- popupMenuWillBecomeVisible
-}))
        Control.Monad.void (JMenuItem.setText ((jget (this).deleteJMenuItem)) "Delete")
        Control.Monad.void (JMenuItem.addMouseListener ((jget (this).deleteJMenuItem)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPopupMenu.add ((jget (this).itemJPopupMenu)) (jget (this).deleteJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).copyJMenuItem)) "Copy")
        Control.Monad.void (JMenuItem.addMouseListener ((jget (this).copyJMenuItem)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPopupMenu.add ((jget (this).itemJPopupMenu)) (jget (this).copyJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).rotateJMenuItem)) "Rotate 45*")
        Control.Monad.void (JMenuItem.addMouseListener ((jget (this).rotateJMenuItem)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPopupMenu.add ((jget (this).itemJPopupMenu)) (jget (this).rotateJMenuItem))
        Control.Monad.void (JPanel.setLayout this (jio (GridLayout.new_2 1 1)))
        Control.Monad.void (JPanel.addMouseListener ((jget (this).workAreaPropertiesJPanel)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPanel.setLayout ((jget (this).workAreaPropertiesJPanel)) (jio (GridLayout.new_2 1 0)))
        Control.Monad.void (JScrollPane.setViewportView ((jget (this).itemJScrollPane1)) (jget (this).workAreaPropertiesJPanel))
        Control.Monad.void (WorkAreaJTreeJPanel.add this (javaCast (jget (this).itemJScrollPane1)))
        pure ()


rotateJMenuItemMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
rotateJMenuItemMousePressed object_ a1 = jmethod object_ "rotateJMenuItemMousePressed" (\() -> (rotateJMenuItemMousePressed_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1

rotateJMenuItemMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
rotateJMenuItemMousePressed_super object_ a1 = (rotateJMenuItemMousePressed_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1

rotateJMenuItemMousePressed_impl :: WorkAreaJTreeJPanel -> MouseEvent.MouseEvent -> IO (())
rotateJMenuItemMousePressed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "rotateJMenuItemMousePressed" e)
            ) $ do
            treePath <- (JTree.getSelectionPath ((jget (this).workAreaJTree)))
            Control.Monad.void (WorkAreaJTreeJPanel.rotate this treePath 45)
            Control.Monad.void (WorkAreaJTreeJPanel.updateTree this)
            Control.Monad.void (WorkAreaJTreeJPanel.expand this)
            Control.Monad.void (JPanel.repaint this)
        pure ()


workAreaJTreeMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
workAreaJTreeMousePressed object_ a1 = jmethod object_ "workAreaJTreeMousePressed" (\() -> (workAreaJTreeMousePressed_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1

workAreaJTreeMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
workAreaJTreeMousePressed_super object_ a1 = (workAreaJTreeMousePressed_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1

workAreaJTreeMousePressed_impl :: WorkAreaJTreeJPanel -> MouseEvent.MouseEvent -> IO (())
workAreaJTreeMousePressed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "workAreaJTreeMousePressed" e)
            ) $ do
            selectedTreePathArray <- (JTree.getSelectionPaths ((jget (this).workAreaJTree)))
            list <- (WorkAreaJTreeJPanel.getNode this selectedTreePathArray)
            when ((jio (BasicArrayList.size list)) > 0) $ do
                when ((((jio (MouseEvent.getModifiers evt)) Data.Bits..&. (jget (evt).bUTTON3_MASK))) == (jget (evt).bUTTON3_MASK)) $ do
                    forM_ [0 .. (jlength selectedTreePathArray) - 1] $ \index -> javaIteration (pure ()) $ do
                        let defaultMutableTreeNode = (javaCast (jio (BasicArrayList.get list index)) :: DefaultMutableTreeNode.DefaultMutableTreeNode)
                        if (javaInstanceOf (jio (DefaultMutableTreeNode.getUserObject defaultMutableTreeNode)) "CanvasTreeLabel") then do
                            Control.Monad.void (JPopupMenu.show ((jget (this).itemJPopupMenu)) this (jio (MouseEvent.getX evt)) (jio (MouseEvent.getY evt)))
                        else do
                            Control.Monad.void (JPopupMenu.show ((jget (this).itemJPopupMenu)) this (jio (MouseEvent.getX evt)) (jio (MouseEvent.getY evt)))
                when ((((jio (MouseEvent.getModifiers evt)) Data.Bits..&. (jget (evt).bUTTON1_MASK))) == (jget (evt).bUTTON1_MASK)) $ do
                    Control.Monad.void (WorkAreaJTreeJPanel.deselectAll this)
                    forM_ [0 .. (jlength selectedTreePathArray) - 1] $ \index -> javaIteration (pure ()) $ do
                        let defaultMutableTreeNode = (javaCast (jio (BasicArrayList.get list index)) :: DefaultMutableTreeNode.DefaultMutableTreeNode)
                        if (javaInstanceOf (jio (DefaultMutableTreeNode.getUserObject defaultMutableTreeNode)) "CanvasTreeLabel") then do
                            Control.Monad.void (MyCanvasEventService.fire (jio (MyCanvasEvent.new_1 (javaCast (jio (MyCanvasEventSource.new_2 (jget MyCanvasEventService.sELECT) defaultMutableTreeNode)) :: Any.Any))))
                        else do
                            Control.Monad.void (WorkAreaJTreeJPanel.selectGraphicItem this defaultMutableTreeNode)
        pure ()


itemJPopupMenuPopupMenuWillBecomeInvisible :: (JavaObjectClass this_) => this_ -> PopupMenuEvent.PopupMenuEvent -> IO (())
itemJPopupMenuPopupMenuWillBecomeInvisible object_ a1 = jmethod object_ "itemJPopupMenuPopupMenuWillBecomeInvisible" (\() -> (itemJPopupMenuPopupMenuWillBecomeInvisible_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1

itemJPopupMenuPopupMenuWillBecomeInvisible_super :: (JavaObjectClass this_) => this_ -> PopupMenuEvent.PopupMenuEvent -> IO (())
itemJPopupMenuPopupMenuWillBecomeInvisible_super object_ a1 = (itemJPopupMenuPopupMenuWillBecomeInvisible_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1

itemJPopupMenuPopupMenuWillBecomeInvisible_impl :: WorkAreaJTreeJPanel -> PopupMenuEvent.PopupMenuEvent -> IO (())
itemJPopupMenuPopupMenuWillBecomeInvisible_impl this evt = do
        pure ()


itemJPopupMenuPopupMenuWillBecomeVisible :: (JavaObjectClass this_) => this_ -> PopupMenuEvent.PopupMenuEvent -> IO (())
itemJPopupMenuPopupMenuWillBecomeVisible object_ a1 = jmethod object_ "itemJPopupMenuPopupMenuWillBecomeVisible" (\() -> (itemJPopupMenuPopupMenuWillBecomeVisible_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1

itemJPopupMenuPopupMenuWillBecomeVisible_super :: (JavaObjectClass this_) => this_ -> PopupMenuEvent.PopupMenuEvent -> IO (())
itemJPopupMenuPopupMenuWillBecomeVisible_super object_ a1 = (itemJPopupMenuPopupMenuWillBecomeVisible_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1

itemJPopupMenuPopupMenuWillBecomeVisible_impl :: WorkAreaJTreeJPanel -> PopupMenuEvent.PopupMenuEvent -> IO (())
itemJPopupMenuPopupMenuWillBecomeVisible_impl this evt = do
        pure ()


copyJMenuItemMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
copyJMenuItemMousePressed object_ a1 = jmethod object_ "copyJMenuItemMousePressed" (\() -> (copyJMenuItemMousePressed_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1

copyJMenuItemMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
copyJMenuItemMousePressed_super object_ a1 = (copyJMenuItemMousePressed_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1

copyJMenuItemMousePressed_impl :: WorkAreaJTreeJPanel -> MouseEvent.MouseEvent -> IO (())
copyJMenuItemMousePressed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "copyJMenuItemMousePressed" e)
            ) $ do
            Control.Monad.void (WorkAreaJTreeJPanel.copy this)
        pure ()


deleteJMenuItemMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
deleteJMenuItemMousePressed object_ a1 = jmethod object_ "deleteJMenuItemMousePressed" (\() -> (deleteJMenuItemMousePressed_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1

deleteJMenuItemMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
deleteJMenuItemMousePressed_super object_ a1 = (deleteJMenuItemMousePressed_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1

deleteJMenuItemMousePressed_impl :: WorkAreaJTreeJPanel -> MouseEvent.MouseEvent -> IO (())
deleteJMenuItemMousePressed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "deleteJMenuItemMousePressed" e)
            ) $ do
            selectedTreePathArray <- (JTree.getSelectionPaths ((jget (this).workAreaJTree)))
            forM_ [0 .. (jlength selectedTreePathArray) - 1] $ \index -> javaIteration (pure ()) $ do
                let treePath = (jindex selectedTreePathArray (index))
                Control.Monad.void (WorkAreaJTreeJPanel.remove this treePath)
                Control.Monad.void (WorkAreaJTreeJPanel.updateTree this)
                Control.Monad.void (WorkAreaJTreeJPanel.expand this)
                Control.Monad.void (JPanel.repaint this)
        pure ()


workAreaPropertiesJPanelMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
workAreaPropertiesJPanelMousePressed object_ a1 = jmethod object_ "workAreaPropertiesJPanelMousePressed" (\() -> (workAreaPropertiesJPanelMousePressed_impl (javaCast object_ :: WorkAreaJTreeJPanel))) () a1

workAreaPropertiesJPanelMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
workAreaPropertiesJPanelMousePressed_super object_ a1 = (workAreaPropertiesJPanelMousePressed_impl (javaCast object_ :: WorkAreaJTreeJPanel)) a1

workAreaPropertiesJPanelMousePressed_impl :: WorkAreaJTreeJPanel -> MouseEvent.MouseEvent -> IO (())
workAreaPropertiesJPanelMousePressed_impl this evt = do
        pure ()


