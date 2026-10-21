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
-- package org.allbinary.game.combat.damage
module DamageableBaseBehavior where

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
import qualified Class -- same package or java.lang
import qualified DamageableInterface

-- implements DamageableInterface
data DamageableBaseBehavior = DamageableBaseBehavior
    { header_ :: JavaHeader
    }

instance JavaNull DamageableBaseBehavior where
    javaNull = javaNullRecord "DamageableBaseBehavior"

instance JavaEquals DamageableBaseBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DamageableBaseBehavior where
    (==) = jrecordEquals

instance JavaObjectClass DamageableBaseBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DamageableBaseBehavior
newRecord_ = do
    header_ <- newJavaHeader
    let this = DamageableBaseBehavior header_
    jregisterLevel header_ this
    DamageableInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "damage" (\() -> damage_impl this)
    jregisterMethod header_ "getDamage" (\() -> getDamage_impl this)
    pure this

initFields_ :: DamageableBaseBehavior -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DamageableBaseBehavior
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DamageableBaseBehavior -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (DamageableBaseBehavior)
getInstance = do
        pure (DamageableBaseBehavior.instance_)


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: DamageableBaseBehavior))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: DamageableBaseBehavior))

getName_impl :: DamageableBaseBehavior -> IO (String)
getName_impl this = do
        (Class.getName ((jio (jobjectGetClass this))))


-- throws Exception
damage :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage object_ a1 a2 = jmethod object_ "damage" (\() -> (damage_impl (javaCast object_ :: DamageableBaseBehavior))) () a1 a2

damage_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage_super object_ a1 a2 = (damage_impl (javaCast object_ :: DamageableBaseBehavior)) a1 a2

damage_impl :: DamageableBaseBehavior -> Int -> Int -> IO (())
damage_impl this damage damageType = do
        pure ()


-- throws Exception
getDamage :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamage object_ a1 = jmethod object_ "getDamage" (\() -> (getDamage_impl (javaCast object_ :: DamageableBaseBehavior))) () a1

getDamage_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamage_super object_ a1 = (getDamage_impl (javaCast object_ :: DamageableBaseBehavior)) a1

getDamage_impl :: DamageableBaseBehavior -> Int -> IO (Int)
getDamage_impl this damageType = do
        pure (6000)


