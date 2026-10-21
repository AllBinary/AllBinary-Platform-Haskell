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
-- package org.allbinary.logic.visual.theme
module ThemeData where

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

data ThemeData = ThemeData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , pATH :: IORef (String)
    , pREVIEW_IMAGE_NAME :: IORef (String)
    , pREVIEW_IMAGE_PATH :: IORef (String)
    }

instance JavaNull ThemeData where
    javaNull = javaNullRecord "ThemeData"

instance JavaEquals ThemeData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThemeData where
    (==) = jrecordEquals

instance JavaObjectClass ThemeData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ThemeData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    pATH <- newIORef ""
    pREVIEW_IMAGE_NAME <- newIORef ""
    pREVIEW_IMAGE_PATH <- newIORef ""
    let this = ThemeData header_ nAME pATH pREVIEW_IMAGE_NAME pREVIEW_IMAGE_PATH
    jregisterLevel header_ this
    pure this

initFields_ :: ThemeData -> IO ()
initFields_ this = do
    jset this.nAME ("THEME_NAME")
    jset this.pATH ("THEME_PATH")
    jset this.pREVIEW_IMAGE_NAME ("THEME_PREVIEW_IMAGE_NAME")
    jset this.pREVIEW_IMAGE_PATH ("THEME_PREVIEW_IMAGE_PATH")
    pure ()


getInstance :: IO (ThemeData)
getInstance = do
        pure (ThemeData.instance_)

new_ :: IO ThemeData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ThemeData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


