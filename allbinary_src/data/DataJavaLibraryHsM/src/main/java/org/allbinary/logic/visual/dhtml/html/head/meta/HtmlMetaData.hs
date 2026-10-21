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
-- package org.allbinary.logic.visual.dhtml.html.head.meta
module HtmlMetaData where

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

data HtmlMetaData = HtmlMetaData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , lABEL :: IORef (String)
    , vALUE :: IORef (String)
    }

instance JavaNull HtmlMetaData where
    javaNull = javaNullRecord "HtmlMetaData"

instance JavaEquals HtmlMetaData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HtmlMetaData where
    (==) = jrecordEquals

instance JavaObjectClass HtmlMetaData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HtmlMetaData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    lABEL <- newIORef ""
    vALUE <- newIORef ""
    let this = HtmlMetaData header_ nAME lABEL vALUE
    jregisterLevel header_ this
    pure this

initFields_ :: HtmlMetaData -> IO ()
initFields_ this = do
    jset this.nAME ("HTMLMETA_NAME")
    jset this.lABEL ("HTMLMETA_LABEL")
    jset this.vALUE ("meta")
    pure ()

new_ :: IO HtmlMetaData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HtmlMetaData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (HtmlMetaData)
getInstance = do
        pure (HtmlMetaData.instance_)


