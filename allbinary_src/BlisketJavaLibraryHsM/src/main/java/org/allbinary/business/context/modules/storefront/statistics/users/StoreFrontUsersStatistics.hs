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
module StoreFrontUsersStatistics where

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
import qualified StoreFrontUsersStatisticsData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified UserInterface -- org.allbinary.business.user.UserInterface
import qualified UserRole -- org.allbinary.business.user.role.UserRole
import qualified UserEntityFactory -- org.allbinary.data.tables.user.UserEntityFactory
import qualified UserEntityInterface -- org.allbinary.data.tables.user.UserEntityInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StoreFrontUsersStatisticsInterface

-- implements StoreFrontUsersStatisticsInterface
data StoreFrontUsersStatistics = StoreFrontUsersStatistics
    { header_ :: JavaHeader
    , totalNumberOfUsers :: IORef (Int64)
    , totalUsersByRoleHashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull StoreFrontUsersStatistics where
    javaNull = javaNullRecord "StoreFrontUsersStatistics"

instance JavaEquals StoreFrontUsersStatistics where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontUsersStatistics where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontUsersStatistics where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontUsersStatistics
newRecord_ = do
    header_ <- newJavaHeader
    totalNumberOfUsers <- newIORef javaNull
    totalUsersByRoleHashMap <- newIORef javaNull
    let this = StoreFrontUsersStatistics header_ totalNumberOfUsers totalUsersByRoleHashMap
    jregisterLevel header_ this
    StoreFrontUsersStatisticsInterface.registerInterface_ header_
    jregisterMethod header_ "getNewTotal" (\() -> getNewTotal_impl this)
    jregisterMethod header_ "getNumberOfUsers" (\() -> getNumberOfUsers_impl this)
    jregisterMethod header_ "getNumberOfUsersByRole" (\() -> getNumberOfUsersByRole_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    pure this

initFields_ :: StoreFrontUsersStatistics -> IO ()
initFields_ this = do
    jset this.totalNumberOfUsers (javaNull)
    jset this.totalUsersByRoleHashMap (javaNull)
    pure ()

new_1 :: StoreFrontInterface.StoreFrontInterface -> IO StoreFrontUsersStatistics
new_1 storeFrontInterface = do
    this <- newRecord_
    init_1 this storeFrontInterface
    pure this

init_1 :: StoreFrontUsersStatistics -> StoreFrontInterface.StoreFrontInterface -> IO ()
init_1 this storeFrontInterface = do
        initFields_ this
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).totalUsersByRoleHashMap (assignedValue)
        userEntityInterface <- (fmap (\value_ -> javaCast value_ :: UserEntityInterface.UserEntityInterface) (UserEntityFactory.getInstance))
        userVector <- (UserEntityInterface.getCustomers userEntityInterface)
        jset (this).totalNumberOfUsers ((Prelude.fromIntegral ((jio (BasicArrayList.size userVector))) :: Int64))
        size <- (BasicArrayList.size userVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let userInterface = (javaCast (jio (BasicArrayList.get userVector index)) :: UserInterface.UserInterface)
            nextUserRole <- (UserInterface.getRole userInterface)
            currentNumberOfUsersForRole <- (StoreFrontUsersStatistics.getNewTotal this nextUserRole)
            Control.Monad.void (HashMap.put ((jget (this).totalUsersByRoleHashMap)) nextUserRole currentNumberOfUsersForRole)
        pure ()


getNewTotal :: (JavaObjectClass this_) => this_ -> UserRole.UserRole -> IO (Int64)
getNewTotal object_ a1 = jmethod object_ "getNewTotal" (\() -> (getNewTotal_impl (javaCast object_ :: StoreFrontUsersStatistics))) () a1

getNewTotal_super :: (JavaObjectClass this_) => this_ -> UserRole.UserRole -> IO (Int64)
getNewTotal_super object_ a1 = (getNewTotal_impl (javaCast object_ :: StoreFrontUsersStatistics)) a1

getNewTotal_impl :: StoreFrontUsersStatistics -> UserRole.UserRole -> IO (Int64)
getNewTotal_impl this userRole = do
        numberOfUsersForRoleLong <- newIORef ((javaCast (jio (HashMap.get ((jget (this).totalUsersByRoleHashMap)) userRole)) :: Int64))
        when ((jget numberOfUsersForRoleLong) == javaNull) $ do
            jset numberOfUsersForRoleLong ((Prelude.fromIntegral (0) :: Int64))
        pure ((Prelude.fromIntegral (((jget numberOfUsersForRoleLong) + 1)) :: Int64))


getNumberOfUsers :: (JavaObjectClass this_) => this_ -> IO (Int64)
getNumberOfUsers object_ = jmethod object_ "getNumberOfUsers" (\() -> (getNumberOfUsers_impl (javaCast object_ :: StoreFrontUsersStatistics))) ()

getNumberOfUsers_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getNumberOfUsers_super object_ = (getNumberOfUsers_impl (javaCast object_ :: StoreFrontUsersStatistics))

getNumberOfUsers_impl :: StoreFrontUsersStatistics -> IO (Int64)
getNumberOfUsers_impl this = do
        pure ((jget (this).totalNumberOfUsers))


getNumberOfUsersByRole :: (JavaObjectClass this_) => this_ -> String -> IO (Int64)
getNumberOfUsersByRole object_ a1 = jmethod object_ "getNumberOfUsersByRole" (\() -> (getNumberOfUsersByRole_impl (javaCast object_ :: StoreFrontUsersStatistics))) () a1

getNumberOfUsersByRole_super :: (JavaObjectClass this_) => this_ -> String -> IO (Int64)
getNumberOfUsersByRole_super object_ a1 = (getNumberOfUsersByRole_impl (javaCast object_ :: StoreFrontUsersStatistics)) a1

getNumberOfUsersByRole_impl :: StoreFrontUsersStatistics -> String -> IO (Int64)
getNumberOfUsersByRole_impl this role = do
        let totalForRole = (javaCast (jio (HashMap.get ((jget (this).totalUsersByRoleHashMap)) role)) :: Int64)
        pure (totalForRole)


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: StoreFrontUsersStatistics))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: StoreFrontUsersStatistics))

toHashMap_impl :: StoreFrontUsersStatistics -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (StoreFrontUsersStatisticsData.getInstance))).nUMBEROFUSERS) (javaToString (jio (StoreFrontUsersStatistics.getNumberOfUsers this))))
        setOfUserRoles <- (HashMap.keySet ((jget (this).totalUsersByRoleHashMap)))
        nextUserRole <- newIORef (javaNull)
        userRoleArray <- (Set.toArray setOfUserRoles)
        let size = (jlength userRoleArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset nextUserRole ((javaCast (jindex userRoleArray (index)) :: UserRole.UserRole))
            let totalForRole = (javaCast (jio (HashMap.get ((jget (this).totalUsersByRoleHashMap)) (jget nextUserRole))) :: Int64)
            Control.Monad.void (HashMap.put hashMap (jio (UserRole.toString ((jget nextUserRole)))) (javaToString totalForRole))
        pure (hashMap)


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: StoreFrontUsersStatistics))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: StoreFrontUsersStatistics))

toVector_impl :: StoreFrontUsersStatistics -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        pure (javaNull)


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: StoreFrontUsersStatistics))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: StoreFrontUsersStatistics))

getKey_impl :: StoreFrontUsersStatistics -> IO (Any.Any)
getKey_impl this = do
        pure (javaNull)


