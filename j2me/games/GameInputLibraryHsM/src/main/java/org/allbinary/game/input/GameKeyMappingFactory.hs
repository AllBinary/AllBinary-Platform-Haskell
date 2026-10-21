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
-- package org.allbinary.game.input
module GameKeyMappingFactory where

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
import qualified Any -- same package or java.lang
import qualified GameKey -- same package or java.lang
import qualified InputFactory -- same package or java.lang
import qualified GameKeyFactory -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil

data GameKeyMappingFactory = GameKeyMappingFactory
    { header_ :: JavaHeader
    , intKeyToGameKey :: IORef (JavaArray (GameKey.GameKey))
    }

instance JavaNull GameKeyMappingFactory where
    javaNull = javaNullRecord "GameKeyMappingFactory"

instance JavaEquals GameKeyMappingFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameKeyMappingFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameKeyMappingFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameKeyMappingFactory
newRecord_ = do
    header_ <- newJavaHeader
    intKeyToGameKey <- newIORef javaNull
    let this = GameKeyMappingFactory header_ intKeyToGameKey
    jregisterLevel header_ this
    jregisterMethod header_ "getGameKey" (\() -> getGameKey_impl this)
    jregisterMethod header_ "setGameKey" (\() -> setGameKey_impl this)
    pure this

initFields_ :: GameKeyMappingFactory -> IO ()
initFields_ this = do
    jset this.intKeyToGameKey ((jnewArray ((jget ((jio (InputFactory.getInstance))).mAX)) javaNull))
    pure ()


getInstance :: IO (GameKeyMappingFactory)
getInstance = do
        when ((jget GameKeyMappingFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset GameKeyMappingFactory.instance_ (assignedValue)
        pure ((javaCast (jget GameKeyMappingFactory.instance_) :: GameKeyMappingFactory))

new_ :: IO GameKeyMappingFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameKeyMappingFactory -> IO ()
init_ this = do
        initFields_ this
        gameKeyFactory <- (GameKeyFactory.getInstance)
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).nONE))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).uP))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).dOWN))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).lEFT))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).rIGHT))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).kEY_POUND))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).kEY_STAR))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).kEY_NUM0))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).kEY_NUM1))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).kEY_NUM2))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).kEY_NUM3))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).kEY_NUM4))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).kEY_NUM5))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).kEY_NUM6))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).kEY_NUM7))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).kEY_NUM8))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).kEY_NUM9))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).gAME_A))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).gAME_B))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).gAME_C))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).gAME_D))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).fIRE))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).lEVEL_DOWN))
        Control.Monad.void (GameKeyMappingFactory.setGameKey this (jget (gameKeyFactory).lEVEL_UP))
        pure ()


getGameKey :: (JavaObjectClass this_) => this_ -> Int -> IO (GameKey.GameKey)
getGameKey object_ a1 = jmethod object_ "getGameKey" (\() -> (getGameKey_impl (javaCast object_ :: GameKeyMappingFactory))) () a1

getGameKey_super :: (JavaObjectClass this_) => this_ -> Int -> IO (GameKey.GameKey)
getGameKey_super object_ a1 = (getGameKey_impl (javaCast object_ :: GameKeyMappingFactory)) a1

getGameKey_impl :: GameKeyMappingFactory -> Int -> IO (GameKey.GameKey)
getGameKey_impl this key = do
        pure ((jindex ((jget (this).intKeyToGameKey)) (key)))


setGameKey :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> IO (())
setGameKey object_ a1 = jmethod object_ "setGameKey" (\() -> (setGameKey_impl (javaCast object_ :: GameKeyMappingFactory))) () a1

setGameKey_super :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> IO (())
setGameKey_super object_ a1 = (setGameKey_impl (javaCast object_ :: GameKeyMappingFactory)) a1

setGameKey_impl :: GameKeyMappingFactory -> GameKey.GameKey -> IO (())
setGameKey_impl this gameKey = do
        jsetIndex ((jget (this).intKeyToGameKey)) ((jio (GameKey.getId gameKey))) (gameKey)
        pure ()


