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
-- package org.allbinary.game.layer
module LayerPlacementTypeFactory where

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
import qualified LayerPlacementType -- same package or java.lang
import qualified Direction -- same package or java.lang
import qualified DirectionFactory -- org.allbinary.direction.DirectionFactory

data LayerPlacementTypeFactory = LayerPlacementTypeFactory
    { header_ :: JavaHeader
    , mAP :: IORef (LayerPlacementType.LayerPlacementType)
    , lEFT :: IORef (LayerPlacementType.LayerPlacementType)
    , dOWN :: IORef (LayerPlacementType.LayerPlacementType)
    , uP :: IORef (LayerPlacementType.LayerPlacementType)
    , rIGHT :: IORef (LayerPlacementType.LayerPlacementType)
    }

instance JavaNull LayerPlacementTypeFactory where
    javaNull = javaNullRecord "LayerPlacementTypeFactory"

instance JavaEquals LayerPlacementTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerPlacementTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass LayerPlacementTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LayerPlacementTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    mAP <- newIORef javaNull
    lEFT <- newIORef javaNull
    dOWN <- newIORef javaNull
    uP <- newIORef javaNull
    rIGHT <- newIORef javaNull
    let this = LayerPlacementTypeFactory header_ mAP lEFT dOWN uP rIGHT
    jregisterLevel header_ this
    pure this

initFields_ :: LayerPlacementTypeFactory -> IO ()
initFields_ this = do
    jset this.mAP =<< (LayerPlacementType.new_1 (2147483647 :: Int))
    jset this.lEFT =<< (LayerPlacementType.new_1 (jio (Direction.getValue ((jget ((jio (DirectionFactory.getInstance))).lEFT)))))
    jset this.dOWN =<< (LayerPlacementType.new_1 (jio (Direction.getValue ((jget ((jio (DirectionFactory.getInstance))).dOWN)))))
    jset this.uP =<< (LayerPlacementType.new_1 (jio (Direction.getValue ((jget ((jio (DirectionFactory.getInstance))).uP)))))
    jset this.rIGHT =<< (LayerPlacementType.new_1 (jio (Direction.getValue ((jget ((jio (DirectionFactory.getInstance))).rIGHT)))))
    pure ()

new_ :: IO LayerPlacementTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LayerPlacementTypeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LayerPlacementTypeFactory)
getInstance = do
        pure (LayerPlacementTypeFactory.instance_)


