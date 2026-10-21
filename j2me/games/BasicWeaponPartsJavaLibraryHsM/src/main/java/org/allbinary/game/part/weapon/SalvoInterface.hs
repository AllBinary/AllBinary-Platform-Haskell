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
-- package org.allbinary.game.part.weapon
module SalvoInterface where

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
import qualified WeaponProperties -- org.allbinary.game.combat.weapon.WeaponProperties
import qualified ScoreableInterface -- org.allbinary.game.score.ScoreableInterface
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager

-- Java interface: the classes that implement it have these functions
data SalvoInterface = SalvoInterface
    { header_ :: JavaHeader
    }

instance JavaNull SalvoInterface where
    javaNull = javaNullRecord "SalvoInterface"

instance JavaEquals SalvoInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SalvoInterface where
    (==) = jrecordEquals

instance JavaObjectClass SalvoInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> SalvoInterface
fromHeader_ header = SalvoInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (SalvoInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> IO (())
process object_ a1 a2 a3 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: SalvoInterface))) () a1 a2 a3

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> IO (())
process_super object_ a1 a2 a3 = (process_impl (javaCast object_ :: SalvoInterface)) a1 a2 a3

process_impl :: SalvoInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> IO (())
process_impl this allbinaryLayerManager angle otherAngle = javaAbstractMethod "process"


-- throws Exception
processScore :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (())
processScore object_ a1 a2 a3 a4 a5 = jmethod object_ "processScore" (\() -> (processScore_impl (javaCast object_ :: SalvoInterface))) () a1 a2 a3 a4 a5

processScore_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (())
processScore_super object_ a1 a2 a3 a4 a5 = (processScore_impl (javaCast object_ :: SalvoInterface)) a1 a2 a3 a4 a5

processScore_impl :: SalvoInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (())
processScore_impl this allbinaryLayerManager angle otherAngle weaponProperties scoreableInterface = javaAbstractMethod "processScore"


