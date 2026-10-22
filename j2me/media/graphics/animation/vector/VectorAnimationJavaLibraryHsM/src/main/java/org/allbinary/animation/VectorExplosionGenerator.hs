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
module VectorExplosionGenerator where

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
import qualified VectorExplosionType -- same package or java.lang
import qualified VectorAnimationUtil -- same package or java.lang
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified RandomRotationFactory -- org.allbinary.graphics.pipeline.RandomRotationFactory
import qualified RandomTranslation -- org.allbinary.graphics.pipeline.RandomTranslation
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListS -- org.allbinary.util.BasicArrayListS

data VectorExplosionGenerator = VectorExplosionGenerator
    { header_ :: JavaHeader
    , rANDOM :: IORef (VectorExplosionType.VectorExplosionType)
    , rOTATION :: IORef (VectorExplosionType.VectorExplosionType)
    , vectorAnimationUtil :: IORef (VectorAnimationUtil.VectorAnimationUtil)
    , randomRotationFactory :: IORef (RandomRotationFactory.RandomRotationFactory)
    }

instance JavaNull VectorExplosionGenerator where
    javaNull = javaNullRecord "VectorExplosionGenerator"

instance JavaEquals VectorExplosionGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VectorExplosionGenerator where
    (==) = jrecordEquals

instance JavaObjectClass VectorExplosionGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VectorExplosionGenerator
newRecord_ = do
    header_ <- newJavaHeader
    rANDOM <- newIORef javaNull
    rOTATION <- newIORef javaNull
    vectorAnimationUtil <- newIORef javaNull
    randomRotationFactory <- newIORef javaNull
    let this = VectorExplosionGenerator header_ rANDOM rOTATION vectorAnimationUtil randomRotationFactory
    jregisterLevel header_ this
    jregisterMethod header_ "createList" (\() -> createList_impl this)
    jregisterMethod header_ "getInstance_3" (\() -> getInstance_3_impl this)
    jregisterMethod header_ "getInstanceStartFrame" (\() -> getInstanceStartFrame_impl this)
    jregisterMethod header_ "createListFromPoints" (\() -> createListFromPoints_impl this)
    jregisterMethod header_ "createPointsBasicArrayList" (\() -> createPointsBasicArrayList_impl this)
    pure this

initFields_ :: VectorExplosionGenerator -> IO ()
initFields_ this = do
    jset this.rANDOM =<< (VectorExplosionType.new_)
    jset this.rOTATION =<< (VectorExplosionType.new_)
    jset this.vectorAnimationUtil =<< (VectorAnimationUtil.getInstance)
    jset this.randomRotationFactory =<< (RandomRotationFactory.getInstance)
    pure ()


getInstance :: IO (VectorExplosionGenerator)
getInstance = do
        pure (VectorExplosionGenerator.instance_)

new_ :: IO VectorExplosionGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: VectorExplosionGenerator -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
createList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> Int -> VectorExplosionType.VectorExplosionType -> IO (BasicArrayList.BasicArrayList)
createList object_ a1 a2 a3 = jmethod object_ "createList" (\() -> (createList_impl (javaCast object_ :: VectorExplosionGenerator))) () a1 a2 a3

createList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> Int -> VectorExplosionType.VectorExplosionType -> IO (BasicArrayList.BasicArrayList)
createList_super object_ a1 a2 a3 = (createList_impl (javaCast object_ :: VectorExplosionGenerator)) a1 a2 a3

createList_impl :: VectorExplosionGenerator -> BasicArrayList.BasicArrayList -> Int -> VectorExplosionType.VectorExplosionType -> IO (BasicArrayList.BasicArrayList)
createList_impl this list howMuch type_ = do
        point <- newIORef (javaNull)
        size <- (BasicArrayList.size list)
        let points = (jnewArray2 (size) (2) 0)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset point ((javaCast (jindex ((jget (list).objectArray)) (index)) :: GPoint.GPoint))
            assignedValue <- (GPoint.getX ((jget point)))
            jsetIndex ((jindex points (index))) (0) (assignedValue)
            assignedValue <- (GPoint.getY ((jget point)))
            jsetIndex ((jindex points (index))) (1) (assignedValue)
        (VectorExplosionGenerator.createListFromPoints this list points howMuch type_)


-- throws Exception
getInstance_3 :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> Int -> VectorExplosionType.VectorExplosionType -> IO (JavaArray (JavaArray (JavaArray (Int))))
getInstance_3 object_ a1 a2 a3 = jmethod object_ "getInstance_3" (\() -> (getInstance_3_impl (javaCast object_ :: VectorExplosionGenerator))) () a1 a2 a3

getInstance_3_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> Int -> VectorExplosionType.VectorExplosionType -> IO (JavaArray (JavaArray (JavaArray (Int))))
getInstance_3_super object_ a1 a2 a3 = (getInstance_3_impl (javaCast object_ :: VectorExplosionGenerator)) a1 a2 a3

getInstance_3_impl :: VectorExplosionGenerator -> JavaArray (JavaArray (Int)) -> Int -> VectorExplosionType.VectorExplosionType -> IO (JavaArray (JavaArray (JavaArray (Int))))
getInstance_3_impl this points howMuch type_ = do
        pointsBasicArrayList <- (VectorExplosionGenerator.getInstanceStartFrame this points howMuch type_ True)
        let tempBasicArrayList = (javaCast (jindex ((jget (pointsBasicArrayList).objectArray)) (0)) :: BasicArrayList.BasicArrayList)
        newPoints <- (VectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame ((jget (this).vectorAnimationUtil)) pointsBasicArrayList (jio (BasicArrayList.size tempBasicArrayList)))
        pure (newPoints)


-- throws Exception
getInstanceStartFrame :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> Int -> VectorExplosionType.VectorExplosionType -> Bool -> IO (BasicArrayList.BasicArrayList)
getInstanceStartFrame object_ a1 a2 a3 a4 = jmethod object_ "getInstanceStartFrame" (\() -> (getInstanceStartFrame_impl (javaCast object_ :: VectorExplosionGenerator))) () a1 a2 a3 a4

getInstanceStartFrame_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> Int -> VectorExplosionType.VectorExplosionType -> Bool -> IO (BasicArrayList.BasicArrayList)
getInstanceStartFrame_super object_ a1 a2 a3 a4 = (getInstanceStartFrame_impl (javaCast object_ :: VectorExplosionGenerator)) a1 a2 a3 a4

getInstanceStartFrame_impl :: VectorExplosionGenerator -> JavaArray (JavaArray (Int)) -> Int -> VectorExplosionType.VectorExplosionType -> Bool -> IO (BasicArrayList.BasicArrayList)
getInstanceStartFrame_impl this points howMuch type_ startFrame = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            pointsBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListS.new_1 howMuch))
            Control.Monad.void (BasicArrayList.add pointsBasicArrayList (jio (VectorExplosionGenerator.createPointsBasicArrayList this points)))
            frameIndex <- newIORef (0)
            tempBasicArrayList <- newIORef (javaNull)
            pointBasicArrayList <- newIORef (javaNull)
            fix $ \loop -> when ((jget frameIndex) < howMuch) $ javaIteration (loop) $ do
                jset tempBasicArrayList ((javaCast (jindex ((jget (pointsBasicArrayList).objectArray)) ((jget frameIndex))) :: BasicArrayList.BasicArrayList))
                assignedValue <- (VectorExplosionGenerator.createListFromPoints this (jget tempBasicArrayList) points howMuch type_)
                jset pointBasicArrayList (assignedValue)
                Control.Monad.void (BasicArrayList.add pointsBasicArrayList (jget pointBasicArrayList))
                jset frameIndex ((jget frameIndex) + 1)
            when (Prelude.not startFrame) $ do
                Control.Monad.void (BasicArrayList.removeAt pointsBasicArrayList 0)
            pure (pointsBasicArrayList)


-- throws Exception
createListFromPoints :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> JavaArray (JavaArray (Int)) -> Int -> VectorExplosionType.VectorExplosionType -> IO (BasicArrayList.BasicArrayList)
createListFromPoints object_ a1 a2 a3 a4 = jmethod object_ "createListFromPoints" (\() -> (createListFromPoints_impl (javaCast object_ :: VectorExplosionGenerator))) () a1 a2 a3 a4

createListFromPoints_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> JavaArray (JavaArray (Int)) -> Int -> VectorExplosionType.VectorExplosionType -> IO (BasicArrayList.BasicArrayList)
createListFromPoints_super object_ a1 a2 a3 a4 = (createListFromPoints_impl (javaCast object_ :: VectorExplosionGenerator)) a1 a2 a3 a4

createListFromPoints_impl :: VectorExplosionGenerator -> BasicArrayList.BasicArrayList -> JavaArray (JavaArray (Int)) -> Int -> VectorExplosionType.VectorExplosionType -> IO (BasicArrayList.BasicArrayList)
createListFromPoints_impl this tempBasicArrayList points howMuch type_ = do
        index <- newIORef (0)
        pointBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        sectionBasicArrayList <- newIORef (javaNull)
        fix $ \loop -> when ((jget index) < (jlength points)) $ javaIteration (loop) $ do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            jset sectionBasicArrayList (assignedValue)
            fix $ \loop -> when ((jindex ((jindex points ((jget index)))) (0)) /= 1000) $ javaIteration (loop) $ do
                Control.Monad.void (BasicArrayList.add ((jget sectionBasicArrayList)) (jindex ((jget (tempBasicArrayList).objectArray)) ((jget index))))
                jset index ((jget index) + 1)
                when ((jget index) >= (jlength points)) $ do
                    throwIO JavaBreak
            assignedValue <- (RandomTranslation.getInstance (jget sectionBasicArrayList) howMuch)
            jset sectionBasicArrayList (assignedValue)
            when (type_ == (jget (this).rOTATION)) $ do
                assignedValue <- (RandomRotationFactory.getInstanceList ((jget (this).randomRotationFactory)) (jget sectionBasicArrayList) howMuch)
                jset sectionBasicArrayList (assignedValue)
            size <- (BasicArrayList.size ((jget sectionBasicArrayList)))
            forM_ [0 .. size - 1] $ \index2 -> javaIteration (pure ()) $ do
                Control.Monad.void (BasicArrayList.add pointBasicArrayList (jindex ((jget ((jget sectionBasicArrayList)).objectArray)) (index2)))
            if ((jget index) >= (jlength points)) then do
                throwIO JavaBreak
            else when ((jindex ((jindex points ((jget index)))) (0)) == 1000) $ do
                Control.Monad.void (BasicArrayList.add pointBasicArrayList (jindex ((jget (tempBasicArrayList).objectArray)) ((jget index))))
                jset index ((jget index) + 1)
        pure (pointBasicArrayList)


-- throws Exception
createPointsBasicArrayList :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> IO (BasicArrayList.BasicArrayList)
createPointsBasicArrayList object_ a1 = jmethod object_ "createPointsBasicArrayList" (\() -> (createPointsBasicArrayList_impl (javaCast object_ :: VectorExplosionGenerator))) () a1

createPointsBasicArrayList_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> IO (BasicArrayList.BasicArrayList)
createPointsBasicArrayList_super object_ a1 = (createPointsBasicArrayList_impl (javaCast object_ :: VectorExplosionGenerator)) a1

createPointsBasicArrayList_impl :: VectorExplosionGenerator -> JavaArray (JavaArray (Int)) -> IO (BasicArrayList.BasicArrayList)
createPointsBasicArrayList_impl this points = do
        when ((jlength points) == 0) $ do
            javaThrow ((JavaException "Exception" "Not Points Provided"))
        firstPointBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListS.new_1 (jlength points)))
        pointFactory <- (PointFactory.getInstance)
        forM_ [0 .. (jlength points) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (BasicArrayList.add firstPointBasicArrayList (jio (PointFactory.createXY pointFactory (jindex ((jindex points (index))) (0)) (jindex ((jindex points (index))) (1)))))
        pure (firstPointBasicArrayList)


