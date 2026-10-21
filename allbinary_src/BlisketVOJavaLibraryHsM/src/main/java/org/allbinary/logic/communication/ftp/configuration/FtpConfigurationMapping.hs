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
-- package org.allbinary.logic.communication.ftp.configuration
module FtpConfigurationMapping where

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
import qualified FtpConfigurationInterface -- same package or java.lang
import qualified FtpConfigurationData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil

-- implements TableMappingInterface
data FtpConfigurationMapping = FtpConfigurationMapping
    { header_ :: JavaHeader
    , ftpConfigurationInterface :: IORef (FtpConfigurationInterface.FtpConfigurationInterface)
    }

instance JavaNull FtpConfigurationMapping where
    javaNull = javaNullRecord "FtpConfigurationMapping"

instance JavaEquals FtpConfigurationMapping where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FtpConfigurationMapping where
    (==) = jrecordEquals

instance JavaObjectClass FtpConfigurationMapping where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FtpConfigurationMapping
newRecord_ = do
    header_ <- newJavaHeader
    ftpConfigurationInterface <- newIORef javaNull
    let this = FtpConfigurationMapping header_ ftpConfigurationInterface
    jregisterLevel header_ this
    TableMappingInterface.registerInterface_ header_
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    pure this

initFields_ :: FtpConfigurationMapping -> IO ()
initFields_ this = do
    jset this.ftpConfigurationInterface (javaNull)
    pure ()

new_1 :: FtpConfigurationInterface.FtpConfigurationInterface -> IO FtpConfigurationMapping
new_1 ftpConfigurationInterface = do
    this <- newRecord_
    init_1 this ftpConfigurationInterface
    pure this

init_1 :: FtpConfigurationMapping -> FtpConfigurationInterface.FtpConfigurationInterface -> IO ()
init_1 this ftpConfigurationInterface = do
        initFields_ this
        jset (this).ftpConfigurationInterface (ftpConfigurationInterface)
        pure ()


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: FtpConfigurationMapping))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: FtpConfigurationMapping))

toHashMap_impl :: FtpConfigurationMapping -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (FtpConfigurationData.sERVER) (jio (FtpConfigurationInterface.getServer ((jget (this).ftpConfigurationInterface)))))
        Control.Monad.void (HashMap.put hashMap (FtpConfigurationData.uSERNAME) (jio (FtpConfigurationInterface.getUserName ((jget (this).ftpConfigurationInterface)))))
        Control.Monad.void (HashMap.put hashMap (FtpConfigurationData.pASSWORD) (jio (FtpConfigurationInterface.getPassword ((jget (this).ftpConfigurationInterface)))))
        Control.Monad.void (HashMap.put hashMap (FtpConfigurationData.pATH) (jio (FtpConfigurationInterface.getPath ((jget (this).ftpConfigurationInterface)))))
        pure (hashMap)


-- throws Exception
getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: FtpConfigurationMapping))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: FtpConfigurationMapping))

getKey_impl :: FtpConfigurationMapping -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject FtpConfigurationData.nAME))


-- throws Exception
toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: FtpConfigurationMapping))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: FtpConfigurationMapping))

toVector_impl :: FtpConfigurationMapping -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add vector (jio (FtpConfigurationInterface.getServer ((jget (this).ftpConfigurationInterface)))))
        Control.Monad.void (BasicArrayList.add vector (jio (FtpConfigurationInterface.getUserName ((jget (this).ftpConfigurationInterface)))))
        Control.Monad.void (BasicArrayList.add vector (jio (FtpConfigurationInterface.getPassword ((jget (this).ftpConfigurationInterface)))))
        Control.Monad.void (BasicArrayList.add vector (jio (FtpConfigurationInterface.getPath ((jget (this).ftpConfigurationInterface)))))
        pure (vector)


