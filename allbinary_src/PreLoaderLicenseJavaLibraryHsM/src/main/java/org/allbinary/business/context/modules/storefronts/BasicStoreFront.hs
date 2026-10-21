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
-- package org.allbinary.business.context.modules.storefronts
module BasicStoreFront where

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
import qualified HashMap -- java.util.HashMap
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserData -- org.allbinary.business.user.UserData
import qualified Tokenizer -- org.allbinary.logic.string.tokens.Tokenizer
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicStoreFrontInterface

-- implements BasicStoreFrontInterface
data BasicStoreFront = BasicStoreFront
    { header_ :: JavaHeader
    , name :: IORef (String)
    , userName :: IORef (String)
    , basketName :: IORef (String)
    , homeHostName :: IORef (String)
    , homeHostNamePath :: IORef (String)
    , hostName :: IORef (String)
    , hostNamePath :: IORef (String)
    , testHomeHostName :: IORef (String)
    , testHomeHostNamePath :: IORef (String)
    , testHostName :: IORef (String)
    , testHostNamePath :: IORef (String)
    , imagePath :: IORef (String)
    , staticPath :: IORef (String)
    , categoryPath :: IORef (String)
    , inventoryControl :: IORef (String)
    , subStores :: IORef (String)
    , tagLocation :: IORef (String)
    , packageLocation :: IORef (String)
    , ftp :: IORef (String)
    , ftpPath :: IORef (String)
    , ftpUserName :: IORef (String)
    , ftpPassword :: IORef (String)
    , testFtp :: IORef (String)
    , testFtpPath :: IORef (String)
    , testFtpUserName :: IORef (String)
    , testFtpPassword :: IORef (String)
    , timeCreated :: IORef (String)
    , lastModified :: IORef (String)
    }

instance JavaNull BasicStoreFront where
    javaNull = javaNullRecord "BasicStoreFront"

instance JavaEquals BasicStoreFront where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicStoreFront where
    (==) = jrecordEquals

instance JavaObjectClass BasicStoreFront where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicStoreFront
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    userName <- newIORef ""
    basketName <- newIORef ""
    homeHostName <- newIORef ""
    homeHostNamePath <- newIORef ""
    hostName <- newIORef ""
    hostNamePath <- newIORef ""
    testHomeHostName <- newIORef ""
    testHomeHostNamePath <- newIORef ""
    testHostName <- newIORef ""
    testHostNamePath <- newIORef ""
    imagePath <- newIORef ""
    staticPath <- newIORef ""
    categoryPath <- newIORef ""
    inventoryControl <- newIORef ""
    subStores <- newIORef ""
    tagLocation <- newIORef ""
    packageLocation <- newIORef ""
    ftp <- newIORef ""
    ftpPath <- newIORef ""
    ftpUserName <- newIORef ""
    ftpPassword <- newIORef ""
    testFtp <- newIORef ""
    testFtpPath <- newIORef ""
    testFtpUserName <- newIORef ""
    testFtpPassword <- newIORef ""
    timeCreated <- newIORef ""
    lastModified <- newIORef ""
    let this = BasicStoreFront header_ name userName basketName homeHostName homeHostNamePath hostName hostNamePath testHomeHostName testHomeHostNamePath testHostName testHostNamePath imagePath staticPath categoryPath inventoryControl subStores tagLocation packageLocation ftp ftpPath ftpUserName ftpPassword testFtp testFtpPath testFtpUserName testFtpPassword timeCreated lastModified
    jregisterLevel header_ this
    BasicStoreFrontInterface.registerInterface_ header_
    jregisterMethod header_ "getTestHtmlPath" (\() -> getTestHtmlPath_impl this)
    jregisterMethod header_ "getCurrentHostName" (\() -> getCurrentHostName_impl this)
    jregisterMethod header_ "getCurrentHostNamePath" (\() -> getCurrentHostNamePath_impl this)
    jregisterMethod header_ "getCurrentHomeHostName" (\() -> getCurrentHomeHostName_impl this)
    jregisterMethod header_ "getCurrentHomeHostNamePath" (\() -> getCurrentHomeHostNamePath_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getUserName" (\() -> getUserName_impl this)
    jregisterMethod header_ "getBasketName" (\() -> getBasketName_impl this)
    jregisterMethod header_ "getHomeHostName" (\() -> getHomeHostName_impl this)
    jregisterMethod header_ "getHomeHostNamePath" (\() -> getHomeHostNamePath_impl this)
    jregisterMethod header_ "getHostName" (\() -> getHostName_impl this)
    jregisterMethod header_ "getHostNamePath" (\() -> getHostNamePath_impl this)
    jregisterMethod header_ "getTestHomeHostName" (\() -> getTestHomeHostName_impl this)
    jregisterMethod header_ "getTestHomeHostNamePath" (\() -> getTestHomeHostNamePath_impl this)
    jregisterMethod header_ "getTestHostName" (\() -> getTestHostName_impl this)
    jregisterMethod header_ "getTestHostNamePath" (\() -> getTestHostNamePath_impl this)
    jregisterMethod header_ "getStaticPath" (\() -> getStaticPath_impl this)
    jregisterMethod header_ "getCategoryPath" (\() -> getCategoryPath_impl this)
    jregisterMethod header_ "getInventoryControl" (\() -> getInventoryControl_impl this)
    jregisterMethod header_ "getSubStores" (\() -> getSubStores_impl this)
    jregisterMethod header_ "getTagLocation" (\() -> getTagLocation_impl this)
    jregisterMethod header_ "getPackageLocation" (\() -> getPackageLocation_impl this)
    jregisterMethod header_ "getFtp" (\() -> getFtp_impl this)
    jregisterMethod header_ "getFtpUserName" (\() -> getFtpUserName_impl this)
    jregisterMethod header_ "getFtpPassword" (\() -> getFtpPassword_impl this)
    jregisterMethod header_ "getTestFtp" (\() -> getTestFtp_impl this)
    jregisterMethod header_ "getTestFtpUserName" (\() -> getTestFtpUserName_impl this)
    jregisterMethod header_ "getTestFtpPassword" (\() -> getTestFtpPassword_impl this)
    jregisterMethod header_ "getFtpPath" (\() -> getFtpPath_impl this)
    jregisterMethod header_ "getTestFtpPath" (\() -> getTestFtpPath_impl this)
    jregisterMethod header_ "getTimeCreated" (\() -> getTimeCreated_impl this)
    jregisterMethod header_ "getLastModified" (\() -> getLastModified_impl this)
    pure this

initFields_ :: BasicStoreFront -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.userName (javaNull)
    jset this.basketName (javaNull)
    jset this.homeHostName (javaNull)
    jset this.homeHostNamePath (javaNull)
    jset this.hostName (javaNull)
    jset this.hostNamePath (javaNull)
    jset this.testHomeHostName (javaNull)
    jset this.testHomeHostNamePath (javaNull)
    jset this.testHostName (javaNull)
    jset this.testHostNamePath (javaNull)
    jset this.imagePath (javaNull)
    jset this.staticPath (javaNull)
    jset this.categoryPath (javaNull)
    jset this.inventoryControl (javaNull)
    jset this.subStores (javaNull)
    jset this.tagLocation (javaNull)
    jset this.packageLocation (javaNull)
    jset this.ftp (javaNull)
    jset this.ftpPath (javaNull)
    jset this.ftpUserName (javaNull)
    jset this.ftpPassword (javaNull)
    jset this.testFtp (javaNull)
    jset this.testFtpPath (javaNull)
    jset this.testFtpUserName (javaNull)
    jset this.testFtpPassword (javaNull)
    jset this.timeCreated (javaNull)
    jset this.lastModified (javaNull)
    pure ()

new_ :: IO BasicStoreFront
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicStoreFront -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()

new_1 :: HashMap.HashMap -> IO BasicStoreFront
new_1 storeHashMap = do
    this <- newRecord_
    init_1 this storeHashMap
    pure this

init_1 :: BasicStoreFront -> HashMap.HashMap -> IO ()
init_1 this storeHashMap = do
        initFields_ this
        storeFrontData <- (StoreFrontData.getInstance)
        jset (this).name ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).nAME))) :: String))
        jset (this).userName ((javaCast (jio (HashMap.get storeHashMap (UserData.uSERNAME))) :: String))
        jset (this).basketName ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).nAME))) :: String))
        jset (this).homeHostName ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).hOMEHOSTNAME))) :: String))
        jset (this).homeHostNamePath ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).hOMEHOSTNAMEPATH))) :: String))
        jset (this).hostName ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).hOSTNAME))) :: String))
        jset (this).hostNamePath ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).hOSTNAMEPATH))) :: String))
        jset (this).testHomeHostName ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).tESTHOMEHOSTNAME))) :: String))
        jset (this).testHomeHostNamePath ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).tESTHOMEHOSTNAMEPATH))) :: String))
        jset (this).testHostName ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).tESTHOSTNAME))) :: String))
        jset (this).testHostNamePath ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).tESTHOSTNAMEPATH))) :: String))
        jset (this).imagePath ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).iMAGEPATH))) :: String))
        jset (this).staticPath ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).sTATICPATH))) :: String))
        jset (this).categoryPath ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).cATEGORYPATH))) :: String))
        jset (this).inventoryControl ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).iNVENTORYCONTROL))) :: String))
        jset (this).subStores ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).sUBSTORES))) :: String))
        jset (this).tagLocation ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).tAGLOCATION))) :: String))
        jset (this).packageLocation ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).pACKAGELOCATION))) :: String))
        jset (this).ftp ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).fTP))) :: String))
        jset (this).ftpPath ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).fTPPATH))) :: String))
        jset (this).ftpUserName ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).fTPUSERNAME))) :: String))
        jset (this).ftpPassword ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).fTPPASSWORD))) :: String))
        jset (this).testFtp ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).tESTFTP))) :: String))
        jset (this).testFtpPath ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).tESTFTPPATH))) :: String))
        jset (this).testFtpUserName ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).tESTFTPUSERNAME))) :: String))
        jset (this).testFtpPassword ((javaCast (jio (HashMap.get storeHashMap (jget (storeFrontData).tESTFTPPASSWORD))) :: String))
        jset (this).timeCreated ((javaCast (jio (HashMap.get storeHashMap (jget ((jio (EntryData.getInstance))).tIMECREATED))) :: String))
        jset (this).lastModified ((javaCast (jio (HashMap.get storeHashMap (jget ((jio (EntryData.getInstance))).lASTMODIFIED))) :: String))
        pure ()


getTestHtmlPath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHtmlPath object_ = jmethod object_ "getTestHtmlPath" (\() -> (getTestHtmlPath_impl (javaCast object_ :: BasicStoreFront))) ()

getTestHtmlPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHtmlPath_super object_ = (getTestHtmlPath_impl (javaCast object_ :: BasicStoreFront))

getTestHtmlPath_impl :: BasicStoreFront -> IO (String)
getTestHtmlPath_impl this = do
        pure (((jio (getTestHtmlPath ((jget ((jget (org.allbinary).globals)).uRLGLOBALS)))) + (jio (BasicStoreFront.getCurrentHostNamePath this))))


getCurrentHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHostName object_ = jmethod object_ "getCurrentHostName" (\() -> (getCurrentHostName_impl (javaCast object_ :: BasicStoreFront))) ()

getCurrentHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHostName_super object_ = (getCurrentHostName_impl (javaCast object_ :: BasicStoreFront))

getCurrentHostName_impl :: BasicStoreFront -> IO (String)
getCurrentHostName_impl this = do
        location <- newIORef (javaNull)
        if (jio (isTestingMode ((jget ((jget (org.allbinary).globals)).uRLGLOBALS)))) then do
            assignedValue <- (BasicStoreFront.getTestHostName this)
            jset location (assignedValue)
        else do
            assignedValue <- (BasicStoreFront.getHostName this)
            jset location (assignedValue)
        pure ((jget location))


getCurrentHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHostNamePath object_ = jmethod object_ "getCurrentHostNamePath" (\() -> (getCurrentHostNamePath_impl (javaCast object_ :: BasicStoreFront))) ()

getCurrentHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHostNamePath_super object_ = (getCurrentHostNamePath_impl (javaCast object_ :: BasicStoreFront))

getCurrentHostNamePath_impl :: BasicStoreFront -> IO (String)
getCurrentHostNamePath_impl this = do
        location <- newIORef (javaNull)
        if (jio (isTestingMode ((jget ((jget (org.allbinary).globals)).uRLGLOBALS)))) then do
            assignedValue <- (BasicStoreFront.getTestHostNamePath this)
            jset location (assignedValue)
        else do
            assignedValue <- (BasicStoreFront.getHostNamePath this)
            jset location (assignedValue)
        pure ((jget location))


getCurrentHomeHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeHostName object_ = jmethod object_ "getCurrentHomeHostName" (\() -> (getCurrentHomeHostName_impl (javaCast object_ :: BasicStoreFront))) ()

getCurrentHomeHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeHostName_super object_ = (getCurrentHomeHostName_impl (javaCast object_ :: BasicStoreFront))

getCurrentHomeHostName_impl :: BasicStoreFront -> IO (String)
getCurrentHomeHostName_impl this = do
        location <- newIORef (javaNull)
        if (jio (isTestingMode ((jget ((jget (org.allbinary).globals)).uRLGLOBALS)))) then do
            assignedValue <- (BasicStoreFront.getTestHomeHostName this)
            jset location (assignedValue)
        else do
            assignedValue <- (BasicStoreFront.getHomeHostName this)
            jset location (assignedValue)
        pure ((jget location))


getCurrentHomeHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeHostNamePath object_ = jmethod object_ "getCurrentHomeHostNamePath" (\() -> (getCurrentHomeHostNamePath_impl (javaCast object_ :: BasicStoreFront))) ()

getCurrentHomeHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeHostNamePath_super object_ = (getCurrentHomeHostNamePath_impl (javaCast object_ :: BasicStoreFront))

getCurrentHomeHostNamePath_impl :: BasicStoreFront -> IO (String)
getCurrentHomeHostNamePath_impl this = do
        location <- newIORef (javaNull)
        if (jio (isTestingMode ((jget ((jget (org.allbinary).globals)).uRLGLOBALS)))) then do
            assignedValue <- (BasicStoreFront.getTestHomeHostNamePath this)
            jset location (assignedValue)
        else do
            assignedValue <- (BasicStoreFront.getHomeHostNamePath this)
            jset location (assignedValue)
        pure ((jget location))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: BasicStoreFront))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: BasicStoreFront))

getName_impl :: BasicStoreFront -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: BasicStoreFront))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: BasicStoreFront))

getUserName_impl :: BasicStoreFront -> IO (String)
getUserName_impl this = do
        pure ((jget (this).userName))


getBasketName :: (JavaObjectClass this_) => this_ -> IO (String)
getBasketName object_ = jmethod object_ "getBasketName" (\() -> (getBasketName_impl (javaCast object_ :: BasicStoreFront))) ()

getBasketName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getBasketName_super object_ = (getBasketName_impl (javaCast object_ :: BasicStoreFront))

getBasketName_impl :: BasicStoreFront -> IO (String)
getBasketName_impl this = do
        pure ((jget (this).basketName))


getHomeHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getHomeHostName object_ = jmethod object_ "getHomeHostName" (\() -> (getHomeHostName_impl (javaCast object_ :: BasicStoreFront))) ()

getHomeHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHomeHostName_super object_ = (getHomeHostName_impl (javaCast object_ :: BasicStoreFront))

getHomeHostName_impl :: BasicStoreFront -> IO (String)
getHomeHostName_impl this = do
        pure ((jget (this).homeHostName))


getHomeHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getHomeHostNamePath object_ = jmethod object_ "getHomeHostNamePath" (\() -> (getHomeHostNamePath_impl (javaCast object_ :: BasicStoreFront))) ()

getHomeHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHomeHostNamePath_super object_ = (getHomeHostNamePath_impl (javaCast object_ :: BasicStoreFront))

getHomeHostNamePath_impl :: BasicStoreFront -> IO (String)
getHomeHostNamePath_impl this = do
        pure ((jget (this).homeHostNamePath))


getHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getHostName object_ = jmethod object_ "getHostName" (\() -> (getHostName_impl (javaCast object_ :: BasicStoreFront))) ()

getHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHostName_super object_ = (getHostName_impl (javaCast object_ :: BasicStoreFront))

getHostName_impl :: BasicStoreFront -> IO (String)
getHostName_impl this = do
        pure ((jget (this).hostName))


getHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getHostNamePath object_ = jmethod object_ "getHostNamePath" (\() -> (getHostNamePath_impl (javaCast object_ :: BasicStoreFront))) ()

getHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHostNamePath_super object_ = (getHostNamePath_impl (javaCast object_ :: BasicStoreFront))

getHostNamePath_impl :: BasicStoreFront -> IO (String)
getHostNamePath_impl this = do
        pure ((jget (this).hostNamePath))


getTestHomeHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHomeHostName object_ = jmethod object_ "getTestHomeHostName" (\() -> (getTestHomeHostName_impl (javaCast object_ :: BasicStoreFront))) ()

getTestHomeHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHomeHostName_super object_ = (getTestHomeHostName_impl (javaCast object_ :: BasicStoreFront))

getTestHomeHostName_impl :: BasicStoreFront -> IO (String)
getTestHomeHostName_impl this = do
        pure ((jget (this).testHomeHostName))


getTestHomeHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHomeHostNamePath object_ = jmethod object_ "getTestHomeHostNamePath" (\() -> (getTestHomeHostNamePath_impl (javaCast object_ :: BasicStoreFront))) ()

getTestHomeHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHomeHostNamePath_super object_ = (getTestHomeHostNamePath_impl (javaCast object_ :: BasicStoreFront))

getTestHomeHostNamePath_impl :: BasicStoreFront -> IO (String)
getTestHomeHostNamePath_impl this = do
        pure ((jget (this).testHomeHostNamePath))


getTestHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHostName object_ = jmethod object_ "getTestHostName" (\() -> (getTestHostName_impl (javaCast object_ :: BasicStoreFront))) ()

getTestHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHostName_super object_ = (getTestHostName_impl (javaCast object_ :: BasicStoreFront))

getTestHostName_impl :: BasicStoreFront -> IO (String)
getTestHostName_impl this = do
        pure ((jget (this).testHostName))


getTestHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHostNamePath object_ = jmethod object_ "getTestHostNamePath" (\() -> (getTestHostNamePath_impl (javaCast object_ :: BasicStoreFront))) ()

getTestHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHostNamePath_super object_ = (getTestHostNamePath_impl (javaCast object_ :: BasicStoreFront))

getTestHostNamePath_impl :: BasicStoreFront -> IO (String)
getTestHostNamePath_impl this = do
        pure ((jget (this).testHostNamePath))


getStaticPath :: (JavaObjectClass this_) => this_ -> IO (String)
getStaticPath object_ = jmethod object_ "getStaticPath" (\() -> (getStaticPath_impl (javaCast object_ :: BasicStoreFront))) ()

getStaticPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStaticPath_super object_ = (getStaticPath_impl (javaCast object_ :: BasicStoreFront))

getStaticPath_impl :: BasicStoreFront -> IO (String)
getStaticPath_impl this = do
        pure ((jget (this).staticPath))


getCategoryPath :: (JavaObjectClass this_) => this_ -> IO (String)
getCategoryPath object_ = jmethod object_ "getCategoryPath" (\() -> (getCategoryPath_impl (javaCast object_ :: BasicStoreFront))) ()

getCategoryPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCategoryPath_super object_ = (getCategoryPath_impl (javaCast object_ :: BasicStoreFront))

getCategoryPath_impl :: BasicStoreFront -> IO (String)
getCategoryPath_impl this = do
        pure ((jget (this).categoryPath))


getInventoryControl :: (JavaObjectClass this_) => this_ -> IO (String)
getInventoryControl object_ = jmethod object_ "getInventoryControl" (\() -> (getInventoryControl_impl (javaCast object_ :: BasicStoreFront))) ()

getInventoryControl_super :: (JavaObjectClass this_) => this_ -> IO (String)
getInventoryControl_super object_ = (getInventoryControl_impl (javaCast object_ :: BasicStoreFront))

getInventoryControl_impl :: BasicStoreFront -> IO (String)
getInventoryControl_impl this = do
        pure ((jget (this).inventoryControl))


-- throws Exception
getSubStores :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSubStores object_ = jmethod object_ "getSubStores" (\() -> (getSubStores_impl (javaCast object_ :: BasicStoreFront))) ()

getSubStores_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSubStores_super object_ = (getSubStores_impl (javaCast object_ :: BasicStoreFront))

getSubStores_impl :: BasicStoreFront -> IO (BasicArrayList.BasicArrayList)
getSubStores_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            tokenizer <- (Tokenizer.new_1 (jget ((jio (CommonSeps.getInstance))).sEMICOLON))
            subStoreVector <- (Tokenizer.getTokensFromString tokenizer (jget (this).subStores) (jio (BasicArrayListD.new_)))
            pure (subStoreVector)


getTagLocation :: (JavaObjectClass this_) => this_ -> IO (String)
getTagLocation object_ = jmethod object_ "getTagLocation" (\() -> (getTagLocation_impl (javaCast object_ :: BasicStoreFront))) ()

getTagLocation_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTagLocation_super object_ = (getTagLocation_impl (javaCast object_ :: BasicStoreFront))

getTagLocation_impl :: BasicStoreFront -> IO (String)
getTagLocation_impl this = do
        pure ((jget (this).tagLocation))


getPackageLocation :: (JavaObjectClass this_) => this_ -> IO (String)
getPackageLocation object_ = jmethod object_ "getPackageLocation" (\() -> (getPackageLocation_impl (javaCast object_ :: BasicStoreFront))) ()

getPackageLocation_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPackageLocation_super object_ = (getPackageLocation_impl (javaCast object_ :: BasicStoreFront))

getPackageLocation_impl :: BasicStoreFront -> IO (String)
getPackageLocation_impl this = do
        pure ((jget (this).packageLocation))


getFtp :: (JavaObjectClass this_) => this_ -> IO (String)
getFtp object_ = jmethod object_ "getFtp" (\() -> (getFtp_impl (javaCast object_ :: BasicStoreFront))) ()

getFtp_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFtp_super object_ = (getFtp_impl (javaCast object_ :: BasicStoreFront))

getFtp_impl :: BasicStoreFront -> IO (String)
getFtp_impl this = do
        pure ((jget (this).ftp))


getFtpUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpUserName object_ = jmethod object_ "getFtpUserName" (\() -> (getFtpUserName_impl (javaCast object_ :: BasicStoreFront))) ()

getFtpUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpUserName_super object_ = (getFtpUserName_impl (javaCast object_ :: BasicStoreFront))

getFtpUserName_impl :: BasicStoreFront -> IO (String)
getFtpUserName_impl this = do
        pure ((jget (this).ftpUserName))


getFtpPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpPassword object_ = jmethod object_ "getFtpPassword" (\() -> (getFtpPassword_impl (javaCast object_ :: BasicStoreFront))) ()

getFtpPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpPassword_super object_ = (getFtpPassword_impl (javaCast object_ :: BasicStoreFront))

getFtpPassword_impl :: BasicStoreFront -> IO (String)
getFtpPassword_impl this = do
        pure ((jget (this).ftpPassword))


getTestFtp :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtp object_ = jmethod object_ "getTestFtp" (\() -> (getTestFtp_impl (javaCast object_ :: BasicStoreFront))) ()

getTestFtp_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtp_super object_ = (getTestFtp_impl (javaCast object_ :: BasicStoreFront))

getTestFtp_impl :: BasicStoreFront -> IO (String)
getTestFtp_impl this = do
        pure ((jget (this).testFtp))


getTestFtpUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpUserName object_ = jmethod object_ "getTestFtpUserName" (\() -> (getTestFtpUserName_impl (javaCast object_ :: BasicStoreFront))) ()

getTestFtpUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpUserName_super object_ = (getTestFtpUserName_impl (javaCast object_ :: BasicStoreFront))

getTestFtpUserName_impl :: BasicStoreFront -> IO (String)
getTestFtpUserName_impl this = do
        pure ((jget (this).testFtpUserName))


getTestFtpPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpPassword object_ = jmethod object_ "getTestFtpPassword" (\() -> (getTestFtpPassword_impl (javaCast object_ :: BasicStoreFront))) ()

getTestFtpPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpPassword_super object_ = (getTestFtpPassword_impl (javaCast object_ :: BasicStoreFront))

getTestFtpPassword_impl :: BasicStoreFront -> IO (String)
getTestFtpPassword_impl this = do
        pure ((jget (this).testFtpPassword))


getFtpPath :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpPath object_ = jmethod object_ "getFtpPath" (\() -> (getFtpPath_impl (javaCast object_ :: BasicStoreFront))) ()

getFtpPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpPath_super object_ = (getFtpPath_impl (javaCast object_ :: BasicStoreFront))

getFtpPath_impl :: BasicStoreFront -> IO (String)
getFtpPath_impl this = do
        pure ((jget (this).ftpPath))


getTestFtpPath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpPath object_ = jmethod object_ "getTestFtpPath" (\() -> (getTestFtpPath_impl (javaCast object_ :: BasicStoreFront))) ()

getTestFtpPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpPath_super object_ = (getTestFtpPath_impl (javaCast object_ :: BasicStoreFront))

getTestFtpPath_impl :: BasicStoreFront -> IO (String)
getTestFtpPath_impl this = do
        pure ((jget (this).testFtpPath))


getTimeCreated :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeCreated object_ = jmethod object_ "getTimeCreated" (\() -> (getTimeCreated_impl (javaCast object_ :: BasicStoreFront))) ()

getTimeCreated_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeCreated_super object_ = (getTimeCreated_impl (javaCast object_ :: BasicStoreFront))

getTimeCreated_impl :: BasicStoreFront -> IO (String)
getTimeCreated_impl this = do
        pure ((jget (this).timeCreated))


getLastModified :: (JavaObjectClass this_) => this_ -> IO (String)
getLastModified object_ = jmethod object_ "getLastModified" (\() -> (getLastModified_impl (javaCast object_ :: BasicStoreFront))) ()

getLastModified_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLastModified_super object_ = (getLastModified_impl (javaCast object_ :: BasicStoreFront))

getLastModified_impl :: BasicStoreFront -> IO (String)
getLastModified_impl this = do
        pure ((jget (this).lastModified))


