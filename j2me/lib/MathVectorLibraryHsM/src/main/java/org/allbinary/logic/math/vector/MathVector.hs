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
-- package org.allbinary.logic.math.vector
module MathVector where

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
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal
import qualified MathVectorInterface

-- implements MathVectorInterface
data MathVector = MathVector
    { header_ :: JavaHeader
    , magnitudeBasicDecimal :: IORef (BasicDecimal.BasicDecimal)
    , direction :: IORef (Int)
    , resultBasicDecimal :: IORef (BasicDecimal.BasicDecimal)
    }

instance JavaNull MathVector where
    javaNull = javaNullRecord "MathVector"

instance JavaEquals MathVector where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MathVector where
    (==) = jrecordEquals

instance JavaObjectClass MathVector where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MathVector
newRecord_ = do
    header_ <- newJavaHeader
    magnitudeBasicDecimal <- newIORef javaNull
    direction <- newIORef 0
    resultBasicDecimal <- newIORef javaNull
    let this = MathVector header_ magnitudeBasicDecimal direction resultBasicDecimal
    jregisterLevel header_ this
    MathVectorInterface.registerInterface_ header_
    jregisterMethod header_ "getMagnitude" (\() -> getMagnitude_impl this)
    jregisterMethod header_ "getDirection" (\() -> getDirection_impl this)
    jregisterMethod header_ "getResult" (\() -> getResult_impl this)
    pure this

initFields_ :: MathVector -> IO ()
initFields_ this = do
    jset this.magnitudeBasicDecimal (javaNull)
    jset this.direction (0)
    jset this.resultBasicDecimal (javaNull)
    pure ()

new_2 :: BasicDecimal.BasicDecimal -> Int -> IO MathVector
new_2 magnitudeBasicDecimal direction = do
    this <- newRecord_
    init_2 this magnitudeBasicDecimal direction
    pure this

init_2 :: MathVector -> BasicDecimal.BasicDecimal -> Int -> IO ()
init_2 this magnitudeBasicDecimal direction = do
        initFields_ this
        jset (this).magnitudeBasicDecimal (magnitudeBasicDecimal)
        jset (this).direction (direction)
        pure ()


getMagnitude :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getMagnitude object_ = jmethod object_ "getMagnitude" (\() -> (getMagnitude_impl (javaCast object_ :: MathVector))) ()

getMagnitude_super :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getMagnitude_super object_ = (getMagnitude_impl (javaCast object_ :: MathVector))

getMagnitude_impl :: MathVector -> IO (BasicDecimal.BasicDecimal)
getMagnitude_impl this = do
        pure ((jget (this).magnitudeBasicDecimal))


getDirection :: (JavaObjectClass this_) => this_ -> IO (Int)
getDirection object_ = jmethod object_ "getDirection" (\() -> (getDirection_impl (javaCast object_ :: MathVector))) ()

getDirection_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDirection_super object_ = (getDirection_impl (javaCast object_ :: MathVector))

getDirection_impl :: MathVector -> IO (Int)
getDirection_impl this = do
        pure ((jget (this).direction))


getResult :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getResult object_ = jmethod object_ "getResult" (\() -> (getResult_impl (javaCast object_ :: MathVector))) ()

getResult_super :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getResult_super object_ = (getResult_impl (javaCast object_ :: MathVector))

getResult_impl :: MathVector -> IO (BasicDecimal.BasicDecimal)
getResult_impl this = do
        pure ((jget (this).resultBasicDecimal))


