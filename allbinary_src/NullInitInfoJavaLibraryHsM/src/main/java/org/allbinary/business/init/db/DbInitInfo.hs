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
-- package org.allbinary.business.init.db
module DbInitInfo (module DbInitInfo, module DbConnectionInfo) where

import DbConnectionInfo hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getUrl, getUrl_super, getUrl_impl, write, write_super, write_impl, load, load_super, load_impl, setHasRead, setHasRead_super, setHasRead_impl)
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
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified DbConnectionInfo

data DbInitInfo = DbInitInfo
    { header_ :: JavaHeader
    , base :: DbConnectionInfo.DbConnectionInfo
    }

instance JavaNull DbInitInfo where
    javaNull = javaNullRecord "DbInitInfo"

instance JavaEquals DbInitInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DbInitInfo where
    (==) = jrecordEquals

instance JavaObjectClass DbInitInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DbInitInfo
newRecord_ = do
    base <- DbConnectionInfo.newRecord_
    let header_ = base.header_
    let this = DbInitInfo header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getUrl" (\() -> getUrl_impl this)
    jregisterMethod header_ "write" (\() -> write_impl this)
    jregisterMethod header_ "load" (\() -> load_impl this)
    jregisterMethod header_ "setHasRead" (\() -> setHasRead_impl this)
    pure this

initFields_ :: DbInitInfo -> IO ()
initFields_ this = do
    pure ()

new_2 :: String -> Bool -> IO DbInitInfo
new_2 initFileName read = do
    this <- newRecord_
    init_2 this initFileName read
    pure this

init_2 :: DbInitInfo -> String -> Bool -> IO ()
init_2 this initFileName read = do
        DbConnectionInfo.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getUrl :: (JavaObjectClass this_) => this_ -> IO (String)
getUrl object_ = jmethod object_ "getUrl" (\() -> (getUrl_impl (javaCast object_ :: DbInitInfo))) ()

getUrl_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUrl_super object_ = (getUrl_impl (javaCast object_ :: DbInitInfo))

getUrl_impl :: DbInitInfo -> IO (String)
getUrl_impl this = do
        url <- (DbConnectionInfo.getUrl_super this.base)
        Control.Monad.void (PreLogUtil.put ("Url: " ++ url) this "getUrl")
        pure (url)


-- throws Exception
write :: (JavaObjectClass this_) => this_ -> IO (())
write object_ = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: DbInitInfo))) ()

write_super :: (JavaObjectClass this_) => this_ -> IO (())
write_super object_ = (write_impl (javaCast object_ :: DbInitInfo))

write_impl :: DbInitInfo -> IO (())
write_impl this = do
        pure ()


-- throws Exception
load :: (JavaObjectClass this_) => this_ -> IO (())
load object_ = jmethod object_ "load" (\() -> (load_impl (javaCast object_ :: DbInitInfo))) ()

load_super :: (JavaObjectClass this_) => this_ -> IO (())
load_super object_ = (load_impl (javaCast object_ :: DbInitInfo))

load_impl :: DbInitInfo -> IO (())
load_impl this = do
        pure ()


setHasRead :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setHasRead object_ a1 = jmethod object_ "setHasRead" (\() -> (setHasRead_impl (javaCast object_ :: DbInitInfo))) () a1

setHasRead_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setHasRead_super object_ a1 = (setHasRead_impl (javaCast object_ :: DbInitInfo)) a1

setHasRead_impl :: DbInitInfo -> Bool -> IO (())
setHasRead_impl this value = do
        pure ()


