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
-- package org.allbinary.business.init
module LicenseInitInfo where

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
import qualified DebugFactory -- org.allbinary.debug.DebugFactory
import qualified NoDebug -- org.allbinary.debug.NoDebug
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data LicenseInitInfo = LicenseInitInfo
    { header_ :: JavaHeader
    , id :: IORef (String)
    , serverList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull LicenseInitInfo where
    javaNull = javaNullRecord "LicenseInitInfo"

instance JavaEquals LicenseInitInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LicenseInitInfo where
    (==) = jrecordEquals

instance JavaObjectClass LicenseInitInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LicenseInitInfo
newRecord_ = do
    header_ <- newJavaHeader
    id <- newIORef ""
    serverList <- newIORef javaNull
    let this = LicenseInitInfo header_ id serverList
    jregisterLevel header_ this
    jregisterMethod header_ "getLicenseId" (\() -> getLicenseId_impl this)
    jregisterMethod header_ "getServer" (\() -> getServer_impl this)
    jregisterMethod header_ "getNumberOfServers" (\() -> getNumberOfServers_impl this)
    jregisterMethod header_ "setLicenseId" (\() -> setLicenseId_impl this)
    jregisterMethod header_ "clearServers" (\() -> clearServers_impl this)
    jregisterMethod header_ "setServer" (\() -> setServer_impl this)
    jregisterMethod header_ "addServer" (\() -> addServer_impl this)
    jregisterMethod header_ "getServerList" (\() -> getServerList_impl this)
    jregisterMethod header_ "setServerList" (\() -> setServerList_impl this)
    pure this

initFields_ :: LicenseInitInfo -> IO ()
initFields_ this = do
    jset this.id ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.serverList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO LicenseInitInfo
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LicenseInitInfo -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getLicenseId :: (JavaObjectClass this_) => this_ -> IO (String)
getLicenseId object_ = jmethod object_ "getLicenseId" (\() -> (getLicenseId_impl (javaCast object_ :: LicenseInitInfo))) ()

getLicenseId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLicenseId_super object_ = (getLicenseId_impl (javaCast object_ :: LicenseInitInfo))

getLicenseId_impl :: LicenseInitInfo -> IO (String)
getLicenseId_impl this = do
        pure ((jget (this).id))


getServer :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
getServer object_ a1 = jmethod object_ "getServer" (\() -> (getServer_impl (javaCast object_ :: LicenseInitInfo))) () a1

getServer_super :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
getServer_super object_ a1 = (getServer_impl (javaCast object_ :: LicenseInitInfo)) a1

getServer_impl :: LicenseInitInfo -> Int -> IO (String)
getServer_impl this index = do
        pure ((javaCast (jio (BasicArrayList.get ((jget (this).serverList)) index)) :: String))


getNumberOfServers :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfServers object_ = jmethod object_ "getNumberOfServers" (\() -> (getNumberOfServers_impl (javaCast object_ :: LicenseInitInfo))) ()

getNumberOfServers_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfServers_super object_ = (getNumberOfServers_impl (javaCast object_ :: LicenseInitInfo))

getNumberOfServers_impl :: LicenseInitInfo -> IO (Int)
getNumberOfServers_impl this = do
        (BasicArrayList.size ((jget (this).serverList)))


setLicenseId :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLicenseId object_ a1 = jmethod object_ "setLicenseId" (\() -> (setLicenseId_impl (javaCast object_ :: LicenseInitInfo))) () a1

setLicenseId_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setLicenseId_super object_ a1 = (setLicenseId_impl (javaCast object_ :: LicenseInitInfo)) a1

setLicenseId_impl :: LicenseInitInfo -> String -> IO (())
setLicenseId_impl this value = do
        jset (this).id (value)
        pure ()


clearServers :: (JavaObjectClass this_) => this_ -> IO (())
clearServers object_ = jmethod object_ "clearServers" (\() -> (clearServers_impl (javaCast object_ :: LicenseInitInfo))) ()

clearServers_super :: (JavaObjectClass this_) => this_ -> IO (())
clearServers_super object_ = (clearServers_impl (javaCast object_ :: LicenseInitInfo))

clearServers_impl :: LicenseInitInfo -> IO (())
clearServers_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).serverList)))
        pure ()


setServer :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (())
setServer object_ a1 a2 = jmethod object_ "setServer" (\() -> (setServer_impl (javaCast object_ :: LicenseInitInfo))) () a1 a2

setServer_super :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (())
setServer_super object_ a1 a2 = (setServer_impl (javaCast object_ :: LicenseInitInfo)) a1 a2

setServer_impl :: LicenseInitInfo -> String -> Int -> IO (())
setServer_impl this value index = do
        Control.Monad.void (BasicArrayList.addAt ((jget (this).serverList)) index value)
        pure ()


addServer :: (JavaObjectClass this_) => this_ -> String -> IO (())
addServer object_ a1 = jmethod object_ "addServer" (\() -> (addServer_impl (javaCast object_ :: LicenseInitInfo))) () a1

addServer_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
addServer_super object_ a1 = (addServer_impl (javaCast object_ :: LicenseInitInfo)) a1

addServer_impl :: LicenseInitInfo -> String -> IO (())
addServer_impl this value = do
        Control.Monad.void (BasicArrayList.add ((jget (this).serverList)) value)
        pure ()


getServerList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getServerList object_ = jmethod object_ "getServerList" (\() -> (getServerList_impl (javaCast object_ :: LicenseInitInfo))) ()

getServerList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getServerList_super object_ = (getServerList_impl (javaCast object_ :: LicenseInitInfo))

getServerList_impl :: LicenseInitInfo -> IO (BasicArrayList.BasicArrayList)
getServerList_impl this = do
        pure ((jget (this).serverList))


setServerList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setServerList object_ a1 = jmethod object_ "setServerList" (\() -> (setServerList_impl (javaCast object_ :: LicenseInitInfo))) () a1

setServerList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setServerList_super object_ a1 = (setServerList_impl (javaCast object_ :: LicenseInitInfo)) a1

setServerList_impl :: LicenseInitInfo -> BasicArrayList.BasicArrayList -> IO (())
setServerList_impl this servers = do
        when ((jio (DebugFactory.getInstance)) == (jio (NoDebug.getInstance))) $ do
            jset (this).serverList (servers)
        pure ()


