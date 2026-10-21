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
-- package org.allbinary.logic.visual.transform.info
module TransformInfosData where

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

data TransformInfosData = TransformInfosData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , gROUP :: IORef (String)
    , aLL :: IORef (String)
    , pREVIEW :: IORef (String)
    , sMALL_PREVIEW :: IORef (String)
    }

instance JavaNull TransformInfosData where
    javaNull = javaNullRecord "TransformInfosData"

instance JavaEquals TransformInfosData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfosData where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfosData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfosData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    gROUP <- newIORef ""
    aLL <- newIORef ""
    pREVIEW <- newIORef ""
    sMALL_PREVIEW <- newIORef ""
    let this = TransformInfosData header_ nAME gROUP aLL pREVIEW sMALL_PREVIEW
    jregisterLevel header_ this
    pure this

initFields_ :: TransformInfosData -> IO ()
initFields_ this = do
    jset this.nAME ("TRANSFORM_INFOS_NAME")
    jset this.gROUP ("TRANSFORM_INFOS_GROUP")
    jset this.aLL ("TRANSFORM_INFOS_ALL")
    jset this.pREVIEW ("TRANSFORM_INFOS_PREVIEW")
    jset this.sMALL_PREVIEW ("TRANSFORM_INFOS_SMALL_PREVIEW")
    pure ()

new_ :: IO TransformInfosData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfosData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (TransformInfosData)
getInstance = do
        pure (TransformInfosData.instance_)


