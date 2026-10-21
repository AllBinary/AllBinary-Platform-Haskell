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
-- package org.allbinary.input.automation.module.game
module MagicCharacterGameObjectInterface where

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
import qualified HitPointGameObjectInterface -- same package or java.lang
import qualified MagicGameObjectInterface -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data MagicCharacterGameObjectInterface = MagicCharacterGameObjectInterface
    { header_ :: JavaHeader
    }

instance JavaNull MagicCharacterGameObjectInterface where
    javaNull = javaNullRecord "MagicCharacterGameObjectInterface"

instance JavaEquals MagicCharacterGameObjectInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MagicCharacterGameObjectInterface where
    (==) = jrecordEquals

instance JavaObjectClass MagicCharacterGameObjectInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> MagicCharacterGameObjectInterface
fromHeader_ header = MagicCharacterGameObjectInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (MagicCharacterGameObjectInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getHitPointGameObjectInterface :: (JavaObjectClass this_) => this_ -> IO (HitPointGameObjectInterface.HitPointGameObjectInterface)
getHitPointGameObjectInterface object_ = jmethod object_ "getHitPointGameObjectInterface" (\() -> (getHitPointGameObjectInterface_impl (javaCast object_ :: MagicCharacterGameObjectInterface))) ()

getHitPointGameObjectInterface_super :: (JavaObjectClass this_) => this_ -> IO (HitPointGameObjectInterface.HitPointGameObjectInterface)
getHitPointGameObjectInterface_super object_ = (getHitPointGameObjectInterface_impl (javaCast object_ :: MagicCharacterGameObjectInterface))

getHitPointGameObjectInterface_impl :: MagicCharacterGameObjectInterface -> IO (HitPointGameObjectInterface.HitPointGameObjectInterface)
getHitPointGameObjectInterface_impl this = javaAbstractMethod "getHitPointGameObjectInterface"


getMagicGameObjectInterface :: (JavaObjectClass this_) => this_ -> IO (MagicGameObjectInterface.MagicGameObjectInterface)
getMagicGameObjectInterface object_ = jmethod object_ "getMagicGameObjectInterface" (\() -> (getMagicGameObjectInterface_impl (javaCast object_ :: MagicCharacterGameObjectInterface))) ()

getMagicGameObjectInterface_super :: (JavaObjectClass this_) => this_ -> IO (MagicGameObjectInterface.MagicGameObjectInterface)
getMagicGameObjectInterface_super object_ = (getMagicGameObjectInterface_impl (javaCast object_ :: MagicCharacterGameObjectInterface))

getMagicGameObjectInterface_impl :: MagicCharacterGameObjectInterface -> IO (MagicGameObjectInterface.MagicGameObjectInterface)
getMagicGameObjectInterface_impl this = javaAbstractMethod "getMagicGameObjectInterface"


