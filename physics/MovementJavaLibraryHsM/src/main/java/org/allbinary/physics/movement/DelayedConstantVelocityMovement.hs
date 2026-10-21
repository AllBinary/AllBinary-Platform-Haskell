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
-- package org.allbinary.physics.movement
module DelayedConstantVelocityMovement (module DelayedConstantVelocityMovement, module BasicConstantVelocityMovement) where

import BasicConstantVelocityMovement hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, process, process_super, process_impl, timeDelayHelper)
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
import qualified AllBinaryGameLayer -- org.allbinary.game.layer.AllBinaryGameLayer
import qualified BasicVelocityProperties -- org.allbinary.game.physics.velocity.BasicVelocityProperties
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified BasicConstantVelocityMovement

data DelayedConstantVelocityMovement = DelayedConstantVelocityMovement
    { header_ :: JavaHeader
    , base :: BasicConstantVelocityMovement.BasicConstantVelocityMovement
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    }

instance JavaNull DelayedConstantVelocityMovement where
    javaNull = javaNullRecord "DelayedConstantVelocityMovement"

instance JavaEquals DelayedConstantVelocityMovement where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DelayedConstantVelocityMovement where
    (==) = jrecordEquals

instance JavaObjectClass DelayedConstantVelocityMovement where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DelayedConstantVelocityMovement
newRecord_ = do
    base <- BasicConstantVelocityMovement.newRecord_
    let header_ = base.header_
    timeDelayHelper <- newIORef javaNull
    let this = DelayedConstantVelocityMovement header_ base timeDelayHelper
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: DelayedConstantVelocityMovement -> IO ()
initFields_ this = do
    jset this.timeDelayHelper =<< (TimeDelayHelper.new_1 60)
    pure ()

new_2 :: BasicDecimal.BasicDecimal -> BasicVelocityProperties.BasicVelocityProperties -> IO DelayedConstantVelocityMovement
new_2 basicDecimal velocityProperties = do
    this <- newRecord_
    init_2 this basicDecimal velocityProperties
    pure this

init_2 :: DelayedConstantVelocityMovement -> BasicDecimal.BasicDecimal -> BasicVelocityProperties.BasicVelocityProperties -> IO ()
init_2 this basicDecimal velocityProperties = do
        BasicConstantVelocityMovement.init_2 this.base (basicDecimal) (velocityProperties)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


init :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init object_ a1 a2 a3 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: DelayedConstantVelocityMovement))) () a1 a2 a3

init_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init_super object_ a1 a2 a3 = (init_impl (javaCast object_ :: DelayedConstantVelocityMovement)) a1 a2 a3

init_impl :: DelayedConstantVelocityMovement -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init_impl this speedBasicDecimal angle otherAngle = do
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: DelayedConstantVelocityMovement))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: DelayedConstantVelocityMovement)) a1

process_impl :: DelayedConstantVelocityMovement -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_impl this layer = do
        when (jio (TimeDelayHelper.isTime ((jget (this).timeDelayHelper)) (jget ((jio (GameTickTimeDelayHelperFactory.getInstance))).startTime))) $ do
            Control.Monad.void (BasicConstantVelocityMovement.process_super this.base layer)
        pure ()


