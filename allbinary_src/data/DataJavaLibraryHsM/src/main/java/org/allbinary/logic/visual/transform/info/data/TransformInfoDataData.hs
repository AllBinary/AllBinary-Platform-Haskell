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
-- package org.allbinary.logic.visual.transform.info.data
module TransformInfoDataData where

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

data TransformInfoDataData = TransformInfoDataData
    { header_ :: JavaHeader
    , uNCRYPTED_EXTENSION :: IORef (String)
    , eNCRYPTED_EXTENSION :: IORef (String)
    }

instance JavaNull TransformInfoDataData where
    javaNull = javaNullRecord "TransformInfoDataData"

instance JavaEquals TransformInfoDataData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoDataData where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoDataData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoDataData
newRecord_ = do
    header_ <- newJavaHeader
    uNCRYPTED_EXTENSION <- newIORef ""
    eNCRYPTED_EXTENSION <- newIORef ""
    let this = TransformInfoDataData header_ uNCRYPTED_EXTENSION eNCRYPTED_EXTENSION
    jregisterLevel header_ this
    pure this

initFields_ :: TransformInfoDataData -> IO ()
initFields_ this = do
    jset this.uNCRYPTED_EXTENSION ((jget ((jio (CommonDataFileStrings.getInstance))).uNCRYPTED_EXTENSION))
    jset this.eNCRYPTED_EXTENSION ((jget ((jio (CommonDataFileStrings.getInstance))).eNCRYPTED_EXTENSION))
    pure ()


getInstance :: IO (TransformInfoDataData)
getInstance = do
        pure (TransformInfoDataData.instance_)

new_ :: IO TransformInfoDataData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfoDataData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


