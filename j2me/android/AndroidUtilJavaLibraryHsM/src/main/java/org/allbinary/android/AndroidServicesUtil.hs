{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2019 AllBinary 
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
-- package org.allbinary.android
module AndroidServicesUtil where

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
import qualified List -- java.util.List
import qualified ActivityManager -- android.app.ActivityManager
import qualified RunningServiceInfo -- android.app.ActivityManager.RunningServiceInfo
import qualified ComponentName -- android.content.ComponentName
import qualified Context -- android.content.Context
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data AndroidServicesUtil = AndroidServicesUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , resourceUtil :: IORef (ResourceUtil.ResourceUtil)
    , sERVICE_LIMIT_MAX :: IORef (Int)
    , iS_SERVICE_RUNNING :: IORef (String)
    , sERVICE_NOT_FOUND_RUNNING :: IORef (String)
    }

instance JavaNull AndroidServicesUtil where
    javaNull = javaNullRecord "AndroidServicesUtil"

instance JavaEquals AndroidServicesUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidServicesUtil where
    (==) = jrecordEquals

instance JavaObjectClass AndroidServicesUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AndroidServicesUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    resourceUtil <- newIORef javaNull
    sERVICE_LIMIT_MAX <- newIORef 0
    iS_SERVICE_RUNNING <- newIORef ""
    sERVICE_NOT_FOUND_RUNNING <- newIORef ""
    let this = AndroidServicesUtil header_ logUtil resourceUtil sERVICE_LIMIT_MAX iS_SERVICE_RUNNING sERVICE_NOT_FOUND_RUNNING
    jregisterLevel header_ this
    jregisterMethod header_ "isServiceRunning" (\() -> isServiceRunning_impl this)
    pure this

initFields_ :: AndroidServicesUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.resourceUtil =<< (ResourceUtil.getInstance)
    jset this.sERVICE_LIMIT_MAX (1000)
    jset this.iS_SERVICE_RUNNING ("isServiceRunning")
    jset this.sERVICE_NOT_FOUND_RUNNING ("Service not found Running: ")
    pure ()

new_ :: IO AndroidServicesUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AndroidServicesUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AndroidServicesUtil)
getInstance = do
        pure (AndroidServicesUtil.instance_)


isServiceRunning :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isServiceRunning object_ a1 = jmethod object_ "isServiceRunning" (\() -> (isServiceRunning_impl (javaCast object_ :: AndroidServicesUtil))) () a1

isServiceRunning_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isServiceRunning_super object_ a1 = (isServiceRunning_impl (javaCast object_ :: AndroidServicesUtil)) a1

isServiceRunning_impl :: AndroidServicesUtil -> String -> IO (Bool)
isServiceRunning_impl this name = do
    javaCatchReturn $ do
        let activityManager = (javaCast (jio (Context.getSystemService ((jio (ResourceUtil.getContext ((jget (this).resourceUtil))))) (Context.aCTIVITY_SERVICE))) :: ActivityManager.ActivityManager)
        runningServicesList <- (ActivityManager.getRunningServices activityManager (jget (this).sERVICE_LIMIT_MAX))
        runningServiceInfo <- newIORef (javaNull)
        serviceComponent <- newIORef (javaNull)
        serviceName <- newIORef ("")
        size <- (List.size runningServicesList)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (List.get runningServicesList index)
            jset runningServiceInfo (assignedValue)
            jset serviceComponent ((jget ((jget runningServiceInfo)).service))
            assignedValue <- (ComponentName.toString ((jget serviceComponent)))
            jset serviceName (assignedValue)
            when ((jstringIndexOf (jget serviceName) name 0) >= 0) $ do
                javaReturn (True)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).sERVICE_NOT_FOUND_RUNNING) ++ name) this (jget (this).iS_SERVICE_RUNNING))
        pure (False)


