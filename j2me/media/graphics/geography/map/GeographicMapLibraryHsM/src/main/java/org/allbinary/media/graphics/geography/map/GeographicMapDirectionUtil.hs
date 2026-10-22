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
-- package org.allbinary.media.graphics.geography.map
module GeographicMapDirectionUtil where

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
import qualified GeographicMapCellPosition -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified Direction -- org.allbinary.direction.Direction
import qualified DirectionFactory -- org.allbinary.direction.DirectionFactory
import qualified CellPosition -- org.allbinary.graphics.CellPosition

data GeographicMapDirectionUtil = GeographicMapDirectionUtil
    { header_ :: JavaHeader
    , mESSAGE :: IORef (String)
    , eRROR :: IORef (String)
    , eQUAL :: IORef (String)
    }

instance JavaNull GeographicMapDirectionUtil where
    javaNull = javaNullRecord "GeographicMapDirectionUtil"

instance JavaEquals GeographicMapDirectionUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapDirectionUtil where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapDirectionUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GeographicMapDirectionUtil
newRecord_ = do
    header_ <- newJavaHeader
    mESSAGE <- newIORef ""
    eRROR <- newIORef ""
    eQUAL <- newIORef ""
    let this = GeographicMapDirectionUtil header_ mESSAGE eRROR eQUAL
    jregisterLevel header_ this
    jregisterMethod header_ "getDirectionFromCellPositionToAdjacentCellPosition" (\() -> getDirectionFromCellPositionToAdjacentCellPosition_impl this)
    jregisterMethod header_ "getEightDirectionFromCellPositionToAdjacentCellPosition" (\() -> getEightDirectionFromCellPositionToAdjacentCellPosition_impl this)
    jregisterMethod header_ "getDirectionFromCellPositionToCellPosition" (\() -> getDirectionFromCellPositionToCellPosition_impl this)
    jregisterMethod header_ "getEightDirectionFromCellPositionToCellPosition" (\() -> getEightDirectionFromCellPositionToCellPosition_impl this)
    pure this

initFields_ :: GeographicMapDirectionUtil -> IO ()
initFields_ this = do
    jset this.mESSAGE ("Cell Position should have been cached!!!")
    jset this.eRROR ("Error: ")
    jset this.eQUAL (" == ")
    pure ()


getInstance :: IO (GeographicMapDirectionUtil)
getInstance = do
        pure (GeographicMapDirectionUtil.instance_)

new_ :: IO GeographicMapDirectionUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GeographicMapDirectionUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getDirectionFromCellPositionToAdjacentCellPosition :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Direction.Direction)
getDirectionFromCellPositionToAdjacentCellPosition object_ a1 a2 = jmethod object_ "getDirectionFromCellPositionToAdjacentCellPosition" (\() -> (getDirectionFromCellPositionToAdjacentCellPosition_impl (javaCast object_ :: GeographicMapDirectionUtil))) () a1 a2

getDirectionFromCellPositionToAdjacentCellPosition_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Direction.Direction)
getDirectionFromCellPositionToAdjacentCellPosition_super object_ a1 a2 = (getDirectionFromCellPositionToAdjacentCellPosition_impl (javaCast object_ :: GeographicMapDirectionUtil)) a1 a2

getDirectionFromCellPositionToAdjacentCellPosition_impl :: GeographicMapDirectionUtil -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Direction.Direction)
getDirectionFromCellPositionToAdjacentCellPosition_impl this fromGeographicMapCellPosition toGeographicMapCellPosition = do
    javaCatchReturn $ do
        fromColumn <- (GeographicMapCellPosition.getColumn fromGeographicMapCellPosition)
        fromRow <- (GeographicMapCellPosition.getRow fromGeographicMapCellPosition)
        goColumn <- (GeographicMapCellPosition.getColumn toGeographicMapCellPosition)
        goRow <- (GeographicMapCellPosition.getRow toGeographicMapCellPosition)
        directionFactory <- (DirectionFactory.getInstance)
        if ((fromColumn - 1) == goColumn) then do
            javaReturn ((jget (directionFactory).lEFT))
        else if ((fromColumn + 1) == goColumn) then do
            javaReturn ((jget (directionFactory).rIGHT))
        else if ((fromRow - 1) == goRow) then do
            javaReturn ((jget (directionFactory).uP))
        else if ((fromRow + 1) == goRow) then do
            javaReturn ((jget (directionFactory).dOWN))
        else if (fromGeographicMapCellPosition == toGeographicMapCellPosition) then do
            javaReturn ((jget (directionFactory).nO_DIRECTION))
        else when ((fromRow == goRow) && (fromColumn == goColumn)) $ do
            javaThrow ((JavaException "Exception" (jget (this).mESSAGE)))
        pure ((jget (directionFactory).nOT_BORDERED_WITH))


-- throws Exception
getEightDirectionFromCellPositionToAdjacentCellPosition :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Direction.Direction)
getEightDirectionFromCellPositionToAdjacentCellPosition object_ a1 a2 = jmethod object_ "getEightDirectionFromCellPositionToAdjacentCellPosition" (\() -> (getEightDirectionFromCellPositionToAdjacentCellPosition_impl (javaCast object_ :: GeographicMapDirectionUtil))) () a1 a2

getEightDirectionFromCellPositionToAdjacentCellPosition_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Direction.Direction)
getEightDirectionFromCellPositionToAdjacentCellPosition_super object_ a1 a2 = (getEightDirectionFromCellPositionToAdjacentCellPosition_impl (javaCast object_ :: GeographicMapDirectionUtil)) a1 a2

getEightDirectionFromCellPositionToAdjacentCellPosition_impl :: GeographicMapDirectionUtil -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Direction.Direction)
getEightDirectionFromCellPositionToAdjacentCellPosition_impl this fromGeographicMapCellPosition toGeographicMapCellPosition = do
    javaCatchReturn $ do
        fromColumn <- (GeographicMapCellPosition.getColumn fromGeographicMapCellPosition)
        fromRow <- (GeographicMapCellPosition.getRow fromGeographicMapCellPosition)
        goColumn <- (GeographicMapCellPosition.getColumn toGeographicMapCellPosition)
        goRow <- (GeographicMapCellPosition.getRow toGeographicMapCellPosition)
        directionFactory <- (DirectionFactory.getInstance)
        if (fromRow == goRow) then do
            if ((fromColumn - 1) == goColumn) then do
                javaReturn ((jget (directionFactory).lEFT))
            else when ((fromColumn + 1) == goColumn) $ do
                javaReturn ((jget (directionFactory).rIGHT))
        else if ((fromRow - 1) == goRow) then do
            when (fromColumn == goColumn) $ do
                javaReturn ((jget (directionFactory).uP))
            if ((fromColumn - 1) == goColumn) then do
                javaReturn ((jget (directionFactory).uP_LEFT))
            else when ((fromColumn + 1) == goColumn) $ do
                javaReturn ((jget (directionFactory).uP_RIGHT))
        else if ((fromRow + 1) == goRow) then do
            when (fromColumn == goColumn) $ do
                javaReturn ((jget (directionFactory).dOWN))
            if ((fromColumn - 1) == goColumn) then do
                javaReturn ((jget (directionFactory).dOWN_LEFT))
            else when ((fromColumn + 1) == goColumn) $ do
                javaReturn ((jget (directionFactory).dOWN_RIGHT))
        else if (fromGeographicMapCellPosition == toGeographicMapCellPosition) then do
            javaReturn ((jget (directionFactory).nO_DIRECTION))
        else when ((fromRow == goRow) && (fromColumn == goColumn)) $ do
            javaThrow ((JavaException "Exception" (jget (this).mESSAGE)))
        pure ((jget (directionFactory).nOT_BORDERED_WITH))


-- throws Exception
getDirectionFromCellPositionToCellPosition :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Direction.Direction)
getDirectionFromCellPositionToCellPosition object_ a1 a2 = jmethod object_ "getDirectionFromCellPositionToCellPosition" (\() -> (getDirectionFromCellPositionToCellPosition_impl (javaCast object_ :: GeographicMapDirectionUtil))) () a1 a2

getDirectionFromCellPositionToCellPosition_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Direction.Direction)
getDirectionFromCellPositionToCellPosition_super object_ a1 a2 = (getDirectionFromCellPositionToCellPosition_impl (javaCast object_ :: GeographicMapDirectionUtil)) a1 a2

getDirectionFromCellPositionToCellPosition_impl :: GeographicMapDirectionUtil -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Direction.Direction)
getDirectionFromCellPositionToCellPosition_impl this fromGeographicMapCellPosition toGeographicMapCellPosition = do
    javaCatchReturn $ do
        fromColumn <- (GeographicMapCellPosition.getColumn fromGeographicMapCellPosition)
        fromRow <- (GeographicMapCellPosition.getRow fromGeographicMapCellPosition)
        goColumn <- (GeographicMapCellPosition.getColumn toGeographicMapCellPosition)
        goRow <- (GeographicMapCellPosition.getRow toGeographicMapCellPosition)
        directionFactory <- (DirectionFactory.getInstance)
        if (fromColumn > goColumn) then do
            javaReturn ((jget (directionFactory).lEFT))
        else if (fromColumn < goColumn) then do
            javaReturn ((jget (directionFactory).rIGHT))
        else if (fromRow > goRow) then do
            javaReturn ((jget (directionFactory).uP))
        else when (fromRow < goRow) $ do
            javaReturn ((jget (directionFactory).dOWN))
        stringMaker <- (StringMaker.new_)
        string <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jio (CellPosition.toStringCellPosition (javaCast fromGeographicMapCellPosition)))))) " == "))) (jio (CellPosition.toStringCellPosition (javaCast toGeographicMapCellPosition)))))))
        Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
        javaThrow ((JavaException "Exception" (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append stringMaker "Error: "))) string)))))))


-- throws Exception
getEightDirectionFromCellPositionToCellPosition :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Direction.Direction)
getEightDirectionFromCellPositionToCellPosition object_ a1 a2 = jmethod object_ "getEightDirectionFromCellPositionToCellPosition" (\() -> (getEightDirectionFromCellPositionToCellPosition_impl (javaCast object_ :: GeographicMapDirectionUtil))) () a1 a2

getEightDirectionFromCellPositionToCellPosition_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Direction.Direction)
getEightDirectionFromCellPositionToCellPosition_super object_ a1 a2 = (getEightDirectionFromCellPositionToCellPosition_impl (javaCast object_ :: GeographicMapDirectionUtil)) a1 a2

getEightDirectionFromCellPositionToCellPosition_impl :: GeographicMapDirectionUtil -> GeographicMapCellPosition.GeographicMapCellPosition -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (Direction.Direction)
getEightDirectionFromCellPositionToCellPosition_impl this fromGeographicMapCellPosition toGeographicMapCellPosition = do
    javaCatchReturn $ do
        fromColumn <- (GeographicMapCellPosition.getColumn fromGeographicMapCellPosition)
        fromRow <- (GeographicMapCellPosition.getRow fromGeographicMapCellPosition)
        goColumn <- (GeographicMapCellPosition.getColumn toGeographicMapCellPosition)
        goRow <- (GeographicMapCellPosition.getRow toGeographicMapCellPosition)
        directionFactory <- (DirectionFactory.getInstance)
        if (fromGeographicMapCellPosition == toGeographicMapCellPosition) then do
            javaReturn ((jget (directionFactory).nO_DIRECTION))
        else if (fromRow == goRow) then do
            if (fromColumn > goColumn) then do
                javaReturn ((jget (directionFactory).lEFT))
            else when (fromColumn < goColumn) $ do
                javaReturn ((jget (directionFactory).rIGHT))
        else if (fromRow > goRow) then do
            if (fromColumn > goColumn) then do
                javaReturn ((jget (directionFactory).uP_LEFT))
            else if (fromColumn < goColumn) then do
                javaReturn ((jget (directionFactory).uP_RIGHT))
            else when (fromColumn == goColumn) $ do
                javaReturn ((jget (directionFactory).uP))
        else when (fromRow < goRow) $ do
            if (fromColumn > goColumn) then do
                javaReturn ((jget (directionFactory).dOWN_LEFT))
            else if (fromColumn < goColumn) then do
                javaReturn ((jget (directionFactory).dOWN_RIGHT))
            else when (fromColumn == goColumn) $ do
                javaReturn ((jget (directionFactory).dOWN))
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).eRROR))
        Control.Monad.void (StringMaker.append stringBuffer (jio (CellPosition.toStringCellPosition (javaCast fromGeographicMapCellPosition))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).eQUAL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (CellPosition.toStringCellPosition (javaCast toGeographicMapCellPosition))))
        javaThrow ((JavaException "Exception" (jio (StringMaker.toString stringBuffer))))


