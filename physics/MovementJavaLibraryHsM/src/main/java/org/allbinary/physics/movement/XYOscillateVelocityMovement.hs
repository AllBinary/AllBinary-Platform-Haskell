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
module XYOscillateVelocityMovement (module XYOscillateVelocityMovement, module BasicConstantVelocityMovement) where

import BasicConstantVelocityMovement hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, oscillateMin, oscillateMax, oscillate, oscillatePositive)
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
import qualified VelocityProperties -- org.allbinary.game.physics.velocity.VelocityProperties
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal
import qualified BasicConstantVelocityMovement

data XYOscillateVelocityMovement = XYOscillateVelocityMovement
    { header_ :: JavaHeader
    , base :: BasicConstantVelocityMovement.BasicConstantVelocityMovement
    , oscillateMin :: IORef (Int)
    , oscillateMax :: IORef (Int)
    , oscillate :: IORef (Int)
    , oscillatePositive :: IORef (Bool)
    }

instance JavaNull XYOscillateVelocityMovement where
    javaNull = javaNullRecord "XYOscillateVelocityMovement"

instance JavaEquals XYOscillateVelocityMovement where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq XYOscillateVelocityMovement where
    (==) = jrecordEquals

instance JavaObjectClass XYOscillateVelocityMovement where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO XYOscillateVelocityMovement
newRecord_ = do
    base <- BasicConstantVelocityMovement.newRecord_
    let header_ = base.header_
    oscillateMin <- newIORef 0
    oscillateMax <- newIORef 0
    oscillate <- newIORef 0
    oscillatePositive <- newIORef False
    let this = XYOscillateVelocityMovement header_ base oscillateMin oscillateMax oscillate oscillatePositive
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: XYOscillateVelocityMovement -> IO ()
initFields_ this = do
    jset this.oscillateMin (0)
    jset this.oscillateMax (0)
    jset this.oscillate (0)
    jset this.oscillatePositive (False)
    pure ()

new_3 :: BasicDecimal.BasicDecimal -> Int -> Int -> IO XYOscillateVelocityMovement
new_3 speedBasicDecimal oscillateMin oscillateMax = do
    this <- newRecord_
    init_3 this speedBasicDecimal oscillateMin oscillateMax
    pure this

init_3 :: XYOscillateVelocityMovement -> BasicDecimal.BasicDecimal -> Int -> Int -> IO ()
init_3 this speedBasicDecimal oscillateMin oscillateMax = do
        BasicConstantVelocityMovement.init_2 this.base (speedBasicDecimal) (jio (VelocityProperties.new_2 (Prelude.fromIntegral (jio (BasicDecimal.getUnscaled speedBasicDecimal))) (Prelude.fromIntegral (jio (BasicDecimal.getUnscaled speedBasicDecimal)))))
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).oscillateMin (oscillateMin)
        jset (this).oscillateMax (oscillateMax)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: XYOscillateVelocityMovement))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: XYOscillateVelocityMovement)) a1

process_impl :: XYOscillateVelocityMovement -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_impl this layer = do
        Control.Monad.void (BasicConstantVelocityMovement.process_super this.base layer)
        if ((jget (this).oscillate) < (jget (this).oscillateMin)) then do
            jset (this).oscillatePositive (True)
            Control.Monad.void (BasicDecimal.addint ((jio (BasicVelocityProperties.getVelocityYBasicDecimalP ((jio (BasicConstantVelocityMovement.getVelocityProperties this)))))) 3000)
        else when ((jget (this).oscillate) > (jget (this).oscillateMax)) $ do
            jset (this).oscillatePositive (False)
            Control.Monad.void (BasicDecimal.subtractint ((jio (BasicVelocityProperties.getVelocityYBasicDecimalP ((jio (BasicConstantVelocityMovement.getVelocityProperties this)))))) 3000)
        if (jget (this).oscillatePositive) then do
            jset (this).oscillate ((jget (this).oscillate) + 1)
            Control.Monad.void (BasicDecimal.addint ((jio (BasicVelocityProperties.getVelocityXBasicDecimalP ((jio (BasicConstantVelocityMovement.getVelocityProperties this)))))) 5000)
        else do
            jset (this).oscillate ((jget (this).oscillate) - 1)
            Control.Monad.void (BasicDecimal.subtractint ((jio (BasicVelocityProperties.getVelocityXBasicDecimalP ((jio (BasicConstantVelocityMovement.getVelocityProperties this)))))) 5000)
        pure ()


