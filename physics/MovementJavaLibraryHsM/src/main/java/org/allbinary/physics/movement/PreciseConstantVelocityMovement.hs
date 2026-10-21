{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.physics.movement
module PreciseConstantVelocityMovement (module PreciseConstantVelocityMovement, module BasicConstantVelocityMovement) where

import BasicConstantVelocityMovement hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, process, process_super, process_impl, accumulatedX, accumulatedY, accumulatedZ, factorValue)
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
import qualified MathUtil -- org.allbinary.logic.math.MathUtil
import qualified ScaleFactorFactory -- org.allbinary.logic.math.ScaleFactorFactory
import qualified BasicConstantVelocityMovement

data PreciseConstantVelocityMovement = PreciseConstantVelocityMovement
    { header_ :: JavaHeader
    , base :: BasicConstantVelocityMovement.BasicConstantVelocityMovement
    , accumulatedX :: IORef (Int)
    , accumulatedY :: IORef (Int)
    , accumulatedZ :: IORef (Int)
    , factorValue :: IORef (Int)
    }

instance JavaNull PreciseConstantVelocityMovement where
    javaNull = javaNullRecord "PreciseConstantVelocityMovement"

instance JavaEquals PreciseConstantVelocityMovement where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PreciseConstantVelocityMovement where
    (==) = jrecordEquals

instance JavaObjectClass PreciseConstantVelocityMovement where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PreciseConstantVelocityMovement
newRecord_ = do
    base <- BasicConstantVelocityMovement.newRecord_
    let header_ = base.header_
    accumulatedX <- newIORef 0
    accumulatedY <- newIORef 0
    accumulatedZ <- newIORef 0
    factorValue <- newIORef 0
    let this = PreciseConstantVelocityMovement header_ base accumulatedX accumulatedY accumulatedZ factorValue
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: PreciseConstantVelocityMovement -> IO ()
initFields_ this = do
    jset this.accumulatedX (0)
    jset this.accumulatedY (0)
    jset this.accumulatedZ (0)
    jset this.factorValue ((jget ((jio (ScaleFactorFactory.getInstance))).dEFAULT_SCALE_VALUE))
    pure ()

new_2 :: BasicDecimal.BasicDecimal -> BasicVelocityProperties.BasicVelocityProperties -> IO PreciseConstantVelocityMovement
new_2 basicDecimal velocityProperties = do
    this <- newRecord_
    init_2 this basicDecimal velocityProperties
    pure this

init_2 :: PreciseConstantVelocityMovement -> BasicDecimal.BasicDecimal -> BasicVelocityProperties.BasicVelocityProperties -> IO ()
init_2 this basicDecimal velocityProperties = do
        BasicConstantVelocityMovement.init_2 this.base (basicDecimal) (velocityProperties)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


init :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init object_ a1 a2 a3 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: PreciseConstantVelocityMovement))) () a1 a2 a3

init_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init_super object_ a1 a2 a3 = (init_impl (javaCast object_ :: PreciseConstantVelocityMovement)) a1 a2 a3

init_impl :: PreciseConstantVelocityMovement -> BasicDecimal.BasicDecimal -> Int -> Int -> IO (())
init_impl this speedBasicDecimal angle otherAngle = do
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: PreciseConstantVelocityMovement))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: PreciseConstantVelocityMovement)) a1

process_impl :: PreciseConstantVelocityMovement -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_impl this layer = do
        mathUtil <- (MathUtil.getInstance)
        velocityProperties <- (BasicConstantVelocityMovement.getVelocityProperties this)
        jset (this).accumulatedX ((Prelude.fromIntegral (((Prelude.fromIntegral (jget (this).accumulatedX)) + (jio (BasicDecimal.getUnscaled ((jio (BasicVelocityProperties.getVelocityXBasicDecimalP velocityProperties)))))))))
        jset (this).accumulatedY ((Prelude.fromIntegral (((Prelude.fromIntegral (jget (this).accumulatedY)) + (jio (BasicDecimal.getUnscaled ((jio (BasicVelocityProperties.getVelocityYBasicDecimalP velocityProperties)))))))))
        jset (this).accumulatedZ ((Prelude.fromIntegral (((Prelude.fromIntegral (jget (this).accumulatedZ)) + (jio (BasicDecimal.getUnscaled ((jio (BasicVelocityProperties.getVelocityZBasicDecimalP velocityProperties)))))))))
        Control.Monad.void (AllBinaryGameLayer.moveDXYZ layer ((jget (this).accumulatedX) `quot` (jget (this).factorValue)) ((jget (this).accumulatedY) `quot` (jget (this).factorValue)) ((jget (this).accumulatedZ) `quot` (jget (this).factorValue)))
        when ((jio (MathUtil.abs mathUtil (jget (this).accumulatedX))) > (jget (this).factorValue)) $ do
            jset (this).accumulatedX (0)
        when ((jio (MathUtil.abs mathUtil (jget (this).accumulatedY))) > (jget (this).factorValue)) $ do
            jset (this).accumulatedY (0)
        when ((jio (MathUtil.abs mathUtil (jget (this).accumulatedZ))) > (jget (this).factorValue)) $ do
            jset (this).accumulatedZ (0)
        pure ()


