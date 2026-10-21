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
-- package org.allbinary.game.ag.layer.hud.basic.time
module Timer where

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
import qualified PrimitiveLongSingleton -- org.allbinary.logic.math.PrimitiveLongSingleton
import qualified PrimitiveLongUtil -- org.allbinary.logic.math.PrimitiveLongUtil
import qualified GameTickTimeDelayHelper -- org.allbinary.time.GameTickTimeDelayHelper
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory

data Timer = Timer
    { header_ :: JavaHeader
    , startTime :: IORef (Int64)
    , hundredthTime :: IORef (Int64)
    , maxTime :: IORef (Int64)
    , modifier :: IORef (Int64)
    , hundrethsString :: IORef (JavaArray (Char))
    , totalDigits :: IORef (Int)
    , primitiveLongUtil :: IORef (PrimitiveLongUtil.PrimitiveLongUtil)
    , mAX :: IORef (JavaArray (Char))
    , gameTickTimeDelayHelper :: IORef (GameTickTimeDelayHelper.GameTickTimeDelayHelper)
    }

instance JavaNull Timer where
    javaNull = javaNullRecord "Timer"

instance JavaEquals Timer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Timer where
    (==) = jrecordEquals

instance JavaObjectClass Timer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Timer
newRecord_ = do
    header_ <- newJavaHeader
    startTime <- newIORef 0
    hundredthTime <- newIORef 0
    maxTime <- newIORef 0
    modifier <- newIORef 0
    hundrethsString <- newIORef javaNull
    totalDigits <- newIORef 0
    primitiveLongUtil <- newIORef javaNull
    mAX <- newIORef javaNull
    gameTickTimeDelayHelper <- newIORef javaNull
    let this = Timer header_ startTime hundredthTime maxTime modifier hundrethsString totalDigits primitiveLongUtil mAX gameTickTimeDelayHelper
    jregisterLevel header_ this
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "reduce" (\() -> reduce_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getTimeChars" (\() -> getTimeChars_impl this)
    jregisterMethod header_ "getCurrentTotalDigits" (\() -> getCurrentTotalDigits_impl this)
    pure this

initFields_ :: Timer -> IO ()
initFields_ this = do
    jset this.startTime ((Prelude.fromIntegral ((Prelude.negate 1) :: Int)))
    jset this.hundredthTime (0)
    jset this.maxTime (0)
    jset this.modifier (0)
    jset this.hundrethsString ((jget ((jio (PrimitiveLongSingleton.getInstance))).zERO))
    jset this.totalDigits (1)
    jset this.primitiveLongUtil (javaNull)
    jset this.mAX ((jarrayFromList ['L', 'O', 'L']))
    jset this.gameTickTimeDelayHelper =<< (GameTickTimeDelayHelperFactory.getInstance)
    pure ()

new_1 :: Int -> IO Timer
new_1 maxTime = do
    this <- newRecord_
    init_1 this maxTime
    pure this

init_1 :: Timer -> Int -> IO ()
init_1 this maxTime = do
        initFields_ this
        assignedValue <- (PrimitiveLongUtil.createPowerOfTen maxTime)
        jset (this).primitiveLongUtil (assignedValue)
        jset (this).maxTime ((Prelude.fromIntegral maxTime))
        pure ()


start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: Timer))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: Timer))

start_impl :: Timer -> IO (())
start_impl this = do
        jset (this).hundredthTime (0)
        jset (this).startTime ((jget ((jget (this).gameTickTimeDelayHelper)).startTime))
        pure ()


get :: (JavaObjectClass this_) => this_ -> IO (Int64)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: Timer))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
get_super object_ = (get_impl (javaCast object_ :: Timer))

get_impl :: Timer -> IO (Int64)
get_impl this = do
        pure ((jget (this).hundredthTime))


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: Timer))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: Timer))

update_impl :: Timer -> IO (())
update_impl this = do
        let lastLowerTime = (jget (this).hundredthTime)
        currentTime <- newIORef ((((((jget (this).modifier) + (jget ((jget (this).gameTickTimeDelayHelper)).startTime))) - (jget (this).startTime))))
        when ((jget currentTime) < 0) $ do
            jset currentTime (0)
        jset (this).hundredthTime (((jget currentTime) `quot` 100))
        if ((jget (this).hundredthTime) >= (jget (this).maxTime)) then do
            when ((jget (this).startTime) > 0) $ do
                jset (this).hundrethsString ((jget (this).mAX))
        else when (lastLowerTime /= (jget (this).hundredthTime)) $ do
            assignedValue <- (PrimitiveLongUtil.getCharArray ((jget (this).primitiveLongUtil)) (Prelude.fromIntegral (jget (this).hundredthTime)))
            jset (this).hundrethsString (assignedValue)
            assignedValue <- (PrimitiveLongUtil.getCurrentTotalDigits ((jget (this).primitiveLongUtil)))
            jset (this).totalDigits (assignedValue)
        pure ()


reduce :: (JavaObjectClass this_) => this_ -> Int -> IO (())
reduce object_ a1 = jmethod object_ "reduce" (\() -> (reduce_impl (javaCast object_ :: Timer))) () a1

reduce_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
reduce_super object_ a1 = (reduce_impl (javaCast object_ :: Timer)) a1

reduce_impl :: Timer -> Int -> IO (())
reduce_impl this value = do
        jset (this).modifier (((jget (this).modifier) - (Prelude.fromIntegral value)))
        pure ()


add :: (JavaObjectClass this_) => this_ -> Int -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: Timer))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: Timer)) a1

add_impl :: Timer -> Int -> IO (())
add_impl this value = do
        jset (this).modifier (((jget (this).modifier) + (Prelude.fromIntegral value)))
        pure ()


getTimeChars :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Char))
getTimeChars object_ = jmethod object_ "getTimeChars" (\() -> (getTimeChars_impl (javaCast object_ :: Timer))) ()

getTimeChars_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Char))
getTimeChars_super object_ = (getTimeChars_impl (javaCast object_ :: Timer))

getTimeChars_impl :: Timer -> IO (JavaArray (Char))
getTimeChars_impl this = do
        pure ((jget (this).hundrethsString))


getCurrentTotalDigits :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrentTotalDigits object_ = jmethod object_ "getCurrentTotalDigits" (\() -> (getCurrentTotalDigits_impl (javaCast object_ :: Timer))) ()

getCurrentTotalDigits_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrentTotalDigits_super object_ = (getCurrentTotalDigits_impl (javaCast object_ :: Timer))

getCurrentTotalDigits_impl :: Timer -> IO (Int)
getCurrentTotalDigits_impl this = do
        pure ((jget (this).totalDigits))


