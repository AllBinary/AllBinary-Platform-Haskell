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
-- package org.allbinary.logic.communication.smtp.configuration.user.event
module UserEmailEventsConfigurationMapping where

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
import qualified UserEmailEventsConfigurationInterface -- same package or java.lang
import qualified UserEmailEventsConfigurationData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil

-- implements TableMappingInterface
data UserEmailEventsConfigurationMapping = UserEmailEventsConfigurationMapping
    { header_ :: JavaHeader
    , userEmailEventsConfigurationInterface :: IORef (UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface)
    }

instance JavaNull UserEmailEventsConfigurationMapping where
    javaNull = javaNullRecord "UserEmailEventsConfigurationMapping"

instance JavaEquals UserEmailEventsConfigurationMapping where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserEmailEventsConfigurationMapping where
    (==) = jrecordEquals

instance JavaObjectClass UserEmailEventsConfigurationMapping where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserEmailEventsConfigurationMapping
newRecord_ = do
    header_ <- newJavaHeader
    userEmailEventsConfigurationInterface <- newIORef javaNull
    let this = UserEmailEventsConfigurationMapping header_ userEmailEventsConfigurationInterface
    jregisterLevel header_ this
    TableMappingInterface.registerInterface_ header_
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    pure this

initFields_ :: UserEmailEventsConfigurationMapping -> IO ()
initFields_ this = do
    jset this.userEmailEventsConfigurationInterface (javaNull)
    pure ()

new_1 :: UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface -> IO UserEmailEventsConfigurationMapping
new_1 userEmailEventsConfigurationInterface = do
    this <- newRecord_
    init_1 this userEmailEventsConfigurationInterface
    pure this

init_1 :: UserEmailEventsConfigurationMapping -> UserEmailEventsConfigurationInterface.UserEmailEventsConfigurationInterface -> IO ()
init_1 this userEmailEventsConfigurationInterface = do
        initFields_ this
        jset (this).userEmailEventsConfigurationInterface (userEmailEventsConfigurationInterface)
        pure ()


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: UserEmailEventsConfigurationMapping))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: UserEmailEventsConfigurationMapping))

toHashMap_impl :: UserEmailEventsConfigurationMapping -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        pure (hashMap)


-- throws Exception
getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: UserEmailEventsConfigurationMapping))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: UserEmailEventsConfigurationMapping))

getKey_impl :: UserEmailEventsConfigurationMapping -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject UserEmailEventsConfigurationData.nAME))


-- throws Exception
toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: UserEmailEventsConfigurationMapping))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: UserEmailEventsConfigurationMapping))

toVector_impl :: UserEmailEventsConfigurationMapping -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        pure (vector)


