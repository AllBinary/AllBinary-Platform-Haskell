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
-- package org.allbinary.business.init.db
module DbInitInfo (module DbInitInfo, module DbConnectionInfo) where

import DbConnectionInfo hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getUrl, getUrl_super, getUrl_impl, write, write_super, write_impl, load, load_super, load_impl, setHasRead, setHasRead_super, setHasRead_impl, updateIfNeeded, updateIfNeeded_super, updateIfNeeded_impl, getName, getName_super, getName_impl, getUserName, getUserName_super, getUserName_impl, getPassword, getPassword_super, getPassword_impl, getSchema, getSchema_super, getSchema_impl, getServer, getServer_super, getServer_impl, getPort, getPort_super, getPort_impl, commonStrings, directory, httpData, gET_URL, pACKAGE, initFileName, hasRead)
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
import qualified BasicArrayList -- same package or java.lang
import qualified FREEBLISKET_PATH_GLOBALS -- org.allbinary.globals.FREEBLISKET_PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified HttpData -- org.allbinary.logic.communication.http.HttpData
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified LogConfigTypeFactory -- org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
import qualified LogConfigTypes -- org.allbinary.logic.communication.log.config.type.LogConfigTypes
import qualified AbDataInputStream -- org.allbinary.logic.io.AbDataInputStream
import qualified AbDataOutputStream -- org.allbinary.logic.io.AbDataOutputStream
import qualified AbFileInputStream -- org.allbinary.logic.io.AbFileInputStream
import qualified DataOutputStreamFactory -- org.allbinary.logic.io.DataOutputStreamFactory
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified Directory -- org.allbinary.logic.io.file.directory.Directory
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified DatabaseEncoder -- org.allbinary.logic.system.security.crypt.DatabaseEncoder
import qualified WeakCrypt -- org.allbinary.logic.system.security.crypt.WeakCrypt
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified DbConnectionInfo

data DbInitInfo = DbInitInfo
    { header_ :: JavaHeader
    , base :: DbConnectionInfo.DbConnectionInfo
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , directory :: IORef (Directory.Directory)
    , httpData :: IORef (HttpData.HttpData)
    , gET_URL :: IORef (String)
    , pACKAGE :: IORef (String)
    , initFileName :: IORef (String)
    , hasRead :: IORef (Bool)
    }

instance JavaNull DbInitInfo where
    javaNull = javaNullRecord "DbInitInfo"

instance JavaEquals DbInitInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DbInitInfo where
    (==) = jrecordEquals

instance JavaObjectClass DbInitInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DbInitInfo
newRecord_ = do
    base <- DbConnectionInfo.newRecord_
    let header_ = base.header_
    commonStrings <- newIORef javaNull
    directory <- newIORef javaNull
    httpData <- newIORef javaNull
    gET_URL <- newIORef ""
    pACKAGE <- newIORef ""
    initFileName <- newIORef ""
    hasRead <- newIORef False
    let this = DbInitInfo header_ base commonStrings directory httpData gET_URL pACKAGE initFileName hasRead
    jregisterLevel header_ this
    jregisterMethod header_ "getUrl" (\() -> getUrl_impl this)
    jregisterMethod header_ "write" (\() -> write_impl this)
    jregisterMethod header_ "load" (\() -> load_impl this)
    jregisterMethod header_ "setHasRead" (\() -> setHasRead_impl this)
    jregisterMethod header_ "updateIfNeeded" (\() -> updateIfNeeded_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getUserName" (\() -> getUserName_impl this)
    jregisterMethod header_ "getPassword" (\() -> getPassword_impl this)
    jregisterMethod header_ "getSchema" (\() -> getSchema_impl this)
    jregisterMethod header_ "getServer" (\() -> getServer_impl this)
    jregisterMethod header_ "getPort" (\() -> getPort_impl this)
    pure this

initFields_ :: DbInitInfo -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.directory =<< (Directory.getInstance)
    jset this.httpData =<< (HttpData.getInstance)
    jset this.gET_URL ("getUrl")
    jset this.pACKAGE ((jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).dBINITPATH))
    jset this.initFileName (javaNull)
    jset this.hasRead (False)
    pure ()

new_2 :: String -> Bool -> IO DbInitInfo
new_2 initFileName read = do
    this <- newRecord_
    init_2 this initFileName read
    pure this

init_2 :: DbInitInfo -> String -> Bool -> IO ()
init_2 this initFileName read = do
        DbConnectionInfo.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).initFileName (initFileName)
        if read then do
            Control.Monad.void (DbInitInfo.updateIfNeeded this)
        else do
            Control.Monad.void (DbInitInfo.setHasRead this True)
        pure ()


getUrl :: (JavaObjectClass this_) => this_ -> IO (String)
getUrl object_ = jmethod object_ "getUrl" (\() -> (getUrl_impl (javaCast object_ :: DbInitInfo))) ()

getUrl_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUrl_super object_ = (getUrl_impl (javaCast object_ :: DbInitInfo))

getUrl_impl :: DbInitInfo -> IO (String)
getUrl_impl this = do
        url <- (DbConnectionInfo.getUrl_super this.base)
        when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADER))) $ do
            Control.Monad.void (PreLogUtil.put (javaToString (jget ((jget (this).httpData)).uRL_LABEL) ++ url) this (jget this.gET_URL))
        pure (url)


-- throws Exception
write :: (JavaObjectClass this_) => this_ -> IO (())
write object_ = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: DbInitInfo))) ()

write_super :: (JavaObjectClass this_) => this_ -> IO (())
write_super object_ = (write_impl (javaCast object_ :: DbInitInfo))

write_impl :: DbInitInfo -> IO (())
write_impl this = do
        pATH <- (AbPath.new_2 (javaToString (jio (URLGLOBALS.getWebappPath)) ++ (jget (this).pACKAGE)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        Control.Monad.void (Directory.create ((jget (this).directory)) pATH)
        fILEABPATH <- (AbPath.new_2 (javaToString (jio (URLGLOBALS.getWebappPath)) ++ (jget (this).pACKAGE)) (jget (this).initFileName))
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADERERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE ("Failed Write: " ++ (jio (AbPath.toString fILEABPATH))) this "write" e)
            ) $ do
            newFile <- (AbFile.createAbFileFromAbPath fILEABPATH)
            Control.Monad.void (AbFile.createNewFile newFile)
            dataOutputStream <- (DataOutputStreamFactory.getInstanceForAbFile ((jio (DataOutputStreamFactory.getInstance))) newFile)
            flip finally (do
                Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) dataOutputStream)
                ) $ do
                let cryptedJdbcDriver = (jgetBytes (jio (WeakCrypt.encrypt ((jio (WeakCrypt.new_1 1))) (jio (DbConnectionInfo.getJdbcDriver this)))))
                let cryptedName = (jgetBytes (jio (WeakCrypt.encrypt ((jio (WeakCrypt.new_1 2))) (jio (DbInitInfo.getName this)))))
                let cryptedUserName = (jgetBytes (jio (WeakCrypt.encrypt ((jio (WeakCrypt.new_1 3))) (jio (DbInitInfo.getUserName this)))))
                let cryptedPassword = (jgetBytes (jio (WeakCrypt.encrypt ((jio (WeakCrypt.new_1 4))) (jio (DbInitInfo.getPassword this)))))
                let cryptedSchema = (jgetBytes (jio (WeakCrypt.encrypt ((jio (WeakCrypt.new_1 5))) (jio (DbInitInfo.getSchema this)))))
                let cryptedServer = (jgetBytes (jio (WeakCrypt.encrypt ((jio (WeakCrypt.new_1 6))) (jio (DbInitInfo.getServer this)))))
                let cryptedPort = (jgetBytes (jio (WeakCrypt.encrypt ((jio (WeakCrypt.new_1 7))) (jio (DbInitInfo.getPort this)))))
                Control.Monad.void (AbDataOutputStream.writeUTF dataOutputStream (jio (DatabaseEncoder.encode cryptedJdbcDriver)))
                Control.Monad.void (AbDataOutputStream.writeUTF dataOutputStream (jio (DatabaseEncoder.encode cryptedName)))
                Control.Monad.void (AbDataOutputStream.writeUTF dataOutputStream (jio (DatabaseEncoder.encode cryptedUserName)))
                Control.Monad.void (AbDataOutputStream.writeUTF dataOutputStream (jio (DatabaseEncoder.encode cryptedPassword)))
                Control.Monad.void (AbDataOutputStream.writeUTF dataOutputStream (jio (DatabaseEncoder.encode cryptedSchema)))
                Control.Monad.void (AbDataOutputStream.writeUTF dataOutputStream (jio (DatabaseEncoder.encode cryptedServer)))
                Control.Monad.void (AbDataOutputStream.writeUTF dataOutputStream (jio (DatabaseEncoder.encode cryptedPort)))
                jset (this).hasRead (False)
        pure ()


-- throws Exception
load :: (JavaObjectClass this_) => this_ -> IO (())
load object_ = jmethod object_ "load" (\() -> (load_impl (javaCast object_ :: DbInitInfo))) ()

load_super :: (JavaObjectClass this_) => this_ -> IO (())
load_super object_ = (load_impl (javaCast object_ :: DbInitInfo))

load_impl :: DbInitInfo -> IO (())
load_impl this = do
        fILEABPATH <- (AbPath.new_2 (javaToString (jio (URLGLOBALS.getWebappPath)) ++ (jget (this).pACKAGE)) (jget (this).initFileName))
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADERERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE ("Failed Loading: " ++ (jio (AbPath.toString fILEABPATH))) this (jget ((jget (this).commonStrings)).lOAD) e)
            ) $ do
            file <- (AbFile.createAbFileFromAbPath fILEABPATH)
            if (jio (AbFile.isFile file)) then do
                iFile <- (AbFileInputStream.new_1 file)
                iData <- (AbDataInputStream.new_1 iFile)
                flip finally (do
                    Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) iData)
                    ) $ do
                    decryptedJdbcDriver <- (jnewString (jio (DatabaseEncoder.decode (jio (AbDataInputStream.readUTF iData)))))
                    decryptedName <- (jnewString (jio (DatabaseEncoder.decode (jio (AbDataInputStream.readUTF iData)))))
                    decryptedUserName <- (jnewString (jio (DatabaseEncoder.decode (jio (AbDataInputStream.readUTF iData)))))
                    decryptedPassword <- (jnewString (jio (DatabaseEncoder.decode (jio (AbDataInputStream.readUTF iData)))))
                    decryptedSchema <- (jnewString (jio (DatabaseEncoder.decode (jio (AbDataInputStream.readUTF iData)))))
                    decryptedServer <- (jnewString (jio (DatabaseEncoder.decode (jio (AbDataInputStream.readUTF iData)))))
                    decryptedPort <- (jnewString (jio (DatabaseEncoder.decode (jio (AbDataInputStream.readUTF iData)))))
                    Control.Monad.void (DbConnectionInfo.setJdbcDriver this (jio (WeakCrypt.decrypt ((jio (WeakCrypt.new_1 1))) decryptedJdbcDriver)))
                    Control.Monad.void (DbConnectionInfo.setName this (jio (WeakCrypt.decrypt ((jio (WeakCrypt.new_1 2))) decryptedName)))
                    Control.Monad.void (DbConnectionInfo.setUserName this (jio (WeakCrypt.decrypt ((jio (WeakCrypt.new_1 3))) decryptedUserName)))
                    Control.Monad.void (DbConnectionInfo.setPassword this (jio (WeakCrypt.decrypt ((jio (WeakCrypt.new_1 4))) decryptedPassword)))
                    Control.Monad.void (DbConnectionInfo.setSchema this (jio (WeakCrypt.decrypt ((jio (WeakCrypt.new_1 5))) decryptedSchema)))
                    Control.Monad.void (DbConnectionInfo.setServer this (jio (WeakCrypt.decrypt ((jio (WeakCrypt.new_1 6))) decryptedServer)))
                    Control.Monad.void (DbConnectionInfo.setPort this (jio (WeakCrypt.decrypt ((jio (WeakCrypt.new_1 7))) decryptedPort)))
                    stringUtil <- (StringUtil.getInstance)
            else do
                jset (this).hasRead (False)
                when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADER))) $ do
                    Control.Monad.void (PreLogUtil.put ("Not a File - Failed Loading: " ++ (jio (AbPath.toString fILEABPATH))) this (jget ((jget (this).commonStrings)).lOAD))
        pure ()


setHasRead :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setHasRead object_ a1 = jmethod object_ "setHasRead" (\() -> (setHasRead_impl (javaCast object_ :: DbInitInfo))) () a1

setHasRead_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setHasRead_super object_ a1 = (setHasRead_impl (javaCast object_ :: DbInitInfo)) a1

setHasRead_impl :: DbInitInfo -> Bool -> IO (())
setHasRead_impl this value = do
        jset (this).hasRead (value)
        pure ()


updateIfNeeded :: (JavaObjectClass this_) => this_ -> IO (())
updateIfNeeded object_ = jmethod object_ "updateIfNeeded" (\() -> (updateIfNeeded_impl (javaCast object_ :: DbInitInfo))) ()

updateIfNeeded_super :: (JavaObjectClass this_) => this_ -> IO (())
updateIfNeeded_super object_ = (updateIfNeeded_impl (javaCast object_ :: DbInitInfo))

updateIfNeeded_impl :: DbInitInfo -> IO (())
updateIfNeeded_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADERERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE (jget ((jget (this).commonStrings)).eXCEPTION) this "updateIfNeeded" e)
            ) $ do
            when (Prelude.not (jget (this).hasRead)) $ do
                jset (this).hasRead (True)
                Control.Monad.void (DbInitInfo.load this)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: DbInitInfo))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: DbInitInfo))

getName_impl :: DbInitInfo -> IO (String)
getName_impl this = do
        Control.Monad.void (DbInitInfo.updateIfNeeded this)
        when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADER))) $ do
            Control.Monad.void (PreLogUtil.put ("Name: " ++ (jio (DbConnectionInfo.getName_super this.base))) this "getName")
        (DbConnectionInfo.getName_super this.base)


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: DbInitInfo))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: DbInitInfo))

getUserName_impl :: DbInitInfo -> IO (String)
getUserName_impl this = do
        Control.Monad.void (DbInitInfo.updateIfNeeded this)
        when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADER))) $ do
            Control.Monad.void (PreLogUtil.put ("Name: " ++ javaToString (jio (DbConnectionInfo.getUserName_super this.base))) this "getUserName")
        (DbConnectionInfo.getUserName_super this.base)


getPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword object_ = jmethod object_ "getPassword" (\() -> (getPassword_impl (javaCast object_ :: DbInitInfo))) ()

getPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPassword_super object_ = (getPassword_impl (javaCast object_ :: DbInitInfo))

getPassword_impl :: DbInitInfo -> IO (String)
getPassword_impl this = do
        Control.Monad.void (DbInitInfo.updateIfNeeded this)
        (DbConnectionInfo.getPassword_super this.base)


getSchema :: (JavaObjectClass this_) => this_ -> IO (String)
getSchema object_ = jmethod object_ "getSchema" (\() -> (getSchema_impl (javaCast object_ :: DbInitInfo))) ()

getSchema_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSchema_super object_ = (getSchema_impl (javaCast object_ :: DbInitInfo))

getSchema_impl :: DbInitInfo -> IO (String)
getSchema_impl this = do
        Control.Monad.void (DbInitInfo.updateIfNeeded this)
        (DbConnectionInfo.getSchema_super this.base)


getServer :: (JavaObjectClass this_) => this_ -> IO (String)
getServer object_ = jmethod object_ "getServer" (\() -> (getServer_impl (javaCast object_ :: DbInitInfo))) ()

getServer_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServer_super object_ = (getServer_impl (javaCast object_ :: DbInitInfo))

getServer_impl :: DbInitInfo -> IO (String)
getServer_impl this = do
        Control.Monad.void (DbInitInfo.updateIfNeeded this)
        (DbConnectionInfo.getServer_super this.base)


getPort :: (JavaObjectClass this_) => this_ -> IO (String)
getPort object_ = jmethod object_ "getPort" (\() -> (getPort_impl (javaCast object_ :: DbInitInfo))) ()

getPort_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPort_super object_ = (getPort_impl (javaCast object_ :: DbInitInfo))

getPort_impl :: DbInitInfo -> IO (String)
getPort_impl this = do
        Control.Monad.void (DbInitInfo.updateIfNeeded this)
        (DbConnectionInfo.getPort_super this.base)


