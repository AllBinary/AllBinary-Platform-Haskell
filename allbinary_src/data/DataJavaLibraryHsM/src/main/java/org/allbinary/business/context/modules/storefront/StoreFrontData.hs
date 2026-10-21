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
-- package org.allbinary.business.context.modules.storefront
module StoreFrontData where

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

data StoreFrontData = StoreFrontData
    { header_ :: JavaHeader
    , cANCEL :: IORef (String)
    , sELECT :: IORef (String)
    , iNSTALL :: IORef (String)
    , iNSTALL_COMPLETE :: IORef (String)
    , nAME :: IORef (String)
    , cURRENTHOSTNAME :: IORef (String)
    , cURRENTHOSTNAMEPATH :: IORef (String)
    , cURRENTHOMEHOSTNAME :: IORef (String)
    , cURRENTHOMEHOSTNAMEPATH :: IORef (String)
    , hOMEHOSTNAME :: IORef (String)
    , hOMEHOSTNAMEPATH :: IORef (String)
    , hOSTNAME :: IORef (String)
    , hOSTNAMEPATH :: IORef (String)
    , tESTHOMEHOSTNAME :: IORef (String)
    , tESTHOMEHOSTNAMEPATH :: IORef (String)
    , tESTHOSTNAME :: IORef (String)
    , tESTHOSTNAMEPATH :: IORef (String)
    , iMAGEPATH :: IORef (String)
    , sTATICPATH :: IORef (String)
    , cATEGORYPATH :: IORef (String)
    , iNVENTORYCONTROL :: IORef (String)
    , cONFIGURATION :: IORef (String)
    , sUBSTORES :: IORef (String)
    , tAGLOCATION :: IORef (String)
    , pACKAGELOCATION :: IORef (String)
    , fTP :: IORef (String)
    , fTPPATH :: IORef (String)
    , fTPUSERNAME :: IORef (String)
    , fTPPASSWORD :: IORef (String)
    , tESTFTP :: IORef (String)
    , tESTFTPPATH :: IORef (String)
    , tESTFTPUSERNAME :: IORef (String)
    , tESTFTPPASSWORD :: IORef (String)
    , sELECTSTORENAME :: IORef (String)
    }

instance JavaNull StoreFrontData where
    javaNull = javaNullRecord "StoreFrontData"

instance JavaEquals StoreFrontData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontData where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontData
newRecord_ = do
    header_ <- newJavaHeader
    cANCEL <- newIORef ""
    sELECT <- newIORef ""
    iNSTALL <- newIORef ""
    iNSTALL_COMPLETE <- newIORef ""
    nAME <- newIORef ""
    cURRENTHOSTNAME <- newIORef ""
    cURRENTHOSTNAMEPATH <- newIORef ""
    cURRENTHOMEHOSTNAME <- newIORef ""
    cURRENTHOMEHOSTNAMEPATH <- newIORef ""
    hOMEHOSTNAME <- newIORef ""
    hOMEHOSTNAMEPATH <- newIORef ""
    hOSTNAME <- newIORef ""
    hOSTNAMEPATH <- newIORef ""
    tESTHOMEHOSTNAME <- newIORef ""
    tESTHOMEHOSTNAMEPATH <- newIORef ""
    tESTHOSTNAME <- newIORef ""
    tESTHOSTNAMEPATH <- newIORef ""
    iMAGEPATH <- newIORef ""
    sTATICPATH <- newIORef ""
    cATEGORYPATH <- newIORef ""
    iNVENTORYCONTROL <- newIORef ""
    cONFIGURATION <- newIORef ""
    sUBSTORES <- newIORef ""
    tAGLOCATION <- newIORef ""
    pACKAGELOCATION <- newIORef ""
    fTP <- newIORef ""
    fTPPATH <- newIORef ""
    fTPUSERNAME <- newIORef ""
    fTPPASSWORD <- newIORef ""
    tESTFTP <- newIORef ""
    tESTFTPPATH <- newIORef ""
    tESTFTPUSERNAME <- newIORef ""
    tESTFTPPASSWORD <- newIORef ""
    sELECTSTORENAME <- newIORef ""
    let this = StoreFrontData header_ cANCEL sELECT iNSTALL iNSTALL_COMPLETE nAME cURRENTHOSTNAME cURRENTHOSTNAMEPATH cURRENTHOMEHOSTNAME cURRENTHOMEHOSTNAMEPATH hOMEHOSTNAME hOMEHOSTNAMEPATH hOSTNAME hOSTNAMEPATH tESTHOMEHOSTNAME tESTHOMEHOSTNAMEPATH tESTHOSTNAME tESTHOSTNAMEPATH iMAGEPATH sTATICPATH cATEGORYPATH iNVENTORYCONTROL cONFIGURATION sUBSTORES tAGLOCATION pACKAGELOCATION fTP fTPPATH fTPUSERNAME fTPPASSWORD tESTFTP tESTFTPPATH tESTFTPUSERNAME tESTFTPPASSWORD sELECTSTORENAME
    jregisterLevel header_ this
    pure this

initFields_ :: StoreFrontData -> IO ()
initFields_ this = do
    jset this.cANCEL ("Cancel Store Front")
    jset this.sELECT ("Select Store Front")
    jset this.iNSTALL ("Install Store Front")
    jset this.iNSTALL_COMPLETE ("Install Store Front Complete")
    jset this.nAME ("STOREFRONT_NAME")
    jset this.cURRENTHOSTNAME ("STOREFRONT_CURRENTHOSTNAME")
    jset this.cURRENTHOSTNAMEPATH ("STOREFRONT_CURRENTHOSTNAMEPATH")
    jset this.cURRENTHOMEHOSTNAME ("STOREFRONT_CURRENTHOMEHOSTNAME")
    jset this.cURRENTHOMEHOSTNAMEPATH ("STOREFRONT_CURRENTHOMEHOSTNAMEPATH")
    jset this.hOMEHOSTNAME ("STOREFRONT_HOMEHOSTNAME")
    jset this.hOMEHOSTNAMEPATH ("STOREFRONT_HOMEHOSTNAMEPATH")
    jset this.hOSTNAME ("STOREFRONT_HOSTNAME")
    jset this.hOSTNAMEPATH ("STOREFRONT_HOSTNAMEPATH")
    jset this.tESTHOMEHOSTNAME ("STOREFRONT_TESTHOMEHOSTNAME")
    jset this.tESTHOMEHOSTNAMEPATH ("STOREFRONT_TESTHOMEHOSTNAMEPATH")
    jset this.tESTHOSTNAME ("STOREFRONT_TESTHOSTNAME")
    jset this.tESTHOSTNAMEPATH ("STOREFRONT_TESTHOSTNAMEPATH")
    jset this.iMAGEPATH ("STOREFRONT_IMAGEPATH")
    jset this.sTATICPATH ("STOREFRONT_STATICPATH")
    jset this.cATEGORYPATH ("STOREFRONT_CATEGORYPATH")
    jset this.iNVENTORYCONTROL ("STOREFRONT_INVENTORYCONTROL")
    jset this.cONFIGURATION ("STOREFRONT_CONFIGURATION")
    jset this.sUBSTORES ("STOREFRONT_SUBSTORES")
    jset this.tAGLOCATION ("STOREFRONT_TAGLOCATION")
    jset this.pACKAGELOCATION ("STOREFRONT_PACKAGELOCATION")
    jset this.fTP ("STOREFRONT_FTP")
    jset this.fTPPATH ("STOREFRONT_FTPPATH")
    jset this.fTPUSERNAME ("STOREFRONT_FTPUSERNAME")
    jset this.fTPPASSWORD ("STOREFRONT_FTPPASSWORD")
    jset this.tESTFTP ("STOREFRONT_TESTFTP")
    jset this.tESTFTPPATH ("STOREFRONT_TESTFTPPATH")
    jset this.tESTFTPUSERNAME ("STOREFRONT_TESTFTPUSERNAME")
    jset this.tESTFTPPASSWORD ("STOREFRONT_TESTFTPPASSWORD")
    jset this.sELECTSTORENAME ("STOREFRONT_SELECTSTORENAME")
    pure ()

new_ :: IO StoreFrontData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreFrontData -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (StoreFrontData)
getInstance = do
        pure (StoreFrontData.instance_)


