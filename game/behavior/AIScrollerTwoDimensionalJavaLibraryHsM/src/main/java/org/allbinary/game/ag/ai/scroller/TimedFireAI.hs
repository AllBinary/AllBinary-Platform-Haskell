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
-- package org.allbinary.game.ag.ai.scroller
module TimedFireAI (module TimedFireAI, module BasicAI) where

import BasicAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAI, processAI_super, processAI_impl, tIME, maxFireDelayTimeHelper, delay)
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
import qualified TimeFiredInterface -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified BasicAI -- org.allbinary.game.ai.BasicAI
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper

data TimedFireAI = TimedFireAI
    { header_ :: JavaHeader
    , base :: BasicAI.BasicAI
    , maxFireDelayTimeHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , delay :: IORef (Int)
    }

instance JavaNull TimedFireAI where
    javaNull = javaNullRecord "TimedFireAI"

instance JavaEquals TimedFireAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimedFireAI where
    (==) = jrecordEquals

instance JavaObjectClass TimedFireAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE tIME #-}
tIME = unsafePerformIO ((SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 1))

newRecord_ :: IO TimedFireAI
newRecord_ = do
    base <- BasicAI.newRecord_
    let header_ = base.header_
    maxFireDelayTimeHelper <- newIORef javaNull
    delay <- newIORef 0
    let this = TimedFireAI header_ base maxFireDelayTimeHelper delay
    jregisterLevel header_ this
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    pure this

initFields_ :: TimedFireAI -> IO ()
initFields_ this = do
    jset this.maxFireDelayTimeHelper =<< (TimeDelayHelper.new_1 0)
    jset this.delay (0)
    pure ()

new_3 :: Int -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO TimedFireAI
new_3 delay ownerLayerInterface gameInput = do
    this <- newRecord_
    init_3 this delay ownerLayerInterface gameInput
    pure this

init_3 :: TimedFireAI -> Int -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_3 this delay ownerLayerInterface gameInput = do
        BasicAI.init_2 this.base (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).delay (delay)
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: TimedFireAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: TimedFireAI)) a1

processAI_impl :: TimedFireAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        let timeFiredInterface = (javaCast (jio (BasicAI.getOwnerLayerInterface this)) :: TimeFiredInterface.TimeFiredInterface)
        when ((jio (TimeDelayHelper.isTime ((jget (this).maxFireDelayTimeHelper)) (jget ((jio (GameTickTimeDelayHelperFactory.getInstance))).startTime))) && (((jio (TimeFiredInterface.getLastFireTime timeFiredInterface)) + (jget ((jget (this).maxFireDelayTimeHelper)).delay)) < (jio (TimeDelayHelper.getStartTime ((jget (this).maxFireDelayTimeHelper)))))) $ do
            Control.Monad.void (BasicAI.processKeyAI_super this.base (Canvas.kEY_NUM1))
            jset ((jget (this).maxFireDelayTimeHelper)).delay ((jget (this).delay))
        pure ()


