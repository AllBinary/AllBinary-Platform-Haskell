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
-- package org.allbinary.business.context.configuration
module ContextConfigurationTableMapping where

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
import qualified ContextConfigurationInterface -- same package or java.lang
import qualified ContextConfigurationData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil

-- implements TableMappingInterface
data ContextConfigurationTableMapping = ContextConfigurationTableMapping
    { header_ :: JavaHeader
    , contextConfigurationInterface :: IORef (ContextConfigurationInterface.ContextConfigurationInterface)
    }

instance JavaNull ContextConfigurationTableMapping where
    javaNull = javaNullRecord "ContextConfigurationTableMapping"

instance JavaEquals ContextConfigurationTableMapping where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ContextConfigurationTableMapping where
    (==) = jrecordEquals

instance JavaObjectClass ContextConfigurationTableMapping where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ContextConfigurationTableMapping
newRecord_ = do
    header_ <- newJavaHeader
    contextConfigurationInterface <- newIORef javaNull
    let this = ContextConfigurationTableMapping header_ contextConfigurationInterface
    jregisterLevel header_ this
    TableMappingInterface.registerInterface_ header_
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    pure this

initFields_ :: ContextConfigurationTableMapping -> IO ()
initFields_ this = do
    jset this.contextConfigurationInterface (javaNull)
    pure ()

new_1 :: ContextConfigurationInterface.ContextConfigurationInterface -> IO ContextConfigurationTableMapping
new_1 contextConfigurationInterface = do
    this <- newRecord_
    init_1 this contextConfigurationInterface
    pure this

init_1 :: ContextConfigurationTableMapping -> ContextConfigurationInterface.ContextConfigurationInterface -> IO ()
init_1 this contextConfigurationInterface = do
        initFields_ this
        jset (this).contextConfigurationInterface (contextConfigurationInterface)
        pure ()


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: ContextConfigurationTableMapping))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: ContextConfigurationTableMapping))

toHashMap_impl :: ContextConfigurationTableMapping -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        pure (hashMap)


-- throws Exception
getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: ContextConfigurationTableMapping))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: ContextConfigurationTableMapping))

getKey_impl :: ContextConfigurationTableMapping -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (jget ((jio (ContextConfigurationData.getInstance))).nAME)))


-- throws Exception
toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: ContextConfigurationTableMapping))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: ContextConfigurationTableMapping))

toVector_impl :: ContextConfigurationTableMapping -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        pure (vector)


