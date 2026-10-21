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
-- package org.allbinary.input.automation.osgi
module DesktopBundle where

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
import qualified JDialog -- same package or java.lang
import qualified Bundle -- org.osgi.framework.Bundle
import qualified BundleContext -- org.osgi.framework.BundleContext
import qualified InputAutomationBundleActivator -- bundle.input.automation.InputAutomationBundleActivator
import qualified BasicTextJDialog -- org.allbinary.gui.dialog.BasicTextJDialog
-- import javax.swing.*

data DesktopBundle = DesktopBundle
    { header_ :: JavaHeader
    , bundle :: IORef (Bundle.Bundle)
    }

instance JavaNull DesktopBundle where
    javaNull = javaNullRecord "DesktopBundle"

instance JavaEquals DesktopBundle where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DesktopBundle where
    (==) = jrecordEquals

instance JavaObjectClass DesktopBundle where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

dESKTOP_SYMBOLIC_NAME = "org.knopflerfish.bundle.desktop"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DesktopBundle
newRecord_ = do
    header_ <- newJavaHeader
    bundle <- newIORef javaNull
    let this = DesktopBundle header_ bundle
    jregisterLevel header_ this
    jregisterMethod header_ "start" (\() -> start_impl this)
    pure this

initFields_ :: DesktopBundle -> IO ()
initFields_ this = do
    jset this.bundle (javaNull)
    pure ()

new_ :: IO DesktopBundle
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DesktopBundle -> IO ()
init_ this = do
        initFields_ this
        bundleContext <- (InputAutomationBundleActivator.getBundleContext)
        if (bundleContext /= javaNull) then do
            bundleArray <- (BundleContext.getBundles bundleContext)
            forM_ [0 .. (jlength bundleArray) - 1] $ \index -> javaIteration (pure ()) $ do
                let bundle = (jindex bundleArray (index))
                symbolicName <- (Bundle.getSymbolicName bundle)
                when ((Prelude.fromEnum (Prelude.compare symbolicName (DesktopBundle.dESKTOP_SYMBOLIC_NAME)) - 1) == 0) $ do
                    jset (this).bundle (bundle)
        else do
            textJDialog <- (fmap (\value_ -> javaCast value_ :: JDialog.JDialog) (BasicTextJDialog.new_1 "BundlContext is Null"))
            Control.Monad.void (JDialog.setVisible textJDialog True)
        pure ()


-- throws Exception
start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: DesktopBundle))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: DesktopBundle))

start_impl :: DesktopBundle -> IO (())
start_impl this = do
        Control.Monad.void (Bundle.start ((jget (this).bundle)))
        pure ()


