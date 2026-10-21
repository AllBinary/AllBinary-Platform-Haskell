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
-- package org.allbinary.game.ag.life
module LifeInterface where

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

-- Java interface: the classes that implement it have these functions
data LifeInterface = LifeInterface
    { header_ :: JavaHeader
    }

instance JavaNull LifeInterface where
    javaNull = javaNullRecord "LifeInterface"

instance JavaEquals LifeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LifeInterface where
    (==) = jrecordEquals

instance JavaObjectClass LifeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> LifeInterface
fromHeader_ header = LifeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (LifeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


get :: (JavaObjectClass this_) => this_ -> IO (Int16)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: LifeInterface))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
get_super object_ = (get_impl (javaCast object_ :: LifeInterface))

get_impl :: LifeInterface -> IO (Int16)
get_impl this = javaAbstractMethod "get"


set :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: LifeInterface))) () a1

set_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: LifeInterface)) a1

set_impl :: LifeInterface -> Int16 -> IO (())
set_impl this lives = javaAbstractMethod "set"


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: LifeInterface))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: LifeInterface))

reset_impl :: LifeInterface -> IO (())
reset_impl this = javaAbstractMethod "reset"


add :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: LifeInterface))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: LifeInterface)) a1

add_impl :: LifeInterface -> Int16 -> IO (())
add_impl this lives = javaAbstractMethod "add"


deaths :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
deaths object_ a1 = jmethod object_ "deaths" (\() -> (deaths_impl (javaCast object_ :: LifeInterface))) () a1

deaths_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
deaths_super object_ a1 = (deaths_impl (javaCast object_ :: LifeInterface)) a1

deaths_impl :: LifeInterface -> Int16 -> IO (())
deaths_impl this lives = javaAbstractMethod "deaths"


getMaxlives :: (JavaObjectClass this_) => this_ -> IO (Int16)
getMaxlives object_ = jmethod object_ "getMaxlives" (\() -> (getMaxlives_impl (javaCast object_ :: LifeInterface))) ()

getMaxlives_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
getMaxlives_super object_ = (getMaxlives_impl (javaCast object_ :: LifeInterface))

getMaxlives_impl :: LifeInterface -> IO (Int16)
getMaxlives_impl this = javaAbstractMethod "getMaxlives"


isAlive :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAlive object_ = jmethod object_ "isAlive" (\() -> (isAlive_impl (javaCast object_ :: LifeInterface))) ()

isAlive_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAlive_super object_ = (isAlive_impl (javaCast object_ :: LifeInterface))

isAlive_impl :: LifeInterface -> IO (Bool)
isAlive_impl this = javaAbstractMethod "isAlive"


