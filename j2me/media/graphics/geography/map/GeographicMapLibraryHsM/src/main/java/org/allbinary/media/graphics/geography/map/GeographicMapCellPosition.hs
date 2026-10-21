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
module GeographicMapCellPosition (module GeographicMapCellPosition, module CellPosition) where

import CellPosition hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getPoint, getPoint_super, getPoint_impl, getMidPoint, getMidPoint_super, getMidPoint_impl, setMidPoint, setMidPoint_super, setMidPoint_impl, point, midPoint)
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
import qualified CellPosition -- org.allbinary.graphics.CellPosition
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory

data GeographicMapCellPosition = GeographicMapCellPosition
    { header_ :: JavaHeader
    , base :: CellPosition.CellPosition
    , point :: IORef (GPoint.GPoint)
    , midPoint :: IORef (GPoint.GPoint)
    }

instance JavaNull GeographicMapCellPosition where
    javaNull = javaNullRecord "GeographicMapCellPosition"

instance JavaEquals GeographicMapCellPosition where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellPosition where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellPosition where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GeographicMapCellPosition
newRecord_ = do
    base <- CellPosition.newRecord_
    let header_ = base.header_
    point <- newIORef javaNull
    midPoint <- newIORef javaNull
    let this = GeographicMapCellPosition header_ base point midPoint
    jregisterLevel header_ this
    jregisterMethod header_ "getPoint" (\() -> getPoint_impl this)
    jregisterMethod header_ "getMidPoint" (\() -> getMidPoint_impl this)
    jregisterMethod header_ "setMidPoint" (\() -> setMidPoint_impl this)
    pure this

initFields_ :: GeographicMapCellPosition -> IO ()
initFields_ this = do
    jset this.point (javaNull)
    jset this.midPoint (javaNull)
    pure ()

new_6 :: Int -> Int -> Int -> Int -> Int -> Int -> IO GeographicMapCellPosition
new_6 column row columns rows width height = do
    this <- newRecord_
    init_6 this column row columns rows width height
    pure this

init_6 :: GeographicMapCellPosition -> Int -> Int -> Int -> Int -> Int -> Int -> IO ()
init_6 this column row columns rows width height = do
        CellPosition.init_4 this.base (column) (row) (columns) (rows)
        initFields_ this
        pure () -- super(...) is in the record above
        let x = ((jio (CellPosition.getColumn this)) * width)
        let y = ((jio (CellPosition.getRow this)) * height)
        pointFactory <- (PointFactory.getInstance)
        assignedValue <- (PointFactory.createXY pointFactory x y)
        jset (this).point (assignedValue)
        assignedValue <- (PointFactory.createXY pointFactory (x + ((width `Data.Bits.shiftR` 1))) (y + ((height `Data.Bits.shiftR` 1))))
        jset (this).midPoint (assignedValue)
        pure ()


getPoint :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getPoint object_ = jmethod object_ "getPoint" (\() -> (getPoint_impl (javaCast object_ :: GeographicMapCellPosition))) ()

getPoint_super :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getPoint_super object_ = (getPoint_impl (javaCast object_ :: GeographicMapCellPosition))

getPoint_impl :: GeographicMapCellPosition -> IO (GPoint.GPoint)
getPoint_impl this = do
        pure ((jget (this).point))


getMidPoint :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getMidPoint object_ = jmethod object_ "getMidPoint" (\() -> (getMidPoint_impl (javaCast object_ :: GeographicMapCellPosition))) ()

getMidPoint_super :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getMidPoint_super object_ = (getMidPoint_impl (javaCast object_ :: GeographicMapCellPosition))

getMidPoint_impl :: GeographicMapCellPosition -> IO (GPoint.GPoint)
getMidPoint_impl this = do
        pure ((jget (this).midPoint))


setMidPoint :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setMidPoint object_ a1 = jmethod object_ "setMidPoint" (\() -> (setMidPoint_impl (javaCast object_ :: GeographicMapCellPosition))) () a1

setMidPoint_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setMidPoint_super object_ a1 = (setMidPoint_impl (javaCast object_ :: GeographicMapCellPosition)) a1

setMidPoint_impl :: GeographicMapCellPosition -> GPoint.GPoint -> IO (())
setMidPoint_impl this midPoint = do
        jset (this).midPoint (midPoint)
        pure ()


