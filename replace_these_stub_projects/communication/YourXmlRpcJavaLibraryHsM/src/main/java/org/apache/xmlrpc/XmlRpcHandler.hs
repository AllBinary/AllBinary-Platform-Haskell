{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.apache.xmlrpc
module XmlRpcHandler where

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

-- Java interface: the classes that implement it have these functions
data XmlRpcHandler = XmlRpcHandler
    { header_ :: JavaHeader
    }

instance JavaNull XmlRpcHandler where
    javaNull = javaNullRecord "XmlRpcHandler"

instance JavaEquals XmlRpcHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq XmlRpcHandler where
    (==) = jrecordEquals

instance JavaObjectClass XmlRpcHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> XmlRpcHandler
fromHeader_ header = XmlRpcHandler header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (XmlRpcHandler header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
execute :: (JavaObjectClass this_) => this_ -> String -> BasicArrayList.BasicArrayList -> IO (Any.Any)
execute object_ a1 a2 = jmethod object_ "execute" (\() -> (execute_impl (javaCast object_ :: XmlRpcHandler))) () a1 a2

execute_super :: (JavaObjectClass this_) => this_ -> String -> BasicArrayList.BasicArrayList -> IO (Any.Any)
execute_super object_ a1 a2 = (execute_impl (javaCast object_ :: XmlRpcHandler)) a1 a2

execute_impl :: XmlRpcHandler -> String -> BasicArrayList.BasicArrayList -> IO (Any.Any)
execute_impl this method params = javaAbstractMethod "execute"


