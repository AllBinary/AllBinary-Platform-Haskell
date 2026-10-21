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
-- package org.allbinary.game.configuration.persistance
module GameDifficultyFactory where

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

data GameDifficultyFactory = GameDifficultyFactory
    { header_ :: JavaHeader
    , level :: IORef (Int)
    }

instance JavaNull GameDifficultyFactory where
    javaNull = javaNullRecord "GameDifficultyFactory"

instance JavaEquals GameDifficultyFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameDifficultyFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameDifficultyFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameDifficultyFactory
newRecord_ = do
    header_ <- newJavaHeader
    level <- newIORef 0
    let this = GameDifficultyFactory header_ level
    jregisterLevel header_ this
    jregisterMethod header_ "setLevel" (\() -> setLevel_impl this)
    jregisterMethod header_ "getLevel" (\() -> getLevel_impl this)
    pure this

initFields_ :: GameDifficultyFactory -> IO ()
initFields_ this = do
    jset this.level (0)
    pure ()

new_ :: IO GameDifficultyFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameDifficultyFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GameDifficultyFactory)
getInstance = do
        pure (GameDifficultyFactory.instance_)


setLevel :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLevel object_ a1 = jmethod object_ "setLevel" (\() -> (setLevel_impl (javaCast object_ :: GameDifficultyFactory))) () a1

setLevel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLevel_super object_ a1 = (setLevel_impl (javaCast object_ :: GameDifficultyFactory)) a1

setLevel_impl :: GameDifficultyFactory -> Int -> IO (())
setLevel_impl this level = do
        jset (this).level (level)
        pure ()


getLevel :: (JavaObjectClass this_) => this_ -> IO (Int)
getLevel object_ = jmethod object_ "getLevel" (\() -> (getLevel_impl (javaCast object_ :: GameDifficultyFactory))) ()

getLevel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLevel_super object_ = (getLevel_impl (javaCast object_ :: GameDifficultyFactory))

getLevel_impl :: GameDifficultyFactory -> IO (Int)
getLevel_impl this = do
        pure ((jget (this).level))


