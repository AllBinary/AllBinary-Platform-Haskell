{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.game.physics.velocity
module VelocityBehaviorBase where

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
import qualified BasicVelocityProperties -- same package or java.lang

data VelocityBehaviorBase = VelocityBehaviorBase
    { header_ :: JavaHeader
    }

instance JavaNull VelocityBehaviorBase where
    javaNull = javaNullRecord "VelocityBehaviorBase"

instance JavaEquals VelocityBehaviorBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VelocityBehaviorBase where
    (==) = jrecordEquals

instance JavaObjectClass VelocityBehaviorBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VelocityBehaviorBase
newRecord_ = do
    header_ <- newJavaHeader
    let this = VelocityBehaviorBase header_
    jregisterLevel header_ this
    jregisterMethod header_ "reduce" (\() -> reduce_impl this)
    jregisterMethod header_ "reduceX" (\() -> reduceX_impl this)
    jregisterMethod header_ "reduceY" (\() -> reduceY_impl this)
    pure this

initFields_ :: VelocityBehaviorBase -> IO ()
initFields_ this = do
    pure ()

new_ :: IO VelocityBehaviorBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: VelocityBehaviorBase -> IO ()
init_ this = do
    initFields_ this


reduce :: (JavaObjectClass this_) => this_ -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduce object_ a1 a2 a3 = jmethod object_ "reduce" (\() -> (reduce_impl (javaCast object_ :: VelocityBehaviorBase))) () a1 a2 a3

reduce_super :: (JavaObjectClass this_) => this_ -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduce_super object_ a1 a2 a3 = (reduce_impl (javaCast object_ :: VelocityBehaviorBase)) a1 a2 a3

reduce_impl :: VelocityBehaviorBase -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduce_impl this velocityProperties nominator denominator = do
        pure ()


reduceX :: (JavaObjectClass this_) => this_ -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduceX object_ a1 a2 a3 = jmethod object_ "reduceX" (\() -> (reduceX_impl (javaCast object_ :: VelocityBehaviorBase))) () a1 a2 a3

reduceX_super :: (JavaObjectClass this_) => this_ -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduceX_super object_ a1 a2 a3 = (reduceX_impl (javaCast object_ :: VelocityBehaviorBase)) a1 a2 a3

reduceX_impl :: VelocityBehaviorBase -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduceX_impl this velocityProperties nominator denominator = do
        pure ()


reduceY :: (JavaObjectClass this_) => this_ -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduceY object_ a1 a2 a3 = jmethod object_ "reduceY" (\() -> (reduceY_impl (javaCast object_ :: VelocityBehaviorBase))) () a1 a2 a3

reduceY_super :: (JavaObjectClass this_) => this_ -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduceY_super object_ a1 a2 a3 = (reduceY_impl (javaCast object_ :: VelocityBehaviorBase)) a1 a2 a3

reduceY_impl :: VelocityBehaviorBase -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduceY_impl this velocityProperties nominator denominator = do
        pure ()


