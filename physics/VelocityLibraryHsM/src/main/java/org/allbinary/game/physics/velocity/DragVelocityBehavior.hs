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
-- package org.allbinary.game.physics.velocity
module DragVelocityBehavior (module DragVelocityBehavior, module VelocityBehaviorBase) where

import VelocityBehaviorBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, reduce, reduce_super, reduce_impl, reduceX, reduceX_super, reduceX_impl, reduceY, reduceY_super, reduceY_impl, instance_)
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
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal
import qualified VelocityBehaviorBase

data DragVelocityBehavior = DragVelocityBehavior
    { header_ :: JavaHeader
    , base :: VelocityBehaviorBase.VelocityBehaviorBase
    }

instance JavaNull DragVelocityBehavior where
    javaNull = javaNullRecord "DragVelocityBehavior"

instance JavaEquals DragVelocityBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DragVelocityBehavior where
    (==) = jrecordEquals

instance JavaObjectClass DragVelocityBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO DragVelocityBehavior
newRecord_ = do
    base <- VelocityBehaviorBase.newRecord_
    let header_ = base.header_
    let this = DragVelocityBehavior header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "reduce" (\() -> reduce_impl this)
    jregisterMethod header_ "reduceX" (\() -> reduceX_impl this)
    jregisterMethod header_ "reduceY" (\() -> reduceY_impl this)
    pure this

initFields_ :: DragVelocityBehavior -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DragVelocityBehavior
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DragVelocityBehavior -> IO ()
init_ this = do
    VelocityBehaviorBase.init_ this.base
    initFields_ this


reduce :: (JavaObjectClass this_) => this_ -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduce object_ a1 a2 a3 = jmethod object_ "reduce" (\() -> (reduce_impl (javaCast object_ :: DragVelocityBehavior))) () a1 a2 a3

reduce_super :: (JavaObjectClass this_) => this_ -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduce_super object_ a1 a2 a3 = (reduce_impl (javaCast object_ :: DragVelocityBehavior)) a1 a2 a3

reduce_impl :: DragVelocityBehavior -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduce_impl this velocityProperties nominator denominator = do
        when ((jio (BasicDecimal.getUnscaled ((jio (BasicVelocityProperties.getVelocityXBasicDecimalP velocityProperties))))) /= 0) $ do
            basicDecimal <- (BasicVelocityProperties.getVelocityXBasicDecimalP velocityProperties)
            Control.Monad.void (BasicDecimal.multiplyint basicDecimal nominator)
            Control.Monad.void (BasicDecimal.divideint basicDecimal denominator)
        when ((jio (BasicDecimal.getUnscaled ((jio (BasicVelocityProperties.getVelocityYBasicDecimalP velocityProperties))))) /= 0) $ do
            basicDecimal <- (BasicVelocityProperties.getVelocityYBasicDecimalP velocityProperties)
            Control.Monad.void (BasicDecimal.multiplyint basicDecimal nominator)
            Control.Monad.void (BasicDecimal.divideint basicDecimal denominator)
        pure ()


reduceX :: (JavaObjectClass this_) => this_ -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduceX object_ a1 a2 a3 = jmethod object_ "reduceX" (\() -> (reduceX_impl (javaCast object_ :: DragVelocityBehavior))) () a1 a2 a3

reduceX_super :: (JavaObjectClass this_) => this_ -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduceX_super object_ a1 a2 a3 = (reduceX_impl (javaCast object_ :: DragVelocityBehavior)) a1 a2 a3

reduceX_impl :: DragVelocityBehavior -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduceX_impl this velocityProperties nominator denominator = do
        basicDecimal <- (BasicVelocityProperties.getVelocityXBasicDecimalP velocityProperties)
        when ((jio (BasicDecimal.getUnscaled basicDecimal)) /= 0) $ do
            Control.Monad.void (BasicDecimal.multiplyint basicDecimal nominator)
            Control.Monad.void (BasicDecimal.divideint basicDecimal denominator)
        pure ()


reduceY :: (JavaObjectClass this_) => this_ -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduceY object_ a1 a2 a3 = jmethod object_ "reduceY" (\() -> (reduceY_impl (javaCast object_ :: DragVelocityBehavior))) () a1 a2 a3

reduceY_super :: (JavaObjectClass this_) => this_ -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduceY_super object_ a1 a2 a3 = (reduceY_impl (javaCast object_ :: DragVelocityBehavior)) a1 a2 a3

reduceY_impl :: DragVelocityBehavior -> BasicVelocityProperties.BasicVelocityProperties -> Int -> Int -> IO (())
reduceY_impl this velocityProperties nominator denominator = do
        when ((jio (BasicDecimal.getUnscaled ((jio (BasicVelocityProperties.getVelocityYBasicDecimalP velocityProperties))))) /= 0) $ do
            basicDecimal <- (BasicVelocityProperties.getVelocityYBasicDecimalP velocityProperties)
            Control.Monad.void (BasicDecimal.multiplyint basicDecimal nominator)
            Control.Monad.void (BasicDecimal.divideint basicDecimal denominator)
        pure ()


