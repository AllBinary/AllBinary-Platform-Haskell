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
-- package org.allbinary.logic.communication.http.request
module RequestMapInterface where

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
data RequestMapInterface = RequestMapInterface
    { header_ :: JavaHeader
    }

instance JavaNull RequestMapInterface where
    javaNull = javaNullRecord "RequestMapInterface"

instance JavaEquals RequestMapInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RequestMapInterface where
    (==) = jrecordEquals

instance JavaObjectClass RequestMapInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> RequestMapInterface
fromHeader_ header = RequestMapInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (RequestMapInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getRequestHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getRequestHashMap object_ = jmethod object_ "getRequestHashMap" (\() -> (getRequestHashMap_impl (javaCast object_ :: RequestMapInterface))) ()

getRequestHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getRequestHashMap_super object_ = (getRequestHashMap_impl (javaCast object_ :: RequestMapInterface))

getRequestHashMap_impl :: RequestMapInterface -> IO (HashMap.HashMap)
getRequestHashMap_impl this = javaAbstractMethod "getRequestHashMap"


