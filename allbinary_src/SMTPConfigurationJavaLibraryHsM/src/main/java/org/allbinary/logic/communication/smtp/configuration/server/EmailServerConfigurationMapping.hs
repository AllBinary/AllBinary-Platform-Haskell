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
-- package org.allbinary.logic.communication.smtp.configuration.server
module EmailServerConfigurationMapping where

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
import qualified EmailServerConfigurationInterface -- same package or java.lang
import qualified EmailServerConfigurationData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil

-- implements TableMappingInterface
data EmailServerConfigurationMapping = EmailServerConfigurationMapping
    { header_ :: JavaHeader
    , emailServerConfigurationInterface :: IORef (EmailServerConfigurationInterface.EmailServerConfigurationInterface)
    }

instance JavaNull EmailServerConfigurationMapping where
    javaNull = javaNullRecord "EmailServerConfigurationMapping"

instance JavaEquals EmailServerConfigurationMapping where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EmailServerConfigurationMapping where
    (==) = jrecordEquals

instance JavaObjectClass EmailServerConfigurationMapping where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO EmailServerConfigurationMapping
newRecord_ = do
    header_ <- newJavaHeader
    emailServerConfigurationInterface <- newIORef javaNull
    let this = EmailServerConfigurationMapping header_ emailServerConfigurationInterface
    jregisterLevel header_ this
    TableMappingInterface.registerInterface_ header_
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    pure this

initFields_ :: EmailServerConfigurationMapping -> IO ()
initFields_ this = do
    jset this.emailServerConfigurationInterface (javaNull)
    pure ()

new_1 :: EmailServerConfigurationInterface.EmailServerConfigurationInterface -> IO EmailServerConfigurationMapping
new_1 emailServerConfigurationInterface = do
    this <- newRecord_
    init_1 this emailServerConfigurationInterface
    pure this

init_1 :: EmailServerConfigurationMapping -> EmailServerConfigurationInterface.EmailServerConfigurationInterface -> IO ()
init_1 this emailServerConfigurationInterface = do
        initFields_ this
        jset (this).emailServerConfigurationInterface (emailServerConfigurationInterface)
        pure ()


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: EmailServerConfigurationMapping))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: EmailServerConfigurationMapping))

toHashMap_impl :: EmailServerConfigurationMapping -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (EmailServerConfigurationData.sERVER) (jio (EmailServerConfigurationInterface.getSmtpServer ((jget (this).emailServerConfigurationInterface)))))
        Control.Monad.void (HashMap.put hashMap (EmailServerConfigurationData.aCCOUNT) (jio (EmailServerConfigurationInterface.getAccountName ((jget (this).emailServerConfigurationInterface)))))
        Control.Monad.void (HashMap.put hashMap (EmailServerConfigurationData.pASSWORD) (jio (EmailServerConfigurationInterface.getPassword ((jget (this).emailServerConfigurationInterface)))))
        pure (hashMap)


-- throws Exception
getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: EmailServerConfigurationMapping))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: EmailServerConfigurationMapping))

getKey_impl :: EmailServerConfigurationMapping -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject EmailServerConfigurationData.nAME))


-- throws Exception
toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: EmailServerConfigurationMapping))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: EmailServerConfigurationMapping))

toVector_impl :: EmailServerConfigurationMapping -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add vector (jio (EmailServerConfigurationInterface.getSmtpServer ((jget (this).emailServerConfigurationInterface)))))
        pure (vector)


