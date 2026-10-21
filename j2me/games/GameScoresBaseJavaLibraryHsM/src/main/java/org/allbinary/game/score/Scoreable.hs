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
-- package org.allbinary.game.score
module Scoreable where

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
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified ScoreableInterface

-- implements ScoreableInterface
data Scoreable = Scoreable
    { header_ :: JavaHeader
    , points :: IORef (Int)
    }

instance JavaNull Scoreable where
    javaNull = javaNullRecord "Scoreable"

instance JavaEquals Scoreable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Scoreable where
    (==) = jrecordEquals

instance JavaObjectClass Scoreable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE iD #-}
iD = unsafePerformIO ((SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 3) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Scoreable
newRecord_ = do
    header_ <- newJavaHeader
    points <- newIORef 0
    let this = Scoreable header_ points
    jregisterLevel header_ this
    ScoreableInterface.registerInterface_ header_
    jregisterMethod header_ "addPoints" (\() -> addPoints_impl this)
    jregisterMethod header_ "removePoints" (\() -> removePoints_impl this)
    jregisterMethod header_ "setPoints" (\() -> setPoints_impl this)
    jregisterMethod header_ "getPoints" (\() -> getPoints_impl this)
    pure this

initFields_ :: Scoreable -> IO ()
initFields_ this = do
    jset this.points (0)
    pure ()

new_1 :: Int -> IO Scoreable
new_1 points = do
    this <- newRecord_
    init_1 this points
    pure this

init_1 :: Scoreable -> Int -> IO ()
init_1 this points = do
        initFields_ this
        jset (this).points (points)
        pure ()


addPoints :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addPoints object_ a1 = jmethod object_ "addPoints" (\() -> (addPoints_impl (javaCast object_ :: Scoreable))) () a1

addPoints_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addPoints_super object_ a1 = (addPoints_impl (javaCast object_ :: Scoreable)) a1

addPoints_impl :: Scoreable -> Int -> IO (())
addPoints_impl this points = do
        jset (this).points (((jget (this).points) + points))
        pure ()


removePoints :: (JavaObjectClass this_) => this_ -> Int -> IO (())
removePoints object_ a1 = jmethod object_ "removePoints" (\() -> (removePoints_impl (javaCast object_ :: Scoreable))) () a1

removePoints_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
removePoints_super object_ a1 = (removePoints_impl (javaCast object_ :: Scoreable)) a1

removePoints_impl :: Scoreable -> Int -> IO (())
removePoints_impl this points = do
        jset (this).points (((jget (this).points) - points))
        pure ()


setPoints :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setPoints object_ a1 = jmethod object_ "setPoints" (\() -> (setPoints_impl (javaCast object_ :: Scoreable))) () a1

setPoints_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setPoints_super object_ a1 = (setPoints_impl (javaCast object_ :: Scoreable)) a1

setPoints_impl :: Scoreable -> Int -> IO (())
setPoints_impl this points = do
        jset (this).points (points)
        pure ()


getPoints :: (JavaObjectClass this_) => this_ -> IO (Int)
getPoints object_ = jmethod object_ "getPoints" (\() -> (getPoints_impl (javaCast object_ :: Scoreable))) ()

getPoints_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getPoints_super object_ = (getPoints_impl (javaCast object_ :: Scoreable))

getPoints_impl :: Scoreable -> IO (Int)
getPoints_impl this = do
        pure ((jget (this).points))


