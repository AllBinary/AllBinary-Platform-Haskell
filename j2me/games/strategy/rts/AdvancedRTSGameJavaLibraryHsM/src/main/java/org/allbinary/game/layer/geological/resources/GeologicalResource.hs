{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
-- package org.allbinary.game.layer.geological.resources
module GeologicalResource where

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

data GeologicalResource = GeologicalResource
    { header_ :: JavaHeader
    , total :: IORef (Int)
    , initTotal :: IORef (Int)
    }

instance JavaNull GeologicalResource where
    javaNull = javaNullRecord "GeologicalResource"

instance JavaEquals GeologicalResource where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeologicalResource where
    (==) = jrecordEquals

instance JavaObjectClass GeologicalResource where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GeologicalResource
newRecord_ = do
    header_ <- newJavaHeader
    total <- newIORef 0
    initTotal <- newIORef 0
    let this = GeologicalResource header_ total initTotal
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "getTotal" (\() -> getTotal_impl this)
    jregisterMethod header_ "setTotal" (\() -> setTotal_impl this)
    pure this

initFields_ :: GeologicalResource -> IO ()
initFields_ this = do
    jset this.total (0)
    jset this.initTotal (0)
    pure ()

new_1 :: Int -> IO GeologicalResource
new_1 initTotal = do
    this <- newRecord_
    init_1 this initTotal
    pure this

init_1 :: GeologicalResource -> Int -> IO ()
init_1 this initTotal = do
        initFields_ this
        jset (this).initTotal (initTotal)
        Control.Monad.void (GeologicalResource.init this)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: GeologicalResource))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: GeologicalResource))

init_impl :: GeologicalResource -> IO (())
init_impl this = do
        Control.Monad.void (GeologicalResource.setTotal this (jget (this).initTotal))
        pure ()


add :: (JavaObjectClass this_) => this_ -> Int -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: GeologicalResource))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: GeologicalResource)) a1

add_impl :: GeologicalResource -> Int -> IO (())
add_impl this value = do
        let max = (2147483647 :: Int)
        if (((jio (GeologicalResource.getTotal this)) + value) > max) then do
            Control.Monad.void (GeologicalResource.setTotal this max)
        else do
            Control.Monad.void (GeologicalResource.setTotal this ((jio (GeologicalResource.getTotal this)) + value))
        pure ()


remove :: (JavaObjectClass this_) => this_ -> Int -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: GeologicalResource))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: GeologicalResource)) a1

remove_impl :: GeologicalResource -> Int -> IO (())
remove_impl this value = do
        if (((jio (GeologicalResource.getTotal this)) - value) < 0) then do
            Control.Monad.void (GeologicalResource.setTotal this 0)
        else do
            Control.Monad.void (GeologicalResource.setTotal this ((jio (GeologicalResource.getTotal this)) - value))
        pure ()


getTotal :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: GeologicalResource))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: GeologicalResource))

getTotal_impl :: GeologicalResource -> IO (Int)
getTotal_impl this = do
        pure ((jget (this).total))


setTotal :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTotal object_ a1 = jmethod object_ "setTotal" (\() -> (setTotal_impl (javaCast object_ :: GeologicalResource))) () a1

setTotal_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTotal_super object_ a1 = (setTotal_impl (javaCast object_ :: GeologicalResource)) a1

setTotal_impl :: GeologicalResource -> Int -> IO (())
setTotal_impl this total = do
        jset (this).total (total)
        pure ()


