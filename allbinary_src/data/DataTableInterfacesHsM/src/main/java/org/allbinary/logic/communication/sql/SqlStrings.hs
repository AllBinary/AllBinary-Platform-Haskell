{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.logic.communication.sql
module SqlStrings where

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
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data SqlStrings = SqlStrings
    { header_ :: JavaHeader
    , cREATE_DATABASE :: IORef (String)
    , dROP_TABLE :: IORef (String)
    , cREATE_TABLE :: IORef (String)
    , sTART :: IORef (String)
    , sELECT :: IORef (String)
    , fROM :: IORef (String)
    , sELECT_ALL :: IORef (String)
    , wHERE :: IORef (String)
    , aND :: IORef (String)
    , uPDATE :: IORef (String)
    , sET :: IORef (String)
    , sELECT_ALL_FROM :: IORef (String)
    , dELETE :: IORef (String)
    , lIKE_QUOTE :: IORef (String)
    , iNSERT_INTO :: IORef (String)
    , vALUES :: IORef (String)
    , oRDER_BY :: IORef (String)
    , cOUNT :: IORef (String)
    , aSC :: IORef (String)
    , dESC :: IORef (String)
    , pRIMARY_KEY :: IORef (String)
    , eND :: IORef (String)
    , eQUAL_QUOTE :: IORef (String)
    , cLOSE_QUOTE :: IORef (String)
    , eQUAL_QUOTE_NO_SPACE :: IORef (String)
    , eSCAPE :: IORef (String)
    , dOUBLE_ESCAPE :: IORef (String)
    , mORE_THAN_QUOTE :: IORef (String)
    , lESS_THAN_QUOTE :: IORef (String)
    , sINGLE_QUOTE_COMMA_SEP :: IORef (String)
    , iD :: IORef (String)
    , sQL_STATEMENT_LABEL :: IORef (String)
    , cOLUMN_VALUE :: IORef (String)
    , cREATE_RETURN :: IORef (String)
    , fIELD_VALUE :: IORef (String)
    }

instance JavaNull SqlStrings where
    javaNull = javaNullRecord "SqlStrings"

instance JavaEquals SqlStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SqlStrings where
    (==) = jrecordEquals

instance JavaObjectClass SqlStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SqlStrings
newRecord_ = do
    header_ <- newJavaHeader
    cREATE_DATABASE <- newIORef ""
    dROP_TABLE <- newIORef ""
    cREATE_TABLE <- newIORef ""
    sTART <- newIORef ""
    sELECT <- newIORef ""
    fROM <- newIORef ""
    sELECT_ALL <- newIORef ""
    wHERE <- newIORef ""
    aND <- newIORef ""
    uPDATE <- newIORef ""
    sET <- newIORef ""
    sELECT_ALL_FROM <- newIORef ""
    dELETE <- newIORef ""
    lIKE_QUOTE <- newIORef ""
    iNSERT_INTO <- newIORef ""
    vALUES <- newIORef ""
    oRDER_BY <- newIORef ""
    cOUNT <- newIORef ""
    aSC <- newIORef ""
    dESC <- newIORef ""
    pRIMARY_KEY <- newIORef ""
    eND <- newIORef ""
    eQUAL_QUOTE <- newIORef ""
    cLOSE_QUOTE <- newIORef ""
    eQUAL_QUOTE_NO_SPACE <- newIORef ""
    eSCAPE <- newIORef ""
    dOUBLE_ESCAPE <- newIORef ""
    mORE_THAN_QUOTE <- newIORef ""
    lESS_THAN_QUOTE <- newIORef ""
    sINGLE_QUOTE_COMMA_SEP <- newIORef ""
    iD <- newIORef ""
    sQL_STATEMENT_LABEL <- newIORef ""
    cOLUMN_VALUE <- newIORef ""
    cREATE_RETURN <- newIORef ""
    fIELD_VALUE <- newIORef ""
    let this = SqlStrings header_ cREATE_DATABASE dROP_TABLE cREATE_TABLE sTART sELECT fROM sELECT_ALL wHERE aND uPDATE sET sELECT_ALL_FROM dELETE lIKE_QUOTE iNSERT_INTO vALUES oRDER_BY cOUNT aSC dESC pRIMARY_KEY eND eQUAL_QUOTE cLOSE_QUOTE eQUAL_QUOTE_NO_SPACE eSCAPE dOUBLE_ESCAPE mORE_THAN_QUOTE lESS_THAN_QUOTE sINGLE_QUOTE_COMMA_SEP iD sQL_STATEMENT_LABEL cOLUMN_VALUE cREATE_RETURN fIELD_VALUE
    jregisterLevel header_ this
    pure this

initFields_ :: SqlStrings -> IO ()
initFields_ this = do
    jset this.cREATE_DATABASE ("CREATE DATABASE ")
    jset this.dROP_TABLE ("DROP TABLE ")
    jset this.cREATE_TABLE ("CREATE TABLE ")
    jset this.sTART (" (")
    jset this.sELECT ("SELECT ")
    jset this.fROM (" FROM ")
    jset this.sELECT_ALL ("SELECT *")
    jset this.wHERE (" WHERE ")
    jset this.aND (" AND ")
    jset this.uPDATE ("UPDATE ")
    jset this.sET (" SET ")
    jset this.sELECT_ALL_FROM (((jget (this).sELECT_ALL) ++ (jget (this).fROM)))
    jset this.dELETE ("DELETE")
    jset this.lIKE_QUOTE (" LIKE \"")
    jset this.iNSERT_INTO ("INSERT INTO ")
    jset this.vALUES (" VALUES ('")
    jset this.oRDER_BY ("ORDER BY")
    jset this.cOUNT ("COUNT(")
    jset this.aSC ("ASC")
    jset this.dESC ("DESC")
    jset this.pRIMARY_KEY ("PRIMARY KEY(")
    jset this.eND (") )")
    jset this.eQUAL_QUOTE (" = \"")
    jset this.cLOSE_QUOTE ((jget ((jio (CommonSeps.getInstance))).qUOTE))
    jset this.eQUAL_QUOTE_NO_SPACE ("=\"")
    jset this.eSCAPE ("\\")
    jset this.dOUBLE_ESCAPE ("\\\\")
    jset this.mORE_THAN_QUOTE (" > \"")
    jset this.lESS_THAN_QUOTE (" < \"")
    jset this.sINGLE_QUOTE_COMMA_SEP ("','")
    jset this.iD ("ID")
    jset this.sQL_STATEMENT_LABEL ("SQL Statement: ")
    jset this.cOLUMN_VALUE ("\nColumn Value: ")
    jset this.cREATE_RETURN (" Created Successfully")
    jset this.fIELD_VALUE ("\nField Value: ")
    pure ()

new_ :: IO SqlStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SqlStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (SqlStrings)
getInstance = do
        pure (SqlStrings.instance_)


