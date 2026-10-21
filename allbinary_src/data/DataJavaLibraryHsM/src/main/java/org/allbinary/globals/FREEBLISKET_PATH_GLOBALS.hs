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
-- package org.allbinary.globals
module FREEBLISKET_PATH_GLOBALS where

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
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data FREEBLISKET_PATH_GLOBALS = FREEBLISKET_PATH_GLOBALS
    { header_ :: JavaHeader
    , iNSTALLPATH :: IORef (String)
    , xSLPATH :: IORef (String)
    , tEMPLATEPATH :: IORef (String)
    , sTYLEPATH :: IORef (String)
    , tHEMEPATH :: IORef (String)
    , dBINITPATH :: IORef (String)
    , lINEDATAPATH :: IORef (String)
    , cONFIGURATIONPATH :: IORef (String)
    , uSERCONFIGURATIONPATH :: IORef (String)
    , cONTEXTCONFIGURATIONPATH :: IORef (String)
    , lICENSEERRORPAGE :: IORef (String)
    , eRRORPAGE :: IORef (String)
    }

instance JavaNull FREEBLISKET_PATH_GLOBALS where
    javaNull = javaNullRecord "FREEBLISKET_PATH_GLOBALS"

instance JavaEquals FREEBLISKET_PATH_GLOBALS where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FREEBLISKET_PATH_GLOBALS where
    (==) = jrecordEquals

instance JavaObjectClass FREEBLISKET_PATH_GLOBALS where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FREEBLISKET_PATH_GLOBALS
newRecord_ = do
    header_ <- newJavaHeader
    iNSTALLPATH <- newIORef ""
    xSLPATH <- newIORef ""
    tEMPLATEPATH <- newIORef ""
    sTYLEPATH <- newIORef ""
    tHEMEPATH <- newIORef ""
    dBINITPATH <- newIORef ""
    lINEDATAPATH <- newIORef ""
    cONFIGURATIONPATH <- newIORef ""
    uSERCONFIGURATIONPATH <- newIORef ""
    cONTEXTCONFIGURATIONPATH <- newIORef ""
    lICENSEERRORPAGE <- newIORef ""
    eRRORPAGE <- newIORef ""
    let this = FREEBLISKET_PATH_GLOBALS header_ iNSTALLPATH xSLPATH tEMPLATEPATH sTYLEPATH tHEMEPATH dBINITPATH lINEDATAPATH cONFIGURATIONPATH uSERCONFIGURATIONPATH cONTEXTCONFIGURATIONPATH lICENSEERRORPAGE eRRORPAGE
    jregisterLevel header_ this
    pure this

initFields_ :: FREEBLISKET_PATH_GLOBALS -> IO ()
initFields_ this = do
    jset this.iNSTALLPATH (javaNull)
    jset this.xSLPATH (javaNull)
    jset this.tEMPLATEPATH (("template" ++ javaToString (jget ((jio (AbPathData.getInstance))).sEPARATOR)))
    jset this.sTYLEPATH ((((jget (this).tEMPLATEPATH) ++ "style") ++ javaToString (jget ((jio (AbPathData.getInstance))).sEPARATOR)))
    jset this.tHEMEPATH ((((jget (this).sTYLEPATH) ++ "theme") ++ javaToString (jget ((jio (AbPathData.getInstance))).sEPARATOR)))
    jset this.dBINITPATH (((javaToString (jget ((jio (getInstance pATH_GLOBALS))).iNIT_PATH) ++ "db") ++ javaToString (jget ((jio (AbPathData.getInstance))).sEPARATOR)))
    jset this.lINEDATAPATH (((javaToString (jget ((jio (getInstance pATH_GLOBALS))).iNIT_PATH) ++ "lineData") ++ javaToString (jget ((jio (AbPathData.getInstance))).sEPARATOR)))
    jset this.cONFIGURATIONPATH (javaNull)
    jset this.uSERCONFIGURATIONPATH (javaNull)
    jset this.cONTEXTCONFIGURATIONPATH (javaNull)
    jset this.lICENSEERRORPAGE ("LicensingError.jsp")
    jset this.eRRORPAGE ("Error.jsp")
    pure ()


getInstance :: IO (FREEBLISKET_PATH_GLOBALS)
getInstance = do
        pure (FREEBLISKET_PATH_GLOBALS.instance_)

new_ :: IO FREEBLISKET_PATH_GLOBALS
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FREEBLISKET_PATH_GLOBALS -> IO ()
init_ this = do
        initFields_ this
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "install")
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).iNSTALLPATH (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (getInstance pATH_GLOBALS))).iNIT_PATH))
        Control.Monad.void (StringMaker.append stringBuffer "views")
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).xSLPATH (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).xSLPATH))
        Control.Monad.void (StringMaker.append stringBuffer "configuration")
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).cONFIGURATIONPATH (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).cONFIGURATIONPATH))
        Control.Monad.void (StringMaker.append stringBuffer "user")
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).uSERCONFIGURATIONPATH (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).cONFIGURATIONPATH))
        Control.Monad.void (StringMaker.append stringBuffer "context")
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).cONTEXTCONFIGURATIONPATH (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        pure ()


