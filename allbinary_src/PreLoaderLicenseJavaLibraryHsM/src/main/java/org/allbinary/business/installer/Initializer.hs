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
module Initializer where

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
import qualified Any -- same package or java.lang
import qualified InitializerData -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Map -- java.util.Map
import qualified Set -- java.util.Set
import qualified HistoryDbInitInfo -- org.allbinary.business.init.db.HistoryDbInitInfo
import qualified InventoryDbInitInfo -- org.allbinary.business.init.db.InventoryDbInitInfo
import qualified LogDbInitInfo -- org.allbinary.business.init.db.LogDbInitInfo
import qualified StaticPagesDbInitInfo -- org.allbinary.business.init.db.StaticPagesDbInitInfo
import qualified UserDbInitInfo -- org.allbinary.business.init.db.UserDbInitInfo
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data Initializer = Initializer
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , userJdbcDriver :: IORef (String)
    , userName :: IORef (String)
    , userUserName :: IORef (String)
    , userPassword :: IORef (String)
    , userSchema :: IORef (String)
    , userServer :: IORef (String)
    , userPort :: IORef (String)
    , historyJdbcDriver :: IORef (String)
    , historyName :: IORef (String)
    , historyUserName :: IORef (String)
    , historyPassword :: IORef (String)
    , historySchema :: IORef (String)
    , historyServer :: IORef (String)
    , historyPort :: IORef (String)
    , logJdbcDriver :: IORef (String)
    , logName :: IORef (String)
    , logUserName :: IORef (String)
    , logPassword :: IORef (String)
    , logSchema :: IORef (String)
    , logServer :: IORef (String)
    , logPort :: IORef (String)
    , inventoryJdbcDriver :: IORef (String)
    , inventoryName :: IORef (String)
    , inventoryUserName :: IORef (String)
    , inventoryPassword :: IORef (String)
    , inventorySchema :: IORef (String)
    , inventoryServer :: IORef (String)
    , inventoryPort :: IORef (String)
    , staticPagesJdbcDriver :: IORef (String)
    , staticPagesName :: IORef (String)
    , staticPagesUserName :: IORef (String)
    , staticPagesPassword :: IORef (String)
    , staticPagesSchema :: IORef (String)
    , staticPagesServer :: IORef (String)
    , staticPagesPort :: IORef (String)
    }

instance JavaNull Initializer where
    javaNull = javaNullRecord "Initializer"

instance JavaEquals Initializer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Initializer where
    (==) = jrecordEquals

instance JavaObjectClass Initializer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

mAXDB = 30

mAX = 16

mIN = 4

mINPASSWORD = 0

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Initializer
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    userJdbcDriver <- newIORef ""
    userName <- newIORef ""
    userUserName <- newIORef ""
    userPassword <- newIORef ""
    userSchema <- newIORef ""
    userServer <- newIORef ""
    userPort <- newIORef ""
    historyJdbcDriver <- newIORef ""
    historyName <- newIORef ""
    historyUserName <- newIORef ""
    historyPassword <- newIORef ""
    historySchema <- newIORef ""
    historyServer <- newIORef ""
    historyPort <- newIORef ""
    logJdbcDriver <- newIORef ""
    logName <- newIORef ""
    logUserName <- newIORef ""
    logPassword <- newIORef ""
    logSchema <- newIORef ""
    logServer <- newIORef ""
    logPort <- newIORef ""
    inventoryJdbcDriver <- newIORef ""
    inventoryName <- newIORef ""
    inventoryUserName <- newIORef ""
    inventoryPassword <- newIORef ""
    inventorySchema <- newIORef ""
    inventoryServer <- newIORef ""
    inventoryPort <- newIORef ""
    staticPagesJdbcDriver <- newIORef ""
    staticPagesName <- newIORef ""
    staticPagesUserName <- newIORef ""
    staticPagesPassword <- newIORef ""
    staticPagesSchema <- newIORef ""
    staticPagesServer <- newIORef ""
    staticPagesPort <- newIORef ""
    let this = Initializer header_ logUtil userJdbcDriver userName userUserName userPassword userSchema userServer userPort historyJdbcDriver historyName historyUserName historyPassword historySchema historyServer historyPort logJdbcDriver logName logUserName logPassword logSchema logServer logPort inventoryJdbcDriver inventoryName inventoryUserName inventoryPassword inventorySchema inventoryServer inventoryPort staticPagesJdbcDriver staticPagesName staticPagesUserName staticPagesPassword staticPagesSchema staticPagesServer staticPagesPort
    jregisterLevel header_ this
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "isJdbcDriverValid" (\() -> isJdbcDriverValid_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "getJdbcDriverValidationInfo" (\() -> getJdbcDriverValidationInfo_impl this)
    jregisterMethod header_ "getJdbcDriverSolutionInfo" (\() -> getJdbcDriverSolutionInfo_impl this)
    jregisterMethod header_ "getInvalidInfo" (\() -> getInvalidInfo_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    pure this

initFields_ :: Initializer -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.userJdbcDriver ("")
    jset this.userName ("")
    jset this.userUserName ("")
    jset this.userPassword ("")
    jset this.userSchema ("")
    jset this.userServer ("")
    jset this.userPort ("")
    jset this.historyJdbcDriver ("")
    jset this.historyName ("")
    jset this.historyUserName ("")
    jset this.historyPassword ("")
    jset this.historySchema ("")
    jset this.historyServer ("")
    jset this.historyPort ("")
    jset this.logJdbcDriver ("")
    jset this.logName ("")
    jset this.logUserName ("")
    jset this.logPassword ("")
    jset this.logSchema ("")
    jset this.logServer ("")
    jset this.logPort ("")
    jset this.inventoryJdbcDriver ("")
    jset this.inventoryName ("")
    jset this.inventoryUserName ("")
    jset this.inventoryPassword ("")
    jset this.inventorySchema ("")
    jset this.inventoryServer ("")
    jset this.inventoryPort ("")
    jset this.staticPagesJdbcDriver ("")
    jset this.staticPagesName ("")
    jset this.staticPagesUserName ("")
    jset this.staticPagesPassword ("")
    jset this.staticPagesSchema ("")
    jset this.staticPagesServer ("")
    jset this.staticPagesPort ("")
    pure ()

new_1 :: Map.Map -> IO Initializer
new_1 map = do
    this <- newRecord_
    init_1 this map
    pure this

init_1 :: Initializer -> Map.Map -> IO ()
init_1 this map = do
        initFields_ this
        stringBuffer <- (StringMaker.new_)
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        keys <- (Map.keySet map)
        keyArray <- (Set.toArray keys)
        let size = (jlength keyArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let key = (javaCast (jindex keyArray (index)) :: String)
            let values = (javaCast (jio (Map.get map key)) :: JavaArray (String))
            Control.Monad.void (HashMap.put hashMap (jio (jnewString key)) (jio (jnewString (jindex values (0)))))
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer "key: ")
            Control.Monad.void (StringMaker.append stringBuffer key)
            Control.Monad.void (StringMaker.append stringBuffer " Value: ")
            Control.Monad.void (StringMaker.append stringBuffer (jindex values (0)))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "getFormData()")
        Control.Monad.void (Initializer.getFormData this hashMap)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HashMap.HashMap -> IO Initializer
new_1 initHashMap = do
    this <- newRecord_
    init_1 this initHashMap
    pure this

init_1 :: Initializer -> HashMap.HashMap -> IO ()
init_1 this initHashMap = do
        initFields_ this
        Control.Monad.void (Initializer.getFormData this initHashMap)
        pure ()


getFormData :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData object_ a1 = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: Initializer))) () a1

getFormData_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
getFormData_super object_ a1 = (getFormData_impl (javaCast object_ :: Initializer)) a1

getFormData_impl :: Initializer -> HashMap.HashMap -> IO (())
getFormData_impl this hashMap = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Unable to get form data" this "getFormData()" e)
            ) $ do
            initializerData <- (InitializerData.getInstance)
            jset (this).userJdbcDriver ((javaCast (jio (HashMap.get hashMap (jget (initializerData).cUSTOMERJDBCDRIVER))) :: String))
            jset (this).userName ((javaCast (jio (HashMap.get hashMap (jget (initializerData).cUSTOMERNAME))) :: String))
            jset (this).userUserName ((javaCast (jio (HashMap.get hashMap (jget (initializerData).cUSTOMERUSERNAME))) :: String))
            jset (this).userPassword ((javaCast (jio (HashMap.get hashMap (jget (initializerData).cUSTOMERPASSWORD))) :: String))
            jset (this).userSchema ((javaCast (jio (HashMap.get hashMap (jget (initializerData).cUSTOMERSCHEMA))) :: String))
            jset (this).userServer ((javaCast (jio (HashMap.get hashMap (jget (initializerData).cUSTOMERSERVER))) :: String))
            jset (this).userPort ((javaCast (jio (HashMap.get hashMap (jget (initializerData).cUSTOMERPORT))) :: String))
            jset (this).historyJdbcDriver ((javaCast (jio (HashMap.get hashMap (jget (initializerData).hISTORYJDBCDRIVER))) :: String))
            jset (this).historyName ((javaCast (jio (HashMap.get hashMap (jget (initializerData).hISTORYNAME))) :: String))
            jset (this).historyUserName ((javaCast (jio (HashMap.get hashMap (jget (initializerData).hISTORYUSERNAME))) :: String))
            jset (this).historyPassword ((javaCast (jio (HashMap.get hashMap (jget (initializerData).hISTORYPASSWORD))) :: String))
            jset (this).historySchema ((javaCast (jio (HashMap.get hashMap (jget (initializerData).hISTORYSCHEMA))) :: String))
            jset (this).historyServer ((javaCast (jio (HashMap.get hashMap (jget (initializerData).hISTORYSERVER))) :: String))
            jset (this).historyPort ((javaCast (jio (HashMap.get hashMap (jget (initializerData).hISTORYPORT))) :: String))
            jset (this).logJdbcDriver ((javaCast (jio (HashMap.get hashMap (jget (initializerData).lOGJDBCDRIVER))) :: String))
            jset (this).logName ((javaCast (jio (HashMap.get hashMap (jget (initializerData).lOGNAME))) :: String))
            jset (this).logUserName ((javaCast (jio (HashMap.get hashMap (jget (initializerData).lOGUSERNAME))) :: String))
            jset (this).logPassword ((javaCast (jio (HashMap.get hashMap (jget (initializerData).lOGPASSWORD))) :: String))
            jset (this).logSchema ((javaCast (jio (HashMap.get hashMap (jget (initializerData).lOGSCHEMA))) :: String))
            jset (this).logServer ((javaCast (jio (HashMap.get hashMap (jget (initializerData).lOGSERVER))) :: String))
            jset (this).logPort ((javaCast (jio (HashMap.get hashMap (jget (initializerData).lOGPORT))) :: String))
            jset (this).inventoryJdbcDriver ((javaCast (jio (HashMap.get hashMap (jget (initializerData).iNVENTORYJDBCDRIVER))) :: String))
            jset (this).inventoryName ((javaCast (jio (HashMap.get hashMap (jget (initializerData).iNVENTORYNAME))) :: String))
            jset (this).inventoryUserName ((javaCast (jio (HashMap.get hashMap (jget (initializerData).iNVENTORYUSERNAME))) :: String))
            jset (this).inventoryPassword ((javaCast (jio (HashMap.get hashMap (jget (initializerData).iNVENTORYPASSWORD))) :: String))
            jset (this).inventorySchema ((javaCast (jio (HashMap.get hashMap (jget (initializerData).iNVENTORYSCHEMA))) :: String))
            jset (this).inventoryServer ((javaCast (jio (HashMap.get hashMap (jget (initializerData).iNVENTORYSERVER))) :: String))
            jset (this).inventoryPort ((javaCast (jio (HashMap.get hashMap (jget (initializerData).iNVENTORYPORT))) :: String))
            jset (this).staticPagesJdbcDriver ((javaCast (jio (HashMap.get hashMap (jget (initializerData).sTATICPAGESJDBCDRIVER))) :: String))
            jset (this).staticPagesName ((javaCast (jio (HashMap.get hashMap (jget (initializerData).sTATICPAGESNAME))) :: String))
            jset (this).staticPagesUserName ((javaCast (jio (HashMap.get hashMap (jget (initializerData).sTATICPAGESUSERNAME))) :: String))
            jset (this).staticPagesPassword ((javaCast (jio (HashMap.get hashMap (jget (initializerData).sTATICPAGESPASSWORD))) :: String))
            jset (this).staticPagesSchema ((javaCast (jio (HashMap.get hashMap (jget (initializerData).sTATICPAGESSCHEMA))) :: String))
            jset (this).staticPagesServer ((javaCast (jio (HashMap.get hashMap (jget (initializerData).sTATICPAGESSERVER))) :: String))
            jset (this).staticPagesPort ((javaCast (jio (HashMap.get hashMap (jget (initializerData).sTATICPAGESPORT))) :: String))
        pure ()


isJdbcDriverValid :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isJdbcDriverValid object_ a1 = jmethod object_ "isJdbcDriverValid" (\() -> (isJdbcDriverValid_impl (javaCast object_ :: Initializer))) () a1

isJdbcDriverValid_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isJdbcDriverValid_super object_ a1 = (isJdbcDriverValid_impl (javaCast object_ :: Initializer)) a1

isJdbcDriverValid_impl :: Initializer -> String -> IO (Bool)
isJdbcDriverValid_impl this jdbcDriverClassPathString = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRELOADERERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).iS_VALID) e)
            pure (False)
            ) $ do
            Control.Monad.void (Class.newInstance ((jio (Class.forName jdbcDriverClassPathString))))
            pure (True)


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: Initializer))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: Initializer))

isValid_impl :: Initializer -> IO (Bool)
isValid_impl this = do
        isValid <- newIORef (True)
        when (Prelude.not (jio (Initializer.isJdbcDriverValid this (jget (this).userJdbcDriver)))) $ do
            jset isValid (False)
        stringValidationUtil <- (StringValidationUtil.getInstance)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).userName) (Initializer.mIN) (Initializer.mAXDB)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).userUserName) (Initializer.mIN) (Initializer.mAX)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).userPassword) (Initializer.mINPASSWORD) (Initializer.mAX)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (Initializer.isJdbcDriverValid this (jget (this).historyJdbcDriver)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).historyName) (Initializer.mIN) (Initializer.mAXDB)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).historyUserName) (Initializer.mIN) (Initializer.mAX)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).historyPassword) (Initializer.mINPASSWORD) (Initializer.mAX)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (Initializer.isJdbcDriverValid this (jget (this).logJdbcDriver)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).logName) (Initializer.mIN) (Initializer.mAXDB)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).logUserName) (Initializer.mIN) (Initializer.mAX)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).logPassword) (Initializer.mINPASSWORD) (Initializer.mAX)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (Initializer.isJdbcDriverValid this (jget (this).inventoryJdbcDriver)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).inventoryName) (Initializer.mIN) (Initializer.mAXDB)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).inventoryUserName) (Initializer.mIN) (Initializer.mAX)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).inventoryPassword) (Initializer.mINPASSWORD) (Initializer.mAX)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (Initializer.isJdbcDriverValid this (jget (this).staticPagesJdbcDriver)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).staticPagesName) (Initializer.mIN) (Initializer.mAXDB)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).staticPagesUserName) (Initializer.mIN) (Initializer.mAX)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).staticPagesPassword) (Initializer.mINPASSWORD) (Initializer.mAX)))) $ do
            jset isValid (False)
        pure ((jget isValid))


getJdbcDriverValidationInfo :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getJdbcDriverValidationInfo object_ a1 = jmethod object_ "getJdbcDriverValidationInfo" (\() -> (getJdbcDriverValidationInfo_impl (javaCast object_ :: Initializer))) () a1

getJdbcDriverValidationInfo_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getJdbcDriverValidationInfo_super object_ a1 = (getJdbcDriverValidationInfo_impl (javaCast object_ :: Initializer)) a1

getJdbcDriverValidationInfo_impl :: Initializer -> String -> IO (String)
getJdbcDriverValidationInfo_impl this jdbcDriver = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "The JDBC driver (")
        Control.Monad.void (StringMaker.append stringBuffer jdbcDriver)
        Control.Monad.void (StringMaker.append stringBuffer ") you have provided is not valid.<br/>")
        (StringMaker.toString stringBuffer)


getJdbcDriverSolutionInfo :: (JavaObjectClass this_) => this_ -> IO (String)
getJdbcDriverSolutionInfo object_ = jmethod object_ "getJdbcDriverSolutionInfo" (\() -> (getJdbcDriverSolutionInfo_impl (javaCast object_ :: Initializer))) ()

getJdbcDriverSolutionInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
getJdbcDriverSolutionInfo_super object_ = (getJdbcDriverSolutionInfo_impl (javaCast object_ :: Initializer))

getJdbcDriverSolutionInfo_impl :: Initializer -> IO (String)
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


getInvalidInfo :: (JavaObjectClass this_) => this_ -> IO (String)
getInvalidInfo object_ = jmethod object_ "getInvalidInfo" (\() -> (getInvalidInfo_impl (javaCast object_ :: Initializer))) ()

getInvalidInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
getInvalidInfo_super object_ = (getInvalidInfo_impl (javaCast object_ :: Initializer))

getInvalidInfo_impl :: Initializer -> IO (String)
getInvalidInfo_impl this = do
        isJdbcDriversValid <- newIORef (True)
        stringBuffer <- (StringMaker.new_)
        when (Prelude.not (jio (Initializer.isJdbcDriverValid this (jget (this).userJdbcDriver)))) $ do
            jset isJdbcDriversValid (False)
            Control.Monad.void (StringMaker.append stringBuffer (jio (Initializer.getJdbcDriverValidationInfo this (jget (this).userJdbcDriver))))
        stringValidationUtil <- (StringValidationUtil.getInstance)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).userName) (Initializer.mIN) (Initializer.mAXDB)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("User db name should be < " ++ javaToString Initializer.mAXDB) ++ " and > ") ++ javaToString Initializer.mIN) ++ " characters in length.<br />"))
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).userUserName) (Initializer.mIN) (Initializer.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("User db username should be < " ++ javaToString Initializer.mAX) ++ " and > ") ++ javaToString Initializer.mIN) ++ " characters in length.<br />"))
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).userPassword) (Initializer.mINPASSWORD) (Initializer.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("User DB password should be < " ++ javaToString Initializer.mAX) ++ " and > ") ++ javaToString Initializer.mINPASSWORD) ++ " characters in length.<br />"))
        when (Prelude.not (jio (Initializer.isJdbcDriverValid this (jget (this).historyJdbcDriver)))) $ do
            jset isJdbcDriversValid (False)
            Control.Monad.void (StringMaker.append stringBuffer (jio (Initializer.getJdbcDriverValidationInfo this (jget (this).historyJdbcDriver))))
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).historyName) (Initializer.mIN) (Initializer.mAXDB)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("History db should be < " ++ javaToString Initializer.mAXDB) ++ " and > ") ++ javaToString Initializer.mIN) ++ " characters in length.<br />"))
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).historyUserName) (Initializer.mIN) (Initializer.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("History db username should be < " ++ javaToString Initializer.mAX) ++ " and > ") ++ javaToString Initializer.mIN) ++ " characters in length.<br />"))
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).historyPassword) (Initializer.mINPASSWORD) (Initializer.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("History db password should be < " ++ javaToString Initializer.mAX) ++ " and > ") ++ javaToString Initializer.mINPASSWORD) ++ " characters in length.<br />"))
        when (Prelude.not (jio (Initializer.isJdbcDriverValid this (jget (this).logJdbcDriver)))) $ do
            jset isJdbcDriversValid (False)
            Control.Monad.void (StringMaker.append stringBuffer (jio (Initializer.getJdbcDriverValidationInfo this (jget (this).logJdbcDriver))))
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).logName) (Initializer.mIN) (Initializer.mAXDB)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("Log db should be < " ++ javaToString Initializer.mAXDB) ++ " and > ") ++ javaToString Initializer.mIN) ++ " characters in length.<br />"))
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).logUserName) (Initializer.mIN) (Initializer.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("Log db username should be < " ++ javaToString Initializer.mAX) ++ " and > ") ++ javaToString Initializer.mIN) ++ " characters in length.<br />"))
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).logPassword) (Initializer.mINPASSWORD) (Initializer.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("Log db password should be < " ++ javaToString Initializer.mAX) ++ " and > ") ++ javaToString Initializer.mINPASSWORD) ++ " characters in length.<br />"))
        when (Prelude.not (jio (Initializer.isJdbcDriverValid this (jget (this).inventoryJdbcDriver)))) $ do
            jset isJdbcDriversValid (False)
            Control.Monad.void (StringMaker.append stringBuffer (jio (Initializer.getJdbcDriverValidationInfo this (jget (this).inventoryJdbcDriver))))
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).inventoryName) (Initializer.mIN) (Initializer.mAXDB)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("Inventory db should be < " ++ javaToString Initializer.mAXDB) ++ " and > ") ++ javaToString Initializer.mIN) ++ " characters in length.<br />"))
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).inventoryUserName) (Initializer.mIN) (Initializer.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("Inventory db username should be < " ++ javaToString Initializer.mAX) ++ " and > ") ++ javaToString Initializer.mIN) ++ " characters in length.<br />"))
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).inventoryPassword) (Initializer.mINPASSWORD) (Initializer.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("Inventory DB password should be < " ++ javaToString Initializer.mAX) ++ " and > ") ++ javaToString Initializer.mINPASSWORD) ++ " characters in length.<br />"))
        when (Prelude.not (jio (Initializer.isJdbcDriverValid this (jget (this).staticPagesJdbcDriver)))) $ do
            jset isJdbcDriversValid (False)
            Control.Monad.void (StringMaker.append stringBuffer (jio (Initializer.getJdbcDriverValidationInfo this (jget (this).staticPagesJdbcDriver))))
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).staticPagesName) (Initializer.mIN) (Initializer.mAXDB)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("Static Pages db should be < " ++ javaToString Initializer.mAXDB) ++ " and > ") ++ javaToString Initializer.mIN) ++ " characters in length.<br />"))
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).staticPagesUserName) (Initializer.mIN) (Initializer.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("Static Pages db username should be < " ++ javaToString Initializer.mAX) ++ " and > ") ++ javaToString Initializer.mIN) ++ " characters in length.<br />"))
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).staticPagesPassword) (Initializer.mINPASSWORD) (Initializer.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("Static Pages DB password should be < " ++ javaToString Initializer.mAX) ++ " and > ") ++ javaToString Initializer.mINPASSWORD) ++ " characters in length.<br />"))
        when (Prelude.not (jget isJdbcDriversValid)) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jio (Initializer.getJdbcDriverSolutionInfo this)))
        (StringMaker.toString stringBuffer)


-- throws Exception
set :: (JavaObjectClass this_) => this_ -> IO (())
set object_ = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: Initializer))) ()

set_super :: (JavaObjectClass this_) => this_ -> IO (())
set_super object_ = (set_impl (javaCast object_ :: Initializer))

set_impl :: Initializer -> IO (())
set_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Creating DB connection files" this "set()")
        userDbInitInfo <- (UserDbInitInfo.new_1 False)
        Control.Monad.void (UserDbInitInfo.setJdbcDriver userDbInitInfo (jget (this).userJdbcDriver))
        Control.Monad.void (UserDbInitInfo.setName userDbInitInfo (jget (this).userName))
        Control.Monad.void (UserDbInitInfo.setUserName userDbInitInfo (jget (this).userUserName))
        Control.Monad.void (UserDbInitInfo.setPassword userDbInitInfo (jget (this).userPassword))
        Control.Monad.void (UserDbInitInfo.setSchema userDbInitInfo (jget (this).userSchema))
        Control.Monad.void (UserDbInitInfo.setServer userDbInitInfo (jget (this).userServer))
        Control.Monad.void (UserDbInitInfo.setPort userDbInitInfo (jget (this).userPort))
        Control.Monad.void (UserDbInitInfo.setHasRead userDbInitInfo True)
        Control.Monad.void (UserDbInitInfo.write userDbInitInfo)
        historyDbInitInfo <- (HistoryDbInitInfo.new_1 False)
        Control.Monad.void (HistoryDbInitInfo.setJdbcDriver historyDbInitInfo (jget (this).historyJdbcDriver))
        Control.Monad.void (HistoryDbInitInfo.setName historyDbInitInfo (jget (this).historyName))
        Control.Monad.void (HistoryDbInitInfo.setUserName historyDbInitInfo (jget (this).historyUserName))
        Control.Monad.void (HistoryDbInitInfo.setPassword historyDbInitInfo (jget (this).historyPassword))
        Control.Monad.void (HistoryDbInitInfo.setSchema historyDbInitInfo (jget (this).historySchema))
        Control.Monad.void (HistoryDbInitInfo.setServer historyDbInitInfo (jget (this).historyServer))
        Control.Monad.void (HistoryDbInitInfo.setPort historyDbInitInfo (jget (this).historyPort))
        Control.Monad.void (HistoryDbInitInfo.setHasRead historyDbInitInfo True)
        Control.Monad.void (HistoryDbInitInfo.write historyDbInitInfo)
        logDbInitInfo <- (LogDbInitInfo.new_1 False)
        Control.Monad.void (LogDbInitInfo.setJdbcDriver logDbInitInfo (jget (this).logJdbcDriver))
        Control.Monad.void (LogDbInitInfo.setName logDbInitInfo (jget (this).logName))
        Control.Monad.void (LogDbInitInfo.setUserName logDbInitInfo (jget (this).logUserName))
        Control.Monad.void (LogDbInitInfo.setPassword logDbInitInfo (jget (this).logPassword))
        Control.Monad.void (LogDbInitInfo.setSchema logDbInitInfo (jget (this).logSchema))
        Control.Monad.void (LogDbInitInfo.setServer logDbInitInfo (jget (this).logServer))
        Control.Monad.void (LogDbInitInfo.setPort logDbInitInfo (jget (this).logPort))
        Control.Monad.void (LogDbInitInfo.setHasRead logDbInitInfo True)
        Control.Monad.void (LogDbInitInfo.write logDbInitInfo)
        staticPagesDbInitInfo <- (StaticPagesDbInitInfo.new_1 False)
        Control.Monad.void (StaticPagesDbInitInfo.setJdbcDriver staticPagesDbInitInfo (jget (this).staticPagesJdbcDriver))
        Control.Monad.void (StaticPagesDbInitInfo.setName staticPagesDbInitInfo (jget (this).staticPagesName))
        Control.Monad.void (StaticPagesDbInitInfo.setUserName staticPagesDbInitInfo (jget (this).staticPagesUserName))
        Control.Monad.void (StaticPagesDbInitInfo.setPassword staticPagesDbInitInfo (jget (this).staticPagesPassword))
        Control.Monad.void (StaticPagesDbInitInfo.setSchema staticPagesDbInitInfo (jget (this).staticPagesSchema))
        Control.Monad.void (StaticPagesDbInitInfo.setServer staticPagesDbInitInfo (jget (this).staticPagesServer))
        Control.Monad.void (StaticPagesDbInitInfo.setPort staticPagesDbInitInfo (jget (this).staticPagesPort))
        Control.Monad.void (StaticPagesDbInitInfo.setHasRead staticPagesDbInitInfo True)
        Control.Monad.void (StaticPagesDbInitInfo.write staticPagesDbInitInfo)
        inventoryDbInitInfo <- (InventoryDbInitInfo.new_1 False)
        Control.Monad.void (InventoryDbInitInfo.setJdbcDriver inventoryDbInitInfo (jget (this).inventoryJdbcDriver))
        Control.Monad.void (InventoryDbInitInfo.setName inventoryDbInitInfo (jget (this).inventoryName))
        Control.Monad.void (InventoryDbInitInfo.setUserName inventoryDbInitInfo (jget (this).inventoryUserName))
        Control.Monad.void (InventoryDbInitInfo.setPassword inventoryDbInitInfo (jget (this).inventoryPassword))
        Control.Monad.void (InventoryDbInitInfo.setSchema inventoryDbInitInfo (jget (this).inventorySchema))
        Control.Monad.void (InventoryDbInitInfo.setServer inventoryDbInitInfo (jget (this).inventoryServer))
        Control.Monad.void (InventoryDbInitInfo.setPort inventoryDbInitInfo (jget (this).inventoryPort))
        Control.Monad.void (InventoryDbInitInfo.setHasRead inventoryDbInitInfo True)
        Control.Monad.void (InventoryDbInitInfo.write inventoryDbInitInfo)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Created DB connection files" this "set()")
        pure ()


