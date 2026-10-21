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
-- package org.allbinary.animation
module VectorAnimationUtil where

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
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data VectorAnimationUtil = VectorAnimationUtil
    { header_ :: JavaHeader
    }

instance JavaNull VectorAnimationUtil where
    javaNull = javaNullRecord "VectorAnimationUtil"

instance JavaEquals VectorAnimationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VectorAnimationUtil where
    (==) = jrecordEquals

instance JavaObjectClass VectorAnimationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VectorAnimationUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = VectorAnimationUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "toAnimationArrayFromListOfPointListWithPointsPerFrame" (\() -> toAnimationArrayFromListOfPointListWithPointsPerFrame_impl this)
    jregisterMethod header_ "toAnimationArrayFromListOfPointList" (\() -> toAnimationArrayFromListOfPointList_impl this)
    jregisterMethod header_ "toFrameArrayFromPointBasicArrayList" (\() -> toFrameArrayFromPointBasicArrayList_impl this)
    pure this

initFields_ :: VectorAnimationUtil -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (VectorAnimationUtil)
getInstance = do
        pure (VectorAnimationUtil.instance_)

new_ :: IO VectorAnimationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: VectorAnimationUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


toAnimationArrayFromListOfPointListWithPointsPerFrame :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> Int -> IO (JavaArray (JavaArray (JavaArray (Int))))
toAnimationArrayFromListOfPointListWithPointsPerFrame object_ a1 a2 = jmethod object_ "toAnimationArrayFromListOfPointListWithPointsPerFrame" (\() -> (toAnimationArrayFromListOfPointListWithPointsPerFrame_impl (javaCast object_ :: VectorAnimationUtil))) () a1 a2

toAnimationArrayFromListOfPointListWithPointsPerFrame_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> Int -> IO (JavaArray (JavaArray (JavaArray (Int))))
toAnimationArrayFromListOfPointListWithPointsPerFrame_super object_ a1 a2 = (toAnimationArrayFromListOfPointListWithPointsPerFrame_impl (javaCast object_ :: VectorAnimationUtil)) a1 a2

toAnimationArrayFromListOfPointListWithPointsPerFrame_impl :: VectorAnimationUtil -> BasicArrayList.BasicArrayList -> Int -> IO (JavaArray (JavaArray (JavaArray (Int))))
toAnimationArrayFromListOfPointListWithPointsPerFrame_impl this vector pointsPerFrame = do
        size <- (BasicArrayList.size vector)
        let points = (jnewArray3 (size) (pointsPerFrame) (2) 0)
        nextBasicArrayList <- newIORef (javaNull)
        framePoints <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset nextBasicArrayList ((javaCast (jindex ((jget (vector).objectArray)) (index)) :: BasicArrayList.BasicArrayList))
            assignedValue <- (VectorAnimationUtil.toFrameArrayFromPointBasicArrayList this (jget nextBasicArrayList))
            jset framePoints (assignedValue)
            forM_ [0 .. (jlength (jget framePoints)) - 1] $ \pointIndex -> javaIteration (pure ()) $ do
                jsetIndex ((jindex ((jindex points (index))) (pointIndex))) (0) ((jindex ((jindex ((jget framePoints)) (pointIndex))) (0)))
                jsetIndex ((jindex ((jindex points (index))) (pointIndex))) (1) ((jindex ((jindex ((jget framePoints)) (pointIndex))) (1)))
        pure (points)


toAnimationArrayFromListOfPointList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (JavaArray (JavaArray (JavaArray (Int))))
toAnimationArrayFromListOfPointList object_ a1 = jmethod object_ "toAnimationArrayFromListOfPointList" (\() -> (toAnimationArrayFromListOfPointList_impl (javaCast object_ :: VectorAnimationUtil))) () a1

toAnimationArrayFromListOfPointList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (JavaArray (JavaArray (JavaArray (Int))))
toAnimationArrayFromListOfPointList_super object_ a1 = (toAnimationArrayFromListOfPointList_impl (javaCast object_ :: VectorAnimationUtil)) a1

toAnimationArrayFromListOfPointList_impl :: VectorAnimationUtil -> BasicArrayList.BasicArrayList -> IO (JavaArray (JavaArray (JavaArray (Int))))
toAnimationArrayFromListOfPointList_impl this vector = do
        size <- (BasicArrayList.size vector)
        let points = (jnewArray3 (size) (0) (0) 0)
        nextBasicArrayList <- newIORef (javaNull)
        framePoints <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset nextBasicArrayList ((javaCast (jindex ((jget (vector).objectArray)) (index)) :: BasicArrayList.BasicArrayList))
            assignedValue <- (VectorAnimationUtil.toFrameArrayFromPointBasicArrayList this (jget nextBasicArrayList))
            jset framePoints (assignedValue)
            jsetIndex points (index) ((jnewArray2 ((jlength (jget framePoints))) (2) 0))
            forM_ [0 .. (jlength (jget framePoints)) - 1] $ \pointIndex -> javaIteration (pure ()) $ do
                jsetIndex ((jindex ((jindex points (index))) (pointIndex))) (0) ((jindex ((jindex ((jget framePoints)) (pointIndex))) (0)))
                jsetIndex ((jindex ((jindex points (index))) (pointIndex))) (1) ((jindex ((jindex ((jget framePoints)) (pointIndex))) (1)))
        pure (points)


toFrameArrayFromPointBasicArrayList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (JavaArray (JavaArray (Int)))
toFrameArrayFromPointBasicArrayList object_ a1 = jmethod object_ "toFrameArrayFromPointBasicArrayList" (\() -> (toFrameArrayFromPointBasicArrayList_impl (javaCast object_ :: VectorAnimationUtil))) () a1

toFrameArrayFromPointBasicArrayList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (JavaArray (JavaArray (Int)))
toFrameArrayFromPointBasicArrayList_super object_ a1 = (toFrameArrayFromPointBasicArrayList_impl (javaCast object_ :: VectorAnimationUtil)) a1

toFrameArrayFromPointBasicArrayList_impl :: VectorAnimationUtil -> BasicArrayList.BasicArrayList -> IO (JavaArray (JavaArray (Int)))
toFrameArrayFromPointBasicArrayList_impl this list = do
        let points = (jnewArray2 ((jio (BasicArrayList.size list))) (2) 0)
        size <- (BasicArrayList.size list)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let nextPoint = (javaCast (jindex ((jget (list).objectArray)) (index)) :: GPoint.GPoint)
            assignedValue <- (GPoint.getX nextPoint)
            jsetIndex ((jindex points (index))) (0) (assignedValue)
            assignedValue <- (GPoint.getY nextPoint)
            jsetIndex ((jindex points (index))) (1) (assignedValue)
        pure (points)


