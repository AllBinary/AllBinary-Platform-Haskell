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
-- package org.allbinary.logic.visual.dhtml.style.css.property
module CssPropertyData where

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

data CssPropertyData = CssPropertyData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , vALUES :: IORef (String)
    }

instance JavaNull CssPropertyData where
    javaNull = javaNullRecord "CssPropertyData"

instance JavaEquals CssPropertyData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CssPropertyData where
    (==) = jrecordEquals

instance JavaObjectClass CssPropertyData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CssPropertyData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    vALUES <- newIORef ""
    let this = CssPropertyData header_ nAME vALUES
    jregisterLevel header_ this
    pure this

initFields_ :: CssPropertyData -> IO ()
initFields_ this = do
    jset this.nAME ("CSS_PROPERTY_NAME")
    jset this.vALUES ("CSS_PROPERTY_VALUES")
    pure ()


getInstance :: IO (CssPropertyData)
getInstance = do
        pure (CssPropertyData.instance_)

new_ :: IO CssPropertyData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CssPropertyData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


