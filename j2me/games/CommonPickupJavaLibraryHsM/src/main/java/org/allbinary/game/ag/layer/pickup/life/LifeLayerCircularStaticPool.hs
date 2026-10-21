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
-- package org.allbinary.game.ag.layer.pickup.life
module LifeLayerCircularStaticPool (module LifeLayerCircularStaticPool, module AllBinaryLayerCircularPool) where

import AllBinaryLayerCircularPool hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl)
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
import qualified LifeLayer -- same package or java.lang
import qualified Life -- org.allbinary.game.ag.life.Life
import qualified LifeInterfaceCompositeInterface -- org.allbinary.game.ag.life.LifeInterfaceCompositeInterface
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerCircularPool -- org.allbinary.layer.AllBinaryLayerCircularPool
import qualified AllBinaryLayerFactoryInterface -- org.allbinary.layer.AllBinaryLayerFactoryInterface

data LifeLayerCircularStaticPool = LifeLayerCircularStaticPool
    { header_ :: JavaHeader
    , base :: AllBinaryLayerCircularPool.AllBinaryLayerCircularPool
    }

instance JavaNull LifeLayerCircularStaticPool where
    javaNull = javaNullRecord "LifeLayerCircularStaticPool"

instance JavaEquals LifeLayerCircularStaticPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LifeLayerCircularStaticPool where
    (==) = jrecordEquals

instance JavaObjectClass LifeLayerCircularStaticPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO LifeLayerCircularStaticPool
newRecord_ = do
    base <- AllBinaryLayerCircularPool.newRecord_
    let header_ = base.header_
    let this = LifeLayerCircularStaticPool header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    pure this

initFields_ :: LifeLayerCircularStaticPool -> IO ()
initFields_ this = do
    pure ()

new_2 :: AllBinaryLayerFactoryInterface.AllBinaryLayerFactoryInterface -> Int -> IO LifeLayerCircularStaticPool
new_2 allbinaryLayerFactoryInterface total = do
    this <- newRecord_
    init_2 this allbinaryLayerFactoryInterface total
    pure this

init_2 :: LifeLayerCircularStaticPool -> AllBinaryLayerFactoryInterface.AllBinaryLayerFactoryInterface -> Int -> IO ()
init_2 this allbinaryLayerFactoryInterface total = do
        AllBinaryLayerCircularPool.init_ this.base
        initFields_ this
        Control.Monad.void (AllBinaryLayerCircularPool.initAllBinaryLayerCircularPool_super this.base allbinaryLayerFactoryInterface total)
        pure ()


-- throws Exception
visit :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
visit object_ a1 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: LifeLayerCircularStaticPool))) () a1

visit_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
visit_super object_ a1 = (visit_impl (javaCast object_ :: LifeLayerCircularStaticPool)) a1

visit_impl :: LifeLayerCircularStaticPool -> AllBinaryLayer.AllBinaryLayer -> IO (())
visit_impl this sourceLayerInterface = do
        let lifeLayer = (javaCast (jio (AllBinaryLayerCircularPool.getNextInstance this)) :: LifeLayer.LifeLayer)
        let lifeInterfaceCompositeInterface = (javaCast sourceLayerInterface :: LifeInterfaceCompositeInterface.LifeInterfaceCompositeInterface)
        lifeInterface <- (LifeInterfaceCompositeInterface.getLifeInterface lifeInterfaceCompositeInterface)
        Control.Monad.void (LifeLayer.visit lifeLayer lifeInterface)
        pure ()


