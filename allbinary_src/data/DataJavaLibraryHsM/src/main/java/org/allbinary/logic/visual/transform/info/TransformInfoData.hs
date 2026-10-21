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
module TransformInfoData where

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

data TransformInfoData = TransformInfoData
    { header_ :: JavaHeader
    , pARENT :: IORef (String)
    , mAPPED :: IORef (String)
    , nAME :: IORef (String)
    , dESCRIPTION :: IORef (String)
    , cATEGORY :: IORef (String)
    , oBJECTFILENAME :: IORef (String)
    , oBJECT :: IORef (String)
    , oBJECTCONFIGFILENAME :: IORef (String)
    , oBJECTCONFIG :: IORef (String)
    , tEMPLATEFILENAME :: IORef (String)
    , tEMPLATE :: IORef (String)
    , dATAFILENAME :: IORef (String)
    , dATA :: IORef (String)
    , lABEL :: IORef (String)
    , oWNER :: IORef (String)
    , pARTIAL :: IORef (String)
    }

instance JavaNull TransformInfoData where
    javaNull = javaNullRecord "TransformInfoData"

instance JavaEquals TransformInfoData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoData where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoData
newRecord_ = do
    header_ <- newJavaHeader
    pARENT <- newIORef ""
    mAPPED <- newIORef ""
    nAME <- newIORef ""
    dESCRIPTION <- newIORef ""
    cATEGORY <- newIORef ""
    oBJECTFILENAME <- newIORef ""
    oBJECT <- newIORef ""
    oBJECTCONFIGFILENAME <- newIORef ""
    oBJECTCONFIG <- newIORef ""
    tEMPLATEFILENAME <- newIORef ""
    tEMPLATE <- newIORef ""
    dATAFILENAME <- newIORef ""
    dATA <- newIORef ""
    lABEL <- newIORef ""
    oWNER <- newIORef ""
    pARTIAL <- newIORef ""
    let this = TransformInfoData header_ pARENT mAPPED nAME dESCRIPTION cATEGORY oBJECTFILENAME oBJECT oBJECTCONFIGFILENAME oBJECTCONFIG tEMPLATEFILENAME tEMPLATE dATAFILENAME dATA lABEL oWNER pARTIAL
    jregisterLevel header_ this
    pure this

initFields_ :: TransformInfoData -> IO ()
initFields_ this = do
    jset this.pARENT ("TRANSFORM_INFO_PARENT")
    jset this.mAPPED ("TRANSFORM_INFO_MAPPED")
    jset this.nAME ("TRANSFORM_INFO_NAME")
    jset this.dESCRIPTION ("TRANSFORM_INFO_DESCRIPTION")
    jset this.cATEGORY ("TRANSFORM_INFO_CATEGORY")
    jset this.oBJECTFILENAME ("TRANSFORM_INFO_OBJECTFILENAME")
    jset this.oBJECT ("TRANSFORM_INFO_OBJECT")
    jset this.oBJECTCONFIGFILENAME ("TRANSFORM_INFO_OBJECTCONFIGFILENAME")
    jset this.oBJECTCONFIG ("TRANSFORM_INFO_OBJECTCONFIG")
    jset this.tEMPLATEFILENAME ("TRANSFORM_INFO_TEMPLATEFILENAME")
    jset this.tEMPLATE ("TRANSFORM_INFO_TEMPLATE")
    jset this.dATAFILENAME ("TRANSFORM_INFO_DATAFILENAME")
    jset this.dATA ("TRANSFORM_INFO_DATA")
    jset this.lABEL ("TRANSFORM_INFO_LABEL")
    jset this.oWNER (("OWNER_" ++ (jget (this).nAME)))
    jset this.pARTIAL (("PARTIAL_" ++ (jget (this).nAME)))
    pure ()


getInstance :: IO (TransformInfoData)
getInstance = do
        pure (TransformInfoData.instance_)

new_ :: IO TransformInfoData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfoData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


