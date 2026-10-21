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
-- package org.allbinary.game.displayable.canvas
module PopupMenuInterface where

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
data PopupMenuInterface = PopupMenuInterface
    { header_ :: JavaHeader
    }

instance JavaNull PopupMenuInterface where
    javaNull = javaNullRecord "PopupMenuInterface"

instance JavaEquals PopupMenuInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PopupMenuInterface where
    (==) = jrecordEquals

instance JavaObjectClass PopupMenuInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> PopupMenuInterface
fromHeader_ header = PopupMenuInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (PopupMenuInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
popupMenu :: (JavaObjectClass this_) => this_ -> IO (())
popupMenu object_ = jmethod object_ "popupMenu" (\() -> (popupMenu_impl (javaCast object_ :: PopupMenuInterface))) ()

popupMenu_super :: (JavaObjectClass this_) => this_ -> IO (())
popupMenu_super object_ = (popupMenu_impl (javaCast object_ :: PopupMenuInterface))

popupMenu_impl :: PopupMenuInterface -> IO (())
popupMenu_impl this = javaAbstractMethod "popupMenu"


closeMenu :: (JavaObjectClass this_) => this_ -> IO (())
closeMenu object_ = jmethod object_ "closeMenu" (\() -> (closeMenu_impl (javaCast object_ :: PopupMenuInterface))) ()

closeMenu_super :: (JavaObjectClass this_) => this_ -> IO (())
closeMenu_super object_ = (closeMenu_impl (javaCast object_ :: PopupMenuInterface))

closeMenu_impl :: PopupMenuInterface -> IO (())
closeMenu_impl this = javaAbstractMethod "closeMenu"


-- throws Exception
toggleMenu :: (JavaObjectClass this_) => this_ -> IO (())
toggleMenu object_ = jmethod object_ "toggleMenu" (\() -> (toggleMenu_impl (javaCast object_ :: PopupMenuInterface))) ()

toggleMenu_super :: (JavaObjectClass this_) => this_ -> IO (())
toggleMenu_super object_ = (toggleMenu_impl (javaCast object_ :: PopupMenuInterface))

toggleMenu_impl :: PopupMenuInterface -> IO (())
toggleMenu_impl this = javaAbstractMethod "toggleMenu"


