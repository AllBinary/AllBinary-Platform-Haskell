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
module ActionScriptItemJPanel (module ActionScriptItemJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getNewActionScriptInputJPanel, getNewActionScriptInputJPanel_super, getNewActionScriptInputJPanel_impl, setNewActionScriptInputJPanel, setNewActionScriptInputJPanel_super, setNewActionScriptInputJPanel_impl, getRemoveJPanel, getRemoveJPanel_super, getRemoveJPanel_impl, setRemoveJPanel, setRemoveJPanel_super, setRemoveJPanel_impl, getScriptItemJPanel, getScriptItemJPanel_super, getScriptItemJPanel_impl, setScriptItemJPanel, setScriptItemJPanel_super, setScriptItemJPanel_impl, getNewActionScriptConditionJPanel, getNewActionScriptConditionJPanel_super, getNewActionScriptConditionJPanel_impl, setNewActionScriptConditionJPanel, setNewActionScriptConditionJPanel_super, setNewActionScriptConditionJPanel_impl, getChildActionScriptConditionJPanel, getChildActionScriptConditionJPanel_super, getChildActionScriptConditionJPanel_impl, setChildActionScriptConditionJPanel, setChildActionScriptConditionJPanel_super, setChildActionScriptConditionJPanel_impl, initComponents, initComponents_super, initComponents_impl, childActionScriptConditionJPanel, newActionScriptConditionJPanel, newActionScriptInputJPanel, removeJPanel, scriptItemJPanel)
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
import qualified GridLayout -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified JPanel

data ActionScriptItemJPanel = ActionScriptItemJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , childActionScriptConditionJPanel :: IORef (JPanel.JPanel)
    , newActionScriptConditionJPanel :: IORef (JPanel.JPanel)
    , newActionScriptInputJPanel :: IORef (JPanel.JPanel)
    , removeJPanel :: IORef (JPanel.JPanel)
    , scriptItemJPanel :: IORef (JPanel.JPanel)
    }

instance JavaNull ActionScriptItemJPanel where
    javaNull = javaNullRecord "ActionScriptItemJPanel"

instance JavaEquals ActionScriptItemJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ActionScriptItemJPanel where
    (==) = jrecordEquals

instance JavaObjectClass ActionScriptItemJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ActionScriptItemJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    childActionScriptConditionJPanel <- newIORef javaNull
    newActionScriptConditionJPanel <- newIORef javaNull
    newActionScriptInputJPanel <- newIORef javaNull
    removeJPanel <- newIORef javaNull
    scriptItemJPanel <- newIORef javaNull
    let this = ActionScriptItemJPanel header_ base childActionScriptConditionJPanel newActionScriptConditionJPanel newActionScriptInputJPanel removeJPanel scriptItemJPanel
    jregisterLevel header_ this
    jregisterMethod header_ "getNewActionScriptInputJPanel" (\() -> getNewActionScriptInputJPanel_impl this)
    jregisterMethod header_ "setNewActionScriptInputJPanel" (\() -> setNewActionScriptInputJPanel_impl this)
    jregisterMethod header_ "getRemoveJPanel" (\() -> getRemoveJPanel_impl this)
    jregisterMethod header_ "setRemoveJPanel" (\() -> setRemoveJPanel_impl this)
    jregisterMethod header_ "getScriptItemJPanel" (\() -> getScriptItemJPanel_impl this)
    jregisterMethod header_ "setScriptItemJPanel" (\() -> setScriptItemJPanel_impl this)
    jregisterMethod header_ "getNewActionScriptConditionJPanel" (\() -> getNewActionScriptConditionJPanel_impl this)
    jregisterMethod header_ "setNewActionScriptConditionJPanel" (\() -> setNewActionScriptConditionJPanel_impl this)
    jregisterMethod header_ "getChildActionScriptConditionJPanel" (\() -> getChildActionScriptConditionJPanel_impl this)
    jregisterMethod header_ "setChildActionScriptConditionJPanel" (\() -> setChildActionScriptConditionJPanel_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    pure this

initFields_ :: ActionScriptItemJPanel -> IO ()
initFields_ this = do
    jset this.childActionScriptConditionJPanel (javaNull)
    jset this.newActionScriptConditionJPanel (javaNull)
    jset this.newActionScriptInputJPanel (javaNull)
    jset this.removeJPanel (javaNull)
    jset this.scriptItemJPanel (javaNull)
    pure ()

new_ :: IO ActionScriptItemJPanel
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ActionScriptItemJPanel -> IO ()
init_ this = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (ActionScriptItemJPanel.initComponents this)
        pure ()


getNewActionScriptInputJPanel :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getNewActionScriptInputJPanel object_ = jmethod object_ "getNewActionScriptInputJPanel" (\() -> (getNewActionScriptInputJPanel_impl (javaCast object_ :: ActionScriptItemJPanel))) ()

getNewActionScriptInputJPanel_super :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getNewActionScriptInputJPanel_super object_ = (getNewActionScriptInputJPanel_impl (javaCast object_ :: ActionScriptItemJPanel))

getNewActionScriptInputJPanel_impl :: ActionScriptItemJPanel -> IO (JPanel.JPanel)
getNewActionScriptInputJPanel_impl this = do
        pure ((jget (this).newActionScriptInputJPanel))


setNewActionScriptInputJPanel :: (JavaObjectClass this_) => this_ -> JPanel.JPanel -> IO (())
setNewActionScriptInputJPanel object_ a1 = jmethod object_ "setNewActionScriptInputJPanel" (\() -> (setNewActionScriptInputJPanel_impl (javaCast object_ :: ActionScriptItemJPanel))) () a1

setNewActionScriptInputJPanel_super :: (JavaObjectClass this_) => this_ -> JPanel.JPanel -> IO (())
setNewActionScriptInputJPanel_super object_ a1 = (setNewActionScriptInputJPanel_impl (javaCast object_ :: ActionScriptItemJPanel)) a1

setNewActionScriptInputJPanel_impl :: ActionScriptItemJPanel -> JPanel.JPanel -> IO (())
setNewActionScriptInputJPanel_impl this newActionScriptInputJPanel = do
        jset (this).newActionScriptInputJPanel (newActionScriptInputJPanel)
        pure ()


getRemoveJPanel :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getRemoveJPanel object_ = jmethod object_ "getRemoveJPanel" (\() -> (getRemoveJPanel_impl (javaCast object_ :: ActionScriptItemJPanel))) ()

getRemoveJPanel_super :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getRemoveJPanel_super object_ = (getRemoveJPanel_impl (javaCast object_ :: ActionScriptItemJPanel))

getRemoveJPanel_impl :: ActionScriptItemJPanel -> IO (JPanel.JPanel)
getRemoveJPanel_impl this = do
        pure ((jget (this).removeJPanel))


setRemoveJPanel :: (JavaObjectClass this_) => this_ -> JPanel.JPanel -> IO (())
setRemoveJPanel object_ a1 = jmethod object_ "setRemoveJPanel" (\() -> (setRemoveJPanel_impl (javaCast object_ :: ActionScriptItemJPanel))) () a1

setRemoveJPanel_super :: (JavaObjectClass this_) => this_ -> JPanel.JPanel -> IO (())
setRemoveJPanel_super object_ a1 = (setRemoveJPanel_impl (javaCast object_ :: ActionScriptItemJPanel)) a1

setRemoveJPanel_impl :: ActionScriptItemJPanel -> JPanel.JPanel -> IO (())
setRemoveJPanel_impl this removeJPanel = do
        jset (this).removeJPanel (removeJPanel)
        pure ()


getScriptItemJPanel :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getScriptItemJPanel object_ = jmethod object_ "getScriptItemJPanel" (\() -> (getScriptItemJPanel_impl (javaCast object_ :: ActionScriptItemJPanel))) ()

getScriptItemJPanel_super :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getScriptItemJPanel_super object_ = (getScriptItemJPanel_impl (javaCast object_ :: ActionScriptItemJPanel))

getScriptItemJPanel_impl :: ActionScriptItemJPanel -> IO (JPanel.JPanel)
getScriptItemJPanel_impl this = do
        pure ((jget (this).scriptItemJPanel))


setScriptItemJPanel :: (JavaObjectClass this_) => this_ -> JPanel.JPanel -> IO (())
setScriptItemJPanel object_ a1 = jmethod object_ "setScriptItemJPanel" (\() -> (setScriptItemJPanel_impl (javaCast object_ :: ActionScriptItemJPanel))) () a1

setScriptItemJPanel_super :: (JavaObjectClass this_) => this_ -> JPanel.JPanel -> IO (())
setScriptItemJPanel_super object_ a1 = (setScriptItemJPanel_impl (javaCast object_ :: ActionScriptItemJPanel)) a1

setScriptItemJPanel_impl :: ActionScriptItemJPanel -> JPanel.JPanel -> IO (())
setScriptItemJPanel_impl this scriptItemJPanel = do
        jset (this).scriptItemJPanel (scriptItemJPanel)
        pure ()


getNewActionScriptConditionJPanel :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getNewActionScriptConditionJPanel object_ = jmethod object_ "getNewActionScriptConditionJPanel" (\() -> (getNewActionScriptConditionJPanel_impl (javaCast object_ :: ActionScriptItemJPanel))) ()

getNewActionScriptConditionJPanel_super :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getNewActionScriptConditionJPanel_super object_ = (getNewActionScriptConditionJPanel_impl (javaCast object_ :: ActionScriptItemJPanel))

getNewActionScriptConditionJPanel_impl :: ActionScriptItemJPanel -> IO (JPanel.JPanel)
getNewActionScriptConditionJPanel_impl this = do
        pure ((jget (this).newActionScriptConditionJPanel))


setNewActionScriptConditionJPanel :: (JavaObjectClass this_) => this_ -> JPanel.JPanel -> IO (())
setNewActionScriptConditionJPanel object_ a1 = jmethod object_ "setNewActionScriptConditionJPanel" (\() -> (setNewActionScriptConditionJPanel_impl (javaCast object_ :: ActionScriptItemJPanel))) () a1

setNewActionScriptConditionJPanel_super :: (JavaObjectClass this_) => this_ -> JPanel.JPanel -> IO (())
setNewActionScriptConditionJPanel_super object_ a1 = (setNewActionScriptConditionJPanel_impl (javaCast object_ :: ActionScriptItemJPanel)) a1

setNewActionScriptConditionJPanel_impl :: ActionScriptItemJPanel -> JPanel.JPanel -> IO (())
setNewActionScriptConditionJPanel_impl this newActionScriptConditionJPanel = do
        jset (this).newActionScriptConditionJPanel (newActionScriptConditionJPanel)
        pure ()


getChildActionScriptConditionJPanel :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getChildActionScriptConditionJPanel object_ = jmethod object_ "getChildActionScriptConditionJPanel" (\() -> (getChildActionScriptConditionJPanel_impl (javaCast object_ :: ActionScriptItemJPanel))) ()

getChildActionScriptConditionJPanel_super :: (JavaObjectClass this_) => this_ -> IO (JPanel.JPanel)
getChildActionScriptConditionJPanel_super object_ = (getChildActionScriptConditionJPanel_impl (javaCast object_ :: ActionScriptItemJPanel))

getChildActionScriptConditionJPanel_impl :: ActionScriptItemJPanel -> IO (JPanel.JPanel)
getChildActionScriptConditionJPanel_impl this = do
        pure ((jget (this).childActionScriptConditionJPanel))


setChildActionScriptConditionJPanel :: (JavaObjectClass this_) => this_ -> JPanel.JPanel -> IO (())
setChildActionScriptConditionJPanel object_ a1 = jmethod object_ "setChildActionScriptConditionJPanel" (\() -> (setChildActionScriptConditionJPanel_impl (javaCast object_ :: ActionScriptItemJPanel))) () a1

setChildActionScriptConditionJPanel_super :: (JavaObjectClass this_) => this_ -> JPanel.JPanel -> IO (())
setChildActionScriptConditionJPanel_super object_ a1 = (setChildActionScriptConditionJPanel_impl (javaCast object_ :: ActionScriptItemJPanel)) a1

setChildActionScriptConditionJPanel_impl :: ActionScriptItemJPanel -> JPanel.JPanel -> IO (())
setChildActionScriptConditionJPanel_impl this childActionScriptConditionJPanel = do
        jset (this).childActionScriptConditionJPanel (childActionScriptConditionJPanel)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: ActionScriptItemJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: ActionScriptItemJPanel))

initComponents_impl :: ActionScriptItemJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JPanel.new_)
        jset (this).newActionScriptInputJPanel (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).childActionScriptConditionJPanel (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).newActionScriptConditionJPanel (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).scriptItemJPanel (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).removeJPanel (assignedValue)
        Control.Monad.void (JPanel.setLayout ((jget (this).newActionScriptInputJPanel)) (jio (GridLayout.new_2 1 0)))
        childActionScriptConditionJPanelLayout <- (GroupLayout.new_1 (jget (this).childActionScriptConditionJPanel))
        Control.Monad.void (JPanel.setLayout ((jget (this).childActionScriptConditionJPanel)) childActionScriptConditionJPanelLayout)
        Control.Monad.void (GroupLayout.setHorizontalGroup childActionScriptConditionJPanelLayout (jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup childActionScriptConditionJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 229 (Prelude.maxBound :: Int16))))
        Control.Monad.void (GroupLayout.setVerticalGroup childActionScriptConditionJPanelLayout (jio (GroupLayout.addGap ((jio (GroupLayout.createParallelGroup childActionScriptConditionJPanelLayout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) 0 8 (Prelude.maxBound :: Int16))))
        Control.Monad.void (JPanel.setLayout ((jget (this).newActionScriptConditionJPanel)) (jio (GridLayout.new_2 1 0)))
        Control.Monad.void (JPanel.setLayout ((jget (this).scriptItemJPanel)) (jio (GridLayout.new_2 1 1)))
        Control.Monad.void (JPanel.setLayout ((jget (this).removeJPanel)) (jio (GridLayout.new_2 1 1)))
        Control.Monad.void (JPanel.setMinimumSize ((jget (this).removeJPanel)) (jio (Dimension.new_2 30 20)))
        layout <- (GroupLayout.new_1 this)
        Control.Monad.void (JPanel.setLayout this layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.createSequentialGroup layout))) (jget this.scriptItemJPanel) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 167 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.removeJPanel) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 56 (Prelude.maxBound :: Int16)))))) (jget this.newActionScriptInputJPanel) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 229 (Prelude.maxBound :: Int16)))) (jget this.newActionScriptConditionJPanel) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 229 (Prelude.maxBound :: Int16)))) (jget this.childActionScriptConditionJPanel) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup layout))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.scriptItemJPanel) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 31 (Prelude.maxBound :: Int16)))) (jget this.removeJPanel) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 31 (Prelude.maxBound :: Int16)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.childActionScriptConditionJPanel) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.newActionScriptConditionJPanel) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 28 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jget this.newActionScriptInputJPanel) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 30 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE))))))
        pure ()


