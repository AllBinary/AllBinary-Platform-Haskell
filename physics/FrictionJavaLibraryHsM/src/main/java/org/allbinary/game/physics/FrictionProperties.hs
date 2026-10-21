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
-- package org.allbinary.game.physics
module FrictionProperties where

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
import qualified FrictionData -- org.allbinary.game.physics.friction.FrictionData
import qualified DragVelocityBehavior -- org.allbinary.game.physics.velocity.DragVelocityBehavior
import qualified VelocityProperties -- org.allbinary.game.physics.velocity.VelocityProperties

data FrictionProperties = FrictionProperties
    { header_ :: JavaHeader
    }

instance JavaNull FrictionProperties where
    javaNull = javaNullRecord "FrictionProperties"

instance JavaEquals FrictionProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FrictionProperties where
    (==) = jrecordEquals

instance JavaObjectClass FrictionProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FrictionProperties
newRecord_ = do
    header_ <- newJavaHeader
    let this = FrictionProperties header_
    jregisterLevel header_ this
    jregisterMethod header_ "friction" (\() -> friction_impl this)
    pure this

initFields_ :: FrictionProperties -> IO ()
initFields_ this = do
    pure ()

new_ :: IO FrictionProperties
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FrictionProperties -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


friction :: (JavaObjectClass this_) => this_ -> VelocityProperties.VelocityProperties -> Int -> IO (())
friction object_ a1 a2 = jmethod object_ "friction" (\() -> (friction_impl (javaCast object_ :: FrictionProperties))) () a1 a2

friction_super :: (JavaObjectClass this_) => this_ -> VelocityProperties.VelocityProperties -> Int -> IO (())
friction_super object_ a1 a2 = (friction_impl (javaCast object_ :: FrictionProperties)) a1 a2

friction_impl :: FrictionProperties -> VelocityProperties.VelocityProperties -> Int -> IO (())
friction_impl this velocityProperties nominator = do
        Control.Monad.void (DragVelocityBehavior.reduce DragVelocityBehavior.instance_ velocityProperties nominator (jio (FrictionData.getFrictionDenominator)))
        pure ()


