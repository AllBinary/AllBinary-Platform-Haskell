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
module NoBasicConstantVelocityMovement (module NoBasicConstantVelocityMovement, module BasicConstantVelocityMovement) where

import BasicConstantVelocityMovement hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl)
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
import qualified BasicConstantVelocityMovement

data NoBasicConstantVelocityMovement = NoBasicConstantVelocityMovement
    { header_ :: JavaHeader
    , base :: BasicConstantVelocityMovement.BasicConstantVelocityMovement
    }

instance JavaNull NoBasicConstantVelocityMovement where
    javaNull = javaNullRecord "NoBasicConstantVelocityMovement"

instance JavaEquals NoBasicConstantVelocityMovement where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoBasicConstantVelocityMovement where
    (==) = jrecordEquals

instance JavaObjectClass NoBasicConstantVelocityMovement where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NoBasicConstantVelocityMovement
newRecord_ = do
    base <- BasicConstantVelocityMovement.newRecord_
    let header_ = base.header_
    let this = NoBasicConstantVelocityMovement header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: NoBasicConstantVelocityMovement -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NoBasicConstantVelocityMovement
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoBasicConstantVelocityMovement -> IO ()
init_ this = do
        BasicConstantVelocityMovement.init_2 this.base (BasicDecimal.zERO_BIGDECIMAL) (jio (BasicVelocityProperties.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: NoBasicConstantVelocityMovement))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: NoBasicConstantVelocityMovement)) a1

process_impl :: NoBasicConstantVelocityMovement -> AllBinaryGameLayer.AllBinaryGameLayer -> IO (())
process_impl this layer = do
        pure ()


