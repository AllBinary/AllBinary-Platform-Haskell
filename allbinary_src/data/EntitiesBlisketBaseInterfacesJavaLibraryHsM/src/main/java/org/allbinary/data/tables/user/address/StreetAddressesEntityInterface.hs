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
-- package org.allbinary.data.tables.user.address
module StreetAddressesEntityInterface (module StreetAddressesEntityInterface, module BasicDataTableInterface) where

import BasicDataTableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, remove, remove_super, remove_impl, add, add_super, add_impl, update, update_super, update_impl, getLastId, getLastId_super, getLastId_impl, getDefault, getDefault_super, getDefault_impl, setDefault, setDefault_super, setDefault_impl, toString)
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
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress
import qualified BasicDataTableInterface -- org.allbinary.data.tables.BasicDataTableInterface

-- Java interface: the classes that implement it have these functions
data StreetAddressesEntityInterface = StreetAddressesEntityInterface
    { header_ :: JavaHeader
    }

instance JavaNull StreetAddressesEntityInterface where
    javaNull = javaNullRecord "StreetAddressesEntityInterface"

instance JavaEquals StreetAddressesEntityInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StreetAddressesEntityInterface where
    (==) = jrecordEquals

instance JavaObjectClass StreetAddressesEntityInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> StreetAddressesEntityInterface
fromHeader_ header = StreetAddressesEntityInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (StreetAddressesEntityInterface header)
    BasicDataTableInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


remove :: (JavaObjectClass this_) => this_ -> Int -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: StreetAddressesEntityInterface))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: StreetAddressesEntityInterface)) a1

remove_impl :: StreetAddressesEntityInterface -> Int -> IO (())
remove_impl this index = javaAbstractMethod "remove"


add :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: StreetAddressesEntityInterface))) () a1

add_super :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: StreetAddressesEntityInterface)) a1

add_impl :: StreetAddressesEntityInterface -> StreetAddress.StreetAddress -> IO (())
add_impl this address = javaAbstractMethod "add"


update :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: StreetAddressesEntityInterface))) () a1

update_super :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: StreetAddressesEntityInterface)) a1

update_impl :: StreetAddressesEntityInterface -> StreetAddress.StreetAddress -> IO (())
update_impl this address = javaAbstractMethod "update"


getLastId :: (JavaObjectClass this_) => this_ -> IO (String)
getLastId object_ = jmethod object_ "getLastId" (\() -> (getLastId_impl (javaCast object_ :: StreetAddressesEntityInterface))) ()

getLastId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLastId_super object_ = (getLastId_impl (javaCast object_ :: StreetAddressesEntityInterface))

getLastId_impl :: StreetAddressesEntityInterface -> IO (String)
getLastId_impl this = javaAbstractMethod "getLastId"


getDefault :: (JavaObjectClass this_) => this_ -> IO (StreetAddress.StreetAddress)
getDefault object_ = jmethod object_ "getDefault" (\() -> (getDefault_impl (javaCast object_ :: StreetAddressesEntityInterface))) ()

getDefault_super :: (JavaObjectClass this_) => this_ -> IO (StreetAddress.StreetAddress)
getDefault_super object_ = (getDefault_impl (javaCast object_ :: StreetAddressesEntityInterface))

getDefault_impl :: StreetAddressesEntityInterface -> IO (StreetAddress.StreetAddress)
getDefault_impl this = javaAbstractMethod "getDefault"


setDefault :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDefault object_ a1 = jmethod object_ "setDefault" (\() -> (setDefault_impl (javaCast object_ :: StreetAddressesEntityInterface))) () a1

setDefault_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDefault_super object_ a1 = (setDefault_impl (javaCast object_ :: StreetAddressesEntityInterface)) a1

setDefault_impl :: StreetAddressesEntityInterface -> String -> IO (())
setDefault_impl this value = javaAbstractMethod "setDefault"


