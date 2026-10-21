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
-- package org.allbinary.input.automation.actions.script
module ProfileActionScriptItem (module ProfileActionScriptItem, module DefaultMutableTreeNode) where

import DefaultMutableTreeNode hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, process, process_super, process_impl, getJPopupMenu, getJPopupMenu_super, getJPopupMenu_impl, showDialog, showDialog_super, showDialog_impl, actionPerformed, actionPerformed_super, actionPerformed_impl, setJPopupMenu, setJPopupMenu_super, setJPopupMenu_impl, logUtil, commonStrings, jPopupMenu, eDIT, dELETE, nEW_CONDITION, nEW_INPUT, nEW_OUTPUT, nEW_COLOR_AT, nEW_TIME_INTERVAL, nEW_ALWAYS, nEW_KEY_INPUT, nEW_MOUSE_INPUT, nEW_JOYSTICK_INPUT, nEW_IMAGE_OUTPUT)
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
import qualified JPopupMenu -- same package or java.lang
import qualified JMenuItem -- same package or java.lang
import qualified ActionEvent -- java.awt.event.ActionEvent
import qualified ActionListener -- java.awt.event.ActionListener
import qualified DefaultMutableTreeNode -- javax.swing.tree.DefaultMutableTreeNode
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Node -- org.w3c.dom.Node
-- import javax.swing.*
import qualified ProfileActionScriptItemInterface

-- implements ProfileActionScriptItemInterface
-- implements ActionListener
data ProfileActionScriptItem = ProfileActionScriptItem
    { header_ :: JavaHeader
    , base :: DefaultMutableTreeNode.DefaultMutableTreeNode
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , jPopupMenu :: IORef (JPopupMenu.JPopupMenu)
    }

instance JavaNull ProfileActionScriptItem where
    javaNull = javaNullRecord "ProfileActionScriptItem"

instance JavaEquals ProfileActionScriptItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProfileActionScriptItem where
    (==) = jrecordEquals

instance JavaObjectClass ProfileActionScriptItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

eDIT = "Edit"

dELETE = "Delete"

nEW_CONDITION = "New Condition"

nEW_INPUT = "New Input"

nEW_OUTPUT = "New Output"

nEW_COLOR_AT = "Color At"

nEW_TIME_INTERVAL = "Time Interval"

nEW_ALWAYS = "Always On/Off"

nEW_KEY_INPUT = "Key"

nEW_MOUSE_INPUT = "Mouse"

nEW_JOYSTICK_INPUT = "Joystick"

nEW_IMAGE_OUTPUT = "Image"

newRecord_ :: IO ProfileActionScriptItem
newRecord_ = do
    base <- DefaultMutableTreeNode.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    jPopupMenu <- newIORef javaNull
    let this = ProfileActionScriptItem header_ base logUtil commonStrings jPopupMenu
    jregisterLevel header_ this
    ProfileActionScriptItemInterface.registerInterface_ header_
    ActionListener.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "getJPopupMenu" (\() -> getJPopupMenu_impl this)
    jregisterMethod header_ "showDialog" (\() -> showDialog_impl this)
    jregisterMethod header_ "actionPerformed" (\() -> actionPerformed_impl this)
    jregisterMethod header_ "setJPopupMenu" (\() -> setJPopupMenu_impl this)
    pure this

initFields_ :: ProfileActionScriptItem -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.jPopupMenu (javaNull)
    pure ()

new_2 :: String -> Node.Node -> IO ProfileActionScriptItem
new_2 label node = do
    this <- newRecord_
    init_2 this label node
    pure this

init_2 :: ProfileActionScriptItem -> String -> Node.Node -> IO ()
init_2 this label node = do
        DefaultMutableTreeNode.init_1 this.base (label)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (ProfileActionScriptItem.init this)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Label: " ++ label) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()

new_1 :: String -> IO ProfileActionScriptItem
new_1 label = do
    this <- newRecord_
    init_1 this label
    pure this

init_1 :: ProfileActionScriptItem -> String -> IO ()
init_1 this label = do
        DefaultMutableTreeNode.init_1 this.base (label)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (ProfileActionScriptItem.init this)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Label: " ++ label) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ProfileActionScriptItem))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: ProfileActionScriptItem))

init_impl :: ProfileActionScriptItem -> IO (())
init_impl this = do
        Control.Monad.void (ProfileActionScriptItem.setJPopupMenu this (jio (JPopupMenu.new_)))
        jMenuItemEdit <- (JMenuItem.new_1 eDIT)
        jMenuItemDelete <- (JMenuItem.new_1 dELETE)
        Control.Monad.void (JMenuItem.addActionListener jMenuItemEdit this)
        Control.Monad.void (JMenuItem.addActionListener jMenuItemDelete this)
        Control.Monad.void (JPopupMenu.add ((jio (ProfileActionScriptItem.getJPopupMenu this))) jMenuItemEdit)
        Control.Monad.void (JPopupMenu.add ((jio (ProfileActionScriptItem.getJPopupMenu this))) jMenuItemDelete)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: ProfileActionScriptItem))) () a1

process_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: ProfileActionScriptItem)) a1

process_impl :: ProfileActionScriptItem -> Int64 -> IO (())
process_impl this frame = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


getJPopupMenu :: (JavaObjectClass this_) => this_ -> IO (JPopupMenu.JPopupMenu)
getJPopupMenu object_ = jmethod object_ "getJPopupMenu" (\() -> (getJPopupMenu_impl (javaCast object_ :: ProfileActionScriptItem))) ()

getJPopupMenu_super :: (JavaObjectClass this_) => this_ -> IO (JPopupMenu.JPopupMenu)
getJPopupMenu_super object_ = (getJPopupMenu_impl (javaCast object_ :: ProfileActionScriptItem))

getJPopupMenu_impl :: ProfileActionScriptItem -> IO (JPopupMenu.JPopupMenu)
getJPopupMenu_impl this = do
        pure ((jget (this).jPopupMenu))


showDialog :: (JavaObjectClass this_) => this_ -> IO (())
showDialog object_ = jmethod object_ "showDialog" (\() -> (showDialog_impl (javaCast object_ :: ProfileActionScriptItem))) ()

showDialog_super :: (JavaObjectClass this_) => this_ -> IO (())
showDialog_super object_ = (showDialog_impl (javaCast object_ :: ProfileActionScriptItem))

showDialog_impl :: ProfileActionScriptItem -> IO (())
showDialog_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


actionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
actionPerformed object_ a1 = jmethod object_ "actionPerformed" (\() -> (actionPerformed_impl (javaCast object_ :: ProfileActionScriptItem))) () a1

actionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
actionPerformed_super object_ a1 = (actionPerformed_impl (javaCast object_ :: ProfileActionScriptItem)) a1

actionPerformed_impl :: ProfileActionScriptItem -> ActionEvent.ActionEvent -> IO (())
actionPerformed_impl this actionEvent = do
        when ((jio (ActionEvent.compareTo ((jio (ActionEvent.getActionCommand actionEvent))) (ProfileActionScriptItem.eDIT))) == 0) $ do
            Control.Monad.void (ProfileActionScriptItem.showDialog this)
        pure ()


setJPopupMenu :: (JavaObjectClass this_) => this_ -> JPopupMenu.JPopupMenu -> IO (())
setJPopupMenu object_ a1 = jmethod object_ "setJPopupMenu" (\() -> (setJPopupMenu_impl (javaCast object_ :: ProfileActionScriptItem))) () a1

setJPopupMenu_super :: (JavaObjectClass this_) => this_ -> JPopupMenu.JPopupMenu -> IO (())
setJPopupMenu_super object_ a1 = (setJPopupMenu_impl (javaCast object_ :: ProfileActionScriptItem)) a1

setJPopupMenu_impl :: ProfileActionScriptItem -> JPopupMenu.JPopupMenu -> IO (())
setJPopupMenu_impl this jPopupMenu = do
        jset (this).jPopupMenu (jPopupMenu)
        pure ()


