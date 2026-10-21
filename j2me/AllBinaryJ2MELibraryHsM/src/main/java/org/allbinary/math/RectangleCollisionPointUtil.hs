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
-- package org.allbinary.math
module RectangleCollisionPointUtil where

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
import qualified RectangleCollisionUtil -- same package or java.lang
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data RectangleCollisionPointUtil = RectangleCollisionPointUtil
    { header_ :: JavaHeader
    }

instance JavaNull RectangleCollisionPointUtil where
    javaNull = javaNullRecord "RectangleCollisionPointUtil"

instance JavaEquals RectangleCollisionPointUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RectangleCollisionPointUtil where
    (==) = jrecordEquals

instance JavaObjectClass RectangleCollisionPointUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RectangleCollisionPointUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = RectangleCollisionPointUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: RectangleCollisionPointUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO RectangleCollisionPointUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RectangleCollisionPointUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


allPointsInside :: Int -> Int -> Int -> Int -> BasicArrayList.BasicArrayList -> IO (Bool)
allPointsInside rectX1 rectY1 rectX2 rectY2 list = do
    javaCatchReturn $ do
        rectangleCollisionUtil <- (RectangleCollisionUtil.getInstance)
        point <- newIORef (javaNull)
        index <- newIORef =<< (BasicArrayList.size list)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset point ((javaCast (jindex ((jget (list).objectArray)) ((jget index))) :: GPoint.GPoint))
            when (Prelude.not (jio (RectangleCollisionUtil.isInside rectangleCollisionUtil rectX1 rectY1 rectX2 rectY2 (jio (GPoint.getX ((jget point)))) (jio (GPoint.getY ((jget point))))))) $ do
                javaReturn (False)
        pure (True)


allPointsInsideCell :: Int -> Int -> Int -> Int -> BasicArrayList.BasicArrayList -> Int -> Int -> IO (Bool)
allPointsInsideCell rectX1 rectY1 rectX2 rectY2 list xCellSize yCellSize = do
    javaCatchReturn $ do
        rectangleCollisionUtil <- (RectangleCollisionUtil.getInstance)
        point <- newIORef (javaNull)
        index <- newIORef =<< (BasicArrayList.size list)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset point ((javaCast (jindex ((jget (list).objectArray)) ((jget index))) :: GPoint.GPoint))
            when (Prelude.not (jio (RectangleCollisionUtil.isInside rectangleCollisionUtil rectX1 rectY1 rectX2 rectY2 ((jio (GPoint.getX ((jget point)))) * xCellSize) ((jio (GPoint.getY ((jget point)))) * yCellSize)))) $ do
                javaReturn (False)
        pure (True)


