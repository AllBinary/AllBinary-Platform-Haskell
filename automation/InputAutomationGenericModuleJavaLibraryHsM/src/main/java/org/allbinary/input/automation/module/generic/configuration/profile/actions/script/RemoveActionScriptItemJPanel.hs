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
module RemoveActionScriptItemJPanel (module RemoveActionScriptItemJPanel, module Panel) where

import Panel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initComponents, initComponents_super, initComponents_impl, removeJButtonActionPerformed, removeJButtonActionPerformed_super, removeJButtonActionPerformed_impl, logUtil, genericProfileActionJPanel, profileActionScriptConditionInterface, removeJButton)
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
import qualified JButton -- same package or java.lang
import qualified GridLayout -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified ProfileActionScriptConditionInterface -- org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface
import qualified GenericProfileAction -- org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileAction
import qualified GenericProfileActionJPanel -- org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActionJPanel
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Panel

data RemoveActionScriptItemJPanel = RemoveActionScriptItemJPanel
    { header_ :: JavaHeader
    , base :: Panel.Panel
    , logUtil :: IORef (LogUtil.LogUtil)
    , genericProfileActionJPanel :: IORef (GenericProfileActionJPanel.GenericProfileActionJPanel)
    , profileActionScriptConditionInterface :: IORef (ProfileActionScriptConditionInterface.ProfileActionScriptConditionInterface)
    , removeJButton :: IORef (JButton.JButton)
    }

instance JavaNull RemoveActionScriptItemJPanel where
    javaNull = javaNullRecord "RemoveActionScriptItemJPanel"

instance JavaEquals RemoveActionScriptItemJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RemoveActionScriptItemJPanel where
    (==) = jrecordEquals

instance JavaObjectClass RemoveActionScriptItemJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RemoveActionScriptItemJPanel
newRecord_ = do
    base <- Panel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    genericProfileActionJPanel <- newIORef javaNull
    profileActionScriptConditionInterface <- newIORef javaNull
    removeJButton <- newIORef javaNull
    let this = RemoveActionScriptItemJPanel header_ base logUtil genericProfileActionJPanel profileActionScriptConditionInterface removeJButton
    jregisterLevel header_ this
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "removeJButtonActionPerformed" (\() -> removeJButtonActionPerformed_impl this)
    pure this

initFields_ :: RemoveActionScriptItemJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.genericProfileActionJPanel (javaNull)
    jset this.profileActionScriptConditionInterface (javaNull)
    jset this.removeJButton (javaNull)
    pure ()

new_2 :: GenericProfileActionJPanel.GenericProfileActionJPanel -> ProfileActionScriptConditionInterface.ProfileActionScriptConditionInterface -> IO RemoveActionScriptItemJPanel
new_2 genericProfileActionJPanel profileActionScriptConditionInterface = do
    this <- newRecord_
    init_2 this genericProfileActionJPanel profileActionScriptConditionInterface
    pure this

init_2 :: RemoveActionScriptItemJPanel -> GenericProfileActionJPanel.GenericProfileActionJPanel -> ProfileActionScriptConditionInterface.ProfileActionScriptConditionInterface -> IO ()
init_2 this genericProfileActionJPanel profileActionScriptConditionInterface = do
        Panel.init_ this.base
        initFields_ this
        Control.Monad.void (RemoveActionScriptItemJPanel.initComponents this)
        jset (this).genericProfileActionJPanel (genericProfileActionJPanel)
        jset (this).profileActionScriptConditionInterface (profileActionScriptConditionInterface)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: RemoveActionScriptItemJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: RemoveActionScriptItemJPanel))

initComponents_impl :: RemoveActionScriptItemJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JButton.new_)
        jset (this).removeJButton (assignedValue)
        Control.Monad.void (Panel.setLayout this (jio (GridLayout.new_)))
        Control.Monad.void (JButton.setText ((jget (this).removeJButton)) "Remove")
        Control.Monad.void (JButton.addActionListener ((jget (this).removeJButton)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (Panel.add this (jget (this).removeJButton))
        pure ()


removeJButtonActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
removeJButtonActionPerformed object_ a1 = jmethod object_ "removeJButtonActionPerformed" (\() -> (removeJButtonActionPerformed_impl (javaCast object_ :: RemoveActionScriptItemJPanel))) () a1

removeJButtonActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
removeJButtonActionPerformed_super object_ a1 = (removeJButtonActionPerformed_impl (javaCast object_ :: RemoveActionScriptItemJPanel)) a1

removeJButtonActionPerformed_impl :: RemoveActionScriptItemJPanel -> ActionEvent.ActionEvent -> IO (())
removeJButtonActionPerformed_impl this evt = do
    javaCatchReturn $ do
        genericProfileAction <- (GenericProfileActionJPanel.getGenericProfileAction ((jget (this).genericProfileActionJPanel)))
        when (genericProfileAction == javaNull) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "GenericProfileAction was null" this "removeJButtonActionPerformed")
            javaReturn (())
        Control.Monad.void (GenericProfileActionScript.removeCondition ((jio (GenericProfileAction.getGenericProfileActionScript genericProfileAction))) (javaCast (jget (this).profileActionScriptConditionInterface)))
        Control.Monad.void (GenericProfileActionJPanel.updateProfileActionUI ((jget (this).genericProfileActionJPanel)))
    pure ()


