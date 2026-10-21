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
-- package org.allbinary.graphics.j2me.dialog
module RotateJDialog (module RotateJDialog, module JDialog) where

import JDialog hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initComponents, initComponents_super, initComponents_impl, jButton1ActionPerformed, jButton1ActionPerformed_super, jButton1ActionPerformed_impl, main, main_super, main_impl, logUtil, hashMap, angleIncrementJTextField, jButton1, jLabel1, jLabel2, jPanel1, totalRotationJTextField)
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
import qualified Frame -- same package or java.lang
import qualified JTextField -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JPanel -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified ActionListener -- same package or java.lang
import qualified ActionEvent -- same package or java.lang
import qualified GroupLayout -- same package or java.lang
import qualified JFrame -- same package or java.lang
import qualified WindowAdapter -- same package or java.lang
import qualified WindowEvent -- same package or java.lang
import qualified ARunnable -- org.allbinary.thread.ARunnable
import qualified HashMap -- java.util.HashMap
import qualified HashMapJDialogListenerInterface -- org.allbinary.gui.dialog.HashMapJDialogListenerInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified JDialog

data RotateJDialog = RotateJDialog
    { header_ :: JavaHeader
    , base :: JDialog.JDialog
    , logUtil :: IORef (LogUtil.LogUtil)
    , hashMap :: IORef (HashMap.HashMap)
    , angleIncrementJTextField :: IORef (JTextField.JTextField)
    , jButton1 :: IORef (JButton.JButton)
    , jLabel1 :: IORef (JLabel.JLabel)
    , jLabel2 :: IORef (JLabel.JLabel)
    , jPanel1 :: IORef (JPanel.JPanel)
    , totalRotationJTextField :: IORef (JTextField.JTextField)
    }

instance JavaNull RotateJDialog where
    javaNull = javaNullRecord "RotateJDialog"

instance JavaEquals RotateJDialog where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RotateJDialog where
    (==) = jrecordEquals

instance JavaObjectClass RotateJDialog where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RotateJDialog
newRecord_ = do
    base <- JDialog.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    hashMap <- newIORef javaNull
    angleIncrementJTextField <- newIORef javaNull
    jButton1 <- newIORef javaNull
    jLabel1 <- newIORef javaNull
    jLabel2 <- newIORef javaNull
    jPanel1 <- newIORef javaNull
    totalRotationJTextField <- newIORef javaNull
    let this = RotateJDialog header_ base logUtil hashMap angleIncrementJTextField jButton1 jLabel1 jLabel2 jPanel1 totalRotationJTextField
    jregisterLevel header_ this
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "jButton1ActionPerformed" (\() -> jButton1ActionPerformed_impl this)
    pure this

initFields_ :: RotateJDialog -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.hashMap =<< (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
    jset this.angleIncrementJTextField (javaNull)
    jset this.jButton1 (javaNull)
    jset this.jLabel1 (javaNull)
    jset this.jLabel2 (javaNull)
    jset this.jPanel1 (javaNull)
    jset this.totalRotationJTextField (javaNull)
    pure ()

new_2 :: Frame.Frame -> Bool -> IO RotateJDialog
new_2 parent modal = do
    this <- newRecord_
    init_2 this parent modal
    pure this

init_2 :: RotateJDialog -> Frame.Frame -> Bool -> IO ()
init_2 this parent modal = do
        JDialog.init_2 this.base (parent) (modal)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (RotateJDialog.initComponents this)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: RotateJDialog))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: RotateJDialog))

initComponents_impl :: RotateJDialog -> IO (())
initComponents_impl this = do
        assignedValue <- (JTextField.new_)
        jset this.angleIncrementJTextField (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel1 (assignedValue)
        assignedValue <- (JTextField.new_)
        jset (this).totalRotationJTextField (assignedValue)
        assignedValue <- (JLabel.new_)
        jset (this).jLabel2 (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).jPanel1 (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).jButton1 (assignedValue)
        Control.Monad.void (JDialog.setDefaultCloseOperation this (jget ((jget (javax.swing).windowConstants)).dISPOSE_ON_CLOSE))
        Control.Monad.void (JTextField.setText ((jget (this).angleIncrementJTextField)) "36")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel1)) "Angle Increment:")
        Control.Monad.void (JTextField.setText ((jget (this).totalRotationJTextField)) "360")
        Control.Monad.void (JLabel.setText ((jget (this).jLabel2)) "Total Angular Rotation:")
        Control.Monad.void (JButton.setText ((jget (this).jButton1)) "OK")
        Control.Monad.void (JButton.addActionListener ((jget (this).jButton1)) (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- actionPerformed
-}))
        jPanel1Layout <- (GroupLayout.new_1 (jget (this).jPanel1))
        Control.Monad.void (JPanel.setLayout ((jget (this).jPanel1)) jPanel1Layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup jPanel1Layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addGap ((jio (GroupLayout.createSequentialGroup jPanel1Layout))) 62 62 62))) (jget this.jButton1)))) 62 (Prelude.maxBound :: Int16))))))
        Control.Monad.void (GroupLayout.setVerticalGroup jPanel1Layout (jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup jPanel1Layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.jButton1))))
        layout <- (GroupLayout.new_1 (jio (JDialog.getContentPane this)))
        Control.Monad.void (setLayout ((jio (JDialog.getContentPane this))) layout)
        Control.Monad.void (GroupLayout.setHorizontalGroup layout (jio (GroupLayout.addComponent ((jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup layout)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING)))) (jget this.jLabel1)))) (jget this.jLabel2)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).uNRELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jget this.totalRotationJTextField) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) 31 (Prelude.maxBound :: Int16)))) (jget this.angleIncrementJTextField) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) 31 (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE))))))))))) (jget this.jPanel1) (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).tRAILING) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (Prelude.maxBound :: Int16))))
        Control.Monad.void (GroupLayout.setVerticalGroup layout (jio (GroupLayout.addGroup ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).lEADING)))) (jio (GroupLayout.addContainerGap ((jio (GroupLayout.addComponent ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addPreferredGap ((jio (GroupLayout.addGroup ((jio (GroupLayout.addContainerGap ((jio (GroupLayout.createSequentialGroup layout)))))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.angleIncrementJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.jLabel1)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED)))) (jio (GroupLayout.addComponent ((jio (GroupLayout.addComponent ((jio (GroupLayout.createParallelGroup layout (jget ((jget ((jget (javax.swing).groupLayout)).alignment)).bASELINE)))) (jget this.totalRotationJTextField) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))) (jget this.jLabel2)))))) (jget ((jget ((jget (javax.swing).layoutStyle)).componentPlacement)).rELATED) 16 (Prelude.maxBound :: Int16)))) (jget this.jPanel1) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE) (jget ((jget (javax.swing).groupLayout)).dEFAULT_SIZE) (jget ((jget (javax.swing).groupLayout)).pREFERRED_SIZE)))))))))
        Control.Monad.void (JDialog.pack this)
        pure ()


jButton1ActionPerformed :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jButton1ActionPerformed object_ a1 = jmethod object_ "jButton1ActionPerformed" (\() -> (jButton1ActionPerformed_impl (javaCast object_ :: RotateJDialog))) () a1

jButton1ActionPerformed_super :: (JavaObjectClass this_) => this_ -> ActionEvent.ActionEvent -> IO (())
jButton1ActionPerformed_super object_ a1 = (jButton1ActionPerformed_impl (javaCast object_ :: RotateJDialog)) a1

jButton1ActionPerformed_impl :: RotateJDialog -> ActionEvent.ActionEvent -> IO (())
jButton1ActionPerformed_impl this evt = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "jButton1ActionPerformed")
            ) $ do
            Control.Monad.void (HashMap.put ((jget (this).hashMap)) (javaToString 0) (javaToString (jio (JTextField.getText ((jget (this).angleIncrementJTextField))))))
            Control.Monad.void (HashMap.put ((jget (this).hashMap)) (javaToString 1) (javaToString (jio (JTextField.getText ((jget (this).totalRotationJTextField))))))
            Control.Monad.void (onHashMap (((javaCast (jio (JDialog.getParent this)) :: HashMapJDialogListenerInterface.HashMapJDialogListenerInterface))) (jget (this).hashMap))
            Control.Monad.void (JDialog.setVisible this False)
        pure ()


main :: JavaArray (String) -> IO (())
main args = do
        Control.Monad.void (invokeLater ((jget (java.awt).eventQueue)) (ARunnable.new_ {- Java anonymous class body: implement it as a record of functions
            -- run
-}))
        pure ()


