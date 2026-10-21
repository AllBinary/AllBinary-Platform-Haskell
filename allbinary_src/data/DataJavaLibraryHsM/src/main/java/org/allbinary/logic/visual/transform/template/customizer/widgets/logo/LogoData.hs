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
-- package org.allbinary.logic.visual.transform.template.customizer.widgets.logo
module LogoData where

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

data LogoData = LogoData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , iMAGEPATH :: IORef (String)
    , iMAGEFILENAME :: IORef (String)
    , iMAGE :: IORef (String)
    }

instance JavaNull LogoData where
    javaNull = javaNullRecord "LogoData"

instance JavaEquals LogoData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogoData where
    (==) = jrecordEquals

instance JavaObjectClass LogoData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogoData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    iMAGEPATH <- newIORef ""
    iMAGEFILENAME <- newIORef ""
    iMAGE <- newIORef ""
    let this = LogoData header_ nAME iMAGEPATH iMAGEFILENAME iMAGE
    jregisterLevel header_ this
    pure this

initFields_ :: LogoData -> IO ()
initFields_ this = do
    jset this.nAME ("LOGO_NAME")
    jset this.iMAGEPATH ("LOGO_IMAGE_PATH")
    jset this.iMAGEFILENAME ("LOGO_IMAGE_FILE_NAME")
    jset this.iMAGE ("LOGO_IMAGE")
    pure ()


getInstance :: IO (LogoData)
getInstance = do
        pure (LogoData.instance_)

new_ :: IO LogoData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogoData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


