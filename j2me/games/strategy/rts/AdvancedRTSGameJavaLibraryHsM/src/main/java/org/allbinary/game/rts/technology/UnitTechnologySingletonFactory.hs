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
-- package org.allbinary.game.rts.technology
module UnitTechnologySingletonFactory where

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

data UnitTechnologySingletonFactory = UnitTechnologySingletonFactory
    { header_ :: JavaHeader
    , damage :: IORef (Int)
    , health :: IORef (Int)
    , reload :: IORef (Int)
    , repair :: IORef (Int)
    , speed :: IORef (Int)
    }

instance JavaNull UnitTechnologySingletonFactory where
    javaNull = javaNullRecord "UnitTechnologySingletonFactory"

instance JavaEquals UnitTechnologySingletonFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UnitTechnologySingletonFactory where
    (==) = jrecordEquals

instance JavaObjectClass UnitTechnologySingletonFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UnitTechnologySingletonFactory
newRecord_ = do
    header_ <- newJavaHeader
    damage <- newIORef 0
    health <- newIORef 0
    reload <- newIORef 0
    repair <- newIORef 0
    speed <- newIORef 0
    let this = UnitTechnologySingletonFactory header_ damage health reload repair speed
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getDamage" (\() -> getDamage_impl this)
    jregisterMethod header_ "setDamage" (\() -> setDamage_impl this)
    jregisterMethod header_ "getHealth" (\() -> getHealth_impl this)
    jregisterMethod header_ "setHealth" (\() -> setHealth_impl this)
    jregisterMethod header_ "getReload" (\() -> getReload_impl this)
    jregisterMethod header_ "setReload" (\() -> setReload_impl this)
    jregisterMethod header_ "getRepair" (\() -> getRepair_impl this)
    jregisterMethod header_ "setRepair" (\() -> setRepair_impl this)
    jregisterMethod header_ "getSpeed" (\() -> getSpeed_impl this)
    jregisterMethod header_ "setSpeed" (\() -> setSpeed_impl this)
    pure this

initFields_ :: UnitTechnologySingletonFactory -> IO ()
initFields_ this = do
    jset this.damage (0)
    jset this.health (0)
    jset this.reload (0)
    jset this.repair (0)
    jset this.speed (0)
    pure ()


getInstance :: IO (UnitTechnologySingletonFactory)
getInstance = do
        pure (UnitTechnologySingletonFactory.instance_)

new_ :: IO UnitTechnologySingletonFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UnitTechnologySingletonFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: UnitTechnologySingletonFactory))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: UnitTechnologySingletonFactory))

init_impl :: UnitTechnologySingletonFactory -> IO (())
init_impl this = do
        Control.Monad.void (UnitTechnologySingletonFactory.setDamage this 0)
        Control.Monad.void (UnitTechnologySingletonFactory.setHealth this 0)
        Control.Monad.void (UnitTechnologySingletonFactory.setReload this 0)
        Control.Monad.void (UnitTechnologySingletonFactory.setRepair this 0)
        Control.Monad.void (UnitTechnologySingletonFactory.setSpeed this 0)
        pure ()


getDamage :: (JavaObjectClass this_) => this_ -> IO (Int)
getDamage object_ = jmethod object_ "getDamage" (\() -> (getDamage_impl (javaCast object_ :: UnitTechnologySingletonFactory))) ()

getDamage_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDamage_super object_ = (getDamage_impl (javaCast object_ :: UnitTechnologySingletonFactory))

getDamage_impl :: UnitTechnologySingletonFactory -> IO (Int)
getDamage_impl this = do
        pure ((jget (this).damage))


setDamage :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDamage object_ a1 = jmethod object_ "setDamage" (\() -> (setDamage_impl (javaCast object_ :: UnitTechnologySingletonFactory))) () a1

setDamage_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDamage_super object_ a1 = (setDamage_impl (javaCast object_ :: UnitTechnologySingletonFactory)) a1

setDamage_impl :: UnitTechnologySingletonFactory -> Int -> IO (())
setDamage_impl this damage = do
        jset (this).damage (damage)
        pure ()


getHealth :: (JavaObjectClass this_) => this_ -> IO (Int)
getHealth object_ = jmethod object_ "getHealth" (\() -> (getHealth_impl (javaCast object_ :: UnitTechnologySingletonFactory))) ()

getHealth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHealth_super object_ = (getHealth_impl (javaCast object_ :: UnitTechnologySingletonFactory))

getHealth_impl :: UnitTechnologySingletonFactory -> IO (Int)
getHealth_impl this = do
        pure ((jget (this).health))


setHealth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHealth object_ a1 = jmethod object_ "setHealth" (\() -> (setHealth_impl (javaCast object_ :: UnitTechnologySingletonFactory))) () a1

setHealth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHealth_super object_ a1 = (setHealth_impl (javaCast object_ :: UnitTechnologySingletonFactory)) a1

setHealth_impl :: UnitTechnologySingletonFactory -> Int -> IO (())
setHealth_impl this health = do
        jset (this).health (health)
        pure ()


getReload :: (JavaObjectClass this_) => this_ -> IO (Int)
getReload object_ = jmethod object_ "getReload" (\() -> (getReload_impl (javaCast object_ :: UnitTechnologySingletonFactory))) ()

getReload_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getReload_super object_ = (getReload_impl (javaCast object_ :: UnitTechnologySingletonFactory))

getReload_impl :: UnitTechnologySingletonFactory -> IO (Int)
getReload_impl this = do
        pure ((jget (this).reload))


setReload :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setReload object_ a1 = jmethod object_ "setReload" (\() -> (setReload_impl (javaCast object_ :: UnitTechnologySingletonFactory))) () a1

setReload_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setReload_super object_ a1 = (setReload_impl (javaCast object_ :: UnitTechnologySingletonFactory)) a1

setReload_impl :: UnitTechnologySingletonFactory -> Int -> IO (())
setReload_impl this reload = do
        jset (this).reload (reload)
        pure ()


getRepair :: (JavaObjectClass this_) => this_ -> IO (Int)
getRepair object_ = jmethod object_ "getRepair" (\() -> (getRepair_impl (javaCast object_ :: UnitTechnologySingletonFactory))) ()

getRepair_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRepair_super object_ = (getRepair_impl (javaCast object_ :: UnitTechnologySingletonFactory))

getRepair_impl :: UnitTechnologySingletonFactory -> IO (Int)
getRepair_impl this = do
        pure ((jget (this).repair))


setRepair :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRepair object_ a1 = jmethod object_ "setRepair" (\() -> (setRepair_impl (javaCast object_ :: UnitTechnologySingletonFactory))) () a1

setRepair_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRepair_super object_ a1 = (setRepair_impl (javaCast object_ :: UnitTechnologySingletonFactory)) a1

setRepair_impl :: UnitTechnologySingletonFactory -> Int -> IO (())
setRepair_impl this repair = do
        jset (this).repair (repair)
        pure ()


getSpeed :: (JavaObjectClass this_) => this_ -> IO (Int)
getSpeed object_ = jmethod object_ "getSpeed" (\() -> (getSpeed_impl (javaCast object_ :: UnitTechnologySingletonFactory))) ()

getSpeed_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSpeed_super object_ = (getSpeed_impl (javaCast object_ :: UnitTechnologySingletonFactory))

getSpeed_impl :: UnitTechnologySingletonFactory -> IO (Int)
getSpeed_impl this = do
        pure ((jget (this).speed))


setSpeed :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setSpeed object_ a1 = jmethod object_ "setSpeed" (\() -> (setSpeed_impl (javaCast object_ :: UnitTechnologySingletonFactory))) () a1

setSpeed_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setSpeed_super object_ a1 = (setSpeed_impl (javaCast object_ :: UnitTechnologySingletonFactory)) a1

setSpeed_impl :: UnitTechnologySingletonFactory -> Int -> IO (())
setSpeed_impl this speed = do
        jset (this).speed (speed)
        pure ()


