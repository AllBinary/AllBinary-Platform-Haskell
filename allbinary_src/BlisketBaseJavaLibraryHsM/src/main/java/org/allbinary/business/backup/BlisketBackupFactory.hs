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
-- package org.allbinary.business.backup
module BlisketBackupFactory where

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
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified StoreFrontsEntity -- org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity
import qualified StoreFrontsEntityFactory -- org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory
import qualified PATH_GLOBALS -- org.allbinary.globals.PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified Directory -- org.allbinary.logic.io.file.directory.Directory
import qualified ZipFileUtil -- org.allbinary.logic.io.file.zip.ZipFileUtil
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data BlisketBackupFactory = BlisketBackupFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , stringUtil :: IORef (StringUtil.StringUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , directory :: IORef (Directory.Directory)
    }

instance JavaNull BlisketBackupFactory where
    javaNull = javaNullRecord "BlisketBackupFactory"

instance JavaEquals BlisketBackupFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BlisketBackupFactory where
    (==) = jrecordEquals

instance JavaObjectClass BlisketBackupFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BlisketBackupFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    stringUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    directory <- newIORef javaNull
    let this = BlisketBackupFactory header_ logUtil stringUtil commonStrings directory
    jregisterLevel header_ this
    jregisterMethod header_ "getFileBasicArrayList" (\() -> getFileBasicArrayList_impl this)
    jregisterMethod header_ "backup" (\() -> backup_impl this)
    jregisterMethod header_ "backupViews" (\() -> backupViews_impl this)
    jregisterMethod header_ "backupResources" (\() -> backupResources_impl this)
    jregisterMethod header_ "backupJsps" (\() -> backupJsps_impl this)
    jregisterMethod header_ "backup" (\() -> backup_impl this)
    pure this

initFields_ :: BlisketBackupFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.stringUtil =<< (StringUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.directory =<< (Directory.getInstance)
    pure ()

new_ :: IO BlisketBackupFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BlisketBackupFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BlisketBackupFactory)
getInstance = do
        pure (BlisketBackupFactory.instance_)


-- throws Exception
getFileBasicArrayList :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getFileBasicArrayList object_ a1 = jmethod object_ "getFileBasicArrayList" (\() -> (getFileBasicArrayList_impl (javaCast object_ :: BlisketBackupFactory))) () a1

getFileBasicArrayList_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getFileBasicArrayList_super object_ a1 = (getFileBasicArrayList_impl (javaCast object_ :: BlisketBackupFactory)) a1

getFileBasicArrayList_impl :: BlisketBackupFactory -> String -> IO (BasicArrayList.BasicArrayList)
getFileBasicArrayList_impl this pathString = do
        path <- (AbPath.new_2 pathString (jget ((jget (this).stringUtil)).eMPTY_STRING))
        file <- (AbFile.createAbFileFromAbPath path)
        (Directory.search ((jget (this).directory)) file True)


backup :: (JavaObjectClass this_) => this_ -> IO (())
backup object_ = jmethod object_ "backup" (\() -> (backup_impl (javaCast object_ :: BlisketBackupFactory))) ()

backup_super :: (JavaObjectClass this_) => this_ -> IO (())
backup_super object_ = (backup_impl (javaCast object_ :: BlisketBackupFactory))

backup_impl :: BlisketBackupFactory -> IO (())
backup_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "backup()" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "backup()")
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getWebappPath)))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (PATH_GLOBALS.getInstance))).bACKUP_PATH))
            backupPath <- (StringMaker.toString stringBuffer)
            path <- (AbPath.new_2 backupPath (jget ((jget (this).stringUtil)).eMPTY_STRING))
            fileBasicArrayList <- (BlisketBackupFactory.getFileBasicArrayList this backupPath)
            Control.Monad.void (BlisketBackupFactory.backup this fileBasicArrayList (javaToString (jio (AbPath.toFileSystemString path)) ++ "backup.zip"))
        pure ()


backupViews :: (JavaObjectClass this_) => this_ -> IO (())
backupViews object_ = jmethod object_ "backupViews" (\() -> (backupViews_impl (javaCast object_ :: BlisketBackupFactory))) ()

backupViews_super :: (JavaObjectClass this_) => this_ -> IO (())
backupViews_super object_ = (backupViews_impl (javaCast object_ :: BlisketBackupFactory))

backupViews_impl :: BlisketBackupFactory -> IO (())
backupViews_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "backupViews()" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "backupViews()")
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getWebappPath)))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (PATH_GLOBALS.getInstance))).bACKUP_PATH))
            backupPath <- (StringMaker.toString stringBuffer)
            path <- (AbPath.new_2 backupPath (jget ((jget (this).stringUtil)).eMPTY_STRING))
            fileBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            storeFrontsEntity <- (StoreFrontsEntityFactory.getStoreFrontsEntityInstance ((jio (StoreFrontsEntityFactory.getInstance))))
            storeFrontNamesBasicArrayList <- (StoreFrontsEntity.getStoreFrontNames storeFrontsEntity)
            size <- (BasicArrayList.size storeFrontNamesBasicArrayList)
            nextStore <- newIORef ("")
            viewsPath <- newIORef ("")
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset nextStore ((javaCast (jio (BasicArrayList.get storeFrontNamesBasicArrayList index)) :: String))
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getWebappPath)))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (PATH_GLOBALS.getInstance))).vIEWS_PATH))
                Control.Monad.void (StringMaker.append stringBuffer (jget nextStore))
                assignedValue <- (StringMaker.toString stringBuffer)
                jset viewsPath (assignedValue)
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer "Backup Store Views: ")
                Control.Monad.void (StringMaker.append stringBuffer (jget nextStore))
                Control.Monad.void (StringMaker.append stringBuffer " from: ")
                Control.Monad.void (StringMaker.append stringBuffer (jget viewsPath))
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString stringBuffer)) this "backupViews()")
                Control.Monad.void (BasicArrayList.addAllList fileBasicArrayList (jio (BlisketBackupFactory.getFileBasicArrayList this (jget viewsPath))))
            Control.Monad.void (BlisketBackupFactory.backup this fileBasicArrayList (javaToString (jio (AbPath.toFileSystemString path)) ++ "backupViews.zip"))
        pure ()


backupResources :: (JavaObjectClass this_) => this_ -> IO (())
backupResources object_ = jmethod object_ "backupResources" (\() -> (backupResources_impl (javaCast object_ :: BlisketBackupFactory))) ()

backupResources_super :: (JavaObjectClass this_) => this_ -> IO (())
backupResources_super object_ = (backupResources_impl (javaCast object_ :: BlisketBackupFactory))

backupResources_impl :: BlisketBackupFactory -> IO (())
backupResources_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "backupResources()" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "backupResources()")
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getWebappPath)))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (PATH_GLOBALS.getInstance))).bACKUP_PATH))
            backupPath <- (StringMaker.toString stringBuffer)
            path <- (AbPath.new_2 backupPath (jget ((jget (this).stringUtil)).eMPTY_STRING))
            fileBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            storeFrontsEntity <- (StoreFrontsEntityFactory.getStoreFrontsEntityInstance ((jio (StoreFrontsEntityFactory.getInstance))))
            storeFrontNamesBasicArrayList <- (StoreFrontsEntity.getStoreFrontNames storeFrontsEntity)
            size <- (BasicArrayList.size storeFrontNamesBasicArrayList)
            nextStore <- newIORef ("")
            storeFrontInterface <- newIORef (javaNull)
            resourcesPath <- newIORef ("")
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset nextStore ((javaCast (jio (BasicArrayList.get storeFrontNamesBasicArrayList index)) :: String))
                assignedValue <- (StoreFrontsEntity.getStoreFrontInterface storeFrontsEntity (jget nextStore))
                jset storeFrontInterface (assignedValue)
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getWebappPath)))
                Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getCurrentHostNamePath ((jget storeFrontInterface)))))
                Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getCategoryPath ((jget storeFrontInterface)))))
                assignedValue <- (StringMaker.toString stringBuffer)
                jset resourcesPath (assignedValue)
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer "Backup Store Resrouces: ")
                Control.Monad.void (StringMaker.append stringBuffer (jget nextStore))
                Control.Monad.void (StringMaker.append stringBuffer " from: ")
                Control.Monad.void (StringMaker.append stringBuffer (jget resourcesPath))
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString stringBuffer)) this "backupResources()")
                Control.Monad.void (BasicArrayList.addAllList fileBasicArrayList (jio (BlisketBackupFactory.getFileBasicArrayList this (jget resourcesPath))))
            Control.Monad.void (BlisketBackupFactory.backup this fileBasicArrayList (javaToString (jio (AbPath.toFileSystemString path)) ++ "backupResources.zip"))
        pure ()


backupJsps :: (JavaObjectClass this_) => this_ -> IO (())
backupJsps object_ = jmethod object_ "backupJsps" (\() -> (backupJsps_impl (javaCast object_ :: BlisketBackupFactory))) ()

backupJsps_super :: (JavaObjectClass this_) => this_ -> IO (())
backupJsps_super object_ = (backupJsps_impl (javaCast object_ :: BlisketBackupFactory))

backupJsps_impl :: BlisketBackupFactory -> IO (())
backupJsps_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "backupJsps()" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "backupJsps()")
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getWebappPath)))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (PATH_GLOBALS.getInstance))).bACKUP_PATH))
            backupPath <- (StringMaker.toString stringBuffer)
            path <- (AbPath.new_2 backupPath (jget ((jget (this).stringUtil)).eMPTY_STRING))
            fileBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            storeFrontsEntity <- (StoreFrontsEntityFactory.getStoreFrontsEntityInstance ((jio (StoreFrontsEntityFactory.getInstance))))
            storeFrontNamesBasicArrayList <- (StoreFrontsEntity.getStoreFrontNames storeFrontsEntity)
            size <- (BasicArrayList.size storeFrontNamesBasicArrayList)
            nextStore <- newIORef ("")
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset nextStore ((javaCast (jio (BasicArrayList.get storeFrontNamesBasicArrayList index)) :: String))
                Control.Monad.void (PreLogUtil.put ("Backup Store Jsps: " ++ (jget nextStore)) this "backupJsps()")
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getWebappPath)))
                Control.Monad.void (StringMaker.append stringBuffer (jget nextStore))
                Control.Monad.void (BasicArrayList.addAllList fileBasicArrayList (jio (BlisketBackupFactory.getFileBasicArrayList this (jio (StringMaker.toString stringBuffer)))))
            Control.Monad.void (BlisketBackupFactory.backup this fileBasicArrayList (javaToString (jio (AbPath.toFileSystemString path)) ++ "backupJsps.zip"))
        pure ()


-- Java overload of backup with a different parameter count: give it a different name
backup :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> String -> IO (())
backup object_ a1 a2 = jmethod object_ "backup" (\() -> (backup_impl (javaCast object_ :: BlisketBackupFactory))) () a1 a2

backup_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> String -> IO (())
backup_super object_ a1 a2 = (backup_impl (javaCast object_ :: BlisketBackupFactory)) a1 a2

backup_impl :: BlisketBackupFactory -> BasicArrayList.BasicArrayList -> String -> IO (())
backup_impl this fileBasicArrayList zipFile = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "backup()" e)
            ) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer "ZipFile: ")
            Control.Monad.void (StringMaker.append stringBuffer zipFile)
            Control.Monad.void (StringMaker.append stringBuffer " BasicArrayList: ")
            Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size fileBasicArrayList)))
            Control.Monad.void (PreLogUtil.put ("Creating Backup Zip File: " ++ (jio (StringMaker.toString stringBuffer))) this "backup()")
            Control.Monad.void (ZipFileUtil.create ((jio (ZipFileUtil.getInstance))) zipFile fileBasicArrayList)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Created Backup Zip File" this "backup()")
        pure ()


