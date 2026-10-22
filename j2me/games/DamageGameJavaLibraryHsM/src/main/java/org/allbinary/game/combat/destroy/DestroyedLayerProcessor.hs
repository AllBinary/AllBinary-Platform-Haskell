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
-- package org.allbinary.game.combat.destroy
module DestroyedLayerProcessor (module DestroyedLayerProcessor, module BasicLayerProcessor) where

import BasicLayerProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, getInstance, getInstance_super, getInstance_impl, process, process_super, process_impl, dESTROYED_LAYER_PROCESSOR)
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
import qualified Any -- same package or java.lang
import qualified DestroyEventCircularStaticPool -- org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool
import qualified DestroyedEvent -- org.allbinary.game.combat.destroy.event.DestroyedEvent
import qualified DestroyedEventHandler -- org.allbinary.game.combat.destroy.event.DestroyedEventHandler
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified BasicLayerProcessor -- org.allbinary.layer.BasicLayerProcessor
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data DestroyedLayerProcessor = DestroyedLayerProcessor
    { header_ :: JavaHeader
    , base :: BasicLayerProcessor.BasicLayerProcessor
    }

instance JavaNull DestroyedLayerProcessor where
    javaNull = javaNullRecord "DestroyedLayerProcessor"

instance JavaEquals DestroyedLayerProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DestroyedLayerProcessor where
    (==) = jrecordEquals

instance JavaObjectClass DestroyedLayerProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE dESTROYED_LAYER_PROCESSOR #-}
dESTROYED_LAYER_PROCESSOR = unsafePerformIO (newIORef (BasicLayerProcessor.nULL_LAYER_PROCESSOR))

newRecord_ :: IO DestroyedLayerProcessor
newRecord_ = do
    base <- BasicLayerProcessor.newRecord_
    let header_ = base.header_
    let this = DestroyedLayerProcessor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: DestroyedLayerProcessor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DestroyedLayerProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DestroyedLayerProcessor -> IO ()
init_ this = do
        BasicLayerProcessor.init_ this.base
        initFields_ this
        pure ()
        pure ()


init :: IO (())
init = do
        assignedValue <- (new_)
        jset DestroyedLayerProcessor.dESTROYED_LAYER_PROCESSOR (assignedValue)
        pure ()


getInstance :: IO (BasicLayerProcessor.BasicLayerProcessor)
getInstance = do
        pure ((jget DestroyedLayerProcessor.dESTROYED_LAYER_PROCESSOR))


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: DestroyedLayerProcessor))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: DestroyedLayerProcessor)) a1

process_impl :: DestroyedLayerProcessor -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process_impl this allBinaryLayerManager = do
        list <- (BasicLayerProcessor.getList this)
        size <- (BasicArrayList.size list)
        destroyedEventHandler <- (DestroyedEventHandler.getInstance)
        destroyEventCircularStaticPool <- (DestroyEventCircularStaticPool.getInstance)
        destroyedEvent <- newIORef (javaNull)
        layerInterface <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let layerInterfaceCanBeNull = (jindex ((jget (list).objectArray)) (index))
            if (layerInterfaceCanBeNull /= javaNull) then do
                jset layerInterface ((javaCast layerInterfaceCanBeNull :: AllBinaryLayer.AllBinaryLayer))
                Control.Monad.void (AllBinaryLayerManager.remove allBinaryLayerManager (jget layerInterface))
                assignedValue <- (DestroyEventCircularStaticPool.getInstanceForLayer destroyEventCircularStaticPool (jget layerInterface))
                jset destroyedEvent (assignedValue)
                Control.Monad.void (DestroyedEventHandler.fireEvent destroyedEventHandler (javaCast (jget destroyedEvent)))
            else do
                commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (BasicArrayList.clear list)
        pure ()


