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
module NewWorkAreaJDialog (module NewWorkAreaJDialog, module JDialog) where

import JDialog hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, disposeNewDialog, disposeNewDialog_super, disposeNewDialog_impl, initComponents, initComponents_super, initComponents_impl, closeDialog, closeDialog_super, closeDialog_impl, main, main_super, main_impl, parent, dimension, xSizeJTextField, ySizeJTextField, nameJTextField)
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
import qualified JTextField -- same package or java.lang
import qualified Frame -- same package or java.lang
import qualified JButton -- same package or java.lang
import qualified GridLayout -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified WindowAdapter -- same package or java.lang
import qualified WindowEvent -- same package or java.lang
import qualified ActionEvent -- java.awt.event.ActionEvent
import qualified ActionListener -- java.awt.event.ActionListener
import qualified GraphicsException -- org.allbinary.graphics.j2me.GraphicsException
import qualified MyFrame -- org.allbinary.graphics.j2me.MyFrame
import qualified WorkAreaJPanel -- org.allbinary.graphics.j2me.workarea.WorkAreaJPanel
import qualified WorkAreaJPanelInterface -- org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface
-- import java.awt.*
-- import javax.swing.*
import qualified JDialog

data NewWorkAreaJDialog = NewWorkAreaJDialog
    { header_ :: JavaHeader
    , base :: JDialog.JDialog
    , parent :: IORef (MyFrame.MyFrame)
    , dimension :: IORef (Dimension.Dimension)
    , xSizeJTextField :: IORef (JTextField.JTextField)
    , ySizeJTextField :: IORef (JTextField.JTextField)
    , nameJTextField :: IORef (JTextField.JTextField)
    }

instance JavaNull NewWorkAreaJDialog where
    javaNull = javaNullRecord "NewWorkAreaJDialog"

instance JavaEquals NewWorkAreaJDialog where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NewWorkAreaJDialog where
    (==) = jrecordEquals

instance JavaObjectClass NewWorkAreaJDialog where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NewWorkAreaJDialog
newRecord_ = do
    base <- JDialog.newRecord_
    let header_ = base.header_
    parent <- newIORef javaNull
    dimension <- newIORef javaNull
    xSizeJTextField <- newIORef javaNull
    ySizeJTextField <- newIORef javaNull
    nameJTextField <- newIORef javaNull
    let this = NewWorkAreaJDialog header_ base parent dimension xSizeJTextField ySizeJTextField nameJTextField
    jregisterLevel header_ this
    jregisterMethod header_ "disposeNewDialog" (\() -> disposeNewDialog_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "closeDialog" (\() -> closeDialog_impl this)
    pure this

initFields_ :: NewWorkAreaJDialog -> IO ()
initFields_ this = do
    jset this.parent (javaNull)
    jset this.dimension (javaNull)
    jset this.xSizeJTextField (javaNull)
    jset this.ySizeJTextField (javaNull)
    jset this.nameJTextField (javaNull)
    pure ()

new_4 :: MyFrame.MyFrame -> Bool -> Dimension.Dimension -> String -> IO NewWorkAreaJDialog
new_4 parent modal dimension newName = do
    this <- newRecord_
    init_4 this parent modal dimension newName
    pure this

init_4 :: NewWorkAreaJDialog -> MyFrame.MyFrame -> Bool -> Dimension.Dimension -> String -> IO ()
init_4 this parent modal dimension newName = do
        JDialog.init_2 this.base (javaCast parent :: Frame.Frame) (modal)
        initFields_ this
        pure () -- super(...) is in the record above
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            Control.Monad.void (NewWorkAreaJDialog.initComponents this)
            jset (this).parent (parent)
            assignedValue <- (JTextField.new_1 "12")
            jset (this).xSizeJTextField (assignedValue)
            assignedValue <- (JTextField.new_1 "12")
            jset (this).ySizeJTextField (assignedValue)
            assignedValue <- (JTextField.new_1 newName)
            jset (this).nameJTextField (assignedValue)
            jset (this).dimension (dimension)
            submitButton <- (JButton.new_1 "Ok")
            Control.Monad.void (JButton.addActionListener submitButton (ActionListener.new_ {- Java anonymous class body: implement it as a record of functions
                -- actionPerformed
-}))
            Control.Monad.void (JDialog.setSize this 150 100)
            Control.Monad.void (JDialog.setLayout ((jio (JDialog.getContentPane this))) (jio (GridLayout.new_2 5 2)))
            Control.Monad.void (JDialog.add ((jio (JDialog.getContentPane this))) (jio (JLabel.new_1 "Please enter")))
            Control.Monad.void (JDialog.add ((jio (JDialog.getContentPane this))) (jio (JLabel.new_1 " the size.")))
            Control.Monad.void (JDialog.add ((jio (JDialog.getContentPane this))) (jio (JLabel.new_1 "Name:")))
            Control.Monad.void (JDialog.add ((jio (JDialog.getContentPane this))) (jget (this).nameJTextField))
            Control.Monad.void (JDialog.add ((jio (JDialog.getContentPane this))) (jio (JLabel.new_1 "X: ")))
            Control.Monad.void (JDialog.add ((jio (JDialog.getContentPane this))) (jget (this).xSizeJTextField))
            Control.Monad.void (JDialog.add ((jio (JDialog.getContentPane this))) (jio (JLabel.new_1 "Y: ")))
            Control.Monad.void (JDialog.add ((jio (JDialog.getContentPane this))) (jget (this).ySizeJTextField))
            Control.Monad.void (JDialog.add ((jio (JDialog.getContentPane this))) submitButton)
            Control.Monad.void (JDialog.show this)
        pure ()


-- throws Exception
disposeNewDialog :: (JavaObjectClass this_) => this_ -> IO (())
disposeNewDialog object_ = jmethod object_ "disposeNewDialog" (\() -> (disposeNewDialog_impl (javaCast object_ :: NewWorkAreaJDialog))) ()

disposeNewDialog_super :: (JavaObjectClass this_) => this_ -> IO (())
disposeNewDialog_super object_ = (disposeNewDialog_impl (javaCast object_ :: NewWorkAreaJDialog))

disposeNewDialog_impl :: NewWorkAreaJDialog -> IO (())
disposeNewDialog_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            let canvasWidth = (Prelude.fromIntegral ((jio (JTextField.getText ((jget (this).xSizeJTextField))))) :: Int)
            let canvasHeight = (Prelude.fromIntegral ((jio (JTextField.getText ((jget (this).ySizeJTextField))))) :: Int)
            newName <- (JTextField.getText ((jget (this).nameJTextField)))
            when (newName == javaNull) $ do
                javaThrow ((JavaException "GraphicsException" "No Name" this "disposeNewDialog"))
            workAreaJPanel <- (WorkAreaJPanel.new_4 newName (jget (this).dimension) (canvasWidth) (canvasHeight))
            Control.Monad.void (WorkAreaJPanel.setLayout workAreaJPanel (jio (GridLayout.new_2 1 1)))
            Control.Monad.void (MyFrame.add ((jget (this).parent)) (javaCast workAreaJPanel :: WorkAreaJPanelInterface.WorkAreaJPanelInterface))
            Control.Monad.void (JDialog.dispose this)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: NewWorkAreaJDialog))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: NewWorkAreaJDialog))

initComponents_impl :: NewWorkAreaJDialog -> IO (())
initComponents_impl this = do
        Control.Monad.void (JDialog.addWindowListener this (WindowAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- windowClosing
-}))
        Control.Monad.void (JDialog.pack this)
        pure ()


closeDialog :: (JavaObjectClass this_) => this_ -> WindowEvent.WindowEvent -> IO (())
closeDialog object_ a1 = jmethod object_ "closeDialog" (\() -> (closeDialog_impl (javaCast object_ :: NewWorkAreaJDialog))) () a1

closeDialog_super :: (JavaObjectClass this_) => this_ -> WindowEvent.WindowEvent -> IO (())
closeDialog_super object_ a1 = (closeDialog_impl (javaCast object_ :: NewWorkAreaJDialog)) a1

closeDialog_impl :: NewWorkAreaJDialog -> WindowEvent.WindowEvent -> IO (())
closeDialog_impl this evt = do
        Control.Monad.void (JDialog.setVisible this False)
        Control.Monad.void (JDialog.dispose this)
        pure ()


main :: JavaArray (String) -> IO (())
main args = do
        handle (\(e :: JavaException) -> do
            pure ()
            ) $ do
            Control.Monad.void (NewWorkAreaJDialog.show ((jio (new_4 (jio (MyFrame.new_)) True (jio (Dimension.new_2 100 100)) "testing"))))
        pure ()


