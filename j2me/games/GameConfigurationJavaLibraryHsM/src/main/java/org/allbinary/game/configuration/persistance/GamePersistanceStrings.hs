{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
module GamePersistanceStrings where

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

data GamePersistanceStrings = GamePersistanceStrings
    { header_ :: JavaHeader
    , sAVED_GAME_RECORD_ID :: IORef (String)
    , sAVED_GAME_CONFIGURATION_RECORD_ID :: IORef (String)
    , dEFAULT_INPUT_MAPPING_RECORD_ID :: IORef (String)
    , sAVED_INPUT_CONFIGURATION_RECORD_ID :: IORef (String)
    }

instance JavaNull GamePersistanceStrings where
    javaNull = javaNullRecord "GamePersistanceStrings"

instance JavaEquals GamePersistanceStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GamePersistanceStrings where
    (==) = jrecordEquals

instance JavaObjectClass GamePersistanceStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GamePersistanceStrings
newRecord_ = do
    header_ <- newJavaHeader
    sAVED_GAME_RECORD_ID <- newIORef ""
    sAVED_GAME_CONFIGURATION_RECORD_ID <- newIORef ""
    dEFAULT_INPUT_MAPPING_RECORD_ID <- newIORef ""
    sAVED_INPUT_CONFIGURATION_RECORD_ID <- newIORef ""
    let this = GamePersistanceStrings header_ sAVED_GAME_RECORD_ID sAVED_GAME_CONFIGURATION_RECORD_ID dEFAULT_INPUT_MAPPING_RECORD_ID sAVED_INPUT_CONFIGURATION_RECORD_ID
    jregisterLevel header_ this
    pure this

initFields_ :: GamePersistanceStrings -> IO ()
initFields_ this = do
    jset this.sAVED_GAME_RECORD_ID ("_SG")
    jset this.sAVED_GAME_CONFIGURATION_RECORD_ID ("_SGC")
    jset this.dEFAULT_INPUT_MAPPING_RECORD_ID ("_DIM")
    jset this.sAVED_INPUT_CONFIGURATION_RECORD_ID ("_SIC")
    pure ()

new_ :: IO GamePersistanceStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GamePersistanceStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GamePersistanceStrings)
getInstance = do
        pure (GamePersistanceStrings.instance_)


