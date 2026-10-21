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
-- package org.allbinary.game.ag.ai
module InputProbability where

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
import qualified Any -- same package or java.lang
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data InputProbability = InputProbability
    { header_ :: JavaHeader
    , likelyhoodIntegerArray :: IORef (JavaArray (JavaArray (Int)))
    , repeatLikelyhoodIntegerArray :: IORef (JavaArray (Int))
    , max :: IORef (Int)
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    }

instance JavaNull InputProbability where
    javaNull = javaNullRecord "InputProbability"

instance JavaEquals InputProbability where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputProbability where
    (==) = jrecordEquals

instance JavaObjectClass InputProbability where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE iNPUT_PROBABILITY #-}
iNPUT_PROBABILITY = unsafePerformIO ((SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 0) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputProbability
newRecord_ = do
    header_ <- newJavaHeader
    likelyhoodIntegerArray <- newIORef javaNull
    repeatLikelyhoodIntegerArray <- newIORef javaNull
    max <- newIORef 0
    timeDelayHelper <- newIORef javaNull
    let this = InputProbability header_ likelyhoodIntegerArray repeatLikelyhoodIntegerArray max timeDelayHelper
    jregisterLevel header_ this
    jregisterMethod header_ "getLikelyhoodIntegerArray" (\() -> getLikelyhoodIntegerArray_impl this)
    jregisterMethod header_ "getRepeatLikelyhoodIntegerArray" (\() -> getRepeatLikelyhoodIntegerArray_impl this)
    jregisterMethod header_ "getMax" (\() -> getMax_impl this)
    jregisterMethod header_ "getTimeDelayHelper" (\() -> getTimeDelayHelper_impl this)
    jregisterMethod header_ "toHashtable" (\() -> toHashtable_impl this)
    pure this

initFields_ :: InputProbability -> IO ()
initFields_ this = do
    jset this.likelyhoodIntegerArray (javaNull)
    jset this.repeatLikelyhoodIntegerArray (javaNull)
    jset this.max (0)
    jset this.timeDelayHelper (javaNull)
    pure ()

new_4 :: JavaArray (JavaArray (Int)) -> JavaArray (Int) -> Int -> TimeDelayHelper.TimeDelayHelper -> IO InputProbability
new_4 likelyhoodIntegerArray repeatLikelyhoodIntegerArray max timeDelayHelper = do
    this <- newRecord_
    init_4 this likelyhoodIntegerArray repeatLikelyhoodIntegerArray max timeDelayHelper
    pure this

init_4 :: InputProbability -> JavaArray (JavaArray (Int)) -> JavaArray (Int) -> Int -> TimeDelayHelper.TimeDelayHelper -> IO ()
init_4 this likelyhoodIntegerArray repeatLikelyhoodIntegerArray max timeDelayHelper = do
        initFields_ this
        jset (this).likelyhoodIntegerArray (likelyhoodIntegerArray)
        jset (this).repeatLikelyhoodIntegerArray (repeatLikelyhoodIntegerArray)
        jset (this).max (max)
        jset (this).timeDelayHelper (timeDelayHelper)
        pure ()


getLikelyhoodIntegerArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (JavaArray (Int)))
getLikelyhoodIntegerArray object_ = jmethod object_ "getLikelyhoodIntegerArray" (\() -> (getLikelyhoodIntegerArray_impl (javaCast object_ :: InputProbability))) ()

getLikelyhoodIntegerArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (JavaArray (Int)))
getLikelyhoodIntegerArray_super object_ = (getLikelyhoodIntegerArray_impl (javaCast object_ :: InputProbability))

getLikelyhoodIntegerArray_impl :: InputProbability -> IO (JavaArray (JavaArray (Int)))
getLikelyhoodIntegerArray_impl this = do
        pure ((jget (this).likelyhoodIntegerArray))


getRepeatLikelyhoodIntegerArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getRepeatLikelyhoodIntegerArray object_ = jmethod object_ "getRepeatLikelyhoodIntegerArray" (\() -> (getRepeatLikelyhoodIntegerArray_impl (javaCast object_ :: InputProbability))) ()

getRepeatLikelyhoodIntegerArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getRepeatLikelyhoodIntegerArray_super object_ = (getRepeatLikelyhoodIntegerArray_impl (javaCast object_ :: InputProbability))

getRepeatLikelyhoodIntegerArray_impl :: InputProbability -> IO (JavaArray (Int))
getRepeatLikelyhoodIntegerArray_impl this = do
        pure ((jget (this).repeatLikelyhoodIntegerArray))


getMax :: (JavaObjectClass this_) => this_ -> IO (Int)
getMax object_ = jmethod object_ "getMax" (\() -> (getMax_impl (javaCast object_ :: InputProbability))) ()

getMax_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMax_super object_ = (getMax_impl (javaCast object_ :: InputProbability))

getMax_impl :: InputProbability -> IO (Int)
getMax_impl this = do
        pure ((jget (this).max))


getTimeDelayHelper :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper object_ = jmethod object_ "getTimeDelayHelper" (\() -> (getTimeDelayHelper_impl (javaCast object_ :: InputProbability))) ()

getTimeDelayHelper_super :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper_super object_ = (getTimeDelayHelper_impl (javaCast object_ :: InputProbability))

getTimeDelayHelper_impl :: InputProbability -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper_impl this = do
        pure ((jget (this).timeDelayHelper))


toHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
toHashtable object_ = jmethod object_ "toHashtable" (\() -> (toHashtable_impl (javaCast object_ :: InputProbability))) ()

toHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
toHashtable_super object_ = (toHashtable_impl (javaCast object_ :: InputProbability))

toHashtable_impl :: InputProbability -> IO (ABHashtable.ABHashtable)
toHashtable_impl this = do
        hashtable <- (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
        Control.Monad.void (ABHashtable.put hashtable (jget InputProbability.iNPUT_PROBABILITY) this)
        pure (hashtable)


