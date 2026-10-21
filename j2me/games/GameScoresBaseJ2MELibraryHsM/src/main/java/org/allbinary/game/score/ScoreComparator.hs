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
-- package org.allbinary.game.score
module ScoreComparator where

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
import qualified ByteArrayInputStream -- java.io.ByteArrayInputStream
import qualified DataInputStream -- java.io.DataInputStream
import qualified EOFException -- java.io.EOFException
import qualified IOException -- java.io.IOException
import qualified RecordComparator -- javax.microedition.rms.RecordComparator
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements RecordComparator
data ScoreComparator = ScoreComparator
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , isHighestBest :: IORef (Bool)
    }

instance JavaNull ScoreComparator where
    javaNull = javaNullRecord "ScoreComparator"

instance JavaEquals ScoreComparator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScoreComparator where
    (==) = jrecordEquals

instance JavaObjectClass ScoreComparator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ScoreComparator
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    isHighestBest <- newIORef False
    let this = ScoreComparator header_ logUtil isHighestBest
    jregisterLevel header_ this
    RecordComparator.registerInterface_ header_
    jregisterMethod header_ "getBestScore" (\() -> getBestScore_impl this)
    jregisterMethod header_ "compare" (\() -> compare_impl this)
    jregisterMethod header_ "getHighTooLow" (\() -> getHighTooLow_impl this)
    jregisterMethod header_ "getLowTooHigh" (\() -> getLowTooHigh_impl this)
    pure this

initFields_ :: ScoreComparator -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.isHighestBest (False)
    pure ()

new_1 :: Bool -> IO ScoreComparator
new_1 isHighestBest = do
    this <- newRecord_
    init_1 this isHighestBest
    pure this

init_1 :: ScoreComparator -> Bool -> IO ()
init_1 this isHighestBest = do
        initFields_ this
        jset (this).isHighestBest (isHighestBest)
        pure ()


getBestScore :: (JavaObjectClass this_) => this_ -> IO (Int64)
getBestScore object_ = jmethod object_ "getBestScore" (\() -> (getBestScore_impl (javaCast object_ :: ScoreComparator))) ()

getBestScore_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getBestScore_super object_ = (getBestScore_impl (javaCast object_ :: ScoreComparator))

getBestScore_impl :: ScoreComparator -> IO (Int64)
getBestScore_impl this = do
        pure ((if (jget (this).isHighestBest) then (Prelude.maxBound :: Int64) else 0))


compare :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> JavaArray (Int8) -> IO (Int)
compare object_ a1 a2 = jmethod object_ "compare" (\() -> (compare_impl (javaCast object_ :: ScoreComparator))) () a1 a2

compare_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> JavaArray (Int8) -> IO (Int)
compare_super object_ a1 a2 = (compare_impl (javaCast object_ :: ScoreComparator)) a1 a2

compare_impl :: ScoreComparator -> JavaArray (Int8) -> JavaArray (Int8) -> IO (Int)
compare_impl this recordOne recordTwo = do
    javaCatchReturn $ do
        byteArrayInputStreamOne <- (ByteArrayInputStream.new_1 recordOne)
        inputStreamOne <- (DataInputStream.new_1 byteArrayInputStreamOne)
        byteArrayInputStreamTwo <- (ByteArrayInputStream.new_1 recordTwo)
        inputStreamTwo <- (DataInputStream.new_1 byteArrayInputStreamTwo)
        scoreOne <- newIORef (0)
        scoreTwo <- newIORef (0)
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "compare" e)
            ) $ do
            Control.Monad.void (DataInputStream.readUTF inputStreamOne)
            Control.Monad.void (DataInputStream.readUTF inputStreamTwo)
            assignedValue <- (DataInputStream.readLong inputStreamOne)
            jset scoreOne (assignedValue)
            assignedValue <- (DataInputStream.readLong inputStreamTwo)
            jset scoreTwo (assignedValue)
        if (jget (this).isHighestBest) then do
            javaReturn =<< (ScoreComparator.getHighTooLow this (jget scoreOne) (jget scoreTwo))
        else do
            javaReturn =<< (ScoreComparator.getLowTooHigh this (jget scoreOne) (jget scoreTwo))


getHighTooLow :: (JavaObjectClass this_) => this_ -> Int64 -> Int64 -> IO (Int)
getHighTooLow object_ a1 a2 = jmethod object_ "getHighTooLow" (\() -> (getHighTooLow_impl (javaCast object_ :: ScoreComparator))) () a1 a2

getHighTooLow_super :: (JavaObjectClass this_) => this_ -> Int64 -> Int64 -> IO (Int)
getHighTooLow_super object_ a1 a2 = (getHighTooLow_impl (javaCast object_ :: ScoreComparator)) a1 a2

getHighTooLow_impl :: ScoreComparator -> Int64 -> Int64 -> IO (Int)
getHighTooLow_impl this scoreOne scoreTwo = do
    javaCatchReturn $ do
        if (scoreOne > scoreTwo) then do
            javaReturn (RecordComparator.pRECEDES)
        else if (scoreOne < scoreTwo) then do
            javaReturn (RecordComparator.fOLLOWS)
        else do
            javaReturn (RecordComparator.eQUIVALENT)


getLowTooHigh :: (JavaObjectClass this_) => this_ -> Int64 -> Int64 -> IO (Int)
getLowTooHigh object_ a1 a2 = jmethod object_ "getLowTooHigh" (\() -> (getLowTooHigh_impl (javaCast object_ :: ScoreComparator))) () a1 a2

getLowTooHigh_super :: (JavaObjectClass this_) => this_ -> Int64 -> Int64 -> IO (Int)
getLowTooHigh_super object_ a1 a2 = (getLowTooHigh_impl (javaCast object_ :: ScoreComparator)) a1 a2

getLowTooHigh_impl :: ScoreComparator -> Int64 -> Int64 -> IO (Int)
getLowTooHigh_impl this scoreOne scoreTwo = do
    javaCatchReturn $ do
        if (scoreOne < scoreTwo) then do
            javaReturn (RecordComparator.pRECEDES)
        else if (scoreOne > scoreTwo) then do
            javaReturn (RecordComparator.fOLLOWS)
        else do
            javaReturn (RecordComparator.eQUIVALENT)


