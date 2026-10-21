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
module InitializerDatabase where

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
import qualified DynamicInitDb -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified InitializerData -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Map -- java.util.Map
import qualified Set -- java.util.Set
import qualified DatabaseConnectionInfoInterface -- org.allbinary.business.init.db.DatabaseConnectionInfoInterface
import qualified DbConnectionInfo -- org.allbinary.business.init.db.DbConnectionInfo
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data InitializerDatabase = InitializerDatabase
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , adminDbUserName :: IORef (String)
    , adminDbPassword :: IORef (String)
    , adminJdbcDriver :: IORef (String)
    , adminSchema :: IORef (String)
    , adminServer :: IORef (String)
    , adminPort :: IORef (String)
    , initDb :: IORef (DynamicInitDb.DynamicInitDb)
    }

instance JavaNull InitializerDatabase where
    javaNull = javaNullRecord "InitializerDatabase"

instance JavaEquals InitializerDatabase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InitializerDatabase where
    (==) = jrecordEquals

instance JavaObjectClass InitializerDatabase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

mAXDB = 30

mAX = 16

mIN = 4

mINPASSWORD = 0

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InitializerDatabase
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    adminDbUserName <- newIORef ""
    adminDbPassword <- newIORef ""
    adminJdbcDriver <- newIORef ""
    adminSchema <- newIORef ""
    adminServer <- newIORef ""
    adminPort <- newIORef ""
    initDb <- newIORef javaNull
    let this = InitializerDatabase header_ logUtil adminDbUserName adminDbPassword adminJdbcDriver adminSchema adminServer adminPort initDb
    jregisterLevel header_ this
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "isJdbcDriverValid" (\() -> isJdbcDriverValid_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "getJdbcDriverValidationInfo" (\() -> getJdbcDriverValidationInfo_impl this)
    jregisterMethod header_ "getInvalidInfo" (\() -> getInvalidInfo_impl this)
    jregisterMethod header_ "createUsers" (\() -> createUsers_impl this)
    jregisterMethod header_ "createDatabases" (\() -> createDatabases_impl this)
    jregisterMethod header_ "createTables" (\() -> createTables_impl this)
    jregisterMethod header_ "getAdminDbUserName" (\() -> getAdminDbUserName_impl this)
    jregisterMethod header_ "setAdminDbUserName" (\() -> setAdminDbUserName_impl this)
    jregisterMethod header_ "getAdminDbPassword" (\() -> getAdminDbPassword_impl this)
    jregisterMethod header_ "setAdminDbPassword" (\() -> setAdminDbPassword_impl this)
    jregisterMethod header_ "getAdminJdbcDriver" (\() -> getAdminJdbcDriver_impl this)
    jregisterMethod header_ "setAdminJdbcDriver" (\() -> setAdminJdbcDriver_impl this)
    jregisterMethod header_ "getAdminSchema" (\() -> getAdminSchema_impl this)
    jregisterMethod header_ "setAdminSchema" (\() -> setAdminSchema_impl this)
    jregisterMethod header_ "getAdminServer" (\() -> getAdminServer_impl this)
    jregisterMethod header_ "setAdminServer" (\() -> setAdminServer_impl this)
    jregisterMethod header_ "getAdminPort" (\() -> getAdminPort_impl this)
    jregisterMethod header_ "setAdminPort" (\() -> setAdminPort_impl this)
    pure this

initFields_ :: InitializerDatabase -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.adminDbUserName ("")
    jset this.adminDbPassword ("")
    jset this.adminJdbcDriver ("")
    jset this.adminSchema ("")
    jset this.adminServer ("")
    jset this.adminPort ("")
    jset this.initDb (javaNull)
    pure ()

new_2 :: AbeClientInformationInterface.AbeClientInformationInterface -> Map.Map -> IO InitializerDatabase
new_2 abeClientInformation map = do
    this <- newRecord_
    init_2 this abeClientInformation map
    pure this

init_2 :: InitializerDatabase -> AbeClientInformationInterface.AbeClientInformationInterface -> Map.Map -> IO ()
init_2 this abeClientInformation map = do
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
        Control.Monad.void (InitializerDatabase.getFormData this abeClientInformation hashMap)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_2 :: AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> IO InitializerDatabase
new_2 abeClientInformation initHashMap = do
    this <- newRecord_
    init_2 this abeClientInformation initHashMap
    pure this

init_2 :: InitializerDatabase -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> IO ()
init_2 this abeClientInformation initHashMap = do
        initFields_ this
        Control.Monad.void (InitializerDatabase.getFormData this abeClientInformation initHashMap)
        pure ()


getFormData :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> IO (())
getFormData object_ a1 a2 = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: InitializerDatabase))) () a1 a2

getFormData_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> IO (())
getFormData_super object_ a1 a2 = (getFormData_impl (javaCast object_ :: InitializerDatabase)) a1 a2

getFormData_impl :: InitializerDatabase -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> IO (())
getFormData_impl this abeClientInformation hashMap = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Unable to get form data" this "getFormData()" e)
            ) $ do
            initializerData <- (InitializerData.getInstance)
            Control.Monad.void (InitializerDatabase.setAdminDbUserName this (javaCast (jio (HashMap.get hashMap (jget (initializerData).dBUSER))) :: String))
            Control.Monad.void (InitializerDatabase.setAdminDbPassword this (javaCast (jio (HashMap.get hashMap (jget (initializerData).dBPASSWORD))) :: String))
            Control.Monad.void (InitializerDatabase.setAdminJdbcDriver this (javaCast (jio (HashMap.get hashMap (jget (initializerData).aDMINJDBCDRIVER))) :: String))
            Control.Monad.void (InitializerDatabase.setAdminSchema this (javaCast (jio (HashMap.get hashMap (jget (initializerData).aDMINSCHEMA))) :: String))
            Control.Monad.void (InitializerDatabase.setAdminServer this (javaCast (jio (HashMap.get hashMap (jget (initializerData).aDMINSERVER))) :: String))
            Control.Monad.void (InitializerDatabase.setAdminPort this (javaCast (jio (HashMap.get hashMap (jget (initializerData).aDMINPORT))) :: String))
            dbConnectionInfo <- (DbConnectionInfo.new_)
            let adminDbName = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
            Control.Monad.void (DbConnectionInfo.setJdbcDriver dbConnectionInfo (jio (InitializerDatabase.getAdminJdbcDriver this)))
            Control.Monad.void (DbConnectionInfo.setName dbConnectionInfo adminDbName)
            Control.Monad.void (DbConnectionInfo.setUserName dbConnectionInfo (jio (InitializerDatabase.getAdminDbUserName this)))
            Control.Monad.void (DbConnectionInfo.setPassword dbConnectionInfo (jio (InitializerDatabase.getAdminDbPassword this)))
            Control.Monad.void (DbConnectionInfo.setSchema dbConnectionInfo (jio (InitializerDatabase.getAdminSchema this)))
            Control.Monad.void (DbConnectionInfo.setServer dbConnectionInfo (jio (InitializerDatabase.getAdminServer this)))
            Control.Monad.void (DbConnectionInfo.setPort dbConnectionInfo (jio (InitializerDatabase.getAdminPort this)))
            assignedValue <- (DynamicInitDb.new_2 abeClientInformation (javaCast dbConnectionInfo :: DatabaseConnectionInfoInterface.DatabaseConnectionInfoInterface))
            jset (this).initDb (assignedValue)
        pure ()


isJdbcDriverValid :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isJdbcDriverValid object_ a1 = jmethod object_ "isJdbcDriverValid" (\() -> (isJdbcDriverValid_impl (javaCast object_ :: InitializerDatabase))) () a1

isJdbcDriverValid_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isJdbcDriverValid_super object_ a1 = (isJdbcDriverValid_impl (javaCast object_ :: InitializerDatabase)) a1

isJdbcDriverValid_impl :: InitializerDatabase -> String -> IO (Bool)
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
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: InitializerDatabase))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: InitializerDatabase))

isValid_impl :: InitializerDatabase -> IO (Bool)
isValid_impl this = do
        isValid <- newIORef (True)
        when (Prelude.not (jio (InitializerDatabase.isJdbcDriverValid this (jget (this).adminJdbcDriver)))) $ do
            jset isValid (False)
        stringValidationUtil <- (StringValidationUtil.getInstance)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).adminDbUserName) (InitializerDatabase.mIN) (InitializerDatabase.mAX)))) $ do
            jset isValid (False)
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).adminDbPassword) (InitializerDatabase.mINPASSWORD) (InitializerDatabase.mAX)))) $ do
            jset isValid (False)
        pure ((jget isValid))


getJdbcDriverValidationInfo :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getJdbcDriverValidationInfo object_ a1 = jmethod object_ "getJdbcDriverValidationInfo" (\() -> (getJdbcDriverValidationInfo_impl (javaCast object_ :: InitializerDatabase))) () a1

getJdbcDriverValidationInfo_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getJdbcDriverValidationInfo_super object_ a1 = (getJdbcDriverValidationInfo_impl (javaCast object_ :: InitializerDatabase)) a1

getJdbcDriverValidationInfo_impl :: InitializerDatabase -> String -> IO (String)
getJdbcDriverValidationInfo_impl this jdbcDriver = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "The JDBC driver (")
        Control.Monad.void (StringMaker.append stringBuffer jdbcDriver)
        Control.Monad.void (StringMaker.append stringBuffer ") you have provided is not valid.<br/>")
        (StringMaker.toString stringBuffer)


getInvalidInfo :: (JavaObjectClass this_) => this_ -> IO (String)
getInvalidInfo object_ = jmethod object_ "getInvalidInfo" (\() -> (getInvalidInfo_impl (javaCast object_ :: InitializerDatabase))) ()

getInvalidInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
getInvalidInfo_super object_ = (getInvalidInfo_impl (javaCast object_ :: InitializerDatabase))

getInvalidInfo_impl :: InitializerDatabase -> IO (String)
getInvalidInfo_impl this = do
        let isValid = True
        isJdbcDriversValid <- newIORef (True)
        stringBuffer <- (StringMaker.new_)
        when (Prelude.not (jio (InitializerDatabase.isJdbcDriverValid this (jget (this).adminJdbcDriver)))) $ do
            jset isJdbcDriversValid (False)
            Control.Monad.void (StringMaker.append stringBuffer (jio (InitializerDatabase.getJdbcDriverValidationInfo this (jio (InitializerDatabase.getAdminJdbcDriver this)))))
        stringValidationUtil <- (StringValidationUtil.getInstance)
        when (Prelude.not (jio (StringValidationUtil.isValidRequired stringValidationUtil (jget (this).adminDbUserName) (InitializerDatabase.mIN) (InitializerDatabase.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("Admin username should be < " ++ javaToString InitializerDatabase.mAX) ++ " and > ") ++ javaToString InitializerDatabase.mIN) ++ " characters in length.<br />"))
        when (Prelude.not (jio (StringValidationUtil.isValidNotRequired stringValidationUtil (jget (this).adminDbPassword) (InitializerDatabase.mINPASSWORD) (InitializerDatabase.mAX)))) $ do
            Control.Monad.void (StringMaker.append stringBuffer (((("Admin password should be < " ++ javaToString InitializerDatabase.mAX) ++ " and > ") ++ javaToString InitializerDatabase.mINPASSWORD) ++ " characters in length.<br />"))
        when (Prelude.not (jget isJdbcDriversValid)) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jio (InitializerData.getJdbcDriverSolutionInfo ((jio (InitializerData.getInstance))))))
        (StringMaker.toString stringBuffer)


createUsers :: (JavaObjectClass this_) => this_ -> IO (Bool)
createUsers object_ = jmethod object_ "createUsers" (\() -> (createUsers_impl (javaCast object_ :: InitializerDatabase))) ()

createUsers_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
createUsers_super object_ = (createUsers_impl (javaCast object_ :: InitializerDatabase))

createUsers_impl :: InitializerDatabase -> IO (Bool)
createUsers_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Unable to Create Users" this "createUsers()" e)
            pure (False)
            ) $ do
            Control.Monad.void (DynamicInitDb.addUsers ((jget (this).initDb)))
            pure (True)


createDatabases :: (JavaObjectClass this_) => this_ -> IO (Bool)
createDatabases object_ = jmethod object_ "createDatabases" (\() -> (createDatabases_impl (javaCast object_ :: InitializerDatabase))) ()

createDatabases_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
createDatabases_super object_ = (createDatabases_impl (javaCast object_ :: InitializerDatabase))

createDatabases_impl :: InitializerDatabase -> IO (Bool)
createDatabases_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Unable to Create Databases" this "createDatabases()" e)
            pure (False)
            ) $ do
            Control.Monad.void (DynamicInitDb.addDatabases ((jget (this).initDb)))
            pure (True)


createTables :: (JavaObjectClass this_) => this_ -> IO (Bool)
createTables object_ = jmethod object_ "createTables" (\() -> (createTables_impl (javaCast object_ :: InitializerDatabase))) ()

createTables_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
createTables_super object_ = (createTables_impl (javaCast object_ :: InitializerDatabase))

createTables_impl :: InitializerDatabase -> IO (Bool)
createTables_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Unable to Create Tables" this "createTables()" e)
            pure (False)
            ) $ do
            Control.Monad.void (DynamicInitDb.addTables ((jget (this).initDb)))
            pure (True)


getAdminDbUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getAdminDbUserName object_ = jmethod object_ "getAdminDbUserName" (\() -> (getAdminDbUserName_impl (javaCast object_ :: InitializerDatabase))) ()

getAdminDbUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAdminDbUserName_super object_ = (getAdminDbUserName_impl (javaCast object_ :: InitializerDatabase))

getAdminDbUserName_impl :: InitializerDatabase -> IO (String)
getAdminDbUserName_impl this = do
        pure ((jget (this).adminDbUserName))


setAdminDbUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAdminDbUserName object_ a1 = jmethod object_ "setAdminDbUserName" (\() -> (setAdminDbUserName_impl (javaCast object_ :: InitializerDatabase))) () a1

setAdminDbUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAdminDbUserName_super object_ a1 = (setAdminDbUserName_impl (javaCast object_ :: InitializerDatabase)) a1

setAdminDbUserName_impl :: InitializerDatabase -> String -> IO (())
setAdminDbUserName_impl this adminDbUserName = do
        jset (this).adminDbUserName (adminDbUserName)
        pure ()


getAdminDbPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getAdminDbPassword object_ = jmethod object_ "getAdminDbPassword" (\() -> (getAdminDbPassword_impl (javaCast object_ :: InitializerDatabase))) ()

getAdminDbPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAdminDbPassword_super object_ = (getAdminDbPassword_impl (javaCast object_ :: InitializerDatabase))

getAdminDbPassword_impl :: InitializerDatabase -> IO (String)
getAdminDbPassword_impl this = do
        pure ((jget (this).adminDbPassword))


setAdminDbPassword :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAdminDbPassword object_ a1 = jmethod object_ "setAdminDbPassword" (\() -> (setAdminDbPassword_impl (javaCast object_ :: InitializerDatabase))) () a1

setAdminDbPassword_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAdminDbPassword_super object_ a1 = (setAdminDbPassword_impl (javaCast object_ :: InitializerDatabase)) a1

setAdminDbPassword_impl :: InitializerDatabase -> String -> IO (())
setAdminDbPassword_impl this adminDbPassword = do
        jset (this).adminDbPassword (adminDbPassword)
        pure ()


getAdminJdbcDriver :: (JavaObjectClass this_) => this_ -> IO (String)
getAdminJdbcDriver object_ = jmethod object_ "getAdminJdbcDriver" (\() -> (getAdminJdbcDriver_impl (javaCast object_ :: InitializerDatabase))) ()

getAdminJdbcDriver_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAdminJdbcDriver_super object_ = (getAdminJdbcDriver_impl (javaCast object_ :: InitializerDatabase))

getAdminJdbcDriver_impl :: InitializerDatabase -> IO (String)
getAdminJdbcDriver_impl this = do
        pure ((jget (this).adminJdbcDriver))


setAdminJdbcDriver :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAdminJdbcDriver object_ a1 = jmethod object_ "setAdminJdbcDriver" (\() -> (setAdminJdbcDriver_impl (javaCast object_ :: InitializerDatabase))) () a1

setAdminJdbcDriver_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAdminJdbcDriver_super object_ a1 = (setAdminJdbcDriver_impl (javaCast object_ :: InitializerDatabase)) a1

setAdminJdbcDriver_impl :: InitializerDatabase -> String -> IO (())
setAdminJdbcDriver_impl this adminJdbcDriver = do
        jset (this).adminJdbcDriver (adminJdbcDriver)
        pure ()


getAdminSchema :: (JavaObjectClass this_) => this_ -> IO (String)
getAdminSchema object_ = jmethod object_ "getAdminSchema" (\() -> (getAdminSchema_impl (javaCast object_ :: InitializerDatabase))) ()

getAdminSchema_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAdminSchema_super object_ = (getAdminSchema_impl (javaCast object_ :: InitializerDatabase))

getAdminSchema_impl :: InitializerDatabase -> IO (String)
getAdminSchema_impl this = do
        pure ((jget (this).adminSchema))


setAdminSchema :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAdminSchema object_ a1 = jmethod object_ "setAdminSchema" (\() -> (setAdminSchema_impl (javaCast object_ :: InitializerDatabase))) () a1

setAdminSchema_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAdminSchema_super object_ a1 = (setAdminSchema_impl (javaCast object_ :: InitializerDatabase)) a1

setAdminSchema_impl :: InitializerDatabase -> String -> IO (())
setAdminSchema_impl this adminSchema = do
        jset (this).adminSchema (adminSchema)
        pure ()


getAdminServer :: (JavaObjectClass this_) => this_ -> IO (String)
getAdminServer object_ = jmethod object_ "getAdminServer" (\() -> (getAdminServer_impl (javaCast object_ :: InitializerDatabase))) ()

getAdminServer_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAdminServer_super object_ = (getAdminServer_impl (javaCast object_ :: InitializerDatabase))

getAdminServer_impl :: InitializerDatabase -> IO (String)
getAdminServer_impl this = do
        pure ((jget (this).adminServer))


setAdminServer :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAdminServer object_ a1 = jmethod object_ "setAdminServer" (\() -> (setAdminServer_impl (javaCast object_ :: InitializerDatabase))) () a1

setAdminServer_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAdminServer_super object_ a1 = (setAdminServer_impl (javaCast object_ :: InitializerDatabase)) a1

setAdminServer_impl :: InitializerDatabase -> String -> IO (())
setAdminServer_impl this adminServer = do
        jset (this).adminServer (adminServer)
        pure ()


getAdminPort :: (JavaObjectClass this_) => this_ -> IO (String)
getAdminPort object_ = jmethod object_ "getAdminPort" (\() -> (getAdminPort_impl (javaCast object_ :: InitializerDatabase))) ()

getAdminPort_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAdminPort_super object_ = (getAdminPort_impl (javaCast object_ :: InitializerDatabase))

getAdminPort_impl :: InitializerDatabase -> IO (String)
getAdminPort_impl this = do
        pure ((jget (this).adminPort))


setAdminPort :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAdminPort object_ a1 = jmethod object_ "setAdminPort" (\() -> (setAdminPort_impl (javaCast object_ :: InitializerDatabase))) () a1

setAdminPort_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setAdminPort_super object_ a1 = (setAdminPort_impl (javaCast object_ :: InitializerDatabase)) a1

setAdminPort_impl :: InitializerDatabase -> String -> IO (())
setAdminPort_impl this adminPort = do
        jset (this).adminPort (adminPort)
        pure ()


