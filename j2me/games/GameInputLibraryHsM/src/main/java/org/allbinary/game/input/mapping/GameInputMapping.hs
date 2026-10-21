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
-- package org.allbinary.game.input.mapping
module GameInputMapping where

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
import qualified GameKey -- org.allbinary.game.input.GameKey
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data GameInputMapping = GameInputMapping
    { header_ :: JavaHeader
    , name :: IORef (String)
    , gameKey :: IORef (GameKey.GameKey)
    }

instance JavaNull GameInputMapping where
    javaNull = javaNullRecord "GameInputMapping"

instance JavaEquals GameInputMapping where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInputMapping where
    (==) = jrecordEquals

instance JavaObjectClass GameInputMapping where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameInputMapping
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    gameKey <- newIORef javaNull
    let this = GameInputMapping header_ name gameKey
    jregisterLevel header_ this
    jregisterMethod header_ "setGameKey" (\() -> setGameKey_impl this)
    jregisterMethod header_ "getGameKey" (\() -> getGameKey_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    pure this

initFields_ :: GameInputMapping -> IO ()
initFields_ this = do
    jset this.name ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.gameKey (GameKey.nULL_GAME_KEY)
    pure ()

new_2 :: String -> GameKey.GameKey -> IO GameInputMapping
new_2 name gameKey = do
    this <- newRecord_
    init_2 this name gameKey
    pure this

init_2 :: GameInputMapping -> String -> GameKey.GameKey -> IO ()
init_2 this name gameKey = do
        initFields_ this
        Control.Monad.void (GameInputMapping.setName this name)
        Control.Monad.void (GameInputMapping.setGameKey this gameKey)
        pure ()


setGameKey :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> IO (())
setGameKey object_ a1 = jmethod object_ "setGameKey" (\() -> (setGameKey_impl (javaCast object_ :: GameInputMapping))) () a1

setGameKey_super :: (JavaObjectClass this_) => this_ -> GameKey.GameKey -> IO (())
setGameKey_super object_ a1 = (setGameKey_impl (javaCast object_ :: GameInputMapping)) a1

setGameKey_impl :: GameInputMapping -> GameKey.GameKey -> IO (())
setGameKey_impl this gameKey = do
        jset (this).gameKey (gameKey)
        pure ()


getGameKey :: (JavaObjectClass this_) => this_ -> IO (GameKey.GameKey)
getGameKey object_ = jmethod object_ "getGameKey" (\() -> (getGameKey_impl (javaCast object_ :: GameInputMapping))) ()

getGameKey_super :: (JavaObjectClass this_) => this_ -> IO (GameKey.GameKey)
getGameKey_super object_ = (getGameKey_impl (javaCast object_ :: GameInputMapping))

getGameKey_impl :: GameInputMapping -> IO (GameKey.GameKey)
getGameKey_impl this = do
        pure ((jget (this).gameKey))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: GameInputMapping))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: GameInputMapping)) a1

setName_impl :: GameInputMapping -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: GameInputMapping))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: GameInputMapping))

getName_impl :: GameInputMapping -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


