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
-- package org.allbinary.gui.dialog
module BasicTextJDialog (module BasicTextJDialog, module JDialog) where

import JDialog hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setText, setText_super, setText_impl, addCloseListener, addCloseListener_super, addCloseListener_impl, initComponents, initComponents_super, initComponents_impl, jButton1ActionPerformed, jButton1ActionPerformed_super, jButton1ActionPerformed_impl, main, main_super, main_impl, closeListenerInterface, jButton1, textJLabel)
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
import qualified CloseJDialogListenerInterface -- same package or java.lang
import qualified Frame -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified JFrame -- same package or java.lang
import qualified ARunnable -- org.allbinary.thread.ARunnable
import qualified JDialog

data BasicTextJDialog = BasicTextJDialog
    { header_ :: JavaHeader
    , base :: JDialog.JDialog
    , closeListenerInterface :: IORef (CloseJDialogListenerInterface.CloseJDialogListenerInterface)
    , jButton1 :: IORef (JButton.JButton)
    , textJLabel :: IORef (JLabel.JLabel)
    }

instance JavaNull BasicTextJDialog where
    javaNull = javaNullRecord "BasicTextJDialog"

instance JavaEquals BasicTextJDialog where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicTextJDialog where
    (==) = jrecordEquals

instance JavaObjectClass BasicTextJDialog where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicTextJDialog
newRecord_ = do
    base <- JDialog.newRecord_
    let header_ = base.header_
    closeListenerInterface <- newIORef javaNull
    jButton1 <- newIORef javaNull
    textJLabel <- newIORef javaNull
    let this = BasicTextJDialog header_ base closeListenerInterface jButton1 textJLabel
    jregisterLevel header_ this
    jregisterMethod header_ "setText" (\() -> setText_impl this)
    jregisterMethod header_ "addCloseListener" (\() -> addCloseListener_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "jButton1ActionPerformed" (\() -> jButton1ActionPerformed_impl this)
    pure this

initFields_ :: BasicTextJDialog -> IO ()
initFields_ this = do
    jset this.closeListenerInterface (javaNull)
    jset this.jButton1 (javaNull)
    jset this.textJLabel (javaNull)
    pure ()

new_3 :: Frame.Frame -> Bool -> String -> IO BasicTextJDialog
new_3 parent modal text = do
    this <- newRecord_
    init_3 this parent modal text
    pure this

init_3 :: BasicTextJDialog -> Frame.Frame -> Bool -> String -> IO ()
init_3 this parent modal text = do
        JDialog.init_2 this.base (parent) (modal)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (BasicTextJDialog.initComponents this)
        Control.Monad.void (BasicTextJDialog.setText this text)
        pure ()


setText :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText object_ a1 = jmethod object_ "setText" (\() -> (setText_impl (javaCast object_ :: BasicTextJDialog))) () a1

setText_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText_super object_ a1 = (setText_impl (javaCast object_ :: BasicTextJDialog)) a1

setText_impl :: BasicTextJDialog -> String -> IO (())
setText_impl this text = do
        Control.Monad.void (JLabel.setText ((jget (this).textJLabel)) text)
        pure ()


addCloseListener :: (JavaObjectClass this_) => this_ -> CloseJDialogListenerInterface.CloseJDialogListenerInterface -> IO (())
addCloseListener object_ a1 = jmethod object_ "addCloseListener" (\() -> (addCloseListener_impl (javaCast object_ :: BasicTextJDialog))) () a1

addCloseListener_super :: (JavaObjectClass this_) => this_ -> CloseJDialogListenerInterface.CloseJDialogListenerInterface -> IO (())
addCloseListener_super object_ a1 = (addCloseListener_impl (javaCast object_ :: BasicTextJDialog)) a1

addCloseListener_impl :: BasicTextJDialog -> CloseJDialogListenerInterface.CloseJDialogListenerInterface -> IO (())
addCloseListener_impl this closeListenerInterface = do
        jset (this).closeListenerInterface (closeListenerInterface)
        pure ()

new_1 :: String -> IO BasicTextJDialog
new_1 text = do
    this <- newRecord_
    init_1 this text
    pure this

init_1 :: BasicTextJDialog -> String -> IO ()
init_1 this text = do
        JDialog.init_ this.base
        initFields_ this
        Control.Monad.void (BasicTextJDialog.initComponents this)
        Control.Monad.void (JLabel.setText ((jget (this).textJLabel)) text)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: BasicTextJDialog))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: BasicTextJDialog))

initComponents_impl :: BasicTextJDialog -> IO (())
initComponents_impl this = do
        assignedValue <- (JButton.new_)
        jset (this).jButton1 (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).textJLabel (assignedValue)
        Control.Monad.void (JDialog.setDefaultCloseOperation this (jget ((jget (javax.swing).windowConstants)).dISPOSE_ON_CLOSE))
        Control.Monad.void (JButton.setText ((jget (this).jButton1)) "OK")
        Control.Monad.void (JButton.addActionListener ((jget this.jButton1)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        Control.Monad.void (JLabel.setText ((jget (this).textJLabel)) "No Text Set")
        layout <- (GroupLayout.new_1 (jio (JDialog.getContentPane this)))
        Control.Monad.void (setLayout ((jio (JDialog.getContentPane this))) layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.createSequentialGroup layout))) (jio (GroupLayout.addGroup ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup layout))) 80 80 80))) (jget this.jButton1)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup layout)))))) (jget this.textJLabel) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 184 (Prelude.maxBound :: Int16)))))))))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup layout))) 20 20 20))) (jget this.textJLabel) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 20 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) 30 30 30))) (jget this.jButton1))))))
        Control.Monad.void (JDialog.pack this)
        pure ()


jButton1ActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jButton1ActionPerformed object_ a1 = jmethod object_ "jButton1ActionPerformed" (\() -> (jButton1ActionPerformed_impl (javaCast object_ :: BasicTextJDialog))) () a1

jButton1ActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jButton1ActionPerformed_super object_ a1 = (jButton1ActionPerformed_impl (javaCast object_ :: BasicTextJDialog)) a1

jButton1ActionPerformed_impl :: BasicTextJDialog -> ActionEvent.ActionEvent -> IO (())
jButton1ActionPerformed_impl this evt = do
        Control.Monad.void (JDialog.setVisible this False)
        when ((jget (this).closeListenerInterface) /= javaNull) $ do
            Control.Monad.void (CloseJDialogListenerInterface.onClose ((jget (this).closeListenerInterface)))
        pure ()


main :: JavaArray (String) -> IO (())
main args = do
        Control.Monad.void (invokeLater ((jget (java.awt).eventQueue)) (ARunnable.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-}))
        pure ()


