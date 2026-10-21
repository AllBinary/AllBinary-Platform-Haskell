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
-- package org.allbinary.business.context.modules.storefront.statistics.users
module StoreFrontUsersStatisticsInterface (module StoreFrontUsersStatisticsInterface, module TableMappingInterface) where

import TableMappingInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getNumberOfUsers, getNumberOfUsers_super, getNumberOfUsers_impl, getNumberOfUsersByRole, getNumberOfUsersByRole_super, getNumberOfUsersByRole_impl, toString)
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
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface

-- Java interface: the classes that implement it have these functions
data StoreFrontUsersStatisticsInterface = StoreFrontUsersStatisticsInterface
    { header_ :: JavaHeader
    }

instance JavaNull StoreFrontUsersStatisticsInterface where
    javaNull = javaNullRecord "StoreFrontUsersStatisticsInterface"

instance JavaEquals StoreFrontUsersStatisticsInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontUsersStatisticsInterface where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontUsersStatisticsInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> StoreFrontUsersStatisticsInterface
fromHeader_ header = StoreFrontUsersStatisticsInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (StoreFrontUsersStatisticsInterface header)
    TableMappingInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getNumberOfUsers :: (JavaObjectClass this_) => this_ -> IO (Int64)
getNumberOfUsers object_ = jmethod object_ "getNumberOfUsers" (\() -> (getNumberOfUsers_impl (javaCast object_ :: StoreFrontUsersStatisticsInterface))) ()

getNumberOfUsers_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getNumberOfUsers_super object_ = (getNumberOfUsers_impl (javaCast object_ :: StoreFrontUsersStatisticsInterface))

getNumberOfUsers_impl :: StoreFrontUsersStatisticsInterface -> IO (Int64)
getNumberOfUsers_impl this = javaAbstractMethod "getNumberOfUsers"


getNumberOfUsersByRole :: (JavaObjectClass this_) => this_ -> String -> IO (Int64)
getNumberOfUsersByRole object_ a1 = jmethod object_ "getNumberOfUsersByRole" (\() -> (getNumberOfUsersByRole_impl (javaCast object_ :: StoreFrontUsersStatisticsInterface))) () a1

getNumberOfUsersByRole_super :: (JavaObjectClass this_) => this_ -> String -> IO (Int64)
getNumberOfUsersByRole_super object_ a1 = (getNumberOfUsersByRole_impl (javaCast object_ :: StoreFrontUsersStatisticsInterface)) a1

getNumberOfUsersByRole_impl :: StoreFrontUsersStatisticsInterface -> String -> IO (Int64)
getNumberOfUsersByRole_impl this role = javaAbstractMethod "getNumberOfUsersByRole"


