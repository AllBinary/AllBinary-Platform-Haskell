{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.logic.communication.log.config.type
module LogConfigTypeFactory where

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
import qualified LogConfigType -- same package or java.lang
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data LogConfigTypeFactory = LogConfigTypeFactory
    { header_ :: JavaHeader
    , nO_DESCRIPTION :: IORef (String)
    , aUTHENTICATION :: IORef (LogConfigType.LogConfigType)
    , aUTHENTICATIONERROR :: IORef (LogConfigType.LogConfigType)
    , cATEGORY :: IORef (LogConfigType.LogConfigType)
    , cATEGORYERROR :: IORef (LogConfigType.LogConfigType)
    , cRYPT :: IORef (LogConfigType.LogConfigType)
    , cRYPTERROR :: IORef (LogConfigType.LogConfigType)
    , eMAILLOGGING :: IORef (LogConfigType.LogConfigType)
    , eMAILLOGGINGERROR :: IORef (LogConfigType.LogConfigType)
    , eNTITYFACTORYERROR :: IORef (LogConfigType.LogConfigType)
    , nETBEANS_MODULE :: IORef (LogConfigType.LogConfigType)
    , nETBEANS_MODULE_ERROR :: IORef (LogConfigType.LogConfigType)
    , fACTORYERROR :: IORef (LogConfigType.LogConfigType)
    , fILE :: IORef (LogConfigType.LogConfigType)
    , fILEERROR :: IORef (LogConfigType.LogConfigType)
    , hTTP :: IORef (LogConfigType.LogConfigType)
    , hTTPERROR :: IORef (LogConfigType.LogConfigType)
    , hTTPREQUEST :: IORef (LogConfigType.LogConfigType)
    , hTTPREQUESTERROR :: IORef (LogConfigType.LogConfigType)
    , iDLOGGING :: IORef (LogConfigType.LogConfigType)
    , jSPEXTRAOUTPUT :: IORef (LogConfigType.LogConfigType)
    , jSPTAGEXTRAOUTPUT :: IORef (LogConfigType.LogConfigType)
    , jSPTAG :: IORef (LogConfigType.LogConfigType)
    , jSPTAGERROR :: IORef (LogConfigType.LogConfigType)
    , lICENSING :: IORef (LogConfigType.LogConfigType)
    , lICENSINGERROR :: IORef (LogConfigType.LogConfigType)
    , lOADER :: IORef (LogConfigType.LogConfigType)
    , lOADERERROR :: IORef (LogConfigType.LogConfigType)
    , oS :: IORef (LogConfigType.LogConfigType)
    , oSERROR :: IORef (LogConfigType.LogConfigType)
    , pAYMENT :: IORef (LogConfigType.LogConfigType)
    , pAYMENTERROR :: IORef (LogConfigType.LogConfigType)
    , pRELOADER :: IORef (LogConfigType.LogConfigType)
    , pRELOADERERROR :: IORef (LogConfigType.LogConfigType)
    , pRODUCTSEARCHLOGGING :: IORef (LogConfigType.LogConfigType)
    , pRODUCTSEARCHLOGGINGERROR :: IORef (LogConfigType.LogConfigType)
    , sERVLET :: IORef (LogConfigType.LogConfigType)
    , sERVLETERROR :: IORef (LogConfigType.LogConfigType)
    , sHIPPINGERROR :: IORef (LogConfigType.LogConfigType)
    , sQLLOGGINGERROR :: IORef (LogConfigType.LogConfigType)
    , sQLLOGGING :: IORef (LogConfigType.LogConfigType)
    , sQLTAGS :: IORef (LogConfigType.LogConfigType)
    , sQLTAGSERROR :: IORef (LogConfigType.LogConfigType)
    , sTYLE :: IORef (LogConfigType.LogConfigType)
    , sTYLEERROR :: IORef (LogConfigType.LogConfigType)
    , tAGHELPER :: IORef (LogConfigType.LogConfigType)
    , tAGHELPERERROR :: IORef (LogConfigType.LogConfigType)
    , tAGHELPERFACTORY :: IORef (LogConfigType.LogConfigType)
    , tAGHELPERFACTORYERROR :: IORef (LogConfigType.LogConfigType)
    , tAX :: IORef (LogConfigType.LogConfigType)
    , tAXERROR :: IORef (LogConfigType.LogConfigType)
    , vALIDATION :: IORef (LogConfigType.LogConfigType)
    , vALIDATIONERROR :: IORef (LogConfigType.LogConfigType)
    , vIEW :: IORef (LogConfigType.LogConfigType)
    , vIEWERROR :: IORef (LogConfigType.LogConfigType)
    , vIEWFACTORYERROR :: IORef (LogConfigType.LogConfigType)
    , wORKFLOW :: IORef (LogConfigType.LogConfigType)
    , wORKFLOWERROR :: IORef (LogConfigType.LogConfigType)
    , xMLLOGGING :: IORef (LogConfigType.LogConfigType)
    , xMLLOGGINGERROR :: IORef (LogConfigType.LogConfigType)
    , xSLLOGGING :: IORef (LogConfigType.LogConfigType)
    , xSLLOGGINGERROR :: IORef (LogConfigType.LogConfigType)
    , rEPLACE :: IORef (LogConfigType.LogConfigType)
    , rEPLACE_INFO :: IORef (LogConfigType.LogConfigType)
    , rEPLACEERROR :: IORef (LogConfigType.LogConfigType)
    , sQLLOGGINGPOOL :: IORef (LogConfigType.LogConfigType)
    , sQLLOGGINGPOOLERROR :: IORef (LogConfigType.LogConfigType)
    , sTATICPAGEGENERATIONLOGGING :: IORef (LogConfigType.LogConfigType)
    , sTATICPAGEGENERATIONLOGGINGERROR :: IORef (LogConfigType.LogConfigType)
    }

instance JavaNull LogConfigTypeFactory where
    javaNull = javaNullRecord "LogConfigTypeFactory"

instance JavaEquals LogConfigTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogConfigTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass LogConfigTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogConfigTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    nO_DESCRIPTION <- newIORef ""
    aUTHENTICATION <- newIORef javaNull
    aUTHENTICATIONERROR <- newIORef javaNull
    cATEGORY <- newIORef javaNull
    cATEGORYERROR <- newIORef javaNull
    cRYPT <- newIORef javaNull
    cRYPTERROR <- newIORef javaNull
    eMAILLOGGING <- newIORef javaNull
    eMAILLOGGINGERROR <- newIORef javaNull
    eNTITYFACTORYERROR <- newIORef javaNull
    nETBEANS_MODULE <- newIORef javaNull
    nETBEANS_MODULE_ERROR <- newIORef javaNull
    fACTORYERROR <- newIORef javaNull
    fILE <- newIORef javaNull
    fILEERROR <- newIORef javaNull
    hTTP <- newIORef javaNull
    hTTPERROR <- newIORef javaNull
    hTTPREQUEST <- newIORef javaNull
    hTTPREQUESTERROR <- newIORef javaNull
    iDLOGGING <- newIORef javaNull
    jSPEXTRAOUTPUT <- newIORef javaNull
    jSPTAGEXTRAOUTPUT <- newIORef javaNull
    jSPTAG <- newIORef javaNull
    jSPTAGERROR <- newIORef javaNull
    lICENSING <- newIORef javaNull
    lICENSINGERROR <- newIORef javaNull
    lOADER <- newIORef javaNull
    lOADERERROR <- newIORef javaNull
    oS <- newIORef javaNull
    oSERROR <- newIORef javaNull
    pAYMENT <- newIORef javaNull
    pAYMENTERROR <- newIORef javaNull
    pRELOADER <- newIORef javaNull
    pRELOADERERROR <- newIORef javaNull
    pRODUCTSEARCHLOGGING <- newIORef javaNull
    pRODUCTSEARCHLOGGINGERROR <- newIORef javaNull
    sERVLET <- newIORef javaNull
    sERVLETERROR <- newIORef javaNull
    sHIPPINGERROR <- newIORef javaNull
    sQLLOGGINGERROR <- newIORef javaNull
    sQLLOGGING <- newIORef javaNull
    sQLTAGS <- newIORef javaNull
    sQLTAGSERROR <- newIORef javaNull
    sTYLE <- newIORef javaNull
    sTYLEERROR <- newIORef javaNull
    tAGHELPER <- newIORef javaNull
    tAGHELPERERROR <- newIORef javaNull
    tAGHELPERFACTORY <- newIORef javaNull
    tAGHELPERFACTORYERROR <- newIORef javaNull
    tAX <- newIORef javaNull
    tAXERROR <- newIORef javaNull
    vALIDATION <- newIORef javaNull
    vALIDATIONERROR <- newIORef javaNull
    vIEW <- newIORef javaNull
    vIEWERROR <- newIORef javaNull
    vIEWFACTORYERROR <- newIORef javaNull
    wORKFLOW <- newIORef javaNull
    wORKFLOWERROR <- newIORef javaNull
    xMLLOGGING <- newIORef javaNull
    xMLLOGGINGERROR <- newIORef javaNull
    xSLLOGGING <- newIORef javaNull
    xSLLOGGINGERROR <- newIORef javaNull
    rEPLACE <- newIORef javaNull
    rEPLACE_INFO <- newIORef javaNull
    rEPLACEERROR <- newIORef javaNull
    sQLLOGGINGPOOL <- newIORef javaNull
    sQLLOGGINGPOOLERROR <- newIORef javaNull
    sTATICPAGEGENERATIONLOGGING <- newIORef javaNull
    sTATICPAGEGENERATIONLOGGINGERROR <- newIORef javaNull
    let this = LogConfigTypeFactory header_ nO_DESCRIPTION aUTHENTICATION aUTHENTICATIONERROR cATEGORY cATEGORYERROR cRYPT cRYPTERROR eMAILLOGGING eMAILLOGGINGERROR eNTITYFACTORYERROR nETBEANS_MODULE nETBEANS_MODULE_ERROR fACTORYERROR fILE fILEERROR hTTP hTTPERROR hTTPREQUEST hTTPREQUESTERROR iDLOGGING jSPEXTRAOUTPUT jSPTAGEXTRAOUTPUT jSPTAG jSPTAGERROR lICENSING lICENSINGERROR lOADER lOADERERROR oS oSERROR pAYMENT pAYMENTERROR pRELOADER pRELOADERERROR pRODUCTSEARCHLOGGING pRODUCTSEARCHLOGGINGERROR sERVLET sERVLETERROR sHIPPINGERROR sQLLOGGINGERROR sQLLOGGING sQLTAGS sQLTAGSERROR sTYLE sTYLEERROR tAGHELPER tAGHELPERERROR tAGHELPERFACTORY tAGHELPERFACTORYERROR tAX tAXERROR vALIDATION vALIDATIONERROR vIEW vIEWERROR vIEWFACTORYERROR wORKFLOW wORKFLOWERROR xMLLOGGING xMLLOGGINGERROR xSLLOGGING xSLLOGGINGERROR rEPLACE rEPLACE_INFO rEPLACEERROR sQLLOGGINGPOOL sQLLOGGINGPOOLERROR sTATICPAGEGENERATIONLOGGING sTATICPAGEGENERATIONLOGGINGERROR
    jregisterLevel header_ this
    pure this

initFields_ :: LogConfigTypeFactory -> IO ()
initFields_ this = do
    jset this.nO_DESCRIPTION ("No Description")
    jset this.aUTHENTICATION =<< (LogConfigType.new_2 "Authentication" (jget (this).nO_DESCRIPTION))
    jset this.aUTHENTICATIONERROR =<< (LogConfigType.new_2 "Authentication Error" (jget (this).nO_DESCRIPTION))
    jset this.cATEGORY =<< (LogConfigType.new_2 "Category" (jget (this).nO_DESCRIPTION))
    jset this.cATEGORYERROR =<< (LogConfigType.new_2 "Category Error" (jget (this).nO_DESCRIPTION))
    jset this.cRYPT =<< (LogConfigType.new_2 "Crypt" (jget (this).nO_DESCRIPTION))
    jset this.cRYPTERROR =<< (LogConfigType.new_2 "Crypt Error" (jget (this).nO_DESCRIPTION))
    jset this.eMAILLOGGING =<< (LogConfigType.new_2 "Email" (jget (this).nO_DESCRIPTION))
    jset this.eMAILLOGGINGERROR =<< (LogConfigType.new_2 "Email Error" (jget (this).nO_DESCRIPTION))
    jset this.eNTITYFACTORYERROR =<< (LogConfigType.new_2 "Entity Factory Error" (jget (this).nO_DESCRIPTION))
    jset this.nETBEANS_MODULE =<< (LogConfigType.new_2 "NetBeans Module" (jget (this).nO_DESCRIPTION))
    jset this.nETBEANS_MODULE_ERROR =<< (LogConfigType.new_2 "NetBeans Module Error" (jget (this).nO_DESCRIPTION))
    jset this.fACTORYERROR =<< (LogConfigType.new_2 "General Factory Error" (jget (this).nO_DESCRIPTION))
    jset this.fILE =<< (LogConfigType.new_2 "File" (jget (this).nO_DESCRIPTION))
    jset this.fILEERROR =<< (LogConfigType.new_2 "File Error" (jget (this).nO_DESCRIPTION))
    jset this.hTTP =<< (LogConfigType.new_2 "HTTP" (jget (this).nO_DESCRIPTION))
    jset this.hTTPERROR =<< (LogConfigType.new_2 "HTTP Error" (jget (this).nO_DESCRIPTION))
    jset this.hTTPREQUEST =<< (LogConfigType.new_2 "Http Request" (jget (this).nO_DESCRIPTION))
    jset this.hTTPREQUESTERROR =<< (LogConfigType.new_2 "Http Request Error" (jget (this).nO_DESCRIPTION))
    jset this.iDLOGGING =<< (LogConfigType.new_2 "ID Logging" (jget (this).nO_DESCRIPTION))
    jset this.jSPEXTRAOUTPUT =<< (LogConfigType.new_2 "JSP Extra Output" (jget (this).nO_DESCRIPTION))
    jset this.jSPTAGEXTRAOUTPUT =<< (LogConfigType.new_2 "JSP Tag Extra Output" (jget (this).nO_DESCRIPTION))
    jset this.jSPTAG =<< (LogConfigType.new_2 "JSP Tag" (jget (this).nO_DESCRIPTION))
    jset this.jSPTAGERROR =<< (LogConfigType.new_2 "JSP Tag Error" (jget (this).nO_DESCRIPTION))
    jset this.lICENSING =<< (LogConfigType.new_2 "Licensing" (jget (this).nO_DESCRIPTION))
    jset this.lICENSINGERROR =<< (LogConfigType.new_2 "Licensing Error" (jget (this).nO_DESCRIPTION))
    jset this.lOADER =<< (LogConfigType.new_2 "Loader" (jget (this).nO_DESCRIPTION))
    jset this.lOADERERROR =<< (LogConfigType.new_2 "Loader Error" (jget (this).nO_DESCRIPTION))
    jset this.oS =<< (LogConfigType.new_2 "OS" (jget (this).nO_DESCRIPTION))
    jset this.oSERROR =<< (LogConfigType.new_2 "OS Error" (jget (this).nO_DESCRIPTION))
    jset this.pAYMENT =<< (LogConfigType.new_2 "Payment" (jget (this).nO_DESCRIPTION))
    jset this.pAYMENTERROR =<< (LogConfigType.new_2 "Payment Error" (jget (this).nO_DESCRIPTION))
    jset this.pRELOADER =<< (LogConfigType.new_2 "PreLoader" (jget (this).nO_DESCRIPTION))
    jset this.pRELOADERERROR =<< (LogConfigType.new_2 "PreLoader Error" (jget (this).nO_DESCRIPTION))
    jset this.pRODUCTSEARCHLOGGING =<< (LogConfigType.new_2 "Product Search Logging" (jget (this).nO_DESCRIPTION))
    jset this.pRODUCTSEARCHLOGGINGERROR =<< (LogConfigType.new_2 "Product Search Logging Error" (jget (this).nO_DESCRIPTION))
    jset this.sERVLET =<< (LogConfigType.new_2 "Servlet" (jget (this).nO_DESCRIPTION))
    jset this.sERVLETERROR =<< (LogConfigType.new_2 "Servlet Error" (jget (this).nO_DESCRIPTION))
    jset this.sHIPPINGERROR =<< (LogConfigType.new_2 "Shipping Error" (jget (this).nO_DESCRIPTION))
    jset this.sQLLOGGINGERROR =<< (LogConfigType.new_2 "SQL Error" (jget (this).nO_DESCRIPTION))
    jset this.sQLLOGGING =<< (LogConfigType.new_2 "SQL Logging" (jget (this).nO_DESCRIPTION))
    jset this.sQLTAGS =<< (LogConfigType.new_2 "SQL Tag Logging" (jget (this).nO_DESCRIPTION))
    jset this.sQLTAGSERROR =<< (LogConfigType.new_2 "SQL Tag Error" (jget (this).nO_DESCRIPTION))
    jset this.sTYLE =<< (LogConfigType.new_2 "Style" (jget (this).nO_DESCRIPTION))
    jset this.sTYLEERROR =<< (LogConfigType.new_2 "Style Error" (jget (this).nO_DESCRIPTION))
    jset this.tAGHELPER =<< (LogConfigType.new_2 "Tag Helper" (jget (this).nO_DESCRIPTION))
    jset this.tAGHELPERERROR =<< (LogConfigType.new_2 "Tag Helper Error" (jget (this).nO_DESCRIPTION))
    jset this.tAGHELPERFACTORY =<< (LogConfigType.new_2 "Tag Helper Factory" (jget (this).nO_DESCRIPTION))
    jset this.tAGHELPERFACTORYERROR =<< (LogConfigType.new_2 "Tag Helper Factory Error" (jget (this).nO_DESCRIPTION))
    jset this.tAX =<< (LogConfigType.new_2 "Tax" (jget (this).nO_DESCRIPTION))
    jset this.tAXERROR =<< (LogConfigType.new_2 "Tax Error" (jget (this).nO_DESCRIPTION))
    jset this.vALIDATION =<< (LogConfigType.new_2 "Validation" (jget (this).nO_DESCRIPTION))
    jset this.vALIDATIONERROR =<< (LogConfigType.new_2 "Validation Error" (jget (this).nO_DESCRIPTION))
    jset this.vIEW =<< (LogConfigType.new_2 "View" (jget (this).nO_DESCRIPTION))
    jset this.vIEWERROR =<< (LogConfigType.new_2 "View Error" (jget (this).nO_DESCRIPTION))
    jset this.vIEWFACTORYERROR =<< (LogConfigType.new_2 "View Factory Error" (jget (this).nO_DESCRIPTION))
    jset this.wORKFLOW =<< (LogConfigType.new_2 "Workflow" (jget (this).nO_DESCRIPTION))
    jset this.wORKFLOWERROR =<< (LogConfigType.new_2 "Workflow Error" (jget (this).nO_DESCRIPTION))
    jset this.xMLLOGGING =<< (LogConfigType.new_2 "XML Logging" (jget (this).nO_DESCRIPTION))
    jset this.xMLLOGGINGERROR =<< (LogConfigType.new_2 "XML Logging Error" (jget (this).nO_DESCRIPTION))
    jset this.xSLLOGGING =<< (LogConfigType.new_2 "XSL Logging" (jget (this).nO_DESCRIPTION))
    jset this.xSLLOGGINGERROR =<< (LogConfigType.new_2 "XSL Logging Error" (jget (this).nO_DESCRIPTION))
    jset this.rEPLACE =<< (LogConfigType.new_2 "Replace" (jget (this).nO_DESCRIPTION))
    jset this.rEPLACE_INFO =<< (LogConfigType.new_2 "Replace Info" (jget (this).nO_DESCRIPTION))
    jset this.rEPLACEERROR =<< (LogConfigType.new_2 "Replace Error" (jget (this).nO_DESCRIPTION))
    jset this.sQLLOGGINGPOOL =<< (LogConfigType.new_2 "SQL Pool" (jget (this).nO_DESCRIPTION))
    jset this.sQLLOGGINGPOOLERROR =<< (LogConfigType.new_2 "SQL Pool Error" (jget (this).nO_DESCRIPTION))
    jset this.sTATICPAGEGENERATIONLOGGING =<< (LogConfigType.new_2 "Static Page Generation Logging" (jget (this).nO_DESCRIPTION))
    jset this.sTATICPAGEGENERATIONLOGGINGERROR =<< (LogConfigType.new_2 "Static Page Generation Logging Error" (jget (this).nO_DESCRIPTION))
    pure ()


getInstance :: IO (LogConfigTypeFactory)
getInstance = do
        pure (LogConfigTypeFactory.instance_)

new_ :: IO LogConfigTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogConfigTypeFactory -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (PreLogUtil.put "FreeBlisket" this (jget ((jio (CommonStrings.getInstance))).cONSTRUCTOR))
        pure ()


