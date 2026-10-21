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
module BasicGravityConstantVelocityMovement (module BasicGravityConstantVelocityMovement, module BasicConstantVelocityMovement) where

import BasicConstantVelocityMovement hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, gravityUtil)
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
import qualified GravityUtil -- org.allbinary.game.physics.acceleration.GravityUtil
import qualified VelocityProperties -- org.allbinary.game.physics.velocity.VelocityProperties
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal
import qualified BasicConstantVelocityMovement

data BasicGravityConstantVelocityMovement = BasicGravityConstantVelocityMovement
    { header_ :: JavaHeader
    , base :: BasicConstantVelocityMovement.BasicConstantVelocityMovement
    , gravityUtil :: IORef (GravityUtil.GravityUtil)
    }

instance JavaNull BasicGravityConstantVelocityMovement where
    javaNull = javaNullRecord "BasicGravityConstantVelocityMovement"

instance JavaEquals BasicGravityConstantVelocityMovement where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicGravityConstantVelocityMovement where
    (==) = jrecordEquals

instance JavaObjectClass BasicGravityConstantVelocityMovement where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicGravityConstantVelocityMovement
newRecord_ = do
    base <- BasicConstantVelocityMovement.newRecord_
    let header_ = base.header_
    gravityUtil <- newIORef javaNull
    let this = BasicGravityConstantVelocityMovement header_ base gravityUtil
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: BasicGravityConstantVelocityMovement -> IO ()
initFields_ this = do
    jset this.gravityUtil =<< (GravityUtil.getInstance)
    pure ()

new_1 :: BasicDecimal.BasicDecimal -> IO BasicGravityConstantVelocityMovement
new_1 speedBasicDecimal = do
    this <- newRecord_
    init_1 this speedBasicDecimal
    pure this

init_1 :: BasicGravityConstantVelocityMovement -> BasicDecimal.BasicDecimal -> IO ()
init_1 this speedBasicDecimal = do
        BasicConstantVelocityMovement.init_2 this.base (speedBasicDecimal) (jio (VelocityProperties.new_2 (Prelude.fromIntegral (jio (BasicDecimal.getUnscaled speedBasicDecimal))) (Prelude.fromIntegral (jio (BasicDecimal.getUnscaled speedBasicDecimal)))))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: BasicGravityConstantVelocityMovement))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: BasicGravityConstantVelocityMovement)) a1

process_impl :: BasicGravityConstantVelocityMovement -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_impl this layer = do
        Control.Monad.void (BasicConstantVelocityMovement.process_super this.base layer)
        Control.Monad.void (GravityUtil.process ((jget (this).gravityUtil)) (jio (BasicConstantVelocityMovement.getVelocityProperties this)) (jget ((jget (this).gravityUtil)).gAME_GRAVITY_VELOCITY))
        pure ()


