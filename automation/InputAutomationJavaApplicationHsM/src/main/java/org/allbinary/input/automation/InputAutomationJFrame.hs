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
-- package org.allbinary.input.automation
module InputAutomationJFrame (module InputAutomationJFrame, module JFrame) where

import JFrame hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, helpSetAdded, helpSetAdded_super, helpSetAdded_impl, helpSetRemoved, helpSetRemoved_super, helpSetRemoved_impl, init, init_super, init_impl, initComponents, initComponents_super, initComponents_impl, subscriptionJMenuItemActionPerformed, subscriptionJMenuItemActionPerformed_super, subscriptionJMenuItemActionPerformed_impl, updatesJMenuItemActionPerformed, updatesJMenuItemActionPerformed_super, updatesJMenuItemActionPerformed_impl, aboutJMenuItemActionPerformed, aboutJMenuItemActionPerformed_super, aboutJMenuItemActionPerformed_impl, modulesJMenuItemActionPerformed, modulesJMenuItemActionPerformed_super, modulesJMenuItemActionPerformed_impl, helpJMenuItemActionPerformed, helpJMenuItemActionPerformed_super, helpJMenuItemActionPerformed_impl, stopOnFocusJCheckBoxMenuItemActionPerformed, stopOnFocusJCheckBoxMenuItemActionPerformed_super, stopOnFocusJCheckBoxMenuItemActionPerformed_impl, optionsJMenuActionPerformed, optionsJMenuActionPerformed_super, optionsJMenuActionPerformed_impl, formWindowLostFocus, formWindowLostFocus_super, formWindowLostFocus_impl, formWindowGainedFocus, formWindowGainedFocus_super, formWindowGainedFocus_impl, formFocusLost, formFocusLost_super, formFocusLost_impl, formFocusGained, formFocusGained_super, formFocusGained_impl, inputAutomationModuleJListValueChanged, inputAutomationModuleJListValueChanged_super, inputAutomationModuleJListValueChanged_impl, stopJMenuItemActionPerformed, stopJMenuItemActionPerformed_super, stopJMenuItemActionPerformed_impl, startJMenuItemActionPerformed, startJMenuItemActionPerformed_super, startJMenuItemActionPerformed_impl, getInstance, getInstance_super, getInstance_impl, destroy, destroy_super, destroy_impl, create, create_super, create_impl, main, main_super, main_impl, getAutomationModuleConfigurationJPanel, getAutomationModuleConfigurationJPanel_super, getAutomationModuleConfigurationJPanel_impl, setAutomationModuleConfigurationJPanel, setAutomationModuleConfigurationJPanel_super, setAutomationModuleConfigurationJPanel_impl, onAdd_overload1, onAdd_overload1_super, onAdd_overload1_impl, onAdd, onRemove_overload1, onRemove_overload1_super, onRemove_overload1_impl, onRemove, onAdd_overload2, onAdd_overload2_super, onAdd_overload2_impl, onAdd, onRemove_overload2, onRemove_overload2_super, onRemove_overload2_impl, onRemove, logUtil, commonStrings, inputAutomationModuleConfigurations, inputAutomationModuleFactory, inputAutomationModuleInterface, runnableInterface, thread, helpSet, uri, iNPUTAUTOMATION_JFRAME, aboutJMenuItem, automationModuleConfigurationJPanel, gameRobotJTabbedPane, helpJMenuItem, inputAutomationModuleJList, inputAutomationModuleJPanel, jScrollPane1, mainJMenuBar, modulesJMenuItem, noModuleSelectedJDialog, noModuleSelectedJLabel, optionsJMenu, processingJMenu, startJMenuItem, stopJMenuItem, stopOnFocusJCheckBoxMenuItem, subscriptionJMenuItem, toolsJMenu, updatesJMenuItem)
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
import qualified Thread -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JTabbedPane -- same package or java.lang
import qualified JPanel -- same package or java.lang
import qualified JScrollPane -- same package or java.lang
import qualified JList -- same package or java.lang
import qualified JMenuBar -- same package or java.lang
import qualified JMenu -- same package or java.lang
import qualified JMenuItem -- same package or java.lang
import qualified JCheckBoxMenuItem -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified WindowFocusListener -- same package or java.lang
import qualified WindowEvent -- same package or java.lang
import qualified FocusAdapter -- same package or java.lang
import qualified FocusEvent -- same package or java.lang
import qualified ListSelectionListener -- same package or java.lang
import qualified ListSelectionEvent -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified ARunnable -- org.allbinary.thread.ARunnable
import qualified URI -- java.net.URI
import qualified URL -- java.net.URL
import qualified Desktop -- java.awt.Desktop
import qualified List -- java.util.List
import qualified ImageIcon -- javax.swing.ImageIcon
import qualified JDialog -- javax.swing.JDialog
import qualified HelpSet -- javax.help.HelpSet
import qualified HelpSetEvent -- javax.help.event.HelpSetEvent
import qualified HelpSetListener -- javax.help.event.HelpSetListener
import qualified InputAutomationBundleActivatorListenerInterface -- bundle.input.automation.InputAutomationBundleActivatorListenerInterface
import qualified InputAutomationConfigurationModuleChangeListener -- bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener
import qualified InputAutomationRobotChangeListener -- bundle.input.automation.robot.InputAutomationRobotChangeListener
import qualified AppUrlGlobals -- org.allbinary.globals.AppUrlGlobals
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified BasicTextJDialog -- org.allbinary.gui.dialog.BasicTextJDialog
import qualified JListSwingWorker -- org.allbinary.gui.swing.workers.JListSwingWorker
import qualified InputAutomationConfiguration -- org.allbinary.input.automation.configuration.InputAutomationConfiguration
import qualified InputAutomationConfigurationFactory -- org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory
import qualified InputAutomationConfigurationModuleChangeEvent -- org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent
import qualified InputAutomationModuleFactoryFactory -- org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory
import qualified InputAutomationModuleFactoryInterface -- org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface
import qualified InputAutomationModuleConfiguration -- org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration
import qualified InputAutomationModuleConfigurations -- org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations
import qualified DesktopBundle -- org.allbinary.input.automation.osgi.DesktopBundle
import qualified InputRobotFactory -- org.allbinary.input.automation.robot.InputRobotFactory
import qualified InputAutomationRobotChangeEvent -- org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LogConfigTypeFactory -- org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
import qualified JavaHelpUtil -- org.allbinary.logic.java.help.JavaHelpUtil
import qualified WebappClassLoaderInfo -- org.allbinary.logic.system.loader.WebappClassLoaderInfo
import qualified InputAutomationClientInformationFactory -- org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified RunnableInterface -- org.allbinary.thread.RunnableInterface
import qualified JFrame

-- implements InputAutomationConfigurationModuleChangeListener
-- implements InputAutomationRobotChangeListener
-- implements HelpSetListener
data InputAutomationJFrame = InputAutomationJFrame
    { header_ :: JavaHeader
    , base :: JFrame.JFrame
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , inputAutomationModuleConfigurations :: IORef (InputAutomationModuleConfigurations.InputAutomationModuleConfigurations)
    , inputAutomationModuleFactory :: IORef (InputAutomationModuleFactoryFactory.InputAutomationModuleFactoryFactory)
    , inputAutomationModuleInterface :: IORef (InputAutomationModuleFactoryInterface.InputAutomationModuleFactoryInterface)
    , runnableInterface :: IORef (RunnableInterface.RunnableInterface)
    , thread :: IORef (Thread.Thread)
    , helpSet :: IORef (HelpSet.HelpSet)
    , uri :: IORef (URI.URI)
    , aboutJMenuItem :: IORef (JMenuItem.JMenuItem)
    , automationModuleConfigurationJPanel :: IORef (JPanel.JPanel)
    , gameRobotJTabbedPane :: IORef (JTabbedPane.JTabbedPane)
    , helpJMenuItem :: IORef (JMenuItem.JMenuItem)
    , inputAutomationModuleJList :: IORef (JList.JList)
    , inputAutomationModuleJPanel :: IORef (JPanel.JPanel)
    , jScrollPane1 :: IORef (JScrollPane.JScrollPane)
    , mainJMenuBar :: IORef (JMenuBar.JMenuBar)
    , modulesJMenuItem :: IORef (JMenuItem.JMenuItem)
    , noModuleSelectedJDialog :: IORef (JDialog.JDialog)
    , noModuleSelectedJLabel :: IORef (JLabel.JLabel)
    , optionsJMenu :: IORef (JMenu.JMenu)
    , processingJMenu :: IORef (JMenu.JMenu)
    , startJMenuItem :: IORef (JMenuItem.JMenuItem)
    , stopJMenuItem :: IORef (JMenuItem.JMenuItem)
    , stopOnFocusJCheckBoxMenuItem :: IORef (JCheckBoxMenuItem.JCheckBoxMenuItem)
    , subscriptionJMenuItem :: IORef (JMenuItem.JMenuItem)
    , toolsJMenu :: IORef (JMenu.JMenu)
    , updatesJMenuItem :: IORef (JMenuItem.JMenuItem)
    }

instance JavaNull InputAutomationJFrame where
    javaNull = javaNullRecord "InputAutomationJFrame"

instance JavaEquals InputAutomationJFrame where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationJFrame where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationJFrame where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE iNPUTAUTOMATION_JFRAME #-}
iNPUTAUTOMATION_JFRAME = unsafePerformIO (newIORef (javaNull))

newRecord_ :: IO InputAutomationJFrame
newRecord_ = do
    base <- JFrame.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    inputAutomationModuleConfigurations <- newIORef javaNull
    inputAutomationModuleFactory <- newIORef javaNull
    inputAutomationModuleInterface <- newIORef javaNull
    runnableInterface <- newIORef javaNull
    thread <- newIORef javaNull
    helpSet <- newIORef javaNull
    uri <- newIORef javaNull
    aboutJMenuItem <- newIORef javaNull
    automationModuleConfigurationJPanel <- newIORef javaNull
    gameRobotJTabbedPane <- newIORef javaNull
    helpJMenuItem <- newIORef javaNull
    inputAutomationModuleJList <- newIORef javaNull
    inputAutomationModuleJPanel <- newIORef javaNull
    jScrollPane1 <- newIORef javaNull
    mainJMenuBar <- newIORef javaNull
    modulesJMenuItem <- newIORef javaNull
    noModuleSelectedJDialog <- newIORef javaNull
    noModuleSelectedJLabel <- newIORef javaNull
    optionsJMenu <- newIORef javaNull
    processingJMenu <- newIORef javaNull
    startJMenuItem <- newIORef javaNull
    stopJMenuItem <- newIORef javaNull
    stopOnFocusJCheckBoxMenuItem <- newIORef javaNull
    subscriptionJMenuItem <- newIORef javaNull
    toolsJMenu <- newIORef javaNull
    updatesJMenuItem <- newIORef javaNull
    let this = InputAutomationJFrame header_ base logUtil commonStrings inputAutomationModuleConfigurations inputAutomationModuleFactory inputAutomationModuleInterface runnableInterface thread helpSet uri aboutJMenuItem automationModuleConfigurationJPanel gameRobotJTabbedPane helpJMenuItem inputAutomationModuleJList inputAutomationModuleJPanel jScrollPane1 mainJMenuBar modulesJMenuItem noModuleSelectedJDialog noModuleSelectedJLabel optionsJMenu processingJMenu startJMenuItem stopJMenuItem stopOnFocusJCheckBoxMenuItem subscriptionJMenuItem toolsJMenu updatesJMenuItem
    jregisterLevel header_ this
    InputAutomationConfigurationModuleChangeListener.registerInterface_ header_
    InputAutomationRobotChangeListener.registerInterface_ header_
    HelpSetListener.registerInterface_ header_
    jregisterMethod header_ "helpSetAdded" (\() -> helpSetAdded_impl this)
    jregisterMethod header_ "helpSetRemoved" (\() -> helpSetRemoved_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "subscriptionJMenuItemActionPerformed" (\() -> subscriptionJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "updatesJMenuItemActionPerformed" (\() -> updatesJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "aboutJMenuItemActionPerformed" (\() -> aboutJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "modulesJMenuItemActionPerformed" (\() -> modulesJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "helpJMenuItemActionPerformed" (\() -> helpJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "stopOnFocusJCheckBoxMenuItemActionPerformed" (\() -> stopOnFocusJCheckBoxMenuItemActionPerformed_impl this)
    jregisterMethod header_ "optionsJMenuActionPerformed" (\() -> optionsJMenuActionPerformed_impl this)
    jregisterMethod header_ "formWindowLostFocus" (\() -> formWindowLostFocus_impl this)
    jregisterMethod header_ "formWindowGainedFocus" (\() -> formWindowGainedFocus_impl this)
    jregisterMethod header_ "formFocusLost" (\() -> formFocusLost_impl this)
    jregisterMethod header_ "formFocusGained" (\() -> formFocusGained_impl this)
    jregisterMethod header_ "inputAutomationModuleJListValueChanged" (\() -> inputAutomationModuleJListValueChanged_impl this)
    jregisterMethod header_ "stopJMenuItemActionPerformed" (\() -> stopJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "startJMenuItemActionPerformed" (\() -> startJMenuItemActionPerformed_impl this)
    jregisterMethod header_ "getAutomationModuleConfigurationJPanel" (\() -> getAutomationModuleConfigurationJPanel_impl this)
    jregisterMethod header_ "setAutomationModuleConfigurationJPanel" (\() -> setAutomationModuleConfigurationJPanel_impl this)
    jregisterMethod header_ "onAdd_overload1" (\() -> onAdd_overload1_impl this)
    jregisterMethod header_ "onRemove_overload1" (\() -> onRemove_overload1_impl this)
    jregisterMethod header_ "onAdd_overload2" (\() -> onAdd_overload2_impl this)
    jregisterMethod header_ "onRemove_overload2" (\() -> onRemove_overload2_impl this)
    pure this

initFields_ :: InputAutomationJFrame -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.inputAutomationModuleConfigurations =<< (InputAutomationModuleConfigurations.new_)
    jset this.inputAutomationModuleFactory (javaNull)
    jset this.inputAutomationModuleInterface (javaNull)
    jset this.runnableInterface (javaNull)
    jset this.thread (javaNull)
    jset this.helpSet (javaNull)
    jset this.uri =<< (URI.new_1 "http://geocities.com/allbinary/")
    jset this.aboutJMenuItem (javaNull)
    jset this.automationModuleConfigurationJPanel (javaNull)
    jset this.gameRobotJTabbedPane (javaNull)
    jset this.helpJMenuItem (javaNull)
    jset this.inputAutomationModuleJList (javaNull)
    jset this.inputAutomationModuleJPanel (javaNull)
    jset this.jScrollPane1 (javaNull)
    jset this.mainJMenuBar (javaNull)
    jset this.modulesJMenuItem (javaNull)
    jset this.noModuleSelectedJDialog (javaNull)
    jset this.noModuleSelectedJLabel (javaNull)
    jset this.optionsJMenu (javaNull)
    jset this.processingJMenu (javaNull)
    jset this.startJMenuItem (javaNull)
    jset this.stopJMenuItem (javaNull)
    jset this.stopOnFocusJCheckBoxMenuItem (javaNull)
    jset this.subscriptionJMenuItem (javaNull)
    jset this.toolsJMenu (javaNull)
    jset this.updatesJMenuItem (javaNull)
    pure ()

new_ :: IO InputAutomationJFrame
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationJFrame -> IO ()
init_ this = do
        JFrame.init_ this.base
        initFields_ this
        Control.Monad.void (InputAutomationJFrame.initComponents this)
        url <- newIORef =<< (Class.getResource ((jio (jobjectGetClass this))) "/help/Help.hs")
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("URL: " ++ javaToString (jget url)) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        assignedValue <- (JavaHelpUtil.getHelpSet ((jio (JavaHelpUtil.getInstance))) (jget url))
        jset (this).helpSet (assignedValue)
        assignedValue <- (Class.getResource ((jio (jobjectGetClass this))) "/resources/allbinaryicon8bit.jpg")
        jset url (assignedValue)
        imageIcon <- (ImageIcon.new_1 (jget url))
        Control.Monad.void (JFrame.setIconImage this (jio (ImageIcon.getImage imageIcon)))
        Control.Monad.void (InputAutomationJFrame.init this)
        pure ()


helpSetAdded :: (JavaObjectClass this_) => this_ -> HelpSetEvent.HelpSetEvent -> IO (())
helpSetAdded object_ a1 = jmethod object_ "helpSetAdded" (\() -> (helpSetAdded_impl (javaCast object_ :: InputAutomationJFrame))) () a1

helpSetAdded_super :: (JavaObjectClass this_) => this_ -> HelpSetEvent.HelpSetEvent -> IO (())
helpSetAdded_super object_ a1 = (helpSetAdded_impl (javaCast object_ :: InputAutomationJFrame)) a1

helpSetAdded_impl :: InputAutomationJFrame -> HelpSetEvent.HelpSetEvent -> IO (())
helpSetAdded_impl this helpSetEvent = do
        Control.Monad.void (HelpSet.add ((jget (this).helpSet)) (jio (HelpSetEvent.getHelpSet helpSetEvent)))
        pure ()


helpSetRemoved :: (JavaObjectClass this_) => this_ -> HelpSetEvent.HelpSetEvent -> IO (())
helpSetRemoved object_ a1 = jmethod object_ "helpSetRemoved" (\() -> (helpSetRemoved_impl (javaCast object_ :: InputAutomationJFrame))) () a1

helpSetRemoved_super :: (JavaObjectClass this_) => this_ -> HelpSetEvent.HelpSetEvent -> IO (())
helpSetRemoved_super object_ a1 = (helpSetRemoved_impl (javaCast object_ :: InputAutomationJFrame)) a1

helpSetRemoved_impl :: InputAutomationJFrame -> HelpSetEvent.HelpSetEvent -> IO (())
helpSetRemoved_impl this helpSetEvent = do
        Control.Monad.void (HelpSet.remove ((jget (this).helpSet)) (jio (HelpSetEvent.getHelpSet helpSetEvent)))
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: InputAutomationJFrame))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: InputAutomationJFrame))

init_impl :: InputAutomationJFrame -> IO (())
init_impl this = do
        inputAutomationConfigurationFactory <- (InputAutomationConfigurationFactory.getInstance)
        Control.Monad.void (InputAutomationConfigurationFactory.init inputAutomationConfigurationFactory (jio (InputAutomationClientInformationFactory.getInstance)))
        inputAutomationModuleConfigurationList <- (InputAutomationConfiguration.getInputAutomationModuleConfigurationList ((jget (inputAutomationConfigurationFactory).inputAutomationConfiguration)))
        if (inputAutomationModuleConfigurationList == javaNull) then do
            pure ()
        else do
            assignedValue <- (InputAutomationModuleConfigurations.new_1 inputAutomationModuleConfigurationList)
            jset (this).inputAutomationModuleConfigurations (assignedValue)
        assignedValue <- (InputAutomationModuleFactoryFactory.new_2 (jget this.inputAutomationModuleConfigurations) this)
        jset (this).inputAutomationModuleFactory (assignedValue)
        Control.Monad.void (execute (((jio (JListSwingWorker.new_2 (jget (this).inputAutomationModuleJList) (jio (InputAutomationModuleFactoryFactory.getListModel ((jget (this).inputAutomationModuleFactory)))))))))
        Control.Monad.void (JTabbedPane.setEnabledAt ((jget (this).gameRobotJTabbedPane)) 1 False)
        Control.Monad.void (JTabbedPane.setSelectedIndex ((jget (this).gameRobotJTabbedPane)) 0)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: InputAutomationJFrame))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: InputAutomationJFrame))

initComponents_impl :: InputAutomationJFrame -> IO (())
initComponents_impl this = do
        assignedValue <- (JDialog.new_)
        jset (this).noModuleSelectedJDialog (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).noModuleSelectedJLabel (assignedValue)
        assignedValue <- (JTabbedPane.new_)
        jset (this).gameRobotJTabbedPane (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).inputAutomationModuleJPanel (assignedValue)
        assignedValue <- (JScrollPane.new_)
        jset (this).jScrollPane1 (assignedValue)
        assignedValue <- (JList.new_)
        jset (this).inputAutomationModuleJList (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).automationModuleConfigurationJPanel (assignedValue)
        assignedValue <- (JMenuBar.new_)
        jset (this).mainJMenuBar (assignedValue)
        assignedValue <- (JMenu.new_)
        jset (this).processingJMenu (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).startJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).stopJMenuItem (assignedValue)
        assignedValue <- (JMenu.new_)
        jset (this).optionsJMenu (assignedValue)
        assignedValue <- (JCheckBoxMenuItem.new_)
        jset (this).stopOnFocusJCheckBoxMenuItem (assignedValue)
        assignedValue <- (JMenu.new_)
        jset (this).toolsJMenu (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).helpJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).updatesJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).subscriptionJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).modulesJMenuItem (assignedValue)
        assignedValue <- (JMenuItem.new_)
        jset (this).aboutJMenuItem (assignedValue)
        Control.Monad.void (JDialog.setMinimumSize ((jget (this).noModuleSelectedJDialog)) (jio (Dimension.new_2 200 100)))
        Control.Monad.void (JLabel.setText ((jget (this).noModuleSelectedJLabel)) "Please Select A Module")
        noModuleSelectedJDialogLayout <- (GroupLayout.new_1 (jio (JDialog.getContentPane ((jget (this).noModuleSelectedJDialog)))))
        Control.Monad.void (JDialog.setLayout ((jio (JDialog.getContentPane ((jget (this).noModuleSelectedJDialog))))) noModuleSelectedJDialogLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup noModuleSelectedJDialogLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup noModuleSelectedJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup noModuleSelectedJDialogLayout)))))) (jget this.noModuleSelectedJLabel)))) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup noModuleSelectedJDialogLayout (jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup noModuleSelectedJDialogLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.noModuleSelectedJLabel) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 48 (Prelude.maxBound :: Int16))))
        Control.Monad.void (JFrame.setDefaultCloseOperation this (jget ((jget (javax.swing).windowConstants)).eXIT_ON_CLOSE))
        Control.Monad.void (JFrame.setMinimumSize this (jio (Dimension.new_2 325 215)))
        Control.Monad.void (JFrame.setResizable this False)
        Control.Monad.void (JFrame.addWindowFocusListener this (WindowFocusListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- windowGainedFocus
            -- windowLostFocus
-}))
        Control.Monad.void (JFrame.addFocusListener this (FocusAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- focusGained
            -- focusLost
-}))
        Control.Monad.void (JTabbedPane.setMinimumSize ((jget (this).gameRobotJTabbedPane)) (jio (Dimension.new_2 320 200)))
        Control.Monad.void (JList.setMinimumSize ((jget (this).inputAutomationModuleJList)) (jio (Dimension.new_2 200 0)))
        Control.Monad.void (JList.addListSelectionListener ((jget (this).inputAutomationModuleJList)) (ListSelectionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- valueChanged
-}))
        Control.Monad.void (JScrollPane.setViewportView ((jget (this).jScrollPane1)) (jget (this).inputAutomationModuleJList))
        inputAutomationModuleJPanelLayout <- (GroupLayout.new_1 (jget (this).inputAutomationModuleJPanel))
        Control.Monad.void (JPanel.setLayout ((jget (this).inputAutomationModuleJPanel)) inputAutomationModuleJPanelLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup inputAutomationModuleJPanelLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup inputAutomationModuleJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup inputAutomationModuleJPanelLayout))) (jget this.jScrollPane1) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 199 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) 367 (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup inputAutomationModuleJPanelLayout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup inputAutomationModuleJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup inputAutomationModuleJPanelLayout))) (jget this.jScrollPane1) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 330 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))))
        Control.Monad.void (JTabbedPane.addTab ((jget (this).gameRobotJTabbedPane)) "Modules" (jget this.inputAutomationModuleJPanel))
        automationModuleConfigurationJPanelLayout <- (GroupLayout.new_1 (jget (this).automationModuleConfigurationJPanel))
        Control.Monad.void (JPanel.setLayout ((jget (this).automationModuleConfigurationJPanel)) automationModuleConfigurationJPanelLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup automationModuleConfigurationJPanelLayout (jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup automationModuleConfigurationJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 566 (Prelude.maxBound :: Int16))))
        Control.Monad.void (GroupLayout.setVerticalGroup automationModuleConfigurationJPanelLayout (jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup automationModuleConfigurationJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 334 (Prelude.maxBound :: Int16))))
        Control.Monad.void (JTabbedPane.addTab ((jget (this).gameRobotJTabbedPane)) "Configuration" (jget this.automationModuleConfigurationJPanel))
        Control.Monad.void (JMenu.setText ((jget (this).processingJMenu)) "Processing")
        Control.Monad.void (JMenu.setToolTipText ((jget (this).processingJMenu)) "Set module processing state")
        Control.Monad.void (JMenuItem.setText ((jget (this).startJMenuItem)) (jget ((jget (this).commonStrings)).sTART))
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).startJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).processingJMenu)) (jget (this).startJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).stopJMenuItem)) "Stop")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).stopJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).processingJMenu)) (jget (this).stopJMenuItem))
        Control.Monad.void (JMenuBar.add ((jget (this).mainJMenuBar)) (jget (this).processingJMenu))
        Control.Monad.void (JMenu.setText ((jget (this).optionsJMenu)) "Options")
        Control.Monad.void (JMenu.addActionListener ((jget (this).optionsJMenu)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JCheckBoxMenuItem.setSelected ((jget (this).stopOnFocusJCheckBoxMenuItem)) True)
        Control.Monad.void (JCheckBoxMenuItem.setEnabled ((jget (this).stopOnFocusJCheckBoxMenuItem)) False)
        Control.Monad.void (JCheckBoxMenuItem.setLabel ((jget (this).stopOnFocusJCheckBoxMenuItem)) "Stop Module On Focus")
        Control.Monad.void (JCheckBoxMenuItem.addActionListener ((jget (this).stopOnFocusJCheckBoxMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).optionsJMenu)) (jget (this).stopOnFocusJCheckBoxMenuItem))
        Control.Monad.void (JMenuBar.add ((jget (this).mainJMenuBar)) (jget (this).optionsJMenu))
        Control.Monad.void (JMenu.setText ((jget (this).toolsJMenu)) "Help")
        Control.Monad.void (JMenuItem.setText ((jget (this).helpJMenuItem)) "Help")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).helpJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).toolsJMenu)) (jget (this).helpJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).updatesJMenuItem)) "Updates")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).updatesJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).toolsJMenu)) (jget (this).updatesJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).subscriptionJMenuItem)) "Subscription")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).subscriptionJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).toolsJMenu)) (jget (this).subscriptionJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).modulesJMenuItem)) "Module Manager")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).modulesJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).toolsJMenu)) (jget (this).modulesJMenuItem))
        Control.Monad.void (JMenuItem.setText ((jget (this).aboutJMenuItem)) "About")
        Control.Monad.void (JMenuItem.addActionListener ((jget (this).aboutJMenuItem)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JMenu.add ((jget (this).toolsJMenu)) (jget (this).aboutJMenuItem))
        Control.Monad.void (JMenuBar.add ((jget (this).mainJMenuBar)) (jget (this).toolsJMenu))
        Control.Monad.void (JFrame.setJMenuBar this (jget (this).mainJMenuBar))
        layout <- (GroupLayout.new_1 (jio (JFrame.getContentPane this)))
        Control.Monad.void (setLayout ((jio (JFrame.getContentPane this))) layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.gameRobotJTabbedPane) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 571 (Prelude.maxBound :: Int16))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.gameRobotJTabbedPane) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 359 (Prelude.maxBound :: Int16))))
        Control.Monad.void (JFrame.pack this)
        pure ()


subscriptionJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
subscriptionJMenuItemActionPerformed object_ a1 = jmethod object_ "subscriptionJMenuItemActionPerformed" (\() -> (subscriptionJMenuItemActionPerformed_impl (javaCast object_ :: InputAutomationJFrame))) () a1

subscriptionJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
subscriptionJMenuItemActionPerformed_super object_ a1 = (subscriptionJMenuItemActionPerformed_impl (javaCast object_ :: InputAutomationJFrame)) a1

subscriptionJMenuItemActionPerformed_impl :: InputAutomationJFrame -> ActionEvent.ActionEvent -> IO (())
subscriptionJMenuItemActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "subscriptionJMenuItemActionPerformed" e)
            ) $ do
            Control.Monad.void (Desktop.browse ((jio (Desktop.getDesktop))) (jget (this).uri))
        pure ()


updatesJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
updatesJMenuItemActionPerformed object_ a1 = jmethod object_ "updatesJMenuItemActionPerformed" (\() -> (updatesJMenuItemActionPerformed_impl (javaCast object_ :: InputAutomationJFrame))) () a1

updatesJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
updatesJMenuItemActionPerformed_super object_ a1 = (updatesJMenuItemActionPerformed_impl (javaCast object_ :: InputAutomationJFrame)) a1

updatesJMenuItemActionPerformed_impl :: InputAutomationJFrame -> ActionEvent.ActionEvent -> IO (())
updatesJMenuItemActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "updatesJMenuItemActionPerformed" e)
            ) $ do
            Control.Monad.void (Desktop.browse ((jio (Desktop.getDesktop))) (jget (this).uri))
        pure ()


aboutJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
aboutJMenuItemActionPerformed object_ a1 = jmethod object_ "aboutJMenuItemActionPerformed" (\() -> (aboutJMenuItemActionPerformed_impl (javaCast object_ :: InputAutomationJFrame))) () a1

aboutJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
aboutJMenuItemActionPerformed_super object_ a1 = (aboutJMenuItemActionPerformed_impl (javaCast object_ :: InputAutomationJFrame)) a1

aboutJMenuItemActionPerformed_impl :: InputAutomationJFrame -> ActionEvent.ActionEvent -> IO (())
aboutJMenuItemActionPerformed_impl this evt = do
        textJDialog <- (fmap (\value_ -> javaCast value_ :: JDialog.JDialog) (BasicTextJDialog.new_1 "Copyright (c) 2002-2007 AllBinary"))
        Control.Monad.void (JDialog.setVisible textJDialog True)
        Control.Monad.void (JDialog.setLocationRelativeTo textJDialog this)
        pure ()


modulesJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
modulesJMenuItemActionPerformed object_ a1 = jmethod object_ "modulesJMenuItemActionPerformed" (\() -> (modulesJMenuItemActionPerformed_impl (javaCast object_ :: InputAutomationJFrame))) () a1

modulesJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
modulesJMenuItemActionPerformed_super object_ a1 = (modulesJMenuItemActionPerformed_impl (javaCast object_ :: InputAutomationJFrame)) a1

modulesJMenuItemActionPerformed_impl :: InputAutomationJFrame -> ActionEvent.ActionEvent -> IO (())
modulesJMenuItemActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "modulesJMenuItemActionPerformed" e)
            ) $ do
            Control.Monad.void (DesktopBundle.start ((jio (DesktopBundle.new_))))
        pure ()


helpJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
helpJMenuItemActionPerformed object_ a1 = jmethod object_ "helpJMenuItemActionPerformed" (\() -> (helpJMenuItemActionPerformed_impl (javaCast object_ :: InputAutomationJFrame))) () a1

helpJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
helpJMenuItemActionPerformed_super object_ a1 = (helpJMenuItemActionPerformed_impl (javaCast object_ :: InputAutomationJFrame)) a1

helpJMenuItemActionPerformed_impl :: InputAutomationJFrame -> ActionEvent.ActionEvent -> IO (())
helpJMenuItemActionPerformed_impl this evt = do
        Control.Monad.void (JavaHelpUtil.show ((jio (JavaHelpUtil.getInstance))) (jget (this).helpSet))
        pure ()


stopOnFocusJCheckBoxMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
stopOnFocusJCheckBoxMenuItemActionPerformed object_ a1 = jmethod object_ "stopOnFocusJCheckBoxMenuItemActionPerformed" (\() -> (stopOnFocusJCheckBoxMenuItemActionPerformed_impl (javaCast object_ :: InputAutomationJFrame))) () a1

stopOnFocusJCheckBoxMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
stopOnFocusJCheckBoxMenuItemActionPerformed_super object_ a1 = (stopOnFocusJCheckBoxMenuItemActionPerformed_impl (javaCast object_ :: InputAutomationJFrame)) a1

stopOnFocusJCheckBoxMenuItemActionPerformed_impl :: InputAutomationJFrame -> ActionEvent.ActionEvent -> IO (())
stopOnFocusJCheckBoxMenuItemActionPerformed_impl this evt = do
        pure ()


optionsJMenuActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
optionsJMenuActionPerformed object_ a1 = jmethod object_ "optionsJMenuActionPerformed" (\() -> (optionsJMenuActionPerformed_impl (javaCast object_ :: InputAutomationJFrame))) () a1

optionsJMenuActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
optionsJMenuActionPerformed_super object_ a1 = (optionsJMenuActionPerformed_impl (javaCast object_ :: InputAutomationJFrame)) a1

optionsJMenuActionPerformed_impl :: InputAutomationJFrame -> ActionEvent.ActionEvent -> IO (())
optionsJMenuActionPerformed_impl this evt = do
        pure ()


formWindowLostFocus :: (JavaObjectClass this_) => this_ -> WindowEvent.WindowEvent -> IO (())
formWindowLostFocus object_ a1 = jmethod object_ "formWindowLostFocus" (\() -> (formWindowLostFocus_impl (javaCast object_ :: InputAutomationJFrame))) () a1

formWindowLostFocus_super :: (JavaObjectClass this_) => this_ -> WindowEvent.WindowEvent -> IO (())
formWindowLostFocus_super object_ a1 = (formWindowLostFocus_impl (javaCast object_ :: InputAutomationJFrame)) a1

formWindowLostFocus_impl :: InputAutomationJFrame -> WindowEvent.WindowEvent -> IO (())
formWindowLostFocus_impl this evt = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Nothing" this "focusLost")
        pure ()


formWindowGainedFocus :: (JavaObjectClass this_) => this_ -> WindowEvent.WindowEvent -> IO (())
formWindowGainedFocus object_ a1 = jmethod object_ "formWindowGainedFocus" (\() -> (formWindowGainedFocus_impl (javaCast object_ :: InputAutomationJFrame))) () a1

formWindowGainedFocus_super :: (JavaObjectClass this_) => this_ -> WindowEvent.WindowEvent -> IO (())
formWindowGainedFocus_super object_ a1 = (formWindowGainedFocus_impl (javaCast object_ :: InputAutomationJFrame)) a1

formWindowGainedFocus_impl :: InputAutomationJFrame -> WindowEvent.WindowEvent -> IO (())
formWindowGainedFocus_impl this evt = do
        when (jio (JCheckBoxMenuItem.isSelected ((jget (this).stopOnFocusJCheckBoxMenuItem)))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Stopping" this "focusGained")
            when ((jget (this).runnableInterface) /= javaNull) $ do
                Control.Monad.void (RunnableInterface.setRunning ((jget (this).runnableInterface)) False)
        pure ()


formFocusLost :: (JavaObjectClass this_) => this_ -> FocusEvent.FocusEvent -> IO (())
formFocusLost object_ a1 = jmethod object_ "formFocusLost" (\() -> (formFocusLost_impl (javaCast object_ :: InputAutomationJFrame))) () a1

formFocusLost_super :: (JavaObjectClass this_) => this_ -> FocusEvent.FocusEvent -> IO (())
formFocusLost_super object_ a1 = (formFocusLost_impl (javaCast object_ :: InputAutomationJFrame)) a1

formFocusLost_impl :: InputAutomationJFrame -> FocusEvent.FocusEvent -> IO (())
formFocusLost_impl this evt = do
        pure ()


formFocusGained :: (JavaObjectClass this_) => this_ -> FocusEvent.FocusEvent -> IO (())
formFocusGained object_ a1 = jmethod object_ "formFocusGained" (\() -> (formFocusGained_impl (javaCast object_ :: InputAutomationJFrame))) () a1

formFocusGained_super :: (JavaObjectClass this_) => this_ -> FocusEvent.FocusEvent -> IO (())
formFocusGained_super object_ a1 = (formFocusGained_impl (javaCast object_ :: InputAutomationJFrame)) a1

formFocusGained_impl :: InputAutomationJFrame -> FocusEvent.FocusEvent -> IO (())
formFocusGained_impl this evt = do
        pure ()


inputAutomationModuleJListValueChanged :: (JavaObjectClass this_) => this_ -> ListSelectionEvent.ListSelectionEvent -> IO (())
inputAutomationModuleJListValueChanged object_ a1 = jmethod object_ "inputAutomationModuleJListValueChanged" (\() -> (inputAutomationModuleJListValueChanged_impl (javaCast object_ :: InputAutomationJFrame))) () a1

inputAutomationModuleJListValueChanged_super :: (JavaObjectClass this_) => this_ -> ListSelectionEvent.ListSelectionEvent -> IO (())
inputAutomationModuleJListValueChanged_super object_ a1 = (inputAutomationModuleJListValueChanged_impl (javaCast object_ :: InputAutomationJFrame)) a1

inputAutomationModuleJListValueChanged_impl :: InputAutomationJFrame -> ListSelectionEvent.ListSelectionEvent -> IO (())
inputAutomationModuleJListValueChanged_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "gameAutomationRobotModuleJListValueChanged" e)
            ) $ do
            let gameAutomationRobotModuleNameString = (javaCast (jio (JList.getSelectedValue ((jget (this).inputAutomationModuleJList)))) :: String)
            if (gameAutomationRobotModuleNameString /= javaNull) then do
                assignedValue <- (InputAutomationModuleFactoryFactory.getInstance ((jget (this).inputAutomationModuleFactory)) gameAutomationRobotModuleNameString)
                jset (this).inputAutomationModuleInterface (assignedValue)
                Control.Monad.void (JPanel.removeAll ((jio (InputAutomationJFrame.getAutomationModuleConfigurationJPanel this))))
                let layout = (javaCast (jio (JPanel.getLayout ((jio (InputAutomationJFrame.getAutomationModuleConfigurationJPanel this))))) :: GroupLayout.GroupLayout)
                Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 395 (Prelude.maxBound :: Int16)))) (jio (InputAutomationModuleFactoryInterface.getConfigurationJPanel ((jget (this).inputAutomationModuleInterface)))) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE))))
                Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 256 (Prelude.maxBound :: Int16)))) (jio (InputAutomationModuleFactoryInterface.getConfigurationJPanel ((jget (this).inputAutomationModuleInterface)))) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE))))
                Control.Monad.void (JTabbedPane.setEnabledAt ((jget (this).gameRobotJTabbedPane)) 1 True)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (("Setting Module: " ++ gameAutomationRobotModuleNameString) ++ " and Configuration JPanel") this "gameAutomationRobotModuleJListValueChanged")
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Module name was null" this "gameAutomationRobotModuleJListValueChanged")
                Control.Monad.void (JTabbedPane.setEnabledAt ((jget (this).gameRobotJTabbedPane)) 1 False)
        pure ()


stopJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
stopJMenuItemActionPerformed object_ a1 = jmethod object_ "stopJMenuItemActionPerformed" (\() -> (stopJMenuItemActionPerformed_impl (javaCast object_ :: InputAutomationJFrame))) () a1

stopJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
stopJMenuItemActionPerformed_super object_ a1 = (stopJMenuItemActionPerformed_impl (javaCast object_ :: InputAutomationJFrame)) a1

stopJMenuItemActionPerformed_impl :: InputAutomationJFrame -> ActionEvent.ActionEvent -> IO (())
stopJMenuItemActionPerformed_impl this evt = do
        if ((jget (this).runnableInterface) /= javaNull) then do
            Control.Monad.void (RunnableInterface.setRunning ((jget (this).runnableInterface)) False)
        else do
            Control.Monad.void (JDialog.setVisible ((jget (this).noModuleSelectedJDialog)) True)
            Control.Monad.void (JDialog.setLocationRelativeTo ((jget (this).noModuleSelectedJDialog)) this)
        pure ()


startJMenuItemActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
startJMenuItemActionPerformed object_ a1 = jmethod object_ "startJMenuItemActionPerformed" (\() -> (startJMenuItemActionPerformed_impl (javaCast object_ :: InputAutomationJFrame))) () a1

startJMenuItemActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
startJMenuItemActionPerformed_super object_ a1 = (startJMenuItemActionPerformed_impl (javaCast object_ :: InputAutomationJFrame)) a1

startJMenuItemActionPerformed_impl :: InputAutomationJFrame -> ActionEvent.ActionEvent -> IO (())
startJMenuItemActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "startJMenuItemActionPerformed" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Starting" this "startJMenuItemActionPerformed")
            if ((jget (this).inputAutomationModuleInterface) /= javaNull) then do
                assignedValue <- (InputAutomationModuleFactoryInterface.getInstance ((jget (this).inputAutomationModuleInterface)))
                jset (this).runnableInterface (assignedValue)
                if ((jget (this).runnableInterface) /= javaNull) then do
                    assignedValue <- (Thread.new_1 (jget (this).runnableInterface))
                    jset (this).thread (assignedValue)
                    Control.Monad.void (Thread.setPriority ((jget (this).thread)) (Thread.mIN_PRIORITY + 1))
                    Control.Monad.void (Thread.start ((jget (this).thread)))
                else do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Runnnable was null" this "startJMenuItemActionPerformed")
                    Control.Monad.void (JDialog.setVisible ((jget (this).noModuleSelectedJDialog)) True)
                    Control.Monad.void (JDialog.setLocationRelativeTo ((jget (this).noModuleSelectedJDialog)) this)
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "InputAutomationModuleInterface was null" this "startJMenuItemActionPerformed")
                Control.Monad.void (JDialog.setVisible ((jget (this).noModuleSelectedJDialog)) True)
                Control.Monad.void (JDialog.setLocationRelativeTo ((jget (this).noModuleSelectedJDialog)) this)
        pure ()


getInstance :: IO (InputAutomationJFrame)
getInstance = do
        pure ((jget InputAutomationJFrame.iNPUTAUTOMATION_JFRAME))


destroy :: IO (())
destroy = do
        Control.Monad.void (setVisible ((jget InputAutomationJFrame.iNPUTAUTOMATION_JFRAME)) False)
        pure ()


create :: InputAutomationBundleActivatorListenerInterface.InputAutomationBundleActivatorListenerInterface -> IO (())
create inputAutomationBundleActivatorListenerInterface = do
        Control.Monad.void (LogConfigTypeFactory.getInstance)
        appUrlGlobals <- (AppUrlGlobals.new_)
        Control.Monad.void (AppUrlGlobals.setWebappPath appUrlGlobals "G:/mnt/bc/mydev/work_automation/automation/run/")
        Control.Monad.void (URLGLOBALS.init appUrlGlobals)
        Control.Monad.void (WebappClassLoaderInfo.setLoader (jio (Class.getClassLoader ((jio (jobjectGetClass appUrlGlobals))))))
        Control.Monad.void (invokeLater ((jget (java.awt).eventQueue)) (ARunnable.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-}))
        pure ()


-- throws Exception
main :: JavaArray (String) -> IO (())
main args = do
        Control.Monad.void (InputAutomationJFrame.create javaNull)
        pure ()


getAutomationModuleConfigurationJPanel :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getAutomationModuleConfigurationJPanel object_ = jmethod object_ "getAutomationModuleConfigurationJPanel" (\() -> (getAutomationModuleConfigurationJPanel_impl (javaCast object_ :: InputAutomationJFrame))) ()

getAutomationModuleConfigurationJPanel_super :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getAutomationModuleConfigurationJPanel_super object_ = (getAutomationModuleConfigurationJPanel_impl (javaCast object_ :: InputAutomationJFrame))

getAutomationModuleConfigurationJPanel_impl :: InputAutomationJFrame -> IO (JPanel.JPanel)
getAutomationModuleConfigurationJPanel_impl this = do
        pure ((jget (this).automationModuleConfigurationJPanel))


setAutomationModuleConfigurationJPanel :: (JavaObjectClass this_) => this_ -> JPanel.JPanel -> IO (())
setAutomationModuleConfigurationJPanel object_ a1 = jmethod object_ "setAutomationModuleConfigurationJPanel" (\() -> (setAutomationModuleConfigurationJPanel_impl (javaCast object_ :: InputAutomationJFrame))) () a1

setAutomationModuleConfigurationJPanel_super :: (JavaObjectClass this_) => this_ -> JPanel.JPanel -> IO (())
setAutomationModuleConfigurationJPanel_super object_ a1 = (setAutomationModuleConfigurationJPanel_impl (javaCast object_ :: InputAutomationJFrame)) a1

setAutomationModuleConfigurationJPanel_impl :: InputAutomationJFrame -> JPanel.JPanel -> IO (())
setAutomationModuleConfigurationJPanel_impl this automationModuleConfigurationJPanel = do
        jset (this).automationModuleConfigurationJPanel (automationModuleConfigurationJPanel)
        pure ()


-- Java overloads of onAdd: calls the overload for the types of the arguments
onAdd :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
onAdd this a1
    | jisInstanceOf a1 (javaNull :: InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent) = onAdd_overload1 this (javaCast a1 :: InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent)
    | jisInstanceOf a1 (javaNull :: InputAutomationConfigurationModuleChangeEvent.InputAutomationConfigurationModuleChangeEvent) = onAdd_overload2 this (javaCast a1 :: InputAutomationConfigurationModuleChangeEvent.InputAutomationConfigurationModuleChangeEvent)
    | otherwise = onAdd_overload2 this (javaCast a1 :: InputAutomationConfigurationModuleChangeEvent.InputAutomationConfigurationModuleChangeEvent)

onAdd_overload1 :: (JavaObjectClass this_) => this_ -> InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent -> IO (())
onAdd_overload1 object_ a1 = jmethod object_ "onAdd_overload1" (\() -> (onAdd_overload1_impl (javaCast object_ :: InputAutomationJFrame))) () a1

onAdd_overload1_super :: (JavaObjectClass this_) => this_ -> InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent -> IO (())
onAdd_overload1_super object_ a1 = (onAdd_overload1_impl (javaCast object_ :: InputAutomationJFrame)) a1

onAdd_overload1_impl :: InputAutomationJFrame -> InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent -> IO (())
onAdd_overload1_impl this inputAutomationRobotChangeEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "onAdd" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "onAdd")
            Control.Monad.void (InputRobotFactory.add ((jio (InputRobotFactory.getInstance))) (jio (InputAutomationRobotInterfaceWrapper.getInputRobotInterface ((jio (InputAutomationRobotChangeEvent.getInputAutomationRobotInterfaceWrapper inputAutomationRobotChangeEvent))))))
        pure ()


-- Java overloads of onRemove: calls the overload for the types of the arguments
onRemove :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
onRemove this a1
    | jisInstanceOf a1 (javaNull :: InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent) = onRemove_overload1 this (javaCast a1 :: InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent)
    | jisInstanceOf a1 (javaNull :: InputAutomationConfigurationModuleChangeEvent.InputAutomationConfigurationModuleChangeEvent) = onRemove_overload2 this (javaCast a1 :: InputAutomationConfigurationModuleChangeEvent.InputAutomationConfigurationModuleChangeEvent)
    | otherwise = onRemove_overload2 this (javaCast a1 :: InputAutomationConfigurationModuleChangeEvent.InputAutomationConfigurationModuleChangeEvent)

onRemove_overload1 :: (JavaObjectClass this_) => this_ -> InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent -> IO (())
onRemove_overload1 object_ a1 = jmethod object_ "onRemove_overload1" (\() -> (onRemove_overload1_impl (javaCast object_ :: InputAutomationJFrame))) () a1

onRemove_overload1_super :: (JavaObjectClass this_) => this_ -> InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent -> IO (())
onRemove_overload1_super object_ a1 = (onRemove_overload1_impl (javaCast object_ :: InputAutomationJFrame)) a1

onRemove_overload1_impl :: InputAutomationJFrame -> InputAutomationRobotChangeEvent.InputAutomationRobotChangeEvent -> IO (())
onRemove_overload1_impl this inputAutomationRobotChangeEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "onRemove" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "onRemove")
            Control.Monad.void (InputRobotFactory.add ((jio (InputRobotFactory.getInstance))) (jio (InputAutomationRobotInterfaceWrapper.getInputRobotInterface ((jio (InputAutomationRobotChangeEvent.getInputAutomationRobotInterfaceWrapper inputAutomationRobotChangeEvent))))))
        pure ()


onAdd_overload2 :: (JavaObjectClass this_) => this_ -> InputAutomationConfigurationModuleChangeEvent.InputAutomationConfigurationModuleChangeEvent -> IO (())
onAdd_overload2 object_ a1 = jmethod object_ "onAdd_overload2" (\() -> (onAdd_overload2_impl (javaCast object_ :: InputAutomationJFrame))) () a1

onAdd_overload2_super :: (JavaObjectClass this_) => this_ -> InputAutomationConfigurationModuleChangeEvent.InputAutomationConfigurationModuleChangeEvent -> IO (())
onAdd_overload2_super object_ a1 = (onAdd_overload2_impl (javaCast object_ :: InputAutomationJFrame)) a1

onAdd_overload2_impl :: InputAutomationJFrame -> InputAutomationConfigurationModuleChangeEvent.InputAutomationConfigurationModuleChangeEvent -> IO (())
onAdd_overload2_impl this inputAutomationConfigurationChangeEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "onAdd" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "onAdd")
            Control.Monad.void (InputAutomationModuleConfigurations.add ((jget (this).inputAutomationModuleConfigurations)) (jio (InputAutomationConfigurationModuleChangeEvent.getInputAutomationModuleConfiguration inputAutomationConfigurationChangeEvent)))
            Control.Monad.void (InputAutomationJFrame.init this)
        pure ()


onRemove_overload2 :: (JavaObjectClass this_) => this_ -> InputAutomationConfigurationModuleChangeEvent.InputAutomationConfigurationModuleChangeEvent -> IO (())
onRemove_overload2 object_ a1 = jmethod object_ "onRemove_overload2" (\() -> (onRemove_overload2_impl (javaCast object_ :: InputAutomationJFrame))) () a1

onRemove_overload2_super :: (JavaObjectClass this_) => this_ -> InputAutomationConfigurationModuleChangeEvent.InputAutomationConfigurationModuleChangeEvent -> IO (())
onRemove_overload2_super object_ a1 = (onRemove_overload2_impl (javaCast object_ :: InputAutomationJFrame)) a1

onRemove_overload2_impl :: InputAutomationJFrame -> InputAutomationConfigurationModuleChangeEvent.InputAutomationConfigurationModuleChangeEvent -> IO (())
onRemove_overload2_impl this inputAutomationConfigurationChangeEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "onRemove" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "onRemove")
            let inputAutomationConfiguration = (jget ((jio (InputAutomationConfigurationFactory.getInstance))).inputAutomationConfiguration)
            inputAutomationModuleConfigurationList <- (InputAutomationConfiguration.getInputAutomationModuleConfigurationList inputAutomationConfiguration)
            when (inputAutomationModuleConfigurationList == javaNull) $ do
                logUtil <- (LogUtil.getInstance)
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.putF logUtil ("inputAutomationModuleConfigurationList: " ++ javaToString inputAutomationModuleConfigurationList) this (jget (commonStrings).iNIT))
                javaThrow ((JavaException "Exception" ""))
            inputAutomationModuleConfigurations <- (InputAutomationModuleConfigurations.new_1 (jio (InputAutomationConfiguration.getInputAutomationModuleConfigurationList inputAutomationConfiguration)))
            Control.Monad.void (InputAutomationModuleConfigurations.remove inputAutomationModuleConfigurations (jio (InputAutomationConfigurationModuleChangeEvent.getInputAutomationModuleConfiguration inputAutomationConfigurationChangeEvent)))
            Control.Monad.void (InputAutomationJFrame.init this)
        pure ()


