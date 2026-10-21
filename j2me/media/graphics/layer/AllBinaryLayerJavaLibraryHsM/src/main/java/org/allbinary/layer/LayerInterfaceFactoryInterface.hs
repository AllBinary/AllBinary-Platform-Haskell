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
-- package org.allbinary.layer
module LayerInterfaceFactoryInterface where

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
import qualified AllBinaryLayer -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified ABHashtable -- org.allbinary.util.ABHashtable

-- Java interface: the classes that implement it have these functions
data LayerInterfaceFactoryInterface = LayerInterfaceFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull LayerInterfaceFactoryInterface where
    javaNull = javaNullRecord "LayerInterfaceFactoryInterface"

instance JavaEquals LayerInterfaceFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerInterfaceFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass LayerInterfaceFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> LayerInterfaceFactoryInterface
fromHeader_ header = LayerInterfaceFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (LayerInterfaceFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getNextInstance :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> Int -> Int -> Int -> IO (AllBinaryLayer.AllBinaryLayer)
getNextInstance object_ a1 a2 a3 a4 = jmethod object_ "getNextInstance" (\() -> (getNextInstance_impl (javaCast object_ :: LayerInterfaceFactoryInterface))) () a1 a2 a3 a4

getNextInstance_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> Int -> Int -> Int -> IO (AllBinaryLayer.AllBinaryLayer)
getNextInstance_super object_ a1 a2 a3 a4 = (getNextInstance_impl (javaCast object_ :: LayerInterfaceFactoryInterface)) a1 a2 a3 a4

getNextInstance_impl :: LayerInterfaceFactoryInterface -> ABHashtable.ABHashtable -> Int -> Int -> Int -> IO (AllBinaryLayer.AllBinaryLayer)
getNextInstance_impl this hashtable x y z = javaAbstractMethod "getNextInstance"


