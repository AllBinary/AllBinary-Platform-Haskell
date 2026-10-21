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
-- package org.allbinary.game.ag.ai
module BasicProbabilityAIDataFactory where

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
import qualified InputProbability -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified NoTimeDelayHelper -- org.allbinary.time.NoTimeDelayHelper
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data BasicProbabilityAIDataFactory = BasicProbabilityAIDataFactory
    { header_ :: JavaHeader
    }

instance JavaNull BasicProbabilityAIDataFactory where
    javaNull = javaNullRecord "BasicProbabilityAIDataFactory"

instance JavaEquals BasicProbabilityAIDataFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicProbabilityAIDataFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicProbabilityAIDataFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicProbabilityAIDataFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = BasicProbabilityAIDataFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: BasicProbabilityAIDataFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BasicProbabilityAIDataFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicProbabilityAIDataFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: BasicProbabilityAIDataFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: BasicProbabilityAIDataFactory))

getInstance_impl :: BasicProbabilityAIDataFactory -> IO (ABHashtable.ABHashtable)
getInstance_impl this = do
        let likelyhoodIntegerArray = (jnewArray2 ((Canvas.kEY_NUM9 + 1)) (2) javaNull)
        smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 0)
        jsetIndex ((jindex likelyhoodIntegerArray (Canvas.uP))) (0) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 10)
        jsetIndex ((jindex likelyhoodIntegerArray (Canvas.uP))) (1) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 10)
        jsetIndex ((jindex likelyhoodIntegerArray (Canvas.dOWN))) (0) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 14)
        jsetIndex ((jindex likelyhoodIntegerArray (Canvas.dOWN))) (1) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 14)
        jsetIndex ((jindex likelyhoodIntegerArray (Canvas.lEFT))) (0) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 18)
        jsetIndex ((jindex likelyhoodIntegerArray (Canvas.lEFT))) (1) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 18)
        jsetIndex ((jindex likelyhoodIntegerArray (Canvas.rIGHT))) (0) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 22)
        jsetIndex ((jindex likelyhoodIntegerArray (Canvas.rIGHT))) (1) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 22)
        jsetIndex ((jindex likelyhoodIntegerArray (Canvas.kEY_NUM7))) (0) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 26)
        jsetIndex ((jindex likelyhoodIntegerArray (Canvas.kEY_NUM7))) (1) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 26)
        jsetIndex ((jindex likelyhoodIntegerArray (Canvas.kEY_NUM9))) (0) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 30)
        jsetIndex ((jindex likelyhoodIntegerArray (Canvas.kEY_NUM9))) (1) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 30)
        jsetIndex ((jindex likelyhoodIntegerArray (Canvas.kEY_NUM1))) (0) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 40)
        jsetIndex ((jindex likelyhoodIntegerArray (Canvas.kEY_NUM1))) (1) (assignedValue)
        let repeatLikelyhoodIntegerArray = (jnewArray ((Canvas.kEY_NUM9 + 1)) javaNull)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 0)
        jsetIndex repeatLikelyhoodIntegerArray (Canvas.uP) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 0)
        jsetIndex repeatLikelyhoodIntegerArray (Canvas.dOWN) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 0)
        jsetIndex repeatLikelyhoodIntegerArray (Canvas.lEFT) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 0)
        jsetIndex repeatLikelyhoodIntegerArray (Canvas.rIGHT) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 0)
        jsetIndex repeatLikelyhoodIntegerArray (Canvas.kEY_NUM7) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 0)
        jsetIndex repeatLikelyhoodIntegerArray (Canvas.kEY_NUM9) (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 10)
        jsetIndex repeatLikelyhoodIntegerArray (Canvas.kEY_NUM1) (assignedValue)
        inputProbability <- (InputProbability.new_4 likelyhoodIntegerArray repeatLikelyhoodIntegerArray 42 (NoTimeDelayHelper.sINGLETON))
        (InputProbability.toHashtable inputProbability)


