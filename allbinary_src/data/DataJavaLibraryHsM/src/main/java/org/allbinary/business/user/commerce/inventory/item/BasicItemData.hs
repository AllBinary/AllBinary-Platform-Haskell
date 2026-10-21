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
-- package org.allbinary.business.user.commerce.inventory.item
module BasicItemData where

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

data BasicItemData = BasicItemData
    { header_ :: JavaHeader
    , iTEM :: IORef (String)
    , tOTAL :: IORef (String)
    , iD :: IORef (String)
    , nUMBER :: IORef (String)
    , iNBASKETS :: IORef (String)
    , wEIGHT :: IORef (String)
    , nEWORUSED :: IORef (String)
    , sUMMARY :: IORef (String)
    , dISTRIBUTOR :: IORef (String)
    , iDUSEDBYDISTRIBUTOR :: IORef (String)
    , pRODUCEDBY :: IORef (String)
    , pRODUCTIONDATE :: IORef (String)
    , sTARTPRODUCTIONDATE :: IORef (String)
    , dESCRIPTION :: IORef (String)
    , kEYWORDS :: IORef (String)
    , cATEGORY :: IORef (String)
    , tYPE :: IORef (String)
    , iMAGE :: IORef (String)
    , sMALLIMAGE :: IORef (String)
    , mEDIUMIMAGE :: IORef (String)
    , lARGEIMAGE :: IORef (String)
    , pRICE :: IORef (String)
    , cOMMENT :: IORef (String)
    , cUSTOMS :: IORef (String)
    , dOWNLOADS :: IORef (String)
    , gROUPS :: IORef (String)
    , oPTIONS :: IORef (String)
    , pERMISSIONS :: IORef (String)
    , sPECIALS :: IORef (String)
    }

instance JavaNull BasicItemData where
    javaNull = javaNullRecord "BasicItemData"

instance JavaEquals BasicItemData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicItemData where
    (==) = jrecordEquals

instance JavaObjectClass BasicItemData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicItemData
newRecord_ = do
    header_ <- newJavaHeader
    iTEM <- newIORef ""
    tOTAL <- newIORef ""
    iD <- newIORef ""
    nUMBER <- newIORef ""
    iNBASKETS <- newIORef ""
    wEIGHT <- newIORef ""
    nEWORUSED <- newIORef ""
    sUMMARY <- newIORef ""
    dISTRIBUTOR <- newIORef ""
    iDUSEDBYDISTRIBUTOR <- newIORef ""
    pRODUCEDBY <- newIORef ""
    pRODUCTIONDATE <- newIORef ""
    sTARTPRODUCTIONDATE <- newIORef ""
    dESCRIPTION <- newIORef ""
    kEYWORDS <- newIORef ""
    cATEGORY <- newIORef ""
    tYPE <- newIORef ""
    iMAGE <- newIORef ""
    sMALLIMAGE <- newIORef ""
    mEDIUMIMAGE <- newIORef ""
    lARGEIMAGE <- newIORef ""
    pRICE <- newIORef ""
    cOMMENT <- newIORef ""
    cUSTOMS <- newIORef ""
    dOWNLOADS <- newIORef ""
    gROUPS <- newIORef ""
    oPTIONS <- newIORef ""
    pERMISSIONS <- newIORef ""
    sPECIALS <- newIORef ""
    let this = BasicItemData header_ iTEM tOTAL iD nUMBER iNBASKETS wEIGHT nEWORUSED sUMMARY dISTRIBUTOR iDUSEDBYDISTRIBUTOR pRODUCEDBY pRODUCTIONDATE sTARTPRODUCTIONDATE dESCRIPTION kEYWORDS cATEGORY tYPE iMAGE sMALLIMAGE mEDIUMIMAGE lARGEIMAGE pRICE cOMMENT cUSTOMS dOWNLOADS gROUPS oPTIONS pERMISSIONS sPECIALS
    jregisterLevel header_ this
    pure this

initFields_ :: BasicItemData -> IO ()
initFields_ this = do
    jset this.iTEM ("BASICITEM")
    jset this.tOTAL ("BASICITEM_TOTAL")
    jset this.iD ("BASICITEM_ID")
    jset this.nUMBER ("BASICITEM_NUMBER")
    jset this.iNBASKETS ("BASICITEM_IN_BASKETS")
    jset this.wEIGHT ("BASICITEM_WEIGHT")
    jset this.nEWORUSED ("BASICITEM_NEW_OR_USED")
    jset this.sUMMARY ("BASICITEM_SUMMARY")
    jset this.dISTRIBUTOR ("BASICITEM_DISTRIBUTOR")
    jset this.iDUSEDBYDISTRIBUTOR ("BASICITEM_IDUSEDBYDISTRIBUTOR")
    jset this.pRODUCEDBY ("BASICITEM_PRODUCEDBY")
    jset this.pRODUCTIONDATE ("BASICITEM_PRODUCTIONDATE")
    jset this.sTARTPRODUCTIONDATE ("BASICITEM_STARTPRODUCTIONDATE")
    jset this.dESCRIPTION ("BASICITEM_DESCRIPTION")
    jset this.kEYWORDS ("BASICITEM_KEYWORDS")
    jset this.cATEGORY ("BASICITEM_CATEGORY")
    jset this.tYPE ("BASICITEM_TYPE")
    jset this.iMAGE ("BASICITEM_IMG")
    jset this.sMALLIMAGE ("BASICITEM_SMALL_IMG")
    jset this.mEDIUMIMAGE ("BASICITEM_MEDIUM_IMG")
    jset this.lARGEIMAGE ("BASICITEM_LARGE_IMG")
    jset this.pRICE ("BASICITEM_PRICE")
    jset this.cOMMENT ("BASICITEM_COMMENT")
    jset this.cUSTOMS ("BASICITEM_CUSTOMS")
    jset this.dOWNLOADS ("BASICITEM_DOWNLOADS")
    jset this.gROUPS ("BASICITEM_GROUPS")
    jset this.oPTIONS ("BASICITEM_OPTIONS")
    jset this.pERMISSIONS ("BASICITEM_PERMISSIONS")
    jset this.sPECIALS ("BASICITEM_SPECIALS")
    pure ()

new_ :: IO BasicItemData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicItemData -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BasicItemData)
getInstance = do
        pure (BasicItemData.instance_)


