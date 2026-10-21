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
-- package org.allbinary.game.combat.destroy.event
module DestroyEventCircularStaticPool where

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
import qualified DestroyEventFactory -- same package or java.lang
import qualified DestroyedEvent -- same package or java.lang
import qualified AllBinaryGameCanvas -- org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryEventCircularPool -- org.allbinary.logic.util.event.AllBinaryEventCircularPool

data DestroyEventCircularStaticPool = DestroyEventCircularStaticPool
    { header_ :: JavaHeader
    , eVENT_POOL :: IORef (AllBinaryEventCircularPool.AllBinaryEventCircularPool)
    }

instance JavaNull DestroyEventCircularStaticPool where
    javaNull = javaNullRecord "DestroyEventCircularStaticPool"

instance JavaEquals DestroyEventCircularStaticPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DestroyEventCircularStaticPool where
    (==) = jrecordEquals

instance JavaObjectClass DestroyEventCircularStaticPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DestroyEventCircularStaticPool
newRecord_ = do
    header_ <- newJavaHeader
    eVENT_POOL <- newIORef javaNull
    let this = DestroyEventCircularStaticPool header_ eVENT_POOL
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getInstanceForLayer" (\() -> getInstanceForLayer_impl this)
    pure this

initFields_ :: DestroyEventCircularStaticPool -> IO ()
initFields_ this = do
    jset this.eVENT_POOL =<< (AllBinaryEventCircularPool.new_1 20)
    pure ()


getInstance :: IO (DestroyEventCircularStaticPool)
getInstance = do
        pure (DestroyEventCircularStaticPool.instance_)

new_ :: IO DestroyEventCircularStaticPool
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DestroyEventCircularStaticPool -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


init :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: DestroyEventCircularStaticPool))) () a1

init_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: DestroyEventCircularStaticPool)) a1

init_impl :: DestroyEventCircularStaticPool -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
init_impl this combatGameCanvas = do
        Control.Monad.void (AllBinaryEventCircularPool.initAllBinaryEventCircularPool ((jget (this).eVENT_POOL)) (jio (DestroyEventFactory.new_1 combatGameCanvas)))
        pure ()


-- throws Exception
getInstanceForLayer :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (DestroyedEvent.DestroyedEvent)
getInstanceForLayer object_ a1 = jmethod object_ "getInstanceForLayer" (\() -> (getInstanceForLayer_impl (javaCast object_ :: DestroyEventCircularStaticPool))) () a1

getInstanceForLayer_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (DestroyedEvent.DestroyedEvent)
getInstanceForLayer_super object_ a1 = (getInstanceForLayer_impl (javaCast object_ :: DestroyEventCircularStaticPool)) a1

getInstanceForLayer_impl :: DestroyEventCircularStaticPool -> AllBinaryLayer.AllBinaryLayer -> IO (DestroyedEvent.DestroyedEvent)
getInstanceForLayer_impl this layerInterface = do
        let destroyedEvent = (javaCast (jio (AllBinaryEventCircularPool.getNextInstance ((jget (this).eVENT_POOL)))) :: DestroyedEvent.DestroyedEvent)
        Control.Monad.void (DestroyedEvent.setLayerInterfaceForCircularStaticPool destroyedEvent layerInterface)
        pure (destroyedEvent)


