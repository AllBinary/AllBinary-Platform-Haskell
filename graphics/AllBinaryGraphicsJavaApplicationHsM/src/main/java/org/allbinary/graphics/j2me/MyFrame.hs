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
-- package org.allbinary.graphics.j2me
module MyFrame (module MyFrame, module JFrame) where

import JFrame hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initComponents, initComponents_super, initComponents_impl, explodeAllJMenuItemMousePressed, explodeAllJMenuItemMousePressed_super, explodeAllJMenuItemMousePressed_impl, autoExplodeJMenuItemMousePressed, autoExplodeJMenuItemMousePressed_super, autoExplodeJMenuItemMousePressed_impl, stopJjButtonMousePressed, stopJjButtonMousePressed_super, stopJjButtonMousePressed_impl, playJButtonMousePressed, playJButtonMousePressed_super, playJButtonMousePressed_impl, autoRotateGenerationJMenuItemMousePressed, autoRotateGenerationJMenuItemMousePressed_super, autoRotateGenerationJMenuItemMousePressed_impl, zoomOutJMenuItemMousePressed, zoomOutJMenuItemMousePressed_super, zoomOutJMenuItemMousePressed_impl, zoomInJMenuItemMousePressed, zoomInJMenuItemMousePressed_super, zoomInJMenuItemMousePressed_impl, openJMenuItemActionPerformed, openJMenuItemActionPerformed_super, openJMenuItemActionPerformed_impl, exportJMenuItem1ActionPerformed, exportJMenuItem1ActionPerformed_super, exportJMenuItem1ActionPerformed_impl, saveJMenuItemMousePressed, saveJMenuItemMousePressed_super, saveJMenuItemMousePressed_impl, jTabbedPaneStateChanged, jTabbedPaneStateChanged_super, jTabbedPaneStateChanged_impl, frameJMenuActionPerformed, frameJMenuActionPerformed_super, frameJMenuActionPerformed_impl, exitJMenuItemActionPerformed, exitJMenuItemActionPerformed_super, exitJMenuItemActionPerformed_impl, newJMenuItemActionPerformed, newJMenuItemActionPerformed_super, newJMenuItemActionPerformed_impl, fileJMenuActionPerformed, fileJMenuActionPerformed_super, fileJMenuActionPerformed_impl, exitForm, exitForm_super, exitForm_impl, openJButtonActionPerformed, openJButtonActionPerformed_super, openJButtonActionPerformed_impl, jButton2ActionPerformed, jButton2ActionPerformed_super, jButton2ActionPerformed_impl, centerJMenuItemActionPerformed, centerJMenuItemActionPerformed_super, centerJMenuItemActionPerformed_impl, saveJButtonActionPerformed, saveJButtonActionPerformed_super, saveJButtonActionPerformed_impl, jButton1ActionPerformed, jButton1ActionPerformed_super, jButton1ActionPerformed_impl, jMenuItem1ActionPerformed, jMenuItem1ActionPerformed_super, jMenuItem1ActionPerformed_impl, onFiles, onFiles_super, onFiles_impl, newGraphics, newGraphics_super, newGraphics_impl, openGraphics, openGraphics_super, openGraphics_impl, export, export_super, export_impl, save, save_super, save_impl, onHashMap, onHashMap_super, onHashMap_impl, getSelectedWorkArea, getSelectedWorkArea_super, getSelectedWorkArea_impl, updateSelectedWorkArea, updateSelectedWorkArea_super, updateSelectedWorkArea_impl, add, add_super, add_impl, keyPressed, keyPressed_super, keyPressed_impl, keyReleased, keyReleased_super, keyReleased_impl, keyTyped, keyTyped_super, keyTyped_impl, main, main_super, main_impl, logUtil, commonStrings, guiLog, xslHelper, mAXWORKAREAS, numberOfWorkAreas, jAVA_TEMPLATE, sAVEEXTENSION, jAVAEXTENSION, pATH, sAVE_PATH, tEMPLATE_EXPORT_PATH, fileJDialog, rotateJDialog, animateJButton, autoDamageJMenuItem, autoExplodeJMenuItem, autoGrowJMenuItem, autoRotateGenerationJMenuItem, autoSheildMenuItem, autoShrinkJMenuItem, centerJMenuItem, copyJMenuItem1, exitJMenuItem, explodeAllJMenuItem, exportJMenuItem1, fileJMenu, frameJMenu, generateJMenu, insertAfterJMenuItem, insertBeforeJMenuItem, jButton1, jButton2, jButton3, jButton4, jButton41, jButton5, jMenu1, jMenuItem1, jPanel1, jTabbedPane, jToolBar1, mainJPanel, menuJMenuBar, newJMenuItem, nextFrameJMenuItem, objectJMenu, openJButton, openJMenuItem, playJButton, previousFrameJMenuItem, removeJMenuItem, saveAsJMenuItem, saveJButton, saveJMenuItem, statusJLabel, statusJPanel, stopJjButton, viewJMenu, zoomInJMenuItem, zoomOutJMenuItem)
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
import qualified Dimension -- same package or java.lang
import qualified JToolBar -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified JPanel -- same package or java.lang
import qualified JTabbedPane -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JMenuBar -- same package or java.lang
import qualified JMenu -- same package or java.lang
import qualified JMenuItem -- same package or java.lang
import qualified WindowAdapter -- same package or java.lang
import qualified WindowEvent -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified MouseAdapter -- same package or java.lang
import qualified MouseEvent -- same package or java.lang
import qualified GridLayout -- same package or java.lang
import qualified ChangeListener -- same package or java.lang
import qualified ChangeEvent -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Thread -- same package or java.lang
import qualified Runnable -- same package or java.lang
import qualified KeyEvent -- same package or java.lang
import qualified File -- java.io.File
import qualified HashMap -- java.util.HashMap
import qualified XslHelper -- org.allbinary.data.tree.dom.XslHelper
import qualified DomHelper -- org.allbinary.dom.DomHelper
import qualified NewWorkAreaJDialog -- org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog
import qualified RotateJDialog -- org.allbinary.graphics.j2me.dialog.RotateJDialog
import qualified WorkAreaDom -- org.allbinary.graphics.j2me.workarea.WorkAreaDom
import qualified WorkAreaJPanel -- org.allbinary.graphics.j2me.workarea.WorkAreaJPanel
import qualified WorkAreaJPanelInterface -- org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface
import qualified MyCanvasEvent -- org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent
import qualified MyCanvasEventService -- org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService
import qualified MyCanvasEventSource -- org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource
import qualified FileJDialog -- org.allbinary.gui.dialog.FileJDialog
import qualified FileJDialogListenerInterface -- org.allbinary.gui.dialog.FileJDialogListenerInterface
import qualified HashMapJDialogListenerInterface -- org.allbinary.gui.dialog.HashMapJDialogListenerInterface
import qualified LOGGING -- org.allbinary.log.LOGGING
import qualified GuiLog -- org.allbinary.logic.communication.log.GuiLog
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
-- import java.awt.*
-- import javax.swing.*
import qualified JFrame
import qualified KeyListener

-- implements FileJDialogListenerInterface
-- implements HashMapJDialogListenerInterface
-- implements KeyListener
data MyFrame = MyFrame
    { header_ :: JavaHeader
    , base :: JFrame.JFrame
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , guiLog :: IORef (GuiLog.GuiLog)
    , xslHelper :: IORef (XslHelper.XslHelper)
    , jAVA_TEMPLATE :: IORef (String)
    , sAVEEXTENSION :: IORef (String)
    , jAVAEXTENSION :: IORef (String)
    , fileJDialog :: IORef (FileJDialog.FileJDialog)
    , rotateJDialog :: IORef (RotateJDialog.RotateJDialog)
    , animateJButton :: IORef (JButton.JButton)
    , autoDamageJMenuItem :: IORef (JMenuItem.JMenuItem)
    , autoExplodeJMenuItem :: IORef (JMenuItem.JMenuItem)
    , autoGrowJMenuItem :: IORef (JMenuItem.JMenuItem)
    , autoRotateGenerationJMenuItem :: IORef (JMenuItem.JMenuItem)
    , autoSheildMenuItem :: IORef (JMenuItem.JMenuItem)
    , autoShrinkJMenuItem :: IORef (JMenuItem.JMenuItem)
    , centerJMenuItem :: IORef (JMenuItem.JMenuItem)
    , copyJMenuItem1 :: IORef (JMenuItem.JMenuItem)
    , exitJMenuItem :: IORef (JMenuItem.JMenuItem)
    , explodeAllJMenuItem :: IORef (JMenuItem.JMenuItem)
    , exportJMenuItem1 :: IORef (JMenuItem.JMenuItem)
    , fileJMenu :: IORef (JMenu.JMenu)
    , frameJMenu :: IORef (JMenu.JMenu)
    , generateJMenu :: IORef (JMenu.JMenu)
    , insertAfterJMenuItem :: IORef (JMenuItem.JMenuItem)
    , insertBeforeJMenuItem :: IORef (JMenuItem.JMenuItem)
    , jButton1 :: IORef (JButton.JButton)
    , jButton2 :: IORef (JButton.JButton)
    , jButton3 :: IORef (JButton.JButton)
    , jButton4 :: IORef (JButton.JButton)
    , jButton41 :: IORef (JButton.JButton)
    , jButton5 :: IORef (JButton.JButton)
    , jMenu1 :: IORef (JMenu.JMenu)
    , jMenuItem1 :: IORef (JMenuItem.JMenuItem)
    , jPanel1 :: IORef (JPanel.JPanel)
    , jTabbedPane :: IORef (JTabbedPane.JTabbedPane)
    , jToolBar1 :: IORef (JToolBar.JToolBar)
    , mainJPanel :: IORef (JPanel.JPanel)
    , menuJMenuBar :: IORef (JMenuBar.JMenuBar)
    , newJMenuItem :: IORef (JMenuItem.JMenuItem)
    , nextFrameJMenuItem :: IORef (JMenuItem.JMenuItem)
    , objectJMenu :: IORef (JMenu.JMenu)
    , openJButton :: IORef (JButton.JButton)
    , openJMenuItem :: IORef (JMenuItem.JMenuItem)
    , playJButton :: IORef (JButton.JButton)
    , previousFrameJMenuItem :: IORef (JMenuItem.JMenuItem)
    , removeJMenuItem :: IORef (JMenuItem.JMenuItem)
    , saveAsJMenuItem :: IORef (JMenuItem.JMenuItem)
    , saveJButton :: IORef (JButton.JButton)
    , saveJMenuItem :: IORef (JMenuItem.JMenuItem)
    , statusJPanel :: IORef (JPanel.JPanel)
    , stopJjButton :: IORef (JButton.JButton)
    , viewJMenu :: IORef (JMenu.JMenu)
    , zoomInJMenuItem :: IORef (JMenuItem.JMenuItem)
    , zoomOutJMenuItem :: IORef (JMenuItem.JMenuItem)
    }

instance JavaNull MyFrame where
    javaNull = javaNullRecord "MyFrame"

instance JavaEquals MyFrame where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MyFrame where
    (==) = jrecordEquals

instance JavaObjectClass MyFrame where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

mAXWORKAREAS = 10

{-# NOINLINE numberOfWorkAreas #-}
numberOfWorkAreas = unsafePerformIO (newIORef (0))

pATH = "G:/mnt/bc/mydev/work/graphics/AllBinaryGraphicsJavaApplication"

sAVE_PATH = (javaToString MyFrame.pATH ++ "/save")

tEMPLATE_EXPORT_PATH = (javaToString MyFrame.pATH ++ "/templates/export")

{-# NOINLINE statusJLabel #-}
statusJLabel = unsafePerformIO (newIORef (javaNull))

newRecord_ :: IO MyFrame
newRecord_ = do
    base <- JFrame.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    guiLog <- newIORef javaNull
    xslHelper <- newIORef javaNull
    jAVA_TEMPLATE <- newIORef ""
    sAVEEXTENSION <- newIORef ""
    jAVAEXTENSION <- newIORef ""
    fileJDialog <- newIORef javaNull
    rotateJDialog <- newIORef javaNull
    animateJButton <- newIORef javaNull
    autoDamageJMenuItem <- newIORef javaNull
    autoExplodeJMenuItem <- newIORef javaNull
    autoGrowJMenuItem <- newIORef javaNull
    autoRotateGenerationJMenuItem <- newIORef javaNull
    autoSheildMenuItem <- newIORef javaNull
    autoShrinkJMenuItem <- newIORef javaNull
    centerJMenuItem <- newIORef javaNull
    copyJMenuItem1 <- newIORef javaNull
    exitJMenuItem <- newIORef javaNull
    explodeAllJMenuItem <- newIORef javaNull
    exportJMenuItem1 <- newIORef javaNull
    fileJMenu <- newIORef javaNull
    frameJMenu <- newIORef javaNull
    generateJMenu <- newIORef javaNull
    insertAfterJMenuItem <- newIORef javaNull
    insertBeforeJMenuItem <- newIORef javaNull
    jButton1 <- newIORef javaNull
    jButton2 <- newIORef javaNull
    jButton3 <- newIORef javaNull
    jButton4 <- newIORef javaNull
    jButton41 <- newIORef javaNull
    jButton5 <- newIORef javaNull
    jMenu1 <- newIORef javaNull
    jMenuItem1 <- newIORef javaNull
    jPanel1 <- newIORef javaNull
    jTabbedPane <- newIORef javaNull
    jToolBar1 <- newIORef javaNull
    mainJPanel <- newIORef javaNull
    menuJMenuBar <- newIORef javaNull
    newJMenuItem <- newIORef javaNull
    nextFrameJMenuItem <- newIORef javaNull
    objectJMenu <- newIORef javaNull
    openJButton <- newIORef javaNull
    openJMenuItem <- newIORef javaNull
    playJButton <- newIORef javaNull
    previousFrameJMenuItem <- newIORef javaNull
    removeJMenuItem <- newIORef javaNull
    saveAsJMenuItem <- newIORef javaNull
    saveJButton <- newIORef javaNull
    saveJMenuItem <- newIORef javaNull
    statusJPanel <- newIORef javaNull
    stopJjButton <- newIORef javaNull
    viewJMenu <- newIORef javaNull
    zoomInJMenuItem <- newIORef javaNull
    zoomOutJMenuItem <- newIORef javaNull
    let this = MyFrame header_ base logUtil commonStrings guiLog xslHelper jAVA_TEMPLATE sAVEEXTENSION jAVAEXTENSION fileJDialog rotateJDialog animateJButton autoDamageJMenuItem autoExplodeJMenuItem autoGrowJMenuItem autoRotateGenerationJMenuItem autoSheildMenuItem autoShrinkJMenuItem centerJMenuItem copyJMenuItem1 exitJMenuItem explodeAllJMenuItem exportJMenuItem1 fileJMenu frameJMenu generateJMenu insertAfterJMenuItem insertBeforeJMenuItem jButton1 jButton2 jButton3 jButton4 jButton41 jButton5 jMenu1 jMenuItem1 jPanel1 jTabbedPane jToolBar1 mainJPanel menuJMenuBar newJMenuItem nextFrameJMenuItem objectJMenu openJButton openJMenuItem playJButton previousFrameJMenuItem removeJMenuItem saveAsJMenuItem saveJButton saveJMenuItem statusJPanel stopJjButton viewJMenu zoomInJMenuItem zoomOutJMenuItem
    jregisterLevel header_ this
    FileJDialogListenerInterface.registerInterface_ header_
    HashMapJDialogListenerInterface.registerInterface_ header_
    KeyListener.registerInterface_ header_
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "explodeAllJMenuItemMousePressed" (\() -> explodeAllJMenuItemMousePressed_impl this)
    jregisterMethod header_ "autoExplodeJMenuItemMousePressed" (\() -> autoExplodeJMenuItemMousePressed_impl this)
    jregisterMethod header_ "stopJjButtonMousePressed" (\() -> stopJjButtonMousePressed_impl this)
    jregisterMethod header_ "playJButtonMousePressed" (\() -> playJButtonMousePressed_impl this)
    jregisterMethod header_ "autoRotateGenerationJMenuItemMousePressed" (\() -> autoRotateGenerationJMenuItemMousePressed_impl this)
    jregisterMethod header_ "zoomOutJMenuItemMousePressed" (\() -> zoomOutJMenuItemMousePressed_impl this)
    jregisterMethod header_ "zoomInJMenuItemMousePressed" (\() -> zoomInJMenuItemMousePressed_impl this)
    jregisterMethod header_ "openJMenuItemActionPerformed" (\() -> openJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "exportJMenuItem1ActionPerformed" (\() -> exportJMenuItem1ActionPerformed_impl this)
    jregisterMethod header_ "saveJMenuItemMousePressed" (\() -> saveJMenuItemMousePressed_impl this)
    jregisterMethod header_ "jTabbedPaneStateChanged" (\() -> jTabbedPaneStateChanged_impl this)
    jregisterMethod header_ "frameJMenuActionPerformed" (\() -> frameJMenuActionPerformed_impl this)
    jregisterMethod header_ "exitJMenuItemActionPerformed" (\() -> exitJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "newJMenuItemActionPerformed" (\() -> newJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "fileJMenuActionPerformed" (\() -> fileJMenuActionPerformed_impl this)
    jregisterMethod header_ "exitForm" (\() -> exitForm_impl this)
    jregisterMethod header_ "openJButtonActionPerformed" (\() -> openJButtonActionPerformed_impl this)
    jregisterMethod header_ "jButton2ActionPerformed" (\() -> jButton2ActionPerformed_impl this)
    jregisterMethod header_ "centerJMenuItemActionPerformed" (\() -> centerJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "saveJButtonActionPerformed" (\() -> saveJButtonActionPerformed_impl this)
    jregisterMethod header_ "jButton1ActionPerformed" (\() -> jButton1ActionPerformed_impl this)
    jregisterMethod header_ "jMenuItem1ActionPerformed" (\() -> jMenuItem1ActionPerformed_impl this)
    jregisterMethod header_ "onFiles" (\() -> onFiles_impl this)
    jregisterMethod header_ "newGraphics" (\() -> newGraphics_impl this)
    jregisterMethod header_ "openGraphics" (\() -> openGraphics_impl this)
    jregisterMethod header_ "export" (\() -> export_impl this)
    jregisterMethod header_ "save" (\() -> save_impl this)
    jregisterMethod header_ "onHashMap" (\() -> onHashMap_impl this)
    jregisterMethod header_ "getSelectedWorkArea" (\() -> getSelectedWorkArea_impl this)
    jregisterMethod header_ "updateSelectedWorkArea" (\() -> updateSelectedWorkArea_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "keyPressed" (\() -> keyPressed_impl this)
    jregisterMethod header_ "keyReleased" (\() -> keyReleased_impl this)
    jregisterMethod header_ "keyTyped" (\() -> keyTyped_impl this)
    pure this

initFields_ :: MyFrame -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.guiLog =<< (GuiLog.getInstance)
    jset this.xslHelper =<< (XslHelper.getInstance)
    jset this.jAVA_TEMPLATE ("svgExport.xsl")
    jset this.sAVEEXTENSION (".gxml")
    jset this.jAVAEXTENSION (".javax")
    jset this.fileJDialog (javaNull)
    jset this.rotateJDialog (javaNull)
    jset this.animateJButton (javaNull)
    jset this.autoDamageJMenuItem (javaNull)
    jset this.autoExplodeJMenuItem (javaNull)
    jset this.autoGrowJMenuItem (javaNull)
    jset this.autoRotateGenerationJMenuItem (javaNull)
    jset this.autoSheildMenuItem (javaNull)
    jset this.autoShrinkJMenuItem (javaNull)
    jset this.centerJMenuItem (javaNull)
    jset this.copyJMenuItem1 (javaNull)
    jset this.exitJMenuItem (javaNull)
    jset this.explodeAllJMenuItem (javaNull)
    jset this.exportJMenuItem1 (javaNull)
    jset this.fileJMenu (javaNull)
    jset this.frameJMenu (javaNull)
    jset this.generateJMenu (javaNull)
    jset this.insertAfterJMenuItem (javaNull)
    jset this.insertBeforeJMenuItem (javaNull)
    jset this.jButton1 (javaNull)
    jset this.jButton2 (javaNull)
    jset this.jButton3 (javaNull)
    jset this.jButton4 (javaNull)
    jset this.jButton41 (javaNull)
    jset this.jButton5 (javaNull)
    jset this.jMenu1 (javaNull)
    jset this.jMenuItem1 (javaNull)
    jset this.jPanel1 (javaNull)
    jset this.jTabbedPane (javaNull)
    jset this.jToolBar1 (javaNull)
    jset this.mainJPanel (javaNull)
    jset this.menuJMenuBar (javaNull)
    jset this.newJMenuItem (javaNull)
    jset this.nextFrameJMenuItem (javaNull)
    jset this.objectJMenu (javaNull)
    jset this.openJButton (javaNull)
    jset this.openJMenuItem (javaNull)
    jset this.playJButton (javaNull)
    jset this.previousFrameJMenuItem (javaNull)
    jset this.removeJMenuItem (javaNull)
    jset this.saveAsJMenuItem (javaNull)
    jset this.saveJButton (javaNull)
    jset this.saveJMenuItem (javaNull)
    jset this.statusJPanel (javaNull)
    jset this.stopJjButton (javaNull)
    jset this.viewJMenu (javaNull)
    jset this.zoomInJMenuItem (javaNull)
    jset this.zoomOutJMenuItem (javaNull)
    pure ()

new_ :: IO MyFrame
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MyFrame -> IO ()
init_ this = do
        JFrame.init_ this.base
        initFields_ this
        Control.Monad.void (MyFrame.initComponents this)
        Control.Monad.void (JFrame.setSize this (jio (Dimension.new_2 550 400)))
        Control.Monad.void (JPanel.setSize ((jget (this).mainJPanel)) (jio (Dimension.new_2 550 400)))
        Control.Monad.void (JTabbedPane.setSize ((jget (this).jTabbedPane)) (jio (Dimension.new_2 550 400)))
        assignedValue <- (FileJDialog.new_)
        jset (this).fileJDialog (assignedValue)
        Control.Monad.void (FileJDialog.addFinishedListener ((jget (this).fileJDialog)) this)
        assignedValue <- (RotateJDialog.new_2 this False)
        jset (this).rotateJDialog (assignedValue)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: MyFrame))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: MyFrame))

initComponents_impl :: MyFrame -> IO (())
initComponents_impl this = do
        assignedValue <- (JToolBar.new_)
        jset this.jToolBar1 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).jButton2 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).saveJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).jButton1 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).openJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).jButton3 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).jButton4 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).jButton41 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).jButton5 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).animateJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).playJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).stopJjButton (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).jPanel1 (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).mainJPanel (assignedValue)
        assignedValue <- (JTabbedPane.new_)
        jset (this).jTabbedPane (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).statusJPanel (assignedValue)
        assignedValue <- (JLabel.new_)
        jset MyFrame.statusJLabel (assignedValue)
        assignedValue <- (JMenuBar.new_)
        jset (this).menuJMenuBar (assignedValue)
        assignedValue <- (JMenu.new_)
        jset (this).fileJMenu (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).newJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).openJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).saveJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).saveAsJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).exportJMenuItem1 (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).exitJMenuItem (assignedValue)
        assignedValue <- (JMenu.new_)
        jset (this).viewJMenu (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).zoomInJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).zoomOutJMenuItem (assignedValue)
        assignedValue <- (JMenu.new_)
        jset (this).objectJMenu (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).explodeAllJMenuItem (assignedValue)
        assignedValue <- (JMenu.new_)
        jset (this).frameJMenu (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).previousFrameJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).nextFrameJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).removeJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).copyJMenuItem1 (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).insertAfterJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).insertBeforeJMenuItem (assignedValue)
        assignedValue <- (JMenu.new_)
        jset (this).generateJMenu (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).centerJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).autoDamageJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).autoExplodeJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).autoGrowJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).jMenuItem1 (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).autoRotateGenerationJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).autoSheildMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).autoShrinkJMenuItem (assignedValue)
        assignedValue <- (JMenu.new_)
        jset (this).jMenu1 (assignedValue)
        Control.Monad.void (JFrame.addWindowListener this (WindowAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- windowClosing
-}))
        Control.Monad.void (JButton.setText ((jget (this).jButton2)) "New")
        Control.Monad.void (JButton.addActionListener ((jget (this).jButton2)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JToolBar.add ((jget (this).jToolBar1)) (jget (this).jButton2))
        Control.Monad.void (JButton.setText ((jget (this).saveJButton)) "Save")
        Control.Monad.void (JButton.addActionListener ((jget (this).saveJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JToolBar.add ((jget (this).jToolBar1)) (jget (this).saveJButton))
        Control.Monad.void (JButton.setText ((jget (this).jButton1)) "Export")
        Control.Monad.void (JButton.addActionListener ((jget (this).jButton1)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JToolBar.add ((jget (this).jToolBar1)) (jget (this).jButton1))
        Control.Monad.void (JButton.setText ((jget (this).openJButton)) "Open")
        Control.Monad.void (JButton.addActionListener ((jget (this).openJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JToolBar.add ((jget (this).jToolBar1)) (jget (this).openJButton))
        Control.Monad.void (JButton.setText ((jget (this).jButton3)) "Copy")
        Control.Monad.void (JToolBar.add ((jget (this).jToolBar1)) (jget (this).jButton3))
        Control.Monad.void (JButton.setText ((jget (this).jButton4)) "Insert Before")
        Control.Monad.void (JToolBar.add ((jget (this).jToolBar1)) (jget (this).jButton4))
        Control.Monad.void (JButton.setText ((jget (this).jButton41)) "Insert After")
        Control.Monad.void (JToolBar.add ((jget (this).jToolBar1)) (jget (this).jButton41))
        Control.Monad.void (JButton.setText ((jget (this).jButton5)) "Delete")
        Control.Monad.void (JToolBar.add ((jget (this).jToolBar1)) (jget (this).jButton5))
        Control.Monad.void (JButton.setText ((jget (this).animateJButton)) "AnimateEdit")
        Control.Monad.void (JToolBar.add ((jget (this).jToolBar1)) (jget (this).animateJButton))
        Control.Monad.void (JButton.setText ((jget (this).playJButton)) "Play")
        Control.Monad.void (JButton.addMouseListener ((jget (this).playJButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JToolBar.add ((jget (this).jToolBar1)) (jget (this).playJButton))
        Control.Monad.void (JButton.setText ((jget (this).stopJjButton)) "Stop")
        Control.Monad.void (JButton.addMouseListener ((jget (this).stopJjButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JToolBar.add ((jget (this).jToolBar1)) (jget (this).stopJjButton))
        Control.Monad.void (add ((jio (JFrame.getContentPane this))) (jget (this).jToolBar1) (jget ((jget (java.awt).borderLayout)).nORTH))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel1)) (jio (GridLayout.new_2 1 0)))
        Control.Monad.void (JPanel.setLayout ((jget (this).mainJPanel)) (jio (GridLayout.new_2 1 0)))
        Control.Monad.void (JTabbedPane.setMinimumSize ((jget (this).jTabbedPane)) (jio (Dimension.new_2 550 400)))
        Control.Monad.void (JTabbedPane.addChangeListener ((jget (this).jTabbedPane)) (ChangeListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- stateChanged
-}))
        Control.Monad.void (JPanel.add ((jget (this).mainJPanel)) (jget (this).jTabbedPane))
        Control.Monad.void (JPanel.add ((jget (this).jPanel1)) (jget (this).mainJPanel))
        Control.Monad.void (add ((jio (JFrame.getContentPane this))) (jget (this).jPanel1) (jget ((jget (java.awt).borderLayout)).cENTER))
        Control.Monad.void (JPanel.setLayout ((jget (this).statusJPanel)) (jio (GridLayout.new_2 1 0)))
        Control.Monad.void (setText ((jget MyFrame.statusJLabel)) "Status Bar")
        Control.Monad.void (JPanel.add ((jget (this).statusJPanel)) (jget MyFrame.statusJLabel))
        Control.Monad.void (add ((jio (JFrame.getContentPane this))) (jget (this).statusJPanel) (jget ((jget (java.awt).borderLayout)).sOUTH))
        Control.Monad.void (JMenu.setText ((jget (this).fileJMenu)) "File")
        Control.Monad.void (JMenu.addActionListener ((jget (this).fileJMenu)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenuItem.setText ((jget (this).newJMenuItem)) "New")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).newJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).fileJMenu)) (jget (this).newJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).openJMenuItem)) "Open")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).openJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).fileJMenu)) (jget (this).openJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).saveJMenuItem)) "Save")
        Control.Monad.void (JMenuItem.addMouseListener ((jget (this).saveJMenuItem)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JMenu.add ((jget (this).fileJMenu)) (jget (this).saveJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).saveAsJMenuItem)) "SaveAs")
        Control.Monad.void (JMenu.add ((jget (this).fileJMenu)) (jget (this).saveAsJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).exportJMenuItem1)) "Export")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).exportJMenuItem1)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).fileJMenu)) (jget (this).exportJMenuItem1))
        Control.Monad.void (JMenuItem.setText ((jget (this).exitJMenuItem)) "Exit")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).exitJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).fileJMenu)) (jget (this).exitJMenuItem))
        Control.Monad.void (JMenuBar.add ((jget (this).menuJMenuBar)) (jget (this).fileJMenu))
        Control.Monad.void (JMenu.setText ((jget (this).viewJMenu)) "View")
        Control.Monad.void (JMenuItem.setText ((jget (this).zoomInJMenuItem)) "Zoom In")
        Control.Monad.void (JMenuItem.addMouseListener ((jget (this).zoomInJMenuItem)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JMenu.add ((jget (this).viewJMenu)) (jget (this).zoomInJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).zoomOutJMenuItem)) "Zoom Out")
        Control.Monad.void (JMenuItem.addMouseListener ((jget (this).zoomOutJMenuItem)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JMenu.add ((jget (this).viewJMenu)) (jget (this).zoomOutJMenuItem))
        Control.Monad.void (JMenuBar.add ((jget (this).menuJMenuBar)) (jget (this).viewJMenu))
        Control.Monad.void (JMenu.setText ((jget (this).objectJMenu)) "Objects")
        Control.Monad.void (JMenuItem.setText ((jget (this).explodeAllJMenuItem)) "Explode All")
        Control.Monad.void (JMenuItem.addMouseListener ((jget (this).explodeAllJMenuItem)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JMenu.add ((jget (this).objectJMenu)) (jget (this).explodeAllJMenuItem))
        Control.Monad.void (JMenuBar.add ((jget (this).menuJMenuBar)) (jget (this).objectJMenu))
        Control.Monad.void (JMenu.setText ((jget (this).frameJMenu)) "Frame")
        Control.Monad.void (JMenu.addActionListener ((jget (this).frameJMenu)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenuItem.setText ((jget (this).previousFrameJMenuItem)) "Previous")
        Control.Monad.void (JMenu.add ((jget (this).frameJMenu)) (jget (this).previousFrameJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).nextFrameJMenuItem)) (jget ((jio (CommonLabels.getInstance))).nEXT))
        Control.Monad.void (JMenu.add ((jget (this).frameJMenu)) (jget (this).nextFrameJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).removeJMenuItem)) "Remove")
        Control.Monad.void (JMenu.add ((jget (this).frameJMenu)) (jget (this).removeJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).copyJMenuItem1)) "Copy")
        Control.Monad.void (JMenu.add ((jget (this).frameJMenu)) (jget (this).copyJMenuItem1))
        Control.Monad.void (JMenuItem.setText ((jget (this).insertAfterJMenuItem)) "Ins After")
        Control.Monad.void (JMenu.add ((jget (this).frameJMenu)) (jget (this).insertAfterJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).insertBeforeJMenuItem)) "Ins Before")
        Control.Monad.void (JMenu.add ((jget (this).frameJMenu)) (jget (this).insertBeforeJMenuItem))
        Control.Monad.void (JMenuBar.add ((jget (this).menuJMenuBar)) (jget (this).frameJMenu))
        Control.Monad.void (JMenu.setText ((jget (this).generateJMenu)) "Generate")
        Control.Monad.void (JMenuItem.setText ((jget (this).centerJMenuItem)) "Center")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).centerJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).generateJMenu)) (jget (this).centerJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).autoDamageJMenuItem)) "Damage")
        Control.Monad.void (JMenu.add ((jget (this).generateJMenu)) (jget (this).autoDamageJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).autoExplodeJMenuItem)) "Explode")
        Control.Monad.void (JMenuItem.addMouseListener ((jget (this).autoExplodeJMenuItem)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JMenu.add ((jget (this).generateJMenu)) (jget (this).autoExplodeJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).autoGrowJMenuItem)) "Grow")
        Control.Monad.void (JMenu.add ((jget (this).generateJMenu)) (jget (this).autoGrowJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).jMenuItem1)) "Mirror")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).jMenuItem1)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).generateJMenu)) (jget (this).jMenuItem1))
        Control.Monad.void (JMenuItem.setText ((jget (this).autoRotateGenerationJMenuItem)) "Rotate")
        Control.Monad.void (JMenuItem.addMouseListener ((jget (this).autoRotateGenerationJMenuItem)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JMenu.add ((jget (this).generateJMenu)) (jget (this).autoRotateGenerationJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).autoSheildMenuItem)) "Shield")
        Control.Monad.void (JMenu.add ((jget (this).generateJMenu)) (jget (this).autoSheildMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).autoShrinkJMenuItem)) "Shrink")
        Control.Monad.void (JMenu.add ((jget (this).generateJMenu)) (jget (this).autoShrinkJMenuItem))
        Control.Monad.void (JMenuBar.add ((jget (this).menuJMenuBar)) (jget (this).generateJMenu))
        Control.Monad.void (JMenu.setText ((jget (this).jMenu1)) "Help")
        Control.Monad.void (JMenuBar.add ((jget (this).menuJMenuBar)) (jget (this).jMenu1))
        Control.Monad.void (JFrame.setJMenuBar this (jget (this).menuJMenuBar))
        Control.Monad.void (JFrame.pack this)
        pure ()


explodeAllJMenuItemMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
explodeAllJMenuItemMousePressed object_ a1 = jmethod object_ "explodeAllJMenuItemMousePressed" (\() -> (explodeAllJMenuItemMousePressed_impl (javaCast object_ :: MyFrame))) () a1

explodeAllJMenuItemMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
explodeAllJMenuItemMousePressed_super object_ a1 = (explodeAllJMenuItemMousePressed_impl (javaCast object_ :: MyFrame)) a1

explodeAllJMenuItemMousePressed_impl :: MyFrame -> MouseEvent.MouseEvent -> IO (())
explodeAllJMenuItemMousePressed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "explodeAllJMenuItemMousePressed" e)
            ) $ do
            Control.Monad.void (MyCanvasEventService.fire (jio (MyCanvasEvent.new_1 (javaCast (jio (MyCanvasEventSource.new_2 (jget MyCanvasEventService.eXPLODE) javaNull)) :: Any.Any))))
        pure ()


autoExplodeJMenuItemMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
autoExplodeJMenuItemMousePressed object_ a1 = jmethod object_ "autoExplodeJMenuItemMousePressed" (\() -> (autoExplodeJMenuItemMousePressed_impl (javaCast object_ :: MyFrame))) () a1

autoExplodeJMenuItemMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
autoExplodeJMenuItemMousePressed_super object_ a1 = (autoExplodeJMenuItemMousePressed_impl (javaCast object_ :: MyFrame)) a1

autoExplodeJMenuItemMousePressed_impl :: MyFrame -> MouseEvent.MouseEvent -> IO (())
autoExplodeJMenuItemMousePressed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "autoExplodeJMenuItemMousePressed" e)
            ) $ do
            Control.Monad.void (MyCanvasEventService.fire (jio (MyCanvasEvent.new_1 (javaCast (jio (MyCanvasEventSource.new_2 (jget MyCanvasEventService.aUTOEXPLODE) javaNull)) :: Any.Any))))
        pure ()


stopJjButtonMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
stopJjButtonMousePressed object_ a1 = jmethod object_ "stopJjButtonMousePressed" (\() -> (stopJjButtonMousePressed_impl (javaCast object_ :: MyFrame))) () a1

stopJjButtonMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
stopJjButtonMousePressed_super object_ a1 = (stopJjButtonMousePressed_impl (javaCast object_ :: MyFrame)) a1

stopJjButtonMousePressed_impl :: MyFrame -> MouseEvent.MouseEvent -> IO (())
stopJjButtonMousePressed_impl this evt = do
        Control.Monad.void (WorkAreaJPanelInterface.stop ((jio (MyFrame.getSelectedWorkArea this))))
        pure ()


playJButtonMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
playJButtonMousePressed object_ a1 = jmethod object_ "playJButtonMousePressed" (\() -> (playJButtonMousePressed_impl (javaCast object_ :: MyFrame))) () a1

playJButtonMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
playJButtonMousePressed_super object_ a1 = (playJButtonMousePressed_impl (javaCast object_ :: MyFrame)) a1

playJButtonMousePressed_impl :: MyFrame -> MouseEvent.MouseEvent -> IO (())
playJButtonMousePressed_impl this evt = do
        Control.Monad.void (WorkAreaJPanelInterface.play ((jio (MyFrame.getSelectedWorkArea this))))
        pure ()


autoRotateGenerationJMenuItemMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
autoRotateGenerationJMenuItemMousePressed object_ a1 = jmethod object_ "autoRotateGenerationJMenuItemMousePressed" (\() -> (autoRotateGenerationJMenuItemMousePressed_impl (javaCast object_ :: MyFrame))) () a1

autoRotateGenerationJMenuItemMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
autoRotateGenerationJMenuItemMousePressed_super object_ a1 = (autoRotateGenerationJMenuItemMousePressed_impl (javaCast object_ :: MyFrame)) a1

autoRotateGenerationJMenuItemMousePressed_impl :: MyFrame -> MouseEvent.MouseEvent -> IO (())
autoRotateGenerationJMenuItemMousePressed_impl this evt = do
        Control.Monad.void (RotateJDialog.setVisible ((jget (this).rotateJDialog)) True)
        pure ()


zoomOutJMenuItemMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
zoomOutJMenuItemMousePressed object_ a1 = jmethod object_ "zoomOutJMenuItemMousePressed" (\() -> (zoomOutJMenuItemMousePressed_impl (javaCast object_ :: MyFrame))) () a1

zoomOutJMenuItemMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
zoomOutJMenuItemMousePressed_super object_ a1 = (zoomOutJMenuItemMousePressed_impl (javaCast object_ :: MyFrame)) a1

zoomOutJMenuItemMousePressed_impl :: MyFrame -> MouseEvent.MouseEvent -> IO (())
zoomOutJMenuItemMousePressed_impl this evt = do
        Control.Monad.void (WorkAreaJPanelInterface.changeZoom ((jio (MyFrame.getSelectedWorkArea this))) (Prelude.negate 1))
        pure ()


zoomInJMenuItemMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
zoomInJMenuItemMousePressed object_ a1 = jmethod object_ "zoomInJMenuItemMousePressed" (\() -> (zoomInJMenuItemMousePressed_impl (javaCast object_ :: MyFrame))) () a1

zoomInJMenuItemMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
zoomInJMenuItemMousePressed_super object_ a1 = (zoomInJMenuItemMousePressed_impl (javaCast object_ :: MyFrame)) a1

zoomInJMenuItemMousePressed_impl :: MyFrame -> MouseEvent.MouseEvent -> IO (())
zoomInJMenuItemMousePressed_impl this evt = do
        Control.Monad.void (WorkAreaJPanelInterface.changeZoom ((jio (MyFrame.getSelectedWorkArea this))) 1)
        pure ()


openJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
openJMenuItemActionPerformed object_ a1 = jmethod object_ "openJMenuItemActionPerformed" (\() -> (openJMenuItemActionPerformed_impl (javaCast object_ :: MyFrame))) () a1

openJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
openJMenuItemActionPerformed_super object_ a1 = (openJMenuItemActionPerformed_impl (javaCast object_ :: MyFrame)) a1

openJMenuItemActionPerformed_impl :: MyFrame -> ActionEvent.ActionEvent -> IO (())
openJMenuItemActionPerformed_impl this evt = do
        Control.Monad.void (MyFrame.openGraphics this)
        pure ()


exportJMenuItem1ActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
exportJMenuItem1ActionPerformed object_ a1 = jmethod object_ "exportJMenuItem1ActionPerformed" (\() -> (exportJMenuItem1ActionPerformed_impl (javaCast object_ :: MyFrame))) () a1

exportJMenuItem1ActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
exportJMenuItem1ActionPerformed_super object_ a1 = (exportJMenuItem1ActionPerformed_impl (javaCast object_ :: MyFrame)) a1

exportJMenuItem1ActionPerformed_impl :: MyFrame -> ActionEvent.ActionEvent -> IO (())
exportJMenuItem1ActionPerformed_impl this evt = do
        Control.Monad.void (MyFrame.export this)
        pure ()


saveJMenuItemMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
saveJMenuItemMousePressed object_ a1 = jmethod object_ "saveJMenuItemMousePressed" (\() -> (saveJMenuItemMousePressed_impl (javaCast object_ :: MyFrame))) () a1

saveJMenuItemMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
saveJMenuItemMousePressed_super object_ a1 = (saveJMenuItemMousePressed_impl (javaCast object_ :: MyFrame)) a1

saveJMenuItemMousePressed_impl :: MyFrame -> MouseEvent.MouseEvent -> IO (())
saveJMenuItemMousePressed_impl this evt = do
        Control.Monad.void (MyFrame.save this)
        pure ()


jTabbedPaneStateChanged :: (JavaObjectClass this_) => this_ -> ChangeEvent.ChangeEvent -> IO (())
jTabbedPaneStateChanged object_ a1 = jmethod object_ "jTabbedPaneStateChanged" (\() -> (jTabbedPaneStateChanged_impl (javaCast object_ :: MyFrame))) () a1

jTabbedPaneStateChanged_super :: (JavaObjectClass this_) => this_ -> ChangeEvent.ChangeEvent -> IO (())
jTabbedPaneStateChanged_super object_ a1 = (jTabbedPaneStateChanged_impl (javaCast object_ :: MyFrame)) a1

jTabbedPaneStateChanged_impl :: MyFrame -> ChangeEvent.ChangeEvent -> IO (())
jTabbedPaneStateChanged_impl this evt = do
        Control.Monad.void (MyFrame.updateSelectedWorkArea this)
        pure ()


frameJMenuActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
frameJMenuActionPerformed object_ a1 = jmethod object_ "frameJMenuActionPerformed" (\() -> (frameJMenuActionPerformed_impl (javaCast object_ :: MyFrame))) () a1

frameJMenuActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
frameJMenuActionPerformed_super object_ a1 = (frameJMenuActionPerformed_impl (javaCast object_ :: MyFrame)) a1

frameJMenuActionPerformed_impl :: MyFrame -> ActionEvent.ActionEvent -> IO (())
frameJMenuActionPerformed_impl this evt = do
        pure ()


exitJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
exitJMenuItemActionPerformed object_ a1 = jmethod object_ "exitJMenuItemActionPerformed" (\() -> (exitJMenuItemActionPerformed_impl (javaCast object_ :: MyFrame))) () a1

exitJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
exitJMenuItemActionPerformed_super object_ a1 = (exitJMenuItemActionPerformed_impl (javaCast object_ :: MyFrame)) a1

exitJMenuItemActionPerformed_impl :: MyFrame -> ActionEvent.ActionEvent -> IO (())
exitJMenuItemActionPerformed_impl this evt = do
        Control.Monad.void (System.exit 0)
        pure ()


newJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
newJMenuItemActionPerformed object_ a1 = jmethod object_ "newJMenuItemActionPerformed" (\() -> (newJMenuItemActionPerformed_impl (javaCast object_ :: MyFrame))) () a1

newJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
newJMenuItemActionPerformed_super object_ a1 = (newJMenuItemActionPerformed_impl (javaCast object_ :: MyFrame)) a1

newJMenuItemActionPerformed_impl :: MyFrame -> ActionEvent.ActionEvent -> IO (())
newJMenuItemActionPerformed_impl this evt = do
        Control.Monad.void (MyFrame.newGraphics this)
        pure ()


fileJMenuActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
fileJMenuActionPerformed object_ a1 = jmethod object_ "fileJMenuActionPerformed" (\() -> (fileJMenuActionPerformed_impl (javaCast object_ :: MyFrame))) () a1

fileJMenuActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
fileJMenuActionPerformed_super object_ a1 = (fileJMenuActionPerformed_impl (javaCast object_ :: MyFrame)) a1

fileJMenuActionPerformed_impl :: MyFrame -> ActionEvent.ActionEvent -> IO (())
fileJMenuActionPerformed_impl this evt = do
        pure ()


exitForm :: (JavaObjectClass this_) => this_ -> WindowEvent.WindowEvent -> IO (())
exitForm object_ a1 = jmethod object_ "exitForm" (\() -> (exitForm_impl (javaCast object_ :: MyFrame))) () a1

exitForm_super :: (JavaObjectClass this_) => this_ -> WindowEvent.WindowEvent -> IO (())
exitForm_super object_ a1 = (exitForm_impl (javaCast object_ :: MyFrame)) a1

exitForm_impl :: MyFrame -> WindowEvent.WindowEvent -> IO (())
exitForm_impl this evt = do
        Control.Monad.void (System.exit 0)
        pure ()


openJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
openJButtonActionPerformed object_ a1 = jmethod object_ "openJButtonActionPerformed" (\() -> (openJButtonActionPerformed_impl (javaCast object_ :: MyFrame))) () a1

openJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
openJButtonActionPerformed_super object_ a1 = (openJButtonActionPerformed_impl (javaCast object_ :: MyFrame)) a1

openJButtonActionPerformed_impl :: MyFrame -> ActionEvent.ActionEvent -> IO (())
openJButtonActionPerformed_impl this evt = do
        Control.Monad.void (MyFrame.openGraphics this)
        pure ()


jButton2ActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jButton2ActionPerformed object_ a1 = jmethod object_ "jButton2ActionPerformed" (\() -> (jButton2ActionPerformed_impl (javaCast object_ :: MyFrame))) () a1

jButton2ActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jButton2ActionPerformed_super object_ a1 = (jButton2ActionPerformed_impl (javaCast object_ :: MyFrame)) a1

jButton2ActionPerformed_impl :: MyFrame -> ActionEvent.ActionEvent -> IO (())
jButton2ActionPerformed_impl this evt = do
        Control.Monad.void (MyFrame.newGraphics this)
        pure ()


centerJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
centerJMenuItemActionPerformed object_ a1 = jmethod object_ "centerJMenuItemActionPerformed" (\() -> (centerJMenuItemActionPerformed_impl (javaCast object_ :: MyFrame))) () a1

centerJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
centerJMenuItemActionPerformed_super object_ a1 = (centerJMenuItemActionPerformed_impl (javaCast object_ :: MyFrame)) a1

centerJMenuItemActionPerformed_impl :: MyFrame -> ActionEvent.ActionEvent -> IO (())
centerJMenuItemActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "centerJMenuItemActionPerformed" e)
            ) $ do
            Control.Monad.void (MyCanvasEventService.fire (jio (MyCanvasEvent.new_1 (javaCast (jio (MyCanvasEventSource.new_2 (jget MyCanvasEventService.cENTER) javaNull)) :: Any.Any))))
        pure ()


saveJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
saveJButtonActionPerformed object_ a1 = jmethod object_ "saveJButtonActionPerformed" (\() -> (saveJButtonActionPerformed_impl (javaCast object_ :: MyFrame))) () a1

saveJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
saveJButtonActionPerformed_super object_ a1 = (saveJButtonActionPerformed_impl (javaCast object_ :: MyFrame)) a1

saveJButtonActionPerformed_impl :: MyFrame -> ActionEvent.ActionEvent -> IO (())
saveJButtonActionPerformed_impl this evt = do
        Control.Monad.void (MyFrame.save this)
        pure ()


jButton1ActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jButton1ActionPerformed object_ a1 = jmethod object_ "jButton1ActionPerformed" (\() -> (jButton1ActionPerformed_impl (javaCast object_ :: MyFrame))) () a1

jButton1ActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jButton1ActionPerformed_super object_ a1 = (jButton1ActionPerformed_impl (javaCast object_ :: MyFrame)) a1

jButton1ActionPerformed_impl :: MyFrame -> ActionEvent.ActionEvent -> IO (())
jButton1ActionPerformed_impl this evt = do
        Control.Monad.void (MyFrame.export this)
        pure ()


jMenuItem1ActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jMenuItem1ActionPerformed object_ a1 = jmethod object_ "jMenuItem1ActionPerformed" (\() -> (jMenuItem1ActionPerformed_impl (javaCast object_ :: MyFrame))) () a1

jMenuItem1ActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jMenuItem1ActionPerformed_super object_ a1 = (jMenuItem1ActionPerformed_impl (javaCast object_ :: MyFrame)) a1

jMenuItem1ActionPerformed_impl :: MyFrame -> ActionEvent.ActionEvent -> IO (())
jMenuItem1ActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "centerJMenuItemActionPerformed" e)
            ) $ do
            Control.Monad.void (WorkAreaJPanelInterface.autoMirror ((jio (MyFrame.getSelectedWorkArea this))))
        pure ()


onFiles :: (JavaObjectClass this_) => this_ -> JavaArray (File.File) -> IO (())
onFiles object_ a1 = jmethod object_ "onFiles" (\() -> (onFiles_impl (javaCast object_ :: MyFrame))) () a1

onFiles_super :: (JavaObjectClass this_) => this_ -> JavaArray (File.File) -> IO (())
onFiles_super object_ a1 = (onFiles_impl (javaCast object_ :: MyFrame)) a1

onFiles_impl :: MyFrame -> JavaArray (File.File) -> IO (())
onFiles_impl this files = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "onFiles" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Reading: " ++ javaToString files) this "onFiles")
            forM_ [0 .. (jlength files) - 1] $ \index -> javaIteration (pure ()) $ do
                document <- (DomHelper.createDocument ((jio (DomHelper.getInstance))) (jindex files (index)))
                workAreaJPanel <- (WorkAreaJPanel.new_2 (jio (WorkAreaDom.new_1 document)) (jio (JFrame.getSize this)))
                Control.Monad.void (WorkAreaJPanel.setLayout workAreaJPanel (jio (GridLayout.new_2 1 1)))
                Control.Monad.void (MyFrame.add this (javaCast workAreaJPanel :: WorkAreaJPanelInterface.WorkAreaJPanelInterface))
            Control.Monad.void (FileJDialog.setVisible ((jget (this).fileJDialog)) False)
        pure ()


newGraphics :: (JavaObjectClass this_) => this_ -> IO (())
newGraphics object_ = jmethod object_ "newGraphics" (\() -> (newGraphics_impl (javaCast object_ :: MyFrame))) ()

newGraphics_super :: (JavaObjectClass this_) => this_ -> IO (())
newGraphics_super object_ = (newGraphics_impl (javaCast object_ :: MyFrame))

newGraphics_impl :: MyFrame -> IO (())
newGraphics_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (LOGGING.contains (LOGGING.mENUEVENT))) $ do
                Control.Monad.void (GuiLog.put ((jget (this).guiLog)) (jget ((jget (this).commonStrings)).eXCEPTION) this "newJMenuItemActionPerformed" e)
            ) $ do
            let newName = ("graphic" ++ javaToString (jget MyFrame.numberOfWorkAreas))
            dim <- (JFrame.getSize this)
            newDialog <- (NewWorkAreaJDialog.new_4 this False dim newName)
        pure ()


openGraphics :: (JavaObjectClass this_) => this_ -> IO (())
openGraphics object_ = jmethod object_ "openGraphics" (\() -> (openGraphics_impl (javaCast object_ :: MyFrame))) ()

openGraphics_super :: (JavaObjectClass this_) => this_ -> IO (())
openGraphics_super object_ = (openGraphics_impl (javaCast object_ :: MyFrame))

openGraphics_impl :: MyFrame -> IO (())
openGraphics_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (LOGGING.contains (LOGGING.mENUEVENT))) $ do
                Control.Monad.void (GuiLog.put ((jget (this).guiLog)) (jget ((jget (this).commonStrings)).eXCEPTION) this "open" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Starting" this "openImageJMenuItemActionPerformed")
            Control.Monad.void (FileJDialog.setVisible ((jget (this).fileJDialog)) True)
        pure ()


export :: (JavaObjectClass this_) => this_ -> IO (())
export object_ = jmethod object_ "export" (\() -> (export_impl (javaCast object_ :: MyFrame))) ()

export_super :: (JavaObjectClass this_) => this_ -> IO (())
export_super object_ = (export_impl (javaCast object_ :: MyFrame))

export_impl :: MyFrame -> IO (())
export_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (LOGGING.contains (LOGGING.mENUEVENT))) $ do
                Control.Monad.void (GuiLog.put ((jget (this).guiLog)) (jget ((jget (this).commonStrings)).eXCEPTION) this "export" e)
            ) $ do
            let workAreaJPanel = (javaCast (jio (JTabbedPane.getSelectedComponent ((jget (this).jTabbedPane)))) :: WorkAreaJPanelInterface.WorkAreaJPanelInterface)
            file <- (File.new_1 (((sAVE_PATH ++ "/") ++ (jio (WorkAreaJPanelInterface.getName workAreaJPanel))) ++ (jget (this).jAVAEXTENSION)))
            document <- (WorkAreaJPanelInterface.toDocument workAreaJPanel)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Export: " ++ (jio (DomHelper.toString ((jio (DomHelper.getInstance))) document))) this "exportJMenuItem1ActionPerformed")
            Control.Monad.void (XslHelper.export ((jget (this).xslHelper)) file ((javaToString MyFrame.tEMPLATE_EXPORT_PATH ++ "/") ++ (jget (this).jAVA_TEMPLATE)) document)
        pure ()


save :: (JavaObjectClass this_) => this_ -> IO (())
save object_ = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: MyFrame))) ()

save_super :: (JavaObjectClass this_) => this_ -> IO (())
save_super object_ = (save_impl (javaCast object_ :: MyFrame))

save_impl :: MyFrame -> IO (())
save_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (LOGGING.contains (LOGGING.mENUEVENT))) $ do
                Control.Monad.void (GuiLog.put ((jget (this).guiLog)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).sAVE) e)
            ) $ do
            let workAreaJPanel = (javaCast (jio (JTabbedPane.getSelectedComponent ((jget (this).jTabbedPane)))) :: WorkAreaJPanelInterface.WorkAreaJPanelInterface)
            Control.Monad.void (DomHelper.save ((jio (DomHelper.getInstance))) (jio (File.new_1 (((sAVE_PATH ++ "/") ++ (jio (WorkAreaJPanelInterface.getName workAreaJPanel))) ++ (jget (this).sAVEEXTENSION)))) (jio (WorkAreaJPanelInterface.toDocument workAreaJPanel)))
        pure ()


-- throws Exception
onHashMap :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
onHashMap object_ a1 = jmethod object_ "onHashMap" (\() -> (onHashMap_impl (javaCast object_ :: MyFrame))) () a1

onHashMap_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
onHashMap_super object_ a1 = (onHashMap_impl (javaCast object_ :: MyFrame)) a1

onHashMap_impl :: MyFrame -> HashMap.HashMap -> IO (())
onHashMap_impl this hashMap = do
        let angleIncrementInteger = (javaCast (jio (HashMap.get hashMap (javaToString 0))) :: Int)
        let totalRotationInteger = (javaCast (jio (HashMap.get hashMap (javaToString 1))) :: Int)
        Control.Monad.void (WorkAreaJPanelInterface.autoRotate ((jio (MyFrame.getSelectedWorkArea this))) (angleIncrementInteger) (totalRotationInteger))
        pure ()


getSelectedWorkArea :: (JavaObjectClass this_) => this_ -> IO (WorkAreaJPanelInterface.WorkAreaJPanelInterface)
getSelectedWorkArea object_ = jmethod object_ "getSelectedWorkArea" (\() -> (getSelectedWorkArea_impl (javaCast object_ :: MyFrame))) ()

getSelectedWorkArea_super :: (JavaObjectClass this_) => this_ -> IO (WorkAreaJPanelInterface.WorkAreaJPanelInterface)
getSelectedWorkArea_super object_ = (getSelectedWorkArea_impl (javaCast object_ :: MyFrame))

getSelectedWorkArea_impl :: MyFrame -> IO (WorkAreaJPanelInterface.WorkAreaJPanelInterface)
getSelectedWorkArea_impl this = do
        pure ((javaCast (jio (JTabbedPane.getSelectedComponent ((jget (this).jTabbedPane)))) :: WorkAreaJPanelInterface.WorkAreaJPanelInterface))


updateSelectedWorkArea :: (JavaObjectClass this_) => this_ -> IO (())
updateSelectedWorkArea object_ = jmethod object_ "updateSelectedWorkArea" (\() -> (updateSelectedWorkArea_impl (javaCast object_ :: MyFrame))) ()

updateSelectedWorkArea_super :: (JavaObjectClass this_) => this_ -> IO (())
updateSelectedWorkArea_super object_ = (updateSelectedWorkArea_impl (javaCast object_ :: MyFrame))

updateSelectedWorkArea_impl :: MyFrame -> IO (())
updateSelectedWorkArea_impl this = do
        numberOfTabs <- (JTabbedPane.getTabCount ((jget (this).jTabbedPane)))
        forM_ [0 .. numberOfTabs - 1] $ \index -> javaIteration (pure ()) $ do
            let workAreaJPanel = (javaCast (jio (JTabbedPane.getComponentAt ((jget (this).jTabbedPane)) index)) :: WorkAreaJPanelInterface.WorkAreaJPanelInterface)
            Control.Monad.void (WorkAreaJPanelInterface.deselect workAreaJPanel)
        let workAreaJPanel = (javaCast (jio (JTabbedPane.getSelectedComponent ((jget (this).jTabbedPane)))) :: WorkAreaJPanelInterface.WorkAreaJPanelInterface)
        when (workAreaJPanel /= javaNull) $ do
            Control.Monad.void (WorkAreaJPanelInterface.select workAreaJPanel)
        pure ()


-- throws Exception
add :: (JavaObjectClass this_) => this_ -> WorkAreaJPanelInterface.WorkAreaJPanelInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: MyFrame))) () a1

add_super :: (JavaObjectClass this_) => this_ -> WorkAreaJPanelInterface.WorkAreaJPanelInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: MyFrame)) a1

add_impl :: MyFrame -> WorkAreaJPanelInterface.WorkAreaJPanelInterface -> IO (())
add_impl this newCanvasInterface = do
        handle (\(e :: JavaException) -> do
            when (jio (LOGGING.contains (LOGGING.gRAPHICSCREATION))) $ do
                Control.Monad.void (GuiLog.put ((jget (this).guiLog)) (jget ((jget (this).commonStrings)).eXCEPTION) this "addNewCanvas" e)
            ) $ do
            numberOfWorkAreas <- pure (numberOfWorkAreas + 1)
            when (numberOfWorkAreas == MyFrame.mAXWORKAREAS) $ do
                javaThrow ((JavaException "Exception" ""))
            Control.Monad.void (JTabbedPane.addTab ((jget (this).jTabbedPane)) (jio (WorkAreaJPanelInterface.getName newCanvasInterface)) (javaCast newCanvasInterface :: JPanel.JPanel))
            Control.Monad.void (JTabbedPane.setSelectedComponent ((jget (this).jTabbedPane)) (javaCast newCanvasInterface :: JPanel.JPanel))
            animationThread <- (Thread.new_1 (javaCast newCanvasInterface :: Runnable.Runnable))
            Control.Monad.void (Thread.start animationThread)
            Control.Monad.void (MyFrame.updateSelectedWorkArea this)
        pure ()


keyPressed :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyPressed object_ a1 = jmethod object_ "keyPressed" (\() -> (keyPressed_impl (javaCast object_ :: MyFrame))) () a1

keyPressed_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyPressed_super object_ a1 = (keyPressed_impl (javaCast object_ :: MyFrame)) a1

keyPressed_impl :: MyFrame -> KeyEvent.KeyEvent -> IO (())
keyPressed_impl this keyEvent = do
        Control.Monad.void (WorkAreaJPanelInterface.keyPressed ((jio (MyFrame.getSelectedWorkArea this))) keyEvent)
        pure ()


keyReleased :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyReleased object_ a1 = jmethod object_ "keyReleased" (\() -> (keyReleased_impl (javaCast object_ :: MyFrame))) () a1

keyReleased_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyReleased_super object_ a1 = (keyReleased_impl (javaCast object_ :: MyFrame)) a1

keyReleased_impl :: MyFrame -> KeyEvent.KeyEvent -> IO (())
keyReleased_impl this keyEvent = do
        pure ()


keyTyped :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyTyped object_ a1 = jmethod object_ "keyTyped" (\() -> (keyTyped_impl (javaCast object_ :: MyFrame))) () a1

keyTyped_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyTyped_super object_ a1 = (keyTyped_impl (javaCast object_ :: MyFrame)) a1

keyTyped_impl :: MyFrame -> KeyEvent.KeyEvent -> IO (())
keyTyped_impl this keyEvent = do
        pure ()


main :: JavaArray (String) -> IO (())
main args = do
        handle (\(e :: JavaException) -> do
            logUtil <- (LogUtil.getInstance)
            Control.Monad.void (LogUtil.put logUtil (jget ((jio (CommonStrings.getInstance))).eXCEPTION) javaNull "main" e)
            ) $ do
            Control.Monad.void (AngleFactory.getInstance)
            Control.Monad.void (SmallIntegerSingletonFactory.init ((jio (SmallIntegerSingletonFactory.getInstance))))
            Control.Monad.void (MyFrame.show ((jio (new_))))
        pure ()


