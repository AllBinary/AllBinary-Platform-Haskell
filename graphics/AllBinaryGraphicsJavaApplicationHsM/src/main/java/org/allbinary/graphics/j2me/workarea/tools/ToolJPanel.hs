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
-- package org.allbinary.graphics.j2me.workarea.tools
module ToolJPanel (module ToolJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initComponents, initComponents_super, initComponents_impl, dottedFillRountRectJButtonMousePressed, dottedFillRountRectJButtonMousePressed_super, dottedFillRountRectJButtonMousePressed_impl, dottedFillArcJButtonMousePressed, dottedFillArcJButtonMousePressed_super, dottedFillArcJButtonMousePressed_impl, dottedFillRectJButtonMousePressed, dottedFillRectJButtonMousePressed_super, dottedFillRectJButtonMousePressed_impl, dottedArcJButtonMousePressed, dottedArcJButtonMousePressed_super, dottedArcJButtonMousePressed_impl, dottedRectButtonMousePressed, dottedRectButtonMousePressed_super, dottedRectButtonMousePressed_impl, dottedLineJButtonMousePressed, dottedLineJButtonMousePressed_super, dottedLineJButtonMousePressed_impl, fillRoundRectJButtonMousePressed, fillRoundRectJButtonMousePressed_super, fillRoundRectJButtonMousePressed_impl, fillRectJButtonMousePressed, fillRectJButtonMousePressed_super, fillRectJButtonMousePressed_impl, fillArcJButtonMousePressed, fillArcJButtonMousePressed_super, fillArcJButtonMousePressed_impl, imageJButtonMousePressed, imageJButtonMousePressed_super, imageJButtonMousePressed_impl, roundRectJButtonMousePressed, roundRectJButtonMousePressed_super, roundRectJButtonMousePressed_impl, charJButtonMousePressed, charJButtonMousePressed_super, charJButtonMousePressed_impl, stringJButtonMousePressed, stringJButtonMousePressed_super, stringJButtonMousePressed_impl, arcJButtonMousePressed, arcJButtonMousePressed_super, arcJButtonMousePressed_impl, rectJButtonMouseClicked, rectJButtonMouseClicked_super, rectJButtonMouseClicked_impl, lineJButtonMouseClicked, lineJButtonMouseClicked_super, lineJButtonMouseClicked_impl, arcJButton, charJButton, colorJList, colorJPanel, dottedArcJButton, dottedFillArcJButton, dottedFillRectJButton, dottedFillRountRectJButton, dottedLineJButton, dottedRectButton, fillArcJButton, fillRectJButton, fillRoundRectJButton, imageJButton, lineJButton, rectJButton, roundRectJButton, stringJButton)
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
import qualified JList -- same package or java.lang
import qualified GridLayout -- same package or java.lang
import qualified Font -- same package or java.lang
import qualified LinesGraphicItem -- same package or java.lang
import qualified MouseAdapter -- same package or java.lang
import qualified MouseEvent -- same package or java.lang
import qualified ToolFactory -- same package or java.lang
import qualified JPanel

data ToolJPanel = ToolJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , arcJButton :: IORef (JButton.JButton)
    , charJButton :: IORef (JButton.JButton)
    , colorJList :: IORef (JList.JList)
    , colorJPanel :: IORef (JPanel.JPanel)
    , dottedArcJButton :: IORef (JButton.JButton)
    , dottedFillArcJButton :: IORef (JButton.JButton)
    , dottedFillRectJButton :: IORef (JButton.JButton)
    , dottedFillRountRectJButton :: IORef (JButton.JButton)
    , dottedLineJButton :: IORef (JButton.JButton)
    , dottedRectButton :: IORef (JButton.JButton)
    , fillArcJButton :: IORef (JButton.JButton)
    , fillRectJButton :: IORef (JButton.JButton)
    , fillRoundRectJButton :: IORef (JButton.JButton)
    , imageJButton :: IORef (JButton.JButton)
    , lineJButton :: IORef (JButton.JButton)
    , rectJButton :: IORef (JButton.JButton)
    , roundRectJButton :: IORef (JButton.JButton)
    , stringJButton :: IORef (JButton.JButton)
    }

instance JavaNull ToolJPanel where
    javaNull = javaNullRecord "ToolJPanel"

instance JavaEquals ToolJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ToolJPanel where
    (==) = jrecordEquals

instance JavaObjectClass ToolJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ToolJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    arcJButton <- newIORef javaNull
    charJButton <- newIORef javaNull
    colorJList <- newIORef javaNull
    colorJPanel <- newIORef javaNull
    dottedArcJButton <- newIORef javaNull
    dottedFillArcJButton <- newIORef javaNull
    dottedFillRectJButton <- newIORef javaNull
    dottedFillRountRectJButton <- newIORef javaNull
    dottedLineJButton <- newIORef javaNull
    dottedRectButton <- newIORef javaNull
    fillArcJButton <- newIORef javaNull
    fillRectJButton <- newIORef javaNull
    fillRoundRectJButton <- newIORef javaNull
    imageJButton <- newIORef javaNull
    lineJButton <- newIORef javaNull
    rectJButton <- newIORef javaNull
    roundRectJButton <- newIORef javaNull
    stringJButton <- newIORef javaNull
    let this = ToolJPanel header_ base arcJButton charJButton colorJList colorJPanel dottedArcJButton dottedFillArcJButton dottedFillRectJButton dottedFillRountRectJButton dottedLineJButton dottedRectButton fillArcJButton fillRectJButton fillRoundRectJButton imageJButton lineJButton rectJButton roundRectJButton stringJButton
    jregisterLevel header_ this
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "dottedFillRountRectJButtonMousePressed" (\() -> dottedFillRountRectJButtonMousePressed_impl this)
    jregisterMethod header_ "dottedFillArcJButtonMousePressed" (\() -> dottedFillArcJButtonMousePressed_impl this)
    jregisterMethod header_ "dottedFillRectJButtonMousePressed" (\() -> dottedFillRectJButtonMousePressed_impl this)
    jregisterMethod header_ "dottedArcJButtonMousePressed" (\() -> dottedArcJButtonMousePressed_impl this)
    jregisterMethod header_ "dottedRectButtonMousePressed" (\() -> dottedRectButtonMousePressed_impl this)
    jregisterMethod header_ "dottedLineJButtonMousePressed" (\() -> dottedLineJButtonMousePressed_impl this)
    jregisterMethod header_ "fillRoundRectJButtonMousePressed" (\() -> fillRoundRectJButtonMousePressed_impl this)
    jregisterMethod header_ "fillRectJButtonMousePressed" (\() -> fillRectJButtonMousePressed_impl this)
    jregisterMethod header_ "fillArcJButtonMousePressed" (\() -> fillArcJButtonMousePressed_impl this)
    jregisterMethod header_ "imageJButtonMousePressed" (\() -> imageJButtonMousePressed_impl this)
    jregisterMethod header_ "roundRectJButtonMousePressed" (\() -> roundRectJButtonMousePressed_impl this)
    jregisterMethod header_ "charJButtonMousePressed" (\() -> charJButtonMousePressed_impl this)
    jregisterMethod header_ "stringJButtonMousePressed" (\() -> stringJButtonMousePressed_impl this)
    jregisterMethod header_ "arcJButtonMousePressed" (\() -> arcJButtonMousePressed_impl this)
    jregisterMethod header_ "rectJButtonMouseClicked" (\() -> rectJButtonMouseClicked_impl this)
    jregisterMethod header_ "lineJButtonMouseClicked" (\() -> lineJButtonMouseClicked_impl this)
    pure this

initFields_ :: ToolJPanel -> IO ()
initFields_ this = do
    jset this.arcJButton (javaNull)
    jset this.charJButton (javaNull)
    jset this.colorJList (javaNull)
    jset this.colorJPanel (javaNull)
    jset this.dottedArcJButton (javaNull)
    jset this.dottedFillArcJButton (javaNull)
    jset this.dottedFillRectJButton (javaNull)
    jset this.dottedFillRountRectJButton (javaNull)
    jset this.dottedLineJButton (javaNull)
    jset this.dottedRectButton (javaNull)
    jset this.fillArcJButton (javaNull)
    jset this.fillRectJButton (javaNull)
    jset this.fillRoundRectJButton (javaNull)
    jset this.imageJButton (javaNull)
    jset this.lineJButton (javaNull)
    jset this.rectJButton (javaNull)
    jset this.roundRectJButton (javaNull)
    jset this.stringJButton (javaNull)
    pure ()

new_ :: IO ToolJPanel
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ToolJPanel -> IO ()
init_ this = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (ToolJPanel.initComponents this)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: ToolJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: ToolJPanel))

initComponents_impl :: ToolJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JButton.new_)
        jset this.lineJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).rectJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).arcJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).stringJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).charJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).roundRectJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).imageJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).fillArcJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).fillRectJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).fillRoundRectJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).dottedLineJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).dottedRectButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).dottedArcJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).dottedFillRectJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).dottedFillArcJButton (assignedValue)
        assignedValue <- (JButton.new_)
        jset (this).dottedFillRountRectJButton (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).colorJPanel (assignedValue)
        assignedValue <- (JList.new_)
        jset (this).colorJList (assignedValue)
        Control.Monad.void (JPanel.setLayout this (jio (GridLayout.new_2 17 1)))
        Control.Monad.void (JButton.setFont ((jget this.lineJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget this.lineJButton)) (jio (LinesGraphicItem.getStaticName)))
        Control.Monad.void (JButton.addMouseListener ((jget this.lineJButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mouseClicked
-}))
        Control.Monad.void (JPanel.add this (jget (this).lineJButton))
        Control.Monad.void (JButton.setFont ((jget (this).rectJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).rectJButton)) "Rect")
        Control.Monad.void (JButton.addMouseListener ((jget (this).rectJButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mouseClicked
-}))
        Control.Monad.void (JPanel.add this (jget (this).rectJButton))
        Control.Monad.void (JButton.setFont ((jget (this).arcJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).arcJButton)) "Arc")
        Control.Monad.void (JButton.addMouseListener ((jget (this).arcJButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPanel.add this (jget (this).arcJButton))
        Control.Monad.void (JButton.setFont ((jget (this).stringJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).stringJButton)) "String")
        Control.Monad.void (JButton.addMouseListener ((jget (this).stringJButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPanel.add this (jget (this).stringJButton))
        Control.Monad.void (JButton.setFont ((jget (this).charJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).charJButton)) "Char")
        Control.Monad.void (JButton.addMouseListener ((jget (this).charJButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPanel.add this (jget (this).charJButton))
        Control.Monad.void (JButton.setFont ((jget (this).roundRectJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).roundRectJButton)) "Round Rect")
        Control.Monad.void (JButton.addMouseListener ((jget (this).roundRectJButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPanel.add this (jget (this).roundRectJButton))
        Control.Monad.void (JButton.setFont ((jget (this).imageJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).imageJButton)) "Image")
        Control.Monad.void (JButton.addMouseListener ((jget (this).imageJButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPanel.add this (jget (this).imageJButton))
        Control.Monad.void (JButton.setFont ((jget (this).fillArcJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).fillArcJButton)) "Fill Arc")
        Control.Monad.void (JButton.addMouseListener ((jget (this).fillArcJButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPanel.add this (jget (this).fillArcJButton))
        Control.Monad.void (JButton.setFont ((jget (this).fillRectJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).fillRectJButton)) "Fill Rect")
        Control.Monad.void (JButton.addMouseListener ((jget (this).fillRectJButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPanel.add this (jget (this).fillRectJButton))
        Control.Monad.void (JButton.setFont ((jget (this).fillRoundRectJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).fillRoundRectJButton)) "Fill Rnd Rect")
        Control.Monad.void (JButton.addMouseListener ((jget (this).fillRoundRectJButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPanel.add this (jget (this).fillRoundRectJButton))
        Control.Monad.void (JButton.setFont ((jget (this).dottedLineJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).dottedLineJButton)) "Dot Line")
        Control.Monad.void (JButton.addMouseListener ((jget (this).dottedLineJButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPanel.add this (jget (this).dottedLineJButton))
        Control.Monad.void (JButton.setFont ((jget (this).dottedRectButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).dottedRectButton)) "Dot Rect")
        Control.Monad.void (JButton.addMouseListener ((jget (this).dottedRectButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPanel.add this (jget (this).dottedRectButton))
        Control.Monad.void (JButton.setFont ((jget (this).dottedArcJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).dottedArcJButton)) "Dot Arc")
        Control.Monad.void (JButton.addMouseListener ((jget (this).dottedArcJButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPanel.add this (jget (this).dottedArcJButton))
        Control.Monad.void (JButton.setFont ((jget (this).dottedFillRectJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).dottedFillRectJButton)) "Dot Fill Rect")
        Control.Monad.void (JButton.addMouseListener ((jget (this).dottedFillRectJButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPanel.add this (jget (this).dottedFillRectJButton))
        Control.Monad.void (JButton.setFont ((jget (this).dottedFillArcJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).dottedFillArcJButton)) "Dot Fill Arc")
        Control.Monad.void (JButton.addMouseListener ((jget (this).dottedFillArcJButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPanel.add this (jget (this).dottedFillArcJButton))
        Control.Monad.void (JButton.setFont ((jget (this).dottedFillRountRectJButton)) (jio (Font.new_3 "Dialog" 0 10)))
        Control.Monad.void (JButton.setText ((jget (this).dottedFillRountRectJButton)) "Dot Fill Rnd Rect")
        Control.Monad.void (JButton.addMouseListener ((jget (this).dottedFillRountRectJButton)) (MouseAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- mousePressed
-}))
        Control.Monad.void (JPanel.add this (jget (this).dottedFillRountRectJButton))
        Control.Monad.void (JPanel.setLayout ((jget (this).colorJPanel)) (jio (GridLayout.new_2 1 1)))
        Control.Monad.void (JPanel.add ((jget (this).colorJPanel)) (jget (this).colorJList))
        Control.Monad.void (JPanel.add this (jget (this).colorJPanel))
        pure ()


dottedFillRountRectJButtonMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
dottedFillRountRectJButtonMousePressed object_ a1 = jmethod object_ "dottedFillRountRectJButtonMousePressed" (\() -> (dottedFillRountRectJButtonMousePressed_impl (javaCast object_ :: ToolJPanel))) () a1

dottedFillRountRectJButtonMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
dottedFillRountRectJButtonMousePressed_super object_ a1 = (dottedFillRountRectJButtonMousePressed_impl (javaCast object_ :: ToolJPanel)) a1

dottedFillRountRectJButtonMousePressed_impl :: ToolJPanel -> MouseEvent.MouseEvent -> IO (())
dottedFillRountRectJButtonMousePressed_impl this evt = do
        Control.Monad.void (ToolFactory.setSelectedTool ((jio (ToolFactory.getInstance))) (jio (JButton.getText ((jget (this).dottedFillRountRectJButton)))))
        pure ()


dottedFillArcJButtonMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
dottedFillArcJButtonMousePressed object_ a1 = jmethod object_ "dottedFillArcJButtonMousePressed" (\() -> (dottedFillArcJButtonMousePressed_impl (javaCast object_ :: ToolJPanel))) () a1

dottedFillArcJButtonMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
dottedFillArcJButtonMousePressed_super object_ a1 = (dottedFillArcJButtonMousePressed_impl (javaCast object_ :: ToolJPanel)) a1

dottedFillArcJButtonMousePressed_impl :: ToolJPanel -> MouseEvent.MouseEvent -> IO (())
dottedFillArcJButtonMousePressed_impl this evt = do
        Control.Monad.void (ToolFactory.setSelectedTool ((jio (ToolFactory.getInstance))) (jio (JButton.getText ((jget (this).dottedFillArcJButton)))))
        pure ()


dottedFillRectJButtonMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
dottedFillRectJButtonMousePressed object_ a1 = jmethod object_ "dottedFillRectJButtonMousePressed" (\() -> (dottedFillRectJButtonMousePressed_impl (javaCast object_ :: ToolJPanel))) () a1

dottedFillRectJButtonMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
dottedFillRectJButtonMousePressed_super object_ a1 = (dottedFillRectJButtonMousePressed_impl (javaCast object_ :: ToolJPanel)) a1

dottedFillRectJButtonMousePressed_impl :: ToolJPanel -> MouseEvent.MouseEvent -> IO (())
dottedFillRectJButtonMousePressed_impl this evt = do
        Control.Monad.void (ToolFactory.setSelectedTool ((jio (ToolFactory.getInstance))) (jio (JButton.getText ((jget (this).dottedFillRectJButton)))))
        pure ()


dottedArcJButtonMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
dottedArcJButtonMousePressed object_ a1 = jmethod object_ "dottedArcJButtonMousePressed" (\() -> (dottedArcJButtonMousePressed_impl (javaCast object_ :: ToolJPanel))) () a1

dottedArcJButtonMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
dottedArcJButtonMousePressed_super object_ a1 = (dottedArcJButtonMousePressed_impl (javaCast object_ :: ToolJPanel)) a1

dottedArcJButtonMousePressed_impl :: ToolJPanel -> MouseEvent.MouseEvent -> IO (())
dottedArcJButtonMousePressed_impl this evt = do
        Control.Monad.void (ToolFactory.setSelectedTool ((jio (ToolFactory.getInstance))) (jio (JButton.getText ((jget (this).dottedArcJButton)))))
        pure ()


dottedRectButtonMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
dottedRectButtonMousePressed object_ a1 = jmethod object_ "dottedRectButtonMousePressed" (\() -> (dottedRectButtonMousePressed_impl (javaCast object_ :: ToolJPanel))) () a1

dottedRectButtonMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
dottedRectButtonMousePressed_super object_ a1 = (dottedRectButtonMousePressed_impl (javaCast object_ :: ToolJPanel)) a1

dottedRectButtonMousePressed_impl :: ToolJPanel -> MouseEvent.MouseEvent -> IO (())
dottedRectButtonMousePressed_impl this evt = do
        Control.Monad.void (ToolFactory.setSelectedTool ((jio (ToolFactory.getInstance))) (jio (JButton.getText ((jget (this).dottedRectButton)))))
        pure ()


dottedLineJButtonMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
dottedLineJButtonMousePressed object_ a1 = jmethod object_ "dottedLineJButtonMousePressed" (\() -> (dottedLineJButtonMousePressed_impl (javaCast object_ :: ToolJPanel))) () a1

dottedLineJButtonMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
dottedLineJButtonMousePressed_super object_ a1 = (dottedLineJButtonMousePressed_impl (javaCast object_ :: ToolJPanel)) a1

dottedLineJButtonMousePressed_impl :: ToolJPanel -> MouseEvent.MouseEvent -> IO (())
dottedLineJButtonMousePressed_impl this evt = do
        Control.Monad.void (ToolFactory.setSelectedTool ((jio (ToolFactory.getInstance))) (jio (JButton.getText ((jget (this).dottedLineJButton)))))
        pure ()


fillRoundRectJButtonMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
fillRoundRectJButtonMousePressed object_ a1 = jmethod object_ "fillRoundRectJButtonMousePressed" (\() -> (fillRoundRectJButtonMousePressed_impl (javaCast object_ :: ToolJPanel))) () a1

fillRoundRectJButtonMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
fillRoundRectJButtonMousePressed_super object_ a1 = (fillRoundRectJButtonMousePressed_impl (javaCast object_ :: ToolJPanel)) a1

fillRoundRectJButtonMousePressed_impl :: ToolJPanel -> MouseEvent.MouseEvent -> IO (())
fillRoundRectJButtonMousePressed_impl this evt = do
        Control.Monad.void (ToolFactory.setSelectedTool ((jio (ToolFactory.getInstance))) (jio (JButton.getText ((jget (this).fillRoundRectJButton)))))
        pure ()


fillRectJButtonMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
fillRectJButtonMousePressed object_ a1 = jmethod object_ "fillRectJButtonMousePressed" (\() -> (fillRectJButtonMousePressed_impl (javaCast object_ :: ToolJPanel))) () a1

fillRectJButtonMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
fillRectJButtonMousePressed_super object_ a1 = (fillRectJButtonMousePressed_impl (javaCast object_ :: ToolJPanel)) a1

fillRectJButtonMousePressed_impl :: ToolJPanel -> MouseEvent.MouseEvent -> IO (())
fillRectJButtonMousePressed_impl this evt = do
        Control.Monad.void (ToolFactory.setSelectedTool ((jio (ToolFactory.getInstance))) (jio (JButton.getText ((jget (this).fillRectJButton)))))
        pure ()


fillArcJButtonMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
fillArcJButtonMousePressed object_ a1 = jmethod object_ "fillArcJButtonMousePressed" (\() -> (fillArcJButtonMousePressed_impl (javaCast object_ :: ToolJPanel))) () a1

fillArcJButtonMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
fillArcJButtonMousePressed_super object_ a1 = (fillArcJButtonMousePressed_impl (javaCast object_ :: ToolJPanel)) a1

fillArcJButtonMousePressed_impl :: ToolJPanel -> MouseEvent.MouseEvent -> IO (())
fillArcJButtonMousePressed_impl this evt = do
        Control.Monad.void (ToolFactory.setSelectedTool ((jio (ToolFactory.getInstance))) (jio (JButton.getText ((jget (this).fillArcJButton)))))
        pure ()


imageJButtonMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
imageJButtonMousePressed object_ a1 = jmethod object_ "imageJButtonMousePressed" (\() -> (imageJButtonMousePressed_impl (javaCast object_ :: ToolJPanel))) () a1

imageJButtonMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
imageJButtonMousePressed_super object_ a1 = (imageJButtonMousePressed_impl (javaCast object_ :: ToolJPanel)) a1

imageJButtonMousePressed_impl :: ToolJPanel -> MouseEvent.MouseEvent -> IO (())
imageJButtonMousePressed_impl this evt = do
        Control.Monad.void (ToolFactory.setSelectedTool ((jio (ToolFactory.getInstance))) (jio (JButton.getText ((jget (this).imageJButton)))))
        pure ()


roundRectJButtonMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
roundRectJButtonMousePressed object_ a1 = jmethod object_ "roundRectJButtonMousePressed" (\() -> (roundRectJButtonMousePressed_impl (javaCast object_ :: ToolJPanel))) () a1

roundRectJButtonMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
roundRectJButtonMousePressed_super object_ a1 = (roundRectJButtonMousePressed_impl (javaCast object_ :: ToolJPanel)) a1

roundRectJButtonMousePressed_impl :: ToolJPanel -> MouseEvent.MouseEvent -> IO (())
roundRectJButtonMousePressed_impl this evt = do
        Control.Monad.void (ToolFactory.setSelectedTool ((jio (ToolFactory.getInstance))) (jio (JButton.getText ((jget (this).roundRectJButton)))))
        pure ()


charJButtonMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
charJButtonMousePressed object_ a1 = jmethod object_ "charJButtonMousePressed" (\() -> (charJButtonMousePressed_impl (javaCast object_ :: ToolJPanel))) () a1

charJButtonMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
charJButtonMousePressed_super object_ a1 = (charJButtonMousePressed_impl (javaCast object_ :: ToolJPanel)) a1

charJButtonMousePressed_impl :: ToolJPanel -> MouseEvent.MouseEvent -> IO (())
charJButtonMousePressed_impl this evt = do
        Control.Monad.void (ToolFactory.setSelectedTool ((jio (ToolFactory.getInstance))) (jio (JButton.getText ((jget (this).charJButton)))))
        pure ()


stringJButtonMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
stringJButtonMousePressed object_ a1 = jmethod object_ "stringJButtonMousePressed" (\() -> (stringJButtonMousePressed_impl (javaCast object_ :: ToolJPanel))) () a1

stringJButtonMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
stringJButtonMousePressed_super object_ a1 = (stringJButtonMousePressed_impl (javaCast object_ :: ToolJPanel)) a1

stringJButtonMousePressed_impl :: ToolJPanel -> MouseEvent.MouseEvent -> IO (())
stringJButtonMousePressed_impl this evt = do
        Control.Monad.void (ToolFactory.setSelectedTool ((jio (ToolFactory.getInstance))) (jio (JButton.getText ((jget (this).stringJButton)))))
        pure ()


arcJButtonMousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
arcJButtonMousePressed object_ a1 = jmethod object_ "arcJButtonMousePressed" (\() -> (arcJButtonMousePressed_impl (javaCast object_ :: ToolJPanel))) () a1

arcJButtonMousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
arcJButtonMousePressed_super object_ a1 = (arcJButtonMousePressed_impl (javaCast object_ :: ToolJPanel)) a1

arcJButtonMousePressed_impl :: ToolJPanel -> MouseEvent.MouseEvent -> IO (())
arcJButtonMousePressed_impl this evt = do
        Control.Monad.void (ToolFactory.setSelectedTool ((jio (ToolFactory.getInstance))) (jio (JButton.getText ((jget (this).arcJButton)))))
        pure ()


rectJButtonMouseClicked :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
rectJButtonMouseClicked object_ a1 = jmethod object_ "rectJButtonMouseClicked" (\() -> (rectJButtonMouseClicked_impl (javaCast object_ :: ToolJPanel))) () a1

rectJButtonMouseClicked_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
rectJButtonMouseClicked_super object_ a1 = (rectJButtonMouseClicked_impl (javaCast object_ :: ToolJPanel)) a1

rectJButtonMouseClicked_impl :: ToolJPanel -> MouseEvent.MouseEvent -> IO (())
rectJButtonMouseClicked_impl this evt = do
        Control.Monad.void (ToolFactory.setSelectedTool ((jio (ToolFactory.getInstance))) (jio (JButton.getText ((jget (this).rectJButton)))))
        pure ()


lineJButtonMouseClicked :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
lineJButtonMouseClicked object_ a1 = jmethod object_ "lineJButtonMouseClicked" (\() -> (lineJButtonMouseClicked_impl (javaCast object_ :: ToolJPanel))) () a1

lineJButtonMouseClicked_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
lineJButtonMouseClicked_super object_ a1 = (lineJButtonMouseClicked_impl (javaCast object_ :: ToolJPanel)) a1

lineJButtonMouseClicked_impl :: ToolJPanel -> MouseEvent.MouseEvent -> IO (())
lineJButtonMouseClicked_impl this evt = do
        Control.Monad.void (ToolFactory.setSelectedTool ((jio (ToolFactory.getInstance))) (jio (JButton.getText ((jget (this).lineJButton)))))
        pure ()


