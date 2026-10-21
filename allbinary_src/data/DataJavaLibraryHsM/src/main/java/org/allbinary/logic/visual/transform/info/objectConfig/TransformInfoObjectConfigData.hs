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
-- package org.allbinary.logic.visual.transform.info.objectConfig
module TransformInfoObjectConfigData where

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
import qualified CommonDataFileStrings -- org.allbinary.logic.io.file.CommonDataFileStrings

data TransformInfoObjectConfigData = TransformInfoObjectConfigData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , vARKEY :: IORef (String)
    , uNCRYPTED_EXTENSION :: IORef (String)
    , eNCRYPTED_EXTENSION :: IORef (String)
    }

instance JavaNull TransformInfoObjectConfigData where
    javaNull = javaNullRecord "TransformInfoObjectConfigData"

instance JavaEquals TransformInfoObjectConfigData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoObjectConfigData where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoObjectConfigData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoObjectConfigData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    vARKEY <- newIORef ""
    uNCRYPTED_EXTENSION <- newIORef ""
    eNCRYPTED_EXTENSION <- newIORef ""
    let this = TransformInfoObjectConfigData header_ nAME vARKEY uNCRYPTED_EXTENSION eNCRYPTED_EXTENSION
    jregisterLevel header_ this
    pure this

initFields_ :: TransformInfoObjectConfigData -> IO ()
initFields_ this = do
    jset this.nAME ("OBJECTCONFIG_NAME")
    jset this.vARKEY ("$")
    jset this.uNCRYPTED_EXTENSION ((jget ((jio (CommonDataFileStrings.getInstance))).uNCRYPTED_EXTENSION))
    jset this.eNCRYPTED_EXTENSION ((jget ((jio (CommonDataFileStrings.getInstance))).eNCRYPTED_EXTENSION))
    pure ()


getInstance :: IO (TransformInfoObjectConfigData)
getInstance = do
        pure (TransformInfoObjectConfigData.instance_)

new_ :: IO TransformInfoObjectConfigData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfoObjectConfigData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


