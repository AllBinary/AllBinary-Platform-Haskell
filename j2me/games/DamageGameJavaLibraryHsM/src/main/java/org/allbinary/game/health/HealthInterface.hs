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
-- package org.allbinary.game.health
module HealthInterface where

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
import qualified HealthListenerInterface -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data HealthInterface = HealthInterface
    { header_ :: JavaHeader
    }

instance JavaNull HealthInterface where
    javaNull = javaNullRecord "HealthInterface"

instance JavaEquals HealthInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HealthInterface where
    (==) = jrecordEquals

instance JavaObjectClass HealthInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> HealthInterface
fromHeader_ header = HealthInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (HealthInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


isAlive :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAlive object_ = jmethod object_ "isAlive" (\() -> (isAlive_impl (javaCast object_ :: HealthInterface))) ()

isAlive_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAlive_super object_ = (isAlive_impl (javaCast object_ :: HealthInterface))

isAlive_impl :: HealthInterface -> IO (Bool)
isAlive_impl this = javaAbstractMethod "isAlive"


damage :: (JavaObjectClass this_) => this_ -> Int -> IO (())
damage object_ a1 = jmethod object_ "damage" (\() -> (damage_impl (javaCast object_ :: HealthInterface))) () a1

damage_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
damage_super object_ a1 = (damage_impl (javaCast object_ :: HealthInterface)) a1

damage_impl :: HealthInterface -> Int -> IO (())
damage_impl this ahealth = javaAbstractMethod "damage"


heal :: (JavaObjectClass this_) => this_ -> Int -> IO (())
heal object_ a1 = jmethod object_ "heal" (\() -> (heal_impl (javaCast object_ :: HealthInterface))) () a1

heal_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
heal_super object_ a1 = (heal_impl (javaCast object_ :: HealthInterface)) a1

heal_impl :: HealthInterface -> Int -> IO (())
heal_impl this ahealth = javaAbstractMethod "heal"


healMax :: (JavaObjectClass this_) => this_ -> IO (())
healMax object_ = jmethod object_ "healMax" (\() -> (healMax_impl (javaCast object_ :: HealthInterface))) ()

healMax_super :: (JavaObjectClass this_) => this_ -> IO (())
healMax_super object_ = (healMax_impl (javaCast object_ :: HealthInterface))

healMax_impl :: HealthInterface -> IO (())
healMax_impl this = javaAbstractMethod "healMax"


getMaxHealth :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxHealth object_ = jmethod object_ "getMaxHealth" (\() -> (getMaxHealth_impl (javaCast object_ :: HealthInterface))) ()

getMaxHealth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxHealth_super object_ = (getMaxHealth_impl (javaCast object_ :: HealthInterface))

getMaxHealth_impl :: HealthInterface -> IO (Int)
getMaxHealth_impl this = javaAbstractMethod "getMaxHealth"


setMaxHealth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxHealth object_ a1 = jmethod object_ "setMaxHealth" (\() -> (setMaxHealth_impl (javaCast object_ :: HealthInterface))) () a1

setMaxHealth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxHealth_super object_ a1 = (setMaxHealth_impl (javaCast object_ :: HealthInterface)) a1

setMaxHealth_impl :: HealthInterface -> Int -> IO (())
setMaxHealth_impl this maxHealth = javaAbstractMethod "setMaxHealth"


getHealth :: (JavaObjectClass this_) => this_ -> IO (Int)
getHealth object_ = jmethod object_ "getHealth" (\() -> (getHealth_impl (javaCast object_ :: HealthInterface))) ()

getHealth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHealth_super object_ = (getHealth_impl (javaCast object_ :: HealthInterface))

getHealth_impl :: HealthInterface -> IO (Int)
getHealth_impl this = javaAbstractMethod "getHealth"


addListener :: (JavaObjectClass this_) => this_ -> HealthListenerInterface.HealthListenerInterface -> IO (())
addListener object_ a1 = jmethod object_ "addListener" (\() -> (addListener_impl (javaCast object_ :: HealthInterface))) () a1

addListener_super :: (JavaObjectClass this_) => this_ -> HealthListenerInterface.HealthListenerInterface -> IO (())
addListener_super object_ a1 = (addListener_impl (javaCast object_ :: HealthInterface)) a1

addListener_impl :: HealthInterface -> HealthListenerInterface.HealthListenerInterface -> IO (())
addListener_impl this healthListenerInterface = javaAbstractMethod "addListener"


