{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.apache.xmlrpc
module XmlRpcClient where

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
import qualified IOException -- java.io.IOException
import qualified MalformedURLException -- java.net.MalformedURLException
import qualified URL -- java.net.URL
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified CryptInterface -- org.allbinary.init.crypt.jcehelper.CryptInterface
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified XmlRpcHandler

-- implements XmlRpcHandler
data XmlRpcClient = XmlRpcClient
    { header_ :: JavaHeader
    , url :: IORef (URL.URL)
    }

instance JavaNull XmlRpcClient where
    javaNull = javaNullRecord "XmlRpcClient"

instance JavaEquals XmlRpcClient where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq XmlRpcClient where
    (==) = jrecordEquals

instance JavaObjectClass XmlRpcClient where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO XmlRpcClient
newRecord_ = do
    header_ <- newJavaHeader
    url <- newIORef javaNull
    let this = XmlRpcClient header_ url
    jregisterLevel header_ this
    XmlRpcHandler.registerInterface_ header_
    jregisterMethod header_ "getURL" (\() -> getURL_impl this)
    jregisterMethod header_ "setBasicAuthentication" (\() -> setBasicAuthentication_impl this)
    jregisterMethod header_ "execute" (\() -> execute_impl this)
    jregisterMethod header_ "execute" (\() -> execute_impl this)
    pure this

initFields_ :: XmlRpcClient -> IO ()
initFields_ this = do
    jset this.url (javaNull)
    pure ()

new_1 :: String -> IO XmlRpcClient
new_1 url = do
    this <- newRecord_
    init_1 this url
    pure this

init_1 :: XmlRpcClient -> String -> IO ()
init_1 this url = do
        initFields_ this
        assignedValue <- (URL.new_1 url)
        jset (this).url (assignedValue)
        pure ()


getURL :: (JavaObjectClass this_) => this_ -> IO (URL.URL)
getURL object_ = jmethod object_ "getURL" (\() -> (getURL_impl (javaCast object_ :: XmlRpcClient))) ()

getURL_super :: (JavaObjectClass this_) => this_ -> IO (URL.URL)
getURL_super object_ = (getURL_impl (javaCast object_ :: XmlRpcClient))

getURL_impl :: XmlRpcClient -> IO (URL.URL)
getURL_impl this = do
        pure ((jget (this).url))


setBasicAuthentication :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setBasicAuthentication object_ a1 a2 = jmethod object_ "setBasicAuthentication" (\() -> (setBasicAuthentication_impl (javaCast object_ :: XmlRpcClient))) () a1 a2

setBasicAuthentication_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setBasicAuthentication_super object_ a1 a2 = (setBasicAuthentication_impl (javaCast object_ :: XmlRpcClient)) a1 a2

setBasicAuthentication_impl :: XmlRpcClient -> String -> String -> IO (())
setBasicAuthentication_impl this user password = do
        pure ()


-- throws XmlRpcException, IOException
execute :: (JavaObjectClass this_) => this_ -> String -> BasicArrayList.BasicArrayList -> IO (Any.Any)
execute object_ a1 a2 = jmethod object_ "execute" (\() -> (execute_impl (javaCast object_ :: XmlRpcClient))) () a1 a2

execute_super :: (JavaObjectClass this_) => this_ -> String -> BasicArrayList.BasicArrayList -> IO (Any.Any)
execute_super object_ a1 a2 = (execute_impl (javaCast object_ :: XmlRpcClient)) a1 a2

execute_impl :: XmlRpcClient -> String -> BasicArrayList.BasicArrayList -> IO (Any.Any)
execute_impl this method params = do
        pure ((jtoObject (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))


-- throws XmlRpcException, IOException
-- Java overload of execute with a different parameter count: give it a different name
execute :: (JavaObjectClass this_) => this_ -> String -> BasicArrayList.BasicArrayList -> CryptInterface.CryptInterface -> IO (Any.Any)
execute object_ a1 a2 a3 = jmethod object_ "execute" (\() -> (execute_impl (javaCast object_ :: XmlRpcClient))) () a1 a2 a3

execute_super :: (JavaObjectClass this_) => this_ -> String -> BasicArrayList.BasicArrayList -> CryptInterface.CryptInterface -> IO (Any.Any)
execute_super object_ a1 a2 a3 = (execute_impl (javaCast object_ :: XmlRpcClient)) a1 a2 a3

execute_impl :: XmlRpcClient -> String -> BasicArrayList.BasicArrayList -> CryptInterface.CryptInterface -> IO (Any.Any)
execute_impl this method params cryptInterface = do
        pure ((jtoObject (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))


