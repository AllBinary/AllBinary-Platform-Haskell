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
-- package org.allbinary.game.layer
module Aggression where

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

data Aggression = Aggression
    { header_ :: JavaHeader
    , ram :: IORef (Int)
    , projectile :: IORef (Int)
    , drops :: IORef (Int)
    }

instance JavaNull Aggression where
    javaNull = javaNullRecord "Aggression"

instance JavaEquals Aggression where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Aggression where
    (==) = jrecordEquals

instance JavaObjectClass Aggression where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Aggression
newRecord_ = do
    header_ <- newJavaHeader
    ram <- newIORef javaNull
    projectile <- newIORef javaNull
    drops <- newIORef javaNull
    let this = Aggression header_ ram projectile drops
    jregisterLevel header_ this
    jregisterMethod header_ "getRam" (\() -> getRam_impl this)
    jregisterMethod header_ "setRam" (\() -> setRam_impl this)
    jregisterMethod header_ "getProjectile" (\() -> getProjectile_impl this)
    jregisterMethod header_ "setProjectile" (\() -> setProjectile_impl this)
    jregisterMethod header_ "getDrops" (\() -> getDrops_impl this)
    jregisterMethod header_ "setDrops" (\() -> setDrops_impl this)
    pure this

initFields_ :: Aggression -> IO ()
initFields_ this = do
    jset this.ram =<< (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 0)
    jset this.projectile =<< (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 0)
    jset this.drops =<< (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 0)
    pure ()

new_3 :: Int -> Int -> Int -> IO Aggression
new_3 ram projectile drops = do
    this <- newRecord_
    init_3 this ram projectile drops
    pure this

init_3 :: Aggression -> Int -> Int -> Int -> IO ()
init_3 this ram projectile drops = do
        initFields_ this
        Control.Monad.void (Aggression.setRam this ram)
        Control.Monad.void (Aggression.setProjectile this projectile)
        Control.Monad.void (Aggression.setDrops this drops)
        pure ()


getRam :: (JavaObjectClass this_) => this_ -> IO (Int)
getRam object_ = jmethod object_ "getRam" (\() -> (getRam_impl (javaCast object_ :: Aggression))) ()

getRam_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRam_super object_ = (getRam_impl (javaCast object_ :: Aggression))

getRam_impl :: Aggression -> IO (Int)
getRam_impl this = do
        pure ((jget (this).ram))


setRam :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRam object_ a1 = jmethod object_ "setRam" (\() -> (setRam_impl (javaCast object_ :: Aggression))) () a1

setRam_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRam_super object_ a1 = (setRam_impl (javaCast object_ :: Aggression)) a1

setRam_impl :: Aggression -> Int -> IO (())
setRam_impl this ram = do
        jset (this).ram (ram)
        pure ()


getProjectile :: (JavaObjectClass this_) => this_ -> IO (Int)
getProjectile object_ = jmethod object_ "getProjectile" (\() -> (getProjectile_impl (javaCast object_ :: Aggression))) ()

getProjectile_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getProjectile_super object_ = (getProjectile_impl (javaCast object_ :: Aggression))

getProjectile_impl :: Aggression -> IO (Int)
getProjectile_impl this = do
        pure ((jget (this).projectile))


setProjectile :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setProjectile object_ a1 = jmethod object_ "setProjectile" (\() -> (setProjectile_impl (javaCast object_ :: Aggression))) () a1

setProjectile_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setProjectile_super object_ a1 = (setProjectile_impl (javaCast object_ :: Aggression)) a1

setProjectile_impl :: Aggression -> Int -> IO (())
setProjectile_impl this projectile = do
        jset (this).projectile (projectile)
        pure ()


getDrops :: (JavaObjectClass this_) => this_ -> IO (Int)
getDrops object_ = jmethod object_ "getDrops" (\() -> (getDrops_impl (javaCast object_ :: Aggression))) ()

getDrops_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDrops_super object_ = (getDrops_impl (javaCast object_ :: Aggression))

getDrops_impl :: Aggression -> IO (Int)
getDrops_impl this = do
        pure ((jget (this).drops))


setDrops :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDrops object_ a1 = jmethod object_ "setDrops" (\() -> (setDrops_impl (javaCast object_ :: Aggression))) () a1

setDrops_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDrops_super object_ a1 = (setDrops_impl (javaCast object_ :: Aggression)) a1

setDrops_impl :: Aggression -> Int -> IO (())
setDrops_impl this drops = do
        jset (this).drops (drops)
        pure ()


