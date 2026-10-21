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
-- package org.allbinary.logic.system.security.licensing
module AbeClientInformationData where

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

data AbeClientInformationData = AbeClientInformationData
    { header_ :: JavaHeader
    , kEY :: IORef (String)
    , nAME :: IORef (String)
    , vERSION :: IORef (String)
    , sPECIALNAME :: IORef (String)
    , lICENSEID :: IORef (String)
    , lICENSE_TYPE :: IORef (String)
    , pREVIOUSLICENSEID :: IORef (String)
    , oSNAME :: IORef (String)
    , oSARCH :: IORef (String)
    , oSVERSION :: IORef (String)
    , oS :: IORef (String)
    , hARDWARE :: IORef (String)
    , lICENSESERVERS :: IORef (String)
    , nEWLICENSE :: IORef (String)
    , iSNEW :: IORef (String)
    , sPECIAL :: IORef (String)
    }

instance JavaNull AbeClientInformationData where
    javaNull = javaNullRecord "AbeClientInformationData"

instance JavaEquals AbeClientInformationData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbeClientInformationData where
    (==) = jrecordEquals

instance JavaObjectClass AbeClientInformationData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbeClientInformationData
newRecord_ = do
    header_ <- newJavaHeader
    kEY <- newIORef ""
    nAME <- newIORef ""
    vERSION <- newIORef ""
    sPECIALNAME <- newIORef ""
    lICENSEID <- newIORef ""
    lICENSE_TYPE <- newIORef ""
    pREVIOUSLICENSEID <- newIORef ""
    oSNAME <- newIORef ""
    oSARCH <- newIORef ""
    oSVERSION <- newIORef ""
    oS <- newIORef ""
    hARDWARE <- newIORef ""
    lICENSESERVERS <- newIORef ""
    nEWLICENSE <- newIORef ""
    iSNEW <- newIORef ""
    sPECIAL <- newIORef ""
    let this = AbeClientInformationData header_ kEY nAME vERSION sPECIALNAME lICENSEID lICENSE_TYPE pREVIOUSLICENSEID oSNAME oSARCH oSVERSION oS hARDWARE lICENSESERVERS nEWLICENSE iSNEW sPECIAL
    jregisterLevel header_ this
    pure this

initFields_ :: AbeClientInformationData -> IO ()
initFields_ this = do
    jset this.kEY ("KEY")
    jset this.nAME ("NAME")
    jset this.vERSION ("VERSION")
    jset this.sPECIALNAME ("SPECIALNAME")
    jset this.lICENSEID ("LICENSEID")
    jset this.lICENSE_TYPE ("LICENSETYPE")
    jset this.pREVIOUSLICENSEID ("PREVIOUSLICENSEID")
    jset this.oSNAME ("OSNAME")
    jset this.oSARCH ("OSARCH")
    jset this.oSVERSION ("OSVERSION")
    jset this.oS ("OS")
    jset this.hARDWARE ("HARDWARE")
    jset this.lICENSESERVERS ("LICENSESERVERS")
    jset this.nEWLICENSE ("NEWLICENSE")
    jset this.iSNEW ("ISNEW")
    jset this.sPECIAL ("SPECIAL")
    pure ()


getInstance :: IO (AbeClientInformationData)
getInstance = do
        pure (AbeClientInformationData.instance_)

new_ :: IO AbeClientInformationData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbeClientInformationData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


