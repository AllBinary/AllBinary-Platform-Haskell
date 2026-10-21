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
module NumberInSameGroupSequence where

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
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory

data NumberInSameGroupSequence = NumberInSameGroupSequence
    { header_ :: JavaHeader
    , nUMBER_ON_SAME_TEAM_SEQUENCE_ZERO :: IORef (Int)
    , nUMBER_ON_SAME_TEAM_SEQUENCE_ONE :: IORef (Int)
    , nUMBER_ON_SAME_TEAM_SEQUENCE_TWO :: IORef (Int)
    , nUMBER_ON_SAME_TEAM_SEQUENCE_THREE :: IORef (Int)
    , nUMBER_ON_SAME_TEAM_SEQUENCE_FOUR :: IORef (Int)
    , nUMBER_ON_SAME_TEAM_SEQUENCE_FIVE :: IORef (Int)
    , nUMBER_ON_SAME_TEAM_SEQUENCE_SIX :: IORef (Int)
    , nUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN :: IORef (Int)
    , nUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT :: IORef (Int)
    , nUMBER_ON_SAME_TEAM_SEQUENCE_NINE :: IORef (Int)
    , nUMBER_ON_SAME_TEAM_SEQUENCE :: IORef (JavaArray (Int))
    }

instance JavaNull NumberInSameGroupSequence where
    javaNull = javaNullRecord "NumberInSameGroupSequence"

instance JavaEquals NumberInSameGroupSequence where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NumberInSameGroupSequence where
    (==) = jrecordEquals

instance JavaObjectClass NumberInSameGroupSequence where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NumberInSameGroupSequence
newRecord_ = do
    header_ <- newJavaHeader
    nUMBER_ON_SAME_TEAM_SEQUENCE_ZERO <- newIORef javaNull
    nUMBER_ON_SAME_TEAM_SEQUENCE_ONE <- newIORef javaNull
    nUMBER_ON_SAME_TEAM_SEQUENCE_TWO <- newIORef javaNull
    nUMBER_ON_SAME_TEAM_SEQUENCE_THREE <- newIORef javaNull
    nUMBER_ON_SAME_TEAM_SEQUENCE_FOUR <- newIORef javaNull
    nUMBER_ON_SAME_TEAM_SEQUENCE_FIVE <- newIORef javaNull
    nUMBER_ON_SAME_TEAM_SEQUENCE_SIX <- newIORef javaNull
    nUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN <- newIORef javaNull
    nUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT <- newIORef javaNull
    nUMBER_ON_SAME_TEAM_SEQUENCE_NINE <- newIORef javaNull
    nUMBER_ON_SAME_TEAM_SEQUENCE <- newIORef javaNull
    let this = NumberInSameGroupSequence header_ nUMBER_ON_SAME_TEAM_SEQUENCE_ZERO nUMBER_ON_SAME_TEAM_SEQUENCE_ONE nUMBER_ON_SAME_TEAM_SEQUENCE_TWO nUMBER_ON_SAME_TEAM_SEQUENCE_THREE nUMBER_ON_SAME_TEAM_SEQUENCE_FOUR nUMBER_ON_SAME_TEAM_SEQUENCE_FIVE nUMBER_ON_SAME_TEAM_SEQUENCE_SIX nUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN nUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT nUMBER_ON_SAME_TEAM_SEQUENCE_NINE nUMBER_ON_SAME_TEAM_SEQUENCE
    jregisterLevel header_ this
    pure this

initFields_ :: NumberInSameGroupSequence -> IO ()
initFields_ this = do
    jset this.nUMBER_ON_SAME_TEAM_SEQUENCE_ZERO (javaNull)
    jset this.nUMBER_ON_SAME_TEAM_SEQUENCE_ONE (javaNull)
    jset this.nUMBER_ON_SAME_TEAM_SEQUENCE_TWO (javaNull)
    jset this.nUMBER_ON_SAME_TEAM_SEQUENCE_THREE (javaNull)
    jset this.nUMBER_ON_SAME_TEAM_SEQUENCE_FOUR (javaNull)
    jset this.nUMBER_ON_SAME_TEAM_SEQUENCE_FIVE (javaNull)
    jset this.nUMBER_ON_SAME_TEAM_SEQUENCE_SIX (javaNull)
    jset this.nUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN (javaNull)
    jset this.nUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT (javaNull)
    jset this.nUMBER_ON_SAME_TEAM_SEQUENCE_NINE (javaNull)
    jset this.nUMBER_ON_SAME_TEAM_SEQUENCE (javaNull)
    pure ()


getInstance :: IO (NumberInSameGroupSequence)
getInstance = do
        (new_)

new_ :: IO NumberInSameGroupSequence
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NumberInSameGroupSequence -> IO ()
init_ this = do
        initFields_ this
        smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 100)
        jset (this).nUMBER_ON_SAME_TEAM_SEQUENCE_ZERO (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 101)
        jset (this).nUMBER_ON_SAME_TEAM_SEQUENCE_ONE (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 102)
        jset (this).nUMBER_ON_SAME_TEAM_SEQUENCE_TWO (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 103)
        jset (this).nUMBER_ON_SAME_TEAM_SEQUENCE_THREE (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 104)
        jset (this).nUMBER_ON_SAME_TEAM_SEQUENCE_FOUR (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 105)
        jset (this).nUMBER_ON_SAME_TEAM_SEQUENCE_FIVE (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 106)
        jset (this).nUMBER_ON_SAME_TEAM_SEQUENCE_SIX (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 107)
        jset (this).nUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 108)
        jset (this).nUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT (assignedValue)
        assignedValue <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 109)
        jset (this).nUMBER_ON_SAME_TEAM_SEQUENCE_NINE (assignedValue)
        jset (this).nUMBER_ON_SAME_TEAM_SEQUENCE ((jarrayFromList [(jget (this).nUMBER_ON_SAME_TEAM_SEQUENCE_ZERO), (jget (this).nUMBER_ON_SAME_TEAM_SEQUENCE_ONE), (jget (this).nUMBER_ON_SAME_TEAM_SEQUENCE_THREE), (jget (this).nUMBER_ON_SAME_TEAM_SEQUENCE_FOUR), (jget (this).nUMBER_ON_SAME_TEAM_SEQUENCE_FIVE), (jget (this).nUMBER_ON_SAME_TEAM_SEQUENCE_SIX), (jget (this).nUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN), (jget (this).nUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT), (jget (this).nUMBER_ON_SAME_TEAM_SEQUENCE_NINE)]))
        pure ()


