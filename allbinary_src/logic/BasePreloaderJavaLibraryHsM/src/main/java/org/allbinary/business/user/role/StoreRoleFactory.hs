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
-- package org.allbinary.business.user.role
module StoreRoleFactory where

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
import qualified BasicUserRoleFactory -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data StoreRoleFactory = StoreRoleFactory
    { header_ :: JavaHeader
    , roles :: IORef (BasicArrayList.BasicArrayList)
    , subscriberRoles :: IORef (BasicArrayList.BasicArrayList)
    , wholesaleRoles :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull StoreRoleFactory where
    javaNull = javaNullRecord "StoreRoleFactory"

instance JavaEquals StoreRoleFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreRoleFactory where
    (==) = jrecordEquals

instance JavaObjectClass StoreRoleFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreRoleFactory
newRecord_ = do
    header_ <- newJavaHeader
    roles <- newIORef javaNull
    subscriberRoles <- newIORef javaNull
    wholesaleRoles <- newIORef javaNull
    let this = StoreRoleFactory header_ roles subscriberRoles wholesaleRoles
    jregisterLevel header_ this
    jregisterMethod header_ "getRoles" (\() -> getRoles_impl this)
    jregisterMethod header_ "getSubscriberRoles" (\() -> getSubscriberRoles_impl this)
    jregisterMethod header_ "getWholesaleRoles" (\() -> getWholesaleRoles_impl this)
    pure this

initFields_ :: StoreRoleFactory -> IO ()
initFields_ this = do
    jset this.roles =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.subscriberRoles =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.wholesaleRoles =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()


getInstance :: IO (StoreRoleFactory)
getInstance = do
        pure (StoreRoleFactory.instance_)

new_ :: IO StoreRoleFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreRoleFactory -> IO ()
init_ this = do
        initFields_ this
        basicUserRoleFactory <- (BasicUserRoleFactory.getInstance)
        Control.Monad.void (BasicArrayList.add ((jget (this).roles)) (jget (basicUserRoleFactory).cUSTOMER))
        Control.Monad.void (BasicArrayList.add ((jget (this).roles)) (jget (basicUserRoleFactory).sUBSCRIBERCUSTOMER))
        Control.Monad.void (BasicArrayList.add ((jget (this).roles)) (jget (basicUserRoleFactory).wHOLESALECUSTOMER))
        Control.Monad.void (BasicArrayList.add ((jget (this).subscriberRoles)) (jget (basicUserRoleFactory).sUBSCRIBERCUSTOMER))
        Control.Monad.void (BasicArrayList.add ((jget (this).wholesaleRoles)) (jget (basicUserRoleFactory).wHOLESALECUSTOMER))
        pure ()


getRoles :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getRoles object_ = jmethod object_ "getRoles" (\() -> (getRoles_impl (javaCast object_ :: StoreRoleFactory))) ()

getRoles_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getRoles_super object_ = (getRoles_impl (javaCast object_ :: StoreRoleFactory))

getRoles_impl :: StoreRoleFactory -> IO (BasicArrayList.BasicArrayList)
getRoles_impl this = do
        pure ((jget (this).roles))


getSubscriberRoles :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSubscriberRoles object_ = jmethod object_ "getSubscriberRoles" (\() -> (getSubscriberRoles_impl (javaCast object_ :: StoreRoleFactory))) ()

getSubscriberRoles_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSubscriberRoles_super object_ = (getSubscriberRoles_impl (javaCast object_ :: StoreRoleFactory))

getSubscriberRoles_impl :: StoreRoleFactory -> IO (BasicArrayList.BasicArrayList)
getSubscriberRoles_impl this = do
        pure ((jget (this).subscriberRoles))


getWholesaleRoles :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getWholesaleRoles object_ = jmethod object_ "getWholesaleRoles" (\() -> (getWholesaleRoles_impl (javaCast object_ :: StoreRoleFactory))) ()

getWholesaleRoles_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getWholesaleRoles_super object_ = (getWholesaleRoles_impl (javaCast object_ :: StoreRoleFactory))

getWholesaleRoles_impl :: StoreRoleFactory -> IO (BasicArrayList.BasicArrayList)
getWholesaleRoles_impl this = do
        pure ((jget (this).wholesaleRoles))


