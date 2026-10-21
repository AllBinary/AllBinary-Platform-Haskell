{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.apache.xmlrpc
module NullXmlRpcHandler where

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
import qualified Any -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified XmlRpcHandler

-- implements XmlRpcHandler
data NullXmlRpcHandler = NullXmlRpcHandler
    { header_ :: JavaHeader
    }

instance JavaNull NullXmlRpcHandler where
    javaNull = javaNullRecord "NullXmlRpcHandler"

instance JavaEquals NullXmlRpcHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullXmlRpcHandler where
    (==) = jrecordEquals

instance JavaObjectClass NullXmlRpcHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_XML_RPC_HANDLER #-}
nULL_XML_RPC_HANDLER = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullXmlRpcHandler
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullXmlRpcHandler header_
    jregisterLevel header_ this
    XmlRpcHandler.registerInterface_ header_
    jregisterMethod header_ "execute" (\() -> execute_impl this)
    pure this

initFields_ :: NullXmlRpcHandler -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullXmlRpcHandler
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullXmlRpcHandler -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
execute :: (JavaObjectClass this_) => this_ -> String -> BasicArrayList.BasicArrayList -> IO (Any.Any)
execute object_ a1 a2 = jmethod object_ "execute" (\() -> (execute_impl (javaCast object_ :: NullXmlRpcHandler))) () a1 a2

execute_super :: (JavaObjectClass this_) => this_ -> String -> BasicArrayList.BasicArrayList -> IO (Any.Any)
execute_super object_ a1 a2 = (execute_impl (javaCast object_ :: NullXmlRpcHandler)) a1 a2

execute_impl :: NullXmlRpcHandler -> String -> BasicArrayList.BasicArrayList -> IO (Any.Any)
execute_impl this method params = do
        pure ((jtoObject (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))


