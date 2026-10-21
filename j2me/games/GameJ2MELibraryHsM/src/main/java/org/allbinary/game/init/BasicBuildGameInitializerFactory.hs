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
-- package org.allbinary.game.init
module BasicBuildGameInitializerFactory where

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
import qualified BaseGameInitialization -- same package or java.lang
import qualified GameInitializationInterface -- same package or java.lang
import qualified GameInitializationInterfaceFactoryInterface

-- implements GameInitializationInterfaceFactoryInterface
data BasicBuildGameInitializerFactory = BasicBuildGameInitializerFactory
    { header_ :: JavaHeader
    }

instance JavaNull BasicBuildGameInitializerFactory where
    javaNull = javaNullRecord "BasicBuildGameInitializerFactory"

instance JavaEquals BasicBuildGameInitializerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicBuildGameInitializerFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicBuildGameInitializerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY #-}
nULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicBuildGameInitializerFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = BasicBuildGameInitializerFactory header_
    jregisterLevel header_ this
    GameInitializationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: BasicBuildGameInitializerFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BasicBuildGameInitializerFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicBuildGameInitializerFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> IO (GameInitializationInterface.GameInitializationInterface)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: BasicBuildGameInitializerFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (GameInitializationInterface.GameInitializationInterface)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: BasicBuildGameInitializerFactory))

getInstance_impl :: BasicBuildGameInitializerFactory -> IO (GameInitializationInterface.GameInitializationInterface)
getInstance_impl this = do
        pure ((javaCast BaseGameInitialization.nULL_BASE_GAME_INITIALIZATION :: GameInitializationInterface.GameInitializationInterface))


