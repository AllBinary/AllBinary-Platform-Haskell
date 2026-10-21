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
module FileJDialog (module FileJDialog, module JDialog) where

import JDialog hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addFinishedListener, addFinishedListener_super, addFinishedListener_impl, initComponents, initComponents_super, initComponents_impl, jFileChooser1ActionPerformed, jFileChooser1ActionPerformed_super, jFileChooser1ActionPerformed_impl, main, main_super, main_impl, getJFileChooser1, getJFileChooser1_super, getJFileChooser1_impl, setJFileChooser1, setJFileChooser1_super, setJFileChooser1_impl, logUtil, finishedListenerInterface, jFileChooser1)
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
import qualified FileJDialogListenerInterface -- same package or java.lang
import qualified Frame -- same package or java.lang
import qualified JFileChooser -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified JFrame -- same package or java.lang
import qualified ARunnable -- org.allbinary.thread.ARunnable
import qualified File -- java.io.File
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified JDialog

data FileJDialog = FileJDialog
    { header_ :: JavaHeader
    , base :: JDialog.JDialog
    , logUtil :: IORef (LogUtil.LogUtil)
    , finishedListenerInterface :: IORef (FileJDialogListenerInterface.FileJDialogListenerInterface)
    , jFileChooser1 :: IORef (JFileChooser.JFileChooser)
    }

instance JavaNull FileJDialog where
    javaNull = javaNullRecord "FileJDialog"

instance JavaEquals FileJDialog where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileJDialog where
    (==) = jrecordEquals

instance JavaObjectClass FileJDialog where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO FileJDialog
newRecord_ = do
    base <- JDialog.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    finishedListenerInterface <- newIORef javaNull
    jFileChooser1 <- newIORef javaNull
    let this = FileJDialog header_ base logUtil finishedListenerInterface jFileChooser1
    jregisterLevel header_ this
    jregisterMethod header_ "addFinishedListener" (\() -> addFinishedListener_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "jFileChooser1ActionPerformed" (\() -> jFileChooser1ActionPerformed_impl this)
    jregisterMethod header_ "getJFileChooser1" (\() -> getJFileChooser1_impl this)
    jregisterMethod header_ "setJFileChooser1" (\() -> setJFileChooser1_impl this)
    pure this

initFields_ :: FileJDialog -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.finishedListenerInterface (javaNull)
    jset this.jFileChooser1 (javaNull)
    pure ()

new_ :: IO FileJDialog
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FileJDialog -> IO ()
init_ this = do
        JDialog.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (FileJDialog.initComponents this)
        Control.Monad.void (JFileChooser.setMultiSelectionEnabled ((jio (FileJDialog.getJFileChooser1 this))) True)
        pure ()

new_2 :: Frame.Frame -> Bool -> IO FileJDialog
new_2 parent modal = do
    this <- newRecord_
    init_2 this parent modal
    pure this

init_2 :: FileJDialog -> Frame.Frame -> Bool -> IO ()
init_2 this parent modal = do
        JDialog.init_2 this.base (parent) (modal)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (FileJDialog.initComponents this)
        Control.Monad.void (JFileChooser.setMultiSelectionEnabled ((jio (FileJDialog.getJFileChooser1 this))) True)
        pure ()


addFinishedListener :: (JavaObjectClass this_) => this_ -> FileJDialogListenerInterface.FileJDialogListenerInterface -> IO (())
addFinishedListener object_ a1 = jmethod object_ "addFinishedListener" (\() -> (addFinishedListener_impl (javaCast object_ :: FileJDialog))) () a1

addFinishedListener_super :: (JavaObjectClass this_) => this_ -> FileJDialogListenerInterface.FileJDialogListenerInterface -> IO (())
addFinishedListener_super object_ a1 = (addFinishedListener_impl (javaCast object_ :: FileJDialog)) a1

addFinishedListener_impl :: FileJDialog -> FileJDialogListenerInterface.FileJDialogListenerInterface -> IO (())
addFinishedListener_impl this finishedListenerInterface = do
        jset (this).finishedListenerInterface (finishedListenerInterface)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: FileJDialog))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: FileJDialog))

initComponents_impl :: FileJDialog -> IO (())
initComponents_impl this = do
        assignedValue <- (JFileChooser.new_)
        jset (this).jFileChooser1 (assignedValue)
        Control.Monad.void (JDialog.setDefaultCloseOperation this (jget ((jget (javax.swing).windowConstants)).dISPOSE_ON_CLOSE))
        Control.Monad.void (JFileChooser.addActionListener ((jget (this).jFileChooser1)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        layout <- (GroupLayout.new_1 (jio (JDialog.getContentPane this)))
        Control.Monad.void (setLayout ((jio (JDialog.getContentPane this))) layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).tRAILING) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.add ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup layout))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16)))) (jget this.jFileChooser1) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))))))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.add ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.add ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup layout)))))) (jget this.jFileChooser1) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE) 357 (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).pREFERRED_SIZE)))) (jget ((jget ((jget (org.jdesktop).layout)).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))))
        Control.Monad.void (JDialog.pack this)
        pure ()


jFileChooser1ActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jFileChooser1ActionPerformed object_ a1 = jmethod object_ "jFileChooser1ActionPerformed" (\() -> (jFileChooser1ActionPerformed_impl (javaCast object_ :: FileJDialog))) () a1

jFileChooser1ActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jFileChooser1ActionPerformed_super object_ a1 = (jFileChooser1ActionPerformed_impl (javaCast object_ :: FileJDialog)) a1

jFileChooser1ActionPerformed_impl :: FileJDialog -> ActionEvent.ActionEvent -> IO (())
jFileChooser1ActionPerformed_impl this evt = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Starting Action Command: " ++ javaToString (jio (ActionEvent.getActionCommand evt))) this "ActionPerformed")
        files <- (JFileChooser.getSelectedFiles ((jio (FileJDialog.getJFileChooser1 this))))
        when ((jio (ActionEvent.getActionCommand evt)) == (jget ((jio (FileJDialog.getJFileChooser1 this))).cANCEL_SELECTION)) $ do
            Control.Monad.void (JDialog.setVisible this False)
        when ((jio (ActionEvent.getActionCommand evt)) == (jget ((jio (FileJDialog.getJFileChooser1 this))).aPPROVE_SELECTION)) $ do
            when ((files /= javaNull) && ((jlength files) > 0)) $ do
                Control.Monad.void (FileJDialogListenerInterface.onFiles ((jget (this).finishedListenerInterface)) files)
        pure ()


main :: JavaArray (String) -> IO (())
main args = do
        Control.Monad.void (invokeLater ((jget (java.awt).eventQueue)) (ARunnable.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-}))
        pure ()


getJFileChooser1 :: (JavaObjectClass this_) => this_ -> IO (JFileChooser.JFileChooser)
getJFileChooser1 object_ = jmethod object_ "getJFileChooser1" (\() -> (getJFileChooser1_impl (javaCast object_ :: FileJDialog))) ()

getJFileChooser1_super :: (JavaObjectClass this_) => this_ -> IO (JFileChooser.JFileChooser)
getJFileChooser1_super object_ = (getJFileChooser1_impl (javaCast object_ :: FileJDialog))

getJFileChooser1_impl :: FileJDialog -> IO (JFileChooser.JFileChooser)
getJFileChooser1_impl this = do
        pure ((jget (this).jFileChooser1))


setJFileChooser1 :: (JavaObjectClass this_) => this_ -> JFileChooser.JFileChooser -> IO (())
setJFileChooser1 object_ a1 = jmethod object_ "setJFileChooser1" (\() -> (setJFileChooser1_impl (javaCast object_ :: FileJDialog))) () a1

setJFileChooser1_super :: (JavaObjectClass this_) => this_ -> JFileChooser.JFileChooser -> IO (())
setJFileChooser1_super object_ a1 = (setJFileChooser1_impl (javaCast object_ :: FileJDialog)) a1

setJFileChooser1_impl :: FileJDialog -> JFileChooser.JFileChooser -> IO (())
setJFileChooser1_impl this jFileChooser1 = do
        jset (this).jFileChooser1 (jFileChooser1)
        pure ()


