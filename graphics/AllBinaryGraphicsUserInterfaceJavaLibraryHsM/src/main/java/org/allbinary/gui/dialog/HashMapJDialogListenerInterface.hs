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
-- package org.allbinary.gui.dialog
module HashMapJDialogListenerInterface where

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

-- Java interface: the classes that implement it have these functions
data HashMapJDialogListenerInterface = HashMapJDialogListenerInterface
    { header_ :: JavaHeader
    }

instance JavaNull HashMapJDialogListenerInterface where
    javaNull = javaNullRecord "HashMapJDialogListenerInterface"

instance JavaEquals HashMapJDialogListenerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HashMapJDialogListenerInterface where
    (==) = jrecordEquals

instance JavaObjectClass HashMapJDialogListenerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> HashMapJDialogListenerInterface
fromHeader_ header = HashMapJDialogListenerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (HashMapJDialogListenerInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
onHashMap :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
onHashMap object_ a1 = jmethod object_ "onHashMap" (\() -> (onHashMap_impl (javaCast object_ :: HashMapJDialogListenerInterface))) () a1

onHashMap_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
onHashMap_super object_ a1 = (onHashMap_impl (javaCast object_ :: HashMapJDialogListenerInterface)) a1

onHashMap_impl :: HashMapJDialogListenerInterface -> HashMap.HashMap -> IO (())
onHashMap_impl this hashMap = javaAbstractMethod "onHashMap"


