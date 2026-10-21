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
module ExitCloseListener where

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
import qualified CloseJDialogListenerInterface

-- implements CloseJDialogListenerInterface
data ExitCloseListener = ExitCloseListener
    { header_ :: JavaHeader
    }

instance JavaNull ExitCloseListener where
    javaNull = javaNullRecord "ExitCloseListener"

instance JavaEquals ExitCloseListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ExitCloseListener where
    (==) = jrecordEquals

instance JavaObjectClass ExitCloseListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ExitCloseListener
newRecord_ = do
    header_ <- newJavaHeader
    let this = ExitCloseListener header_
    jregisterLevel header_ this
    CloseJDialogListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onClose" (\() -> onClose_impl this)
    pure this

initFields_ :: ExitCloseListener -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ExitCloseListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ExitCloseListener -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


onClose :: (JavaObjectClass this_) => this_ -> IO (())
onClose object_ = jmethod object_ "onClose" (\() -> (onClose_impl (javaCast object_ :: ExitCloseListener))) ()

onClose_super :: (JavaObjectClass this_) => this_ -> IO (())
onClose_super object_ = (onClose_impl (javaCast object_ :: ExitCloseListener))

onClose_impl :: ExitCloseListener -> IO (())
onClose_impl this = do
        Control.Monad.void (System.exit (Prelude.negate 1))
        pure ()


