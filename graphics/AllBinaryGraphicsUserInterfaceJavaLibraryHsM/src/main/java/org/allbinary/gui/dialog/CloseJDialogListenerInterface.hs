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
module CloseJDialogListenerInterface where

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

-- Java interface: the classes that implement it have these functions
data CloseJDialogListenerInterface = CloseJDialogListenerInterface
    { header_ :: JavaHeader
    }

instance JavaNull CloseJDialogListenerInterface where
    javaNull = javaNullRecord "CloseJDialogListenerInterface"

instance JavaEquals CloseJDialogListenerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CloseJDialogListenerInterface where
    (==) = jrecordEquals

instance JavaObjectClass CloseJDialogListenerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CloseJDialogListenerInterface
fromHeader_ header = CloseJDialogListenerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CloseJDialogListenerInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


onClose :: (JavaObjectClass this_) => this_ -> IO (())
onClose object_ = jmethod object_ "onClose" (\() -> (onClose_impl (javaCast object_ :: CloseJDialogListenerInterface))) ()

onClose_super :: (JavaObjectClass this_) => this_ -> IO (())
onClose_super object_ = (onClose_impl (javaCast object_ :: CloseJDialogListenerInterface))

onClose_impl :: CloseJDialogListenerInterface -> IO (())
onClose_impl this = javaAbstractMethod "onClose"


