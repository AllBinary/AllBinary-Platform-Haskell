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
-- package org.allbinary.game.input
module LocalPlayerInputIdFactory where

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
import qualified AnalogLocationInputFactory -- org.allbinary.game.input.analog.AnalogLocationInputFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data LocalPlayerInputIdFactory = LocalPlayerInputIdFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , mAX_NUMBER_OF_PLAYERS :: IORef (Int)
    , mAX_FAST_DEVICEID :: IORef (Int)
    , deviceIdToplayerId :: IORef (JavaArray (Int))
    , playerIdToDeviceId :: IORef (JavaArray (Int))
    , playersInPlay :: IORef (JavaArray (Bool))
    , totalDevicesMapped :: IORef (Int)
    }

instance JavaNull LocalPlayerInputIdFactory where
    javaNull = javaNullRecord "LocalPlayerInputIdFactory"

instance JavaEquals LocalPlayerInputIdFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LocalPlayerInputIdFactory where
    (==) = jrecordEquals

instance JavaObjectClass LocalPlayerInputIdFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LocalPlayerInputIdFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    mAX_NUMBER_OF_PLAYERS <- newIORef 0
    mAX_FAST_DEVICEID <- newIORef 0
    deviceIdToplayerId <- newIORef javaNull
    playerIdToDeviceId <- newIORef javaNull
    playersInPlay <- newIORef javaNull
    totalDevicesMapped <- newIORef 0
    let this = LocalPlayerInputIdFactory header_ logUtil mAX_NUMBER_OF_PLAYERS mAX_FAST_DEVICEID deviceIdToplayerId playerIdToDeviceId playersInPlay totalDevicesMapped
    jregisterLevel header_ this
    jregisterMethod header_ "getDeviceId" (\() -> getDeviceId_impl this)
    jregisterMethod header_ "getPlayerForDevice" (\() -> getPlayerForDevice_impl this)
    jregisterMethod header_ "getTotalDevicesInPlay" (\() -> getTotalDevicesInPlay_impl this)
    jregisterMethod header_ "isPlayerInPlay" (\() -> isPlayerInPlay_impl this)
    jregisterMethod header_ "setPlayerInPlay" (\() -> setPlayerInPlay_impl this)
    jregisterMethod header_ "setPlayerOutOfPlay" (\() -> setPlayerOutOfPlay_impl this)
    jregisterMethod header_ "getPlayersInPlay" (\() -> getPlayersInPlay_impl this)
    pure this

initFields_ :: LocalPlayerInputIdFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.mAX_NUMBER_OF_PLAYERS (6)
    jset this.mAX_FAST_DEVICEID (65)
    jset this.deviceIdToplayerId ((jnewArray ((jget (this).mAX_FAST_DEVICEID)) 0))
    jset this.playerIdToDeviceId ((jnewArray ((jget (this).mAX_NUMBER_OF_PLAYERS)) 0))
    jset this.playersInPlay ((jnewArray ((jget (this).mAX_NUMBER_OF_PLAYERS)) False))
    jset this.totalDevicesMapped (0)
    pure ()

new_ :: IO LocalPlayerInputIdFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LocalPlayerInputIdFactory -> IO ()
init_ this = do
        initFields_ this
        forM_ [((jlength (jget (this).deviceIdToplayerId)) - 1), ((jlength (jget (this).deviceIdToplayerId)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).deviceIdToplayerId)) (index) ((Prelude.negate 1))
        pure ()


getInstance :: IO (LocalPlayerInputIdFactory)
getInstance = do
        pure (LocalPlayerInputIdFactory.instance_)


getDeviceId :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDeviceId object_ a1 = jmethod object_ "getDeviceId" (\() -> (getDeviceId_impl (javaCast object_ :: LocalPlayerInputIdFactory))) () a1

getDeviceId_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDeviceId_super object_ a1 = (getDeviceId_impl (javaCast object_ :: LocalPlayerInputIdFactory)) a1

getDeviceId_impl :: LocalPlayerInputIdFactory -> Int -> IO (Int)
getDeviceId_impl this playerInputId = do
        pure ((jindex ((jget (this).playerIdToDeviceId)) (playerInputId)))


getPlayerForDevice :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getPlayerForDevice object_ a1 = jmethod object_ "getPlayerForDevice" (\() -> (getPlayerForDevice_impl (javaCast object_ :: LocalPlayerInputIdFactory))) () a1

getPlayerForDevice_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getPlayerForDevice_super object_ a1 = (getPlayerForDevice_impl (javaCast object_ :: LocalPlayerInputIdFactory)) a1

getPlayerForDevice_impl :: LocalPlayerInputIdFactory -> Int -> IO (Int)
getPlayerForDevice_impl this deviceId = do
    javaCatchReturn $ do
        index <- newIORef (0)
        if (deviceId < (jget (this).mAX_FAST_DEVICEID)) then do
            let playerInputId = (jindex ((jget (this).deviceIdToplayerId)) (deviceId))
            when (playerInputId /= (Prelude.negate 1)) $ do
                javaReturn (playerInputId)
        else do
            forM_ [((jget (this).totalDevicesMapped) - 1), ((jget (this).totalDevicesMapped) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
                when ((jindex ((jget (this).playerIdToDeviceId)) ((jget index))) == deviceId) $ do
                    javaReturn ((jget index))
        jset index ((jget (this).totalDevicesMapped))
        if (deviceId < (jget (this).mAX_FAST_DEVICEID)) then do
            jsetIndex ((jget (this).deviceIdToplayerId)) (deviceId) ((jget index))
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Added DeviceId: "))) deviceId))) " beyond fast Id list"))))) this "getPlayerForDevice")
        jsetIndex ((jget (this).playerIdToDeviceId)) ((jget index)) (deviceId)
        Control.Monad.void (AnalogLocationInputFactory.addPlayer ((jio (AnalogLocationInputFactory.getInstance))) (jget (this).totalDevicesMapped))
        jset (this).totalDevicesMapped ((jget (this).totalDevicesMapped) + 1)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Added DeviceId: "))) deviceId))) " at: "))) (jget index)))) " Total: "))) (jget (this).totalDevicesMapped)))))) this "getPlayerForDevice")
        pure ((jget index))


getTotalDevicesInPlay :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalDevicesInPlay object_ = jmethod object_ "getTotalDevicesInPlay" (\() -> (getTotalDevicesInPlay_impl (javaCast object_ :: LocalPlayerInputIdFactory))) ()

getTotalDevicesInPlay_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalDevicesInPlay_super object_ = (getTotalDevicesInPlay_impl (javaCast object_ :: LocalPlayerInputIdFactory))

getTotalDevicesInPlay_impl :: LocalPlayerInputIdFactory -> IO (Int)
getTotalDevicesInPlay_impl this = do
        total <- newIORef (0)
        forM_ [((jget (this).totalDevicesMapped) - 1), ((jget (this).totalDevicesMapped) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            when ((jindex ((jget (this).playersInPlay)) (index)) == True) $ do
                jset total ((jget total) + 1)
        pure ((jget total))


isPlayerInPlay :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isPlayerInPlay object_ a1 = jmethod object_ "isPlayerInPlay" (\() -> (isPlayerInPlay_impl (javaCast object_ :: LocalPlayerInputIdFactory))) () a1

isPlayerInPlay_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isPlayerInPlay_super object_ a1 = (isPlayerInPlay_impl (javaCast object_ :: LocalPlayerInputIdFactory)) a1

isPlayerInPlay_impl :: LocalPlayerInputIdFactory -> Int -> IO (Bool)
isPlayerInPlay_impl this playerInputId = do
        pure ((jindex ((jget (this).playersInPlay)) (playerInputId)))


setPlayerInPlay :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setPlayerInPlay object_ a1 = jmethod object_ "setPlayerInPlay" (\() -> (setPlayerInPlay_impl (javaCast object_ :: LocalPlayerInputIdFactory))) () a1

setPlayerInPlay_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setPlayerInPlay_super object_ a1 = (setPlayerInPlay_impl (javaCast object_ :: LocalPlayerInputIdFactory)) a1

setPlayerInPlay_impl :: LocalPlayerInputIdFactory -> Int -> IO (())
setPlayerInPlay_impl this playerInputId = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Setting PlayerInPlay with playerInputId: "))) playerInputId))))) this "setPlayerInPlay")
        jsetIndex ((jget (this).playersInPlay)) (playerInputId) (True)
        pure ()


setPlayerOutOfPlay :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setPlayerOutOfPlay object_ a1 = jmethod object_ "setPlayerOutOfPlay" (\() -> (setPlayerOutOfPlay_impl (javaCast object_ :: LocalPlayerInputIdFactory))) () a1

setPlayerOutOfPlay_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setPlayerOutOfPlay_super object_ a1 = (setPlayerOutOfPlay_impl (javaCast object_ :: LocalPlayerInputIdFactory)) a1

setPlayerOutOfPlay_impl :: LocalPlayerInputIdFactory -> Int -> IO (())
setPlayerOutOfPlay_impl this playerInputId = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Setting PlayerOutOfPlay with playerInputId: "))) playerInputId))))) this "setPlayerOutOfPlay")
        jsetIndex ((jget (this).playersInPlay)) (playerInputId) (False)
        pure ()


getPlayersInPlay :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Bool))
getPlayersInPlay object_ = jmethod object_ "getPlayersInPlay" (\() -> (getPlayersInPlay_impl (javaCast object_ :: LocalPlayerInputIdFactory))) ()

getPlayersInPlay_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Bool))
getPlayersInPlay_super object_ = (getPlayersInPlay_impl (javaCast object_ :: LocalPlayerInputIdFactory))

getPlayersInPlay_impl :: LocalPlayerInputIdFactory -> IO (JavaArray (Bool))
getPlayersInPlay_impl this = do
        pure ((jget (this).playersInPlay))


