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
-- package org.allbinary.game.configuration
module GameSpeed where

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
import qualified GameConfigurationCentral -- same package or java.lang
import qualified GameConfiguration -- same package or java.lang

data GameSpeed = GameSpeed
    { header_ :: JavaHeader
    }

instance JavaNull GameSpeed where
    javaNull = javaNullRecord "GameSpeed"

instance JavaEquals GameSpeed where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameSpeed where
    (==) = jrecordEquals

instance JavaObjectClass GameSpeed where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameSpeed
newRecord_ = do
    header_ <- newJavaHeader
    let this = GameSpeed header_
    jregisterLevel header_ this
    jregisterMethod header_ "getSpeed" (\() -> getSpeed_impl this)
    jregisterMethod header_ "getDelay" (\() -> getDelay_impl this)
    pure this

initFields_ :: GameSpeed -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GameSpeed
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameSpeed -> IO ()
init_ this = do
    initFields_ this


getSpeed :: (JavaObjectClass this_) => this_ -> IO (Int)
getSpeed object_ = jmethod object_ "getSpeed" (\() -> (getSpeed_impl (javaCast object_ :: GameSpeed))) ()

getSpeed_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSpeed_super object_ = (getSpeed_impl (javaCast object_ :: GameSpeed))

getSpeed_impl :: GameSpeed -> IO (Int)
getSpeed_impl this = do
        let speedGameConfiguration = (jget ((jio (GameConfigurationCentral.getInstance))).sPEED)
        pure (((((jio (GameConfiguration.getMaxValue speedGameConfiguration)) - (jio (GameConfiguration.getValue speedGameConfiguration))) + 1)))


getDelay :: (JavaObjectClass this_) => this_ -> IO (Int)
getDelay object_ = jmethod object_ "getDelay" (\() -> (getDelay_impl (javaCast object_ :: GameSpeed))) ()

getDelay_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDelay_super object_ = (getDelay_impl (javaCast object_ :: GameSpeed))

getDelay_impl :: GameSpeed -> IO (Int)
getDelay_impl this = do
        let speedGameConfiguration = (jget ((jio (GameConfigurationCentral.getInstance))).sPEED)
        pure ((19 * (((jio (GameConfiguration.getMaxValue speedGameConfiguration)) - (jio (GameConfiguration.getValue speedGameConfiguration))))))


getInstance :: IO (GameSpeed)
getInstance = do
        pure (GameSpeed.instance_)


