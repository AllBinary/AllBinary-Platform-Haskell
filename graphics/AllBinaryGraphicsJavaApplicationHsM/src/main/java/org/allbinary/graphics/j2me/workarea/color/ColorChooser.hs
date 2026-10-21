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
-- package org.allbinary.graphics.j2me.workarea.color
module ColorChooser (module ColorChooser, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initComponents, initComponents_super, initComponents_impl, jColorChooser1)
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
import qualified JColorChooser -- same package or java.lang
import qualified BorderLayout -- same package or java.lang
import qualified JPanel

data ColorChooser = ColorChooser
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , jColorChooser1 :: IORef (JColorChooser.JColorChooser)
    }

instance JavaNull ColorChooser where
    javaNull = javaNullRecord "ColorChooser"

instance JavaEquals ColorChooser where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorChooser where
    (==) = jrecordEquals

instance JavaObjectClass ColorChooser where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ColorChooser
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    jColorChooser1 <- newIORef javaNull
    let this = ColorChooser header_ base jColorChooser1
    jregisterLevel header_ this
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    pure this

initFields_ :: ColorChooser -> IO ()
initFields_ this = do
    jset this.jColorChooser1 (javaNull)
    pure ()

new_ :: IO ColorChooser
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ColorChooser -> IO ()
init_ this = do
        JPanel.init_ this.base
        initFields_ this
        Control.Monad.void (ColorChooser.initComponents this)
        pure ()


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: ColorChooser))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: ColorChooser))

initComponents_impl :: ColorChooser -> IO (())
initComponents_impl this = do
        assignedValue <- (JColorChooser.new_)
        jset (this).jColorChooser1 (assignedValue)
        Control.Monad.void (JPanel.setLayout this (jio (BorderLayout.new_)))
        Control.Monad.void (JPanel.add this (jget (this).jColorChooser1) (jget ((jget (java.awt).borderLayout)).cENTER))
        pure ()


