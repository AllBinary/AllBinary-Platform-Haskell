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
-- package org.allbinary.game
module GameInfoCopyFactory where

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
import qualified GameInfo -- same package or java.lang

data GameInfoCopyFactory = GameInfoCopyFactory
    { header_ :: JavaHeader
    }

instance JavaNull GameInfoCopyFactory where
    javaNull = javaNullRecord "GameInfoCopyFactory"

instance JavaEquals GameInfoCopyFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInfoCopyFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameInfoCopyFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameInfoCopyFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = GameInfoCopyFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: GameInfoCopyFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GameInfoCopyFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameInfoCopyFactory -> IO ()
init_ this = do
    initFields_ this


getInstanceMaxLevel :: GameInfo.GameInfo -> Int -> IO (GameInfo.GameInfo)
getInstanceMaxLevel gameInfo maxLevel = do
        (GameInfo.new_5 (jio (GameInfo.getGameType gameInfo)) (jio (GameInfo.getGameMode gameInfo)) (jio (GameInfo.getPlayerType gameInfo)) maxLevel (jio (GameInfo.getCurrentLevel gameInfo)))


getInstance :: GameInfo.GameInfo -> IO (GameInfo.GameInfo)
getInstance gameInfo = do
        (GameInfo.new_5 (jio (GameInfo.getGameType gameInfo)) (jio (GameInfo.getGameMode gameInfo)) (jio (GameInfo.getPlayerType gameInfo)) (jio (GameInfo.getHighestLevel gameInfo)) (jio (GameInfo.getCurrentLevel gameInfo)))


