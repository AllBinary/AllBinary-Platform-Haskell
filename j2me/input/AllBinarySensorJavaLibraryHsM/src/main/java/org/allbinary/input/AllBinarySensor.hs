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
-- package org.allbinary.input
module AllBinarySensor where

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
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified AllBinarySensorListener

-- implements AllBinarySensorListener
data AllBinarySensor = AllBinarySensor
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull AllBinarySensor where
    javaNull = javaNullRecord "AllBinarySensor"

instance JavaEquals AllBinarySensor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinarySensor where
    (==) = jrecordEquals

instance JavaObjectClass AllBinarySensor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_ALLBINARY_SENSOR #-}
nULL_ALLBINARY_SENSOR = unsafePerformIO ((new_))

{-# NOINLINE max #-}
max = unsafePerformIO (newIORef (100))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AllBinarySensor
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = AllBinarySensor header_ logUtil commonStrings
    jregisterLevel header_ this
    AllBinarySensorListener.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    jregisterMethod header_ "shutdown" (\() -> shutdown_impl this)
    jregisterMethod header_ "onSensorChange" (\() -> onSensorChange_impl this)
    pure this

initFields_ :: AllBinarySensor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO AllBinarySensor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinarySensor -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AllBinarySensor))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: AllBinarySensor))

init_impl :: AllBinarySensor -> IO (())
init_impl this = do
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: AllBinarySensor))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: AllBinarySensor))

update_impl :: AllBinarySensor -> IO (())
update_impl this = do
        pure ()


setMax :: Int -> IO (())
setMax max = do
        jset AllBinarySensor.max (max)
        pure ()


getMax :: IO (Int)
getMax = do
        pure ((jget AllBinarySensor.max))


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: AllBinarySensor))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: AllBinarySensor))

getId_impl :: AllBinarySensor -> IO (Int)
getId_impl this = do
        (AllBinarySensor.getMax)


shutdown :: (JavaObjectClass this_) => this_ -> IO (())
shutdown object_ = jmethod object_ "shutdown" (\() -> (shutdown_impl (javaCast object_ :: AllBinarySensor))) ()

shutdown_super :: (JavaObjectClass this_) => this_ -> IO (())
shutdown_super object_ = (shutdown_impl (javaCast object_ :: AllBinarySensor))

shutdown_impl :: AllBinarySensor -> IO (())
shutdown_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "shutdown")
        pure ()


onSensorChange :: (JavaObjectClass this_) => this_ -> IO (())
onSensorChange object_ = jmethod object_ "onSensorChange" (\() -> (onSensorChange_impl (javaCast object_ :: AllBinarySensor))) ()

onSensorChange_super :: (JavaObjectClass this_) => this_ -> IO (())
onSensorChange_super object_ = (onSensorChange_impl (javaCast object_ :: AllBinarySensor))

onSensorChange_impl :: AllBinarySensor -> IO (())
onSensorChange_impl this = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED) this)
        pure ()


