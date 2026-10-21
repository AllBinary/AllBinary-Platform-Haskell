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
-- package org.allbinary.game.ag.layer.weapon.mine
module MineLayerCircularStaticPool where

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
import qualified MineCountedPickedUpLayerInterfaceFactory -- same package or java.lang
import qualified MineLayerFactory -- same package or java.lang
import qualified WeaponLayerCircularPool -- org.allbinary.game.layer.weapon.WeaponLayerCircularPool
import qualified ViewPositionFactoryInterface -- org.allbinary.view.ViewPositionFactoryInterface

data MineLayerCircularStaticPool = MineLayerCircularStaticPool
    { header_ :: JavaHeader
    }

instance JavaNull MineLayerCircularStaticPool where
    javaNull = javaNullRecord "MineLayerCircularStaticPool"

instance JavaEquals MineLayerCircularStaticPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MineLayerCircularStaticPool where
    (==) = jrecordEquals

instance JavaObjectClass MineLayerCircularStaticPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE wEAPON_LAYER_CIRCULAR_STATIC_POOL #-}
wEAPON_LAYER_CIRCULAR_STATIC_POOL = unsafePerformIO ((WeaponLayerCircularPool.new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MineLayerCircularStaticPool
newRecord_ = do
    header_ <- newJavaHeader
    let this = MineLayerCircularStaticPool header_
    jregisterLevel header_ this
    pure this

initFields_ :: MineLayerCircularStaticPool -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MineLayerCircularStaticPool
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MineLayerCircularStaticPool -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
init :: ViewPositionFactoryInterface.ViewPositionFactoryInterface -> IO (())
init viewPositionFactoryInterface = do
        Control.Monad.void (MineCountedPickedUpLayerInterfaceFactory.init)
        Control.Monad.void (initAllBinaryLayerCircularPool ((jget MineLayerCircularStaticPool.wEAPON_LAYER_CIRCULAR_STATIC_POOL)) (jio (MineLayerFactory.new_1 viewPositionFactoryInterface)) 20)
        pure ()


getInstance :: IO (WeaponLayerCircularPool.WeaponLayerCircularPool)
getInstance = do
        pure ((jget MineLayerCircularStaticPool.wEAPON_LAYER_CIRCULAR_STATIC_POOL))


