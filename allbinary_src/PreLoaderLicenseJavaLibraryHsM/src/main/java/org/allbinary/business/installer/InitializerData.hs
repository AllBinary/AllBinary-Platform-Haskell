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
-- package org.allbinary.business.installer
module InitializerData where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data InitializerData = InitializerData
    { header_ :: JavaHeader
    , dBUSER :: IORef (String)
    , dBPASSWORD :: IORef (String)
    , aDMINJDBCDRIVER :: IORef (String)
    , aDMINSCHEMA :: IORef (String)
    , aDMINSERVER :: IORef (String)
    , aDMINPORT :: IORef (String)
    , cUSTOMERJDBCDRIVER :: IORef (String)
    , cUSTOMERNAME :: IORef (String)
    , cUSTOMERUSERNAME :: IORef (String)
    , cUSTOMERPASSWORD :: IORef (String)
    , cUSTOMERSCHEMA :: IORef (String)
    , cUSTOMERSERVER :: IORef (String)
    , cUSTOMERPORT :: IORef (String)
    , hISTORYJDBCDRIVER :: IORef (String)
    , hISTORYNAME :: IORef (String)
    , hISTORYUSERNAME :: IORef (String)
    , hISTORYPASSWORD :: IORef (String)
    , hISTORYSCHEMA :: IORef (String)
    , hISTORYSERVER :: IORef (String)
    , hISTORYPORT :: IORef (String)
    , lOGJDBCDRIVER :: IORef (String)
    , lOGNAME :: IORef (String)
    , lOGUSERNAME :: IORef (String)
    , lOGPASSWORD :: IORef (String)
    , lOGSCHEMA :: IORef (String)
    , lOGSERVER :: IORef (String)
    , lOGPORT :: IORef (String)
    , iNVENTORYJDBCDRIVER :: IORef (String)
    , iNVENTORYNAME :: IORef (String)
    , iNVENTORYUSERNAME :: IORef (String)
    , iNVENTORYPASSWORD :: IORef (String)
    , iNVENTORYSCHEMA :: IORef (String)
    , iNVENTORYSERVER :: IORef (String)
    , iNVENTORYPORT :: IORef (String)
    , sTATICPAGESJDBCDRIVER :: IORef (String)
    , sTATICPAGESNAME :: IORef (String)
    , sTATICPAGESUSERNAME :: IORef (String)
    , sTATICPAGESPASSWORD :: IORef (String)
    , sTATICPAGESSCHEMA :: IORef (String)
    , sTATICPAGESSERVER :: IORef (String)
    , sTATICPAGESPORT :: IORef (String)
    }

instance JavaNull InitializerData where
    javaNull = javaNullRecord "InitializerData"

instance JavaEquals InitializerData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InitializerData where
    (==) = jrecordEquals

instance JavaObjectClass InitializerData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InitializerData
newRecord_ = do
    header_ <- newJavaHeader
    dBUSER <- newIORef ""
    dBPASSWORD <- newIORef ""
    aDMINJDBCDRIVER <- newIORef ""
    aDMINSCHEMA <- newIORef ""
    aDMINSERVER <- newIORef ""
    aDMINPORT <- newIORef ""
    cUSTOMERJDBCDRIVER <- newIORef ""
    cUSTOMERNAME <- newIORef ""
    cUSTOMERUSERNAME <- newIORef ""
    cUSTOMERPASSWORD <- newIORef ""
    cUSTOMERSCHEMA <- newIORef ""
    cUSTOMERSERVER <- newIORef ""
    cUSTOMERPORT <- newIORef ""
    hISTORYJDBCDRIVER <- newIORef ""
    hISTORYNAME <- newIORef ""
    hISTORYUSERNAME <- newIORef ""
    hISTORYPASSWORD <- newIORef ""
    hISTORYSCHEMA <- newIORef ""
    hISTORYSERVER <- newIORef ""
    hISTORYPORT <- newIORef ""
    lOGJDBCDRIVER <- newIORef ""
    lOGNAME <- newIORef ""
    lOGUSERNAME <- newIORef ""
    lOGPASSWORD <- newIORef ""
    lOGSCHEMA <- newIORef ""
    lOGSERVER <- newIORef ""
    lOGPORT <- newIORef ""
    iNVENTORYJDBCDRIVER <- newIORef ""
    iNVENTORYNAME <- newIORef ""
    iNVENTORYUSERNAME <- newIORef ""
    iNVENTORYPASSWORD <- newIORef ""
    iNVENTORYSCHEMA <- newIORef ""
    iNVENTORYSERVER <- newIORef ""
    iNVENTORYPORT <- newIORef ""
    sTATICPAGESJDBCDRIVER <- newIORef ""
    sTATICPAGESNAME <- newIORef ""
    sTATICPAGESUSERNAME <- newIORef ""
    sTATICPAGESPASSWORD <- newIORef ""
    sTATICPAGESSCHEMA <- newIORef ""
    sTATICPAGESSERVER <- newIORef ""
    sTATICPAGESPORT <- newIORef ""
    let this = InitializerData header_ dBUSER dBPASSWORD aDMINJDBCDRIVER aDMINSCHEMA aDMINSERVER aDMINPORT cUSTOMERJDBCDRIVER cUSTOMERNAME cUSTOMERUSERNAME cUSTOMERPASSWORD cUSTOMERSCHEMA cUSTOMERSERVER cUSTOMERPORT hISTORYJDBCDRIVER hISTORYNAME hISTORYUSERNAME hISTORYPASSWORD hISTORYSCHEMA hISTORYSERVER hISTORYPORT lOGJDBCDRIVER lOGNAME lOGUSERNAME lOGPASSWORD lOGSCHEMA lOGSERVER lOGPORT iNVENTORYJDBCDRIVER iNVENTORYNAME iNVENTORYUSERNAME iNVENTORYPASSWORD iNVENTORYSCHEMA iNVENTORYSERVER iNVENTORYPORT sTATICPAGESJDBCDRIVER sTATICPAGESNAME sTATICPAGESUSERNAME sTATICPAGESPASSWORD sTATICPAGESSCHEMA sTATICPAGESSERVER sTATICPAGESPORT
    jregisterLevel header_ this
    jregisterMethod header_ "getJdbcDriverSolutionInfo" (\() -> getJdbcDriverSolutionInfo_impl this)
    pure this

initFields_ :: InitializerData -> IO ()
initFields_ this = do
    jset this.dBUSER ("DBUSER")
    jset this.dBPASSWORD ("DBPASSWORD")
    jset this.aDMINJDBCDRIVER ("ADMIN_JDBCDRIVER")
    jset this.aDMINSCHEMA ("ADMINSCHEMA")
    jset this.aDMINSERVER ("ADMINSERVER")
    jset this.aDMINPORT ("ADMINPORT")
    jset this.cUSTOMERJDBCDRIVER ("CUSTOMER_JDBCDRIVER")
    jset this.cUSTOMERNAME ("CUSTOMERNAME")
    jset this.cUSTOMERUSERNAME ("CUSTOMERUSERNAME")
    jset this.cUSTOMERPASSWORD ("CUSTOMERPASSWORD")
    jset this.cUSTOMERSCHEMA ("CUSTOMERSCHEMA")
    jset this.cUSTOMERSERVER ("CUSTOMERSERVER")
    jset this.cUSTOMERPORT ("CUSTOMERPORT")
    jset this.hISTORYJDBCDRIVER ("HISTORY_JDBCDRIVER")
    jset this.hISTORYNAME ("HISTORYNAME")
    jset this.hISTORYUSERNAME ("HISTORYUSERNAME")
    jset this.hISTORYPASSWORD ("HISTORYPASSWORD")
    jset this.hISTORYSCHEMA ("HISTORYSCHEMA")
    jset this.hISTORYSERVER ("HISTORYSERVER")
    jset this.hISTORYPORT ("HISTORYPORT")
    jset this.lOGJDBCDRIVER ("LOG_JDBCDRIVER")
    jset this.lOGNAME ("LOGNAME")
    jset this.lOGUSERNAME ("LOGUSERNAME")
    jset this.lOGPASSWORD ("LOGPASSWORD")
    jset this.lOGSCHEMA ("LOGSCHEMA")
    jset this.lOGSERVER ("LOGSERVER")
    jset this.lOGPORT ("LOGPORT")
    jset this.iNVENTORYJDBCDRIVER ("INVENTORY_JDBCDRIVER")
    jset this.iNVENTORYNAME ("INVENTORYNAME")
    jset this.iNVENTORYUSERNAME ("INVENTORYUSERNAME")
    jset this.iNVENTORYPASSWORD ("INVENTORYPASSWORD")
    jset this.iNVENTORYSCHEMA ("INVENTORYSCHEMA")
    jset this.iNVENTORYSERVER ("INVENTORYSERVER")
    jset this.iNVENTORYPORT ("INVENTORYPORT")
    jset this.sTATICPAGESJDBCDRIVER ("STATICPAGES_JDBCDRIVER")
    jset this.sTATICPAGESNAME ("STATICPAGESNAME")
    jset this.sTATICPAGESUSERNAME ("STATICPAGESUSERNAME")
    jset this.sTATICPAGESPASSWORD ("STATICPAGESPASSWORD")
    jset this.sTATICPAGESSCHEMA ("STATICPAGESSCHEMA")
    jset this.sTATICPAGESSERVER ("STATICPAGESSERVER")
    jset this.sTATICPAGESPORT ("STATICPAGESPORT")
    pure ()

new_ :: IO InitializerData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InitializerData -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (InitializerData)
getInstance = do
        pure (InitializerData.instance_)


getJdbcDriverSolutionInfo :: (JavaObjectClass this_) => this_ -> IO (String)
getJdbcDriverSolutionInfo object_ = jmethod object_ "getJdbcDriverSolutionInfo" (\() -> (getJdbcDriverSolutionInfo_impl (javaCast object_ :: InitializerData))) ()

getJdbcDriverSolutionInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
getJdbcDriverSolutionInfo_super object_ = (getJdbcDriverSolutionInfo_impl (javaCast object_ :: InitializerData))

getJdbcDriverSolutionInfo_impl :: InitializerData -> IO (String)
getJdbcDriverSolutionInfo_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "The following describes the possible problems and solutions regarding the Jdbc Driver error(s):<p/>")
        Control.Monad.void (StringMaker.append stringBuffer "1. A JDBC driver you specified is not in your classpath.<br/>")
        Control.Monad.void (StringMaker.append stringBuffer "Solution 1: Move the JDBC driver into any directory specified in the existing classpath. <br/>")
        Control.Monad.void (StringMaker.append stringBuffer "Solution 2: Add the directory that contains the JDBC driver to the classpath.<br/>")
        Control.Monad.void (StringMaker.append stringBuffer "Solution 3: Add the JDBC driver to the WEB-INF/lib directory where you installed this webapp.<br/>")
        Control.Monad.void (StringMaker.append stringBuffer "2. The JDBC driver you specified does not exit.<br/>")
        Control.Monad.void (StringMaker.append stringBuffer "Solution: Get a JDBC driver. <br/>")
        Control.Monad.void (StringMaker.append stringBuffer "3. The JDBC driver you specified is not valid.<br/>")
        Control.Monad.void (StringMaker.append stringBuffer "Solution: Use a valid JDBC driver.<p/>")
        (StringMaker.toString stringBuffer)


