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
-- package org.allbinary.data.tables.user
module UserEntityInterface (module UserEntityInterface, module BasicDataTableInterface) where

import BasicDataTableInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAdministrators, getAdministrators_super, getAdministrators_impl, getStoreManagers, getStoreManagers_super, getStoreManagers_impl, getCustomers, getCustomers_super, getCustomers_impl, getUsersWithRole, getUsersWithRole_super, getUsersWithRole_impl, getUsers, getUsers_super, getUsers_impl, getUser, getUser_super, getUser_impl, login, login_super, login_impl, deleteWhere, deleteWhere_super, deleteWhere_impl, insert, insert_super, insert_impl, update, update_super, update_impl, toString)
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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified UserInterface -- org.allbinary.business.user.UserInterface
import qualified UserRole -- org.allbinary.business.user.role.UserRole
import qualified BasicDataTableInterface -- org.allbinary.data.tables.BasicDataTableInterface

-- Java interface: the classes that implement it have these functions
data UserEntityInterface = UserEntityInterface
    { header_ :: JavaHeader
    }

instance JavaNull UserEntityInterface where
    javaNull = javaNullRecord "UserEntityInterface"

instance JavaEquals UserEntityInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserEntityInterface where
    (==) = jrecordEquals

instance JavaObjectClass UserEntityInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> UserEntityInterface
fromHeader_ header = UserEntityInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (UserEntityInterface header)
    BasicDataTableInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getAdministrators :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAdministrators object_ = jmethod object_ "getAdministrators" (\() -> (getAdministrators_impl (javaCast object_ :: UserEntityInterface))) ()

getAdministrators_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAdministrators_super object_ = (getAdministrators_impl (javaCast object_ :: UserEntityInterface))

getAdministrators_impl :: UserEntityInterface -> IO (BasicArrayList.BasicArrayList)
getAdministrators_impl this = javaAbstractMethod "getAdministrators"


-- throws Exception
getStoreManagers :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getStoreManagers object_ a1 = jmethod object_ "getStoreManagers" (\() -> (getStoreManagers_impl (javaCast object_ :: UserEntityInterface))) () a1

getStoreManagers_super :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getStoreManagers_super object_ a1 = (getStoreManagers_impl (javaCast object_ :: UserEntityInterface)) a1

getStoreManagers_impl :: UserEntityInterface -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getStoreManagers_impl this storeFrontInterface = javaAbstractMethod "getStoreManagers"


-- throws Exception
getCustomers :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getCustomers object_ = jmethod object_ "getCustomers" (\() -> (getCustomers_impl (javaCast object_ :: UserEntityInterface))) ()

getCustomers_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getCustomers_super object_ = (getCustomers_impl (javaCast object_ :: UserEntityInterface))

getCustomers_impl :: UserEntityInterface -> IO (BasicArrayList.BasicArrayList)
getCustomers_impl this = javaAbstractMethod "getCustomers"


-- throws Exception
getUsersWithRole :: (JavaObjectClass this_) => this_ -> UserRole.UserRole -> IO (BasicArrayList.BasicArrayList)
getUsersWithRole object_ a1 = jmethod object_ "getUsersWithRole" (\() -> (getUsersWithRole_impl (javaCast object_ :: UserEntityInterface))) () a1

getUsersWithRole_super :: (JavaObjectClass this_) => this_ -> UserRole.UserRole -> IO (BasicArrayList.BasicArrayList)
getUsersWithRole_super object_ a1 = (getUsersWithRole_impl (javaCast object_ :: UserEntityInterface)) a1

getUsersWithRole_impl :: UserEntityInterface -> UserRole.UserRole -> IO (BasicArrayList.BasicArrayList)
getUsersWithRole_impl this userRole = javaAbstractMethod "getUsersWithRole"


-- throws Exception
getUsers :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getUsers object_ a1 = jmethod object_ "getUsers" (\() -> (getUsers_impl (javaCast object_ :: UserEntityInterface))) () a1

getUsers_super :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getUsers_super object_ a1 = (getUsers_impl (javaCast object_ :: UserEntityInterface)) a1

getUsers_impl :: UserEntityInterface -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getUsers_impl this storeFrontInterface = javaAbstractMethod "getUsers"


-- throws Exception
getUser :: (JavaObjectClass this_) => this_ -> String -> IO (UserInterface.UserInterface)
getUser object_ a1 = jmethod object_ "getUser" (\() -> (getUser_impl (javaCast object_ :: UserEntityInterface))) () a1

getUser_super :: (JavaObjectClass this_) => this_ -> String -> IO (UserInterface.UserInterface)
getUser_super object_ a1 = (getUser_impl (javaCast object_ :: UserEntityInterface)) a1

getUser_impl :: UserEntityInterface -> String -> IO (UserInterface.UserInterface)
getUser_impl this userName = javaAbstractMethod "getUser"


login :: (JavaObjectClass this_) => this_ -> String -> String -> IO (String)
login object_ a1 a2 = jmethod object_ "login" (\() -> (login_impl (javaCast object_ :: UserEntityInterface))) () a1 a2

login_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (String)
login_super object_ a1 a2 = (login_impl (javaCast object_ :: UserEntityInterface)) a1 a2

login_impl :: UserEntityInterface -> String -> String -> IO (String)
login_impl this userName password = javaAbstractMethod "login"


deleteWhere :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
deleteWhere object_ a1 a2 = jmethod object_ "deleteWhere" (\() -> (deleteWhere_impl (javaCast object_ :: UserEntityInterface))) () a1 a2

deleteWhere_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
deleteWhere_super object_ a1 a2 = (deleteWhere_impl (javaCast object_ :: UserEntityInterface)) a1 a2

deleteWhere_impl :: UserEntityInterface -> String -> String -> IO (())
deleteWhere_impl this key value = javaAbstractMethod "deleteWhere"


insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: UserEntityInterface))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: UserEntityInterface)) a1

insert_impl :: UserEntityInterface -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = javaAbstractMethod "insert"


update :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: UserEntityInterface))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: UserEntityInterface)) a1 a2

update_impl :: UserEntityInterface -> String -> HashMap.HashMap -> IO (())
update_impl this userName updatedValues = javaAbstractMethod "update"


