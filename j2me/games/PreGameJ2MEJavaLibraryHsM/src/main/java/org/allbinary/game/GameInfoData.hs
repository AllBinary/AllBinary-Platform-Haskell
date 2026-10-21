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
module GameInfoData where

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

data GameInfoData = GameInfoData
    { header_ :: JavaHeader
    , gAME_TYPE :: IORef (String)
    , gAME_MODE :: IORef (String)
    , pLAYER_TYPE :: IORef (String)
    , hIGHEST_LEVEL :: IORef (String)
    , cURRENT_LEVEL :: IORef (String)
    , sOFTWARE_INFORMATION :: IORef (String)
    }

instance JavaNull GameInfoData where
    javaNull = javaNullRecord "GameInfoData"

instance JavaEquals GameInfoData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInfoData where
    (==) = jrecordEquals

instance JavaObjectClass GameInfoData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameInfoData
newRecord_ = do
    header_ <- newJavaHeader
    gAME_TYPE <- newIORef ""
    gAME_MODE <- newIORef ""
    pLAYER_TYPE <- newIORef ""
    hIGHEST_LEVEL <- newIORef ""
    cURRENT_LEVEL <- newIORef ""
    sOFTWARE_INFORMATION <- newIORef ""
    let this = GameInfoData header_ gAME_TYPE gAME_MODE pLAYER_TYPE hIGHEST_LEVEL cURRENT_LEVEL sOFTWARE_INFORMATION
    jregisterLevel header_ this
    pure this

initFields_ :: GameInfoData -> IO ()
initFields_ this = do
    jset this.gAME_TYPE ("GAME_TYPE")
    jset this.gAME_MODE ("GAME_MODE")
    jset this.pLAYER_TYPE ("PLAYER_TYPE")
    jset this.hIGHEST_LEVEL ("HIGHEST_LEVEL")
    jset this.cURRENT_LEVEL ("CURRENT_LEVEL")
    jset this.sOFTWARE_INFORMATION ("SOFTWARE_INFORMATION")
    pure ()


getInstance :: IO (GameInfoData)
getInstance = do
        pure (GameInfoData.instance_)

new_ :: IO GameInfoData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameInfoData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


