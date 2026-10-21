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
module VectorRotationGenerator where

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
import qualified VectorAnimationUtil -- same package or java.lang
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified BasicGraphicsPipeline -- org.allbinary.graphics.pipeline.BasicGraphicsPipeline
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Angle -- org.allbinary.math.Angle
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListS -- org.allbinary.util.BasicArrayListS
import qualified VectorInfo -- org.allbinary.vector.VectorInfo

data VectorRotationGenerator = VectorRotationGenerator
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , vectorAnimationUtil :: IORef (VectorAnimationUtil.VectorAnimationUtil)
    , angleFactory :: IORef (AngleFactory.AngleFactory)
    }

instance JavaNull VectorRotationGenerator where
    javaNull = javaNullRecord "VectorRotationGenerator"

instance JavaEquals VectorRotationGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VectorRotationGenerator where
    (==) = jrecordEquals

instance JavaObjectClass VectorRotationGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VectorRotationGenerator
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    vectorAnimationUtil <- newIORef javaNull
    angleFactory <- newIORef javaNull
    let this = VectorRotationGenerator header_ logUtil vectorAnimationUtil angleFactory
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getInstanceFrames" (\() -> getInstanceFrames_impl this)
    jregisterMethod header_ "getListAtAngle" (\() -> getListAtAngle_impl this)
    pure this

initFields_ :: VectorRotationGenerator -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.vectorAnimationUtil =<< (VectorAnimationUtil.getInstance)
    jset this.angleFactory =<< (AngleFactory.getInstance)
    pure ()


getInstance :: IO (VectorRotationGenerator)
getInstance = do
        pure (VectorRotationGenerator.instance_)

new_ :: IO VectorRotationGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: VectorRotationGenerator -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: (JavaObjectClass this_) => this_ -> VectorInfo.VectorInfo -> IO (JavaArray (JavaArray (JavaArray (Int))))
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: VectorRotationGenerator))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> VectorInfo.VectorInfo -> IO (JavaArray (JavaArray (JavaArray (Int))))
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: VectorRotationGenerator)) a1

getInstance_impl :: VectorRotationGenerator -> VectorInfo.VectorInfo -> IO (JavaArray (JavaArray (JavaArray (Int))))
getInstance_impl this vectorRotationInfo = do
        (VectorRotationGenerator.getInstanceFrames this (jio (VectorInfo.getWidth vectorRotationInfo)) (jio (VectorInfo.getHeight vectorRotationInfo)) (jio (VectorInfo.getPoints vectorRotationInfo)) (jio (VectorInfo.getTotalFrames vectorRotationInfo)))


getInstanceFrames :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (JavaArray (Int)) -> Int -> IO (JavaArray (JavaArray (JavaArray (Int))))
getInstanceFrames object_ a1 a2 a3 a4 = jmethod object_ "getInstanceFrames" (\() -> (getInstanceFrames_impl (javaCast object_ :: VectorRotationGenerator))) () a1 a2 a3 a4

getInstanceFrames_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (JavaArray (Int)) -> Int -> IO (JavaArray (JavaArray (JavaArray (Int))))
getInstanceFrames_super object_ a1 a2 a3 a4 = (getInstanceFrames_impl (javaCast object_ :: VectorRotationGenerator)) a1 a2 a3 a4

getInstanceFrames_impl :: VectorRotationGenerator -> Int -> Int -> JavaArray (JavaArray (Int)) -> Int -> IO (JavaArray (JavaArray (JavaArray (Int))))
getInstanceFrames_impl this width height points frames = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            pure ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY_ARRAY_ARRAY))
            ) $ do
            let totalAngle = (jget ((jget (this).angleFactory)).tOTAL_ANGLE)
            let angleIncrement = ((Prelude.fromIntegral totalAngle) `quot` frames)
            pointsBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListS.new_1 ((Prelude.fromIntegral totalAngle) `quot` angleIncrement)))
            pointBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListS.new_1 (jlength points)))
            pointFactory <- (PointFactory.getInstance)
            let size = (jlength points)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (BasicArrayList.add pointBasicArrayList (jio (PointFactory.createXY pointFactory (jindex ((jindex points (index))) (0)) (jindex ((jindex points (index))) (1)))))
            index <- newIORef (0)
            fix $ \loop -> when ((jget index) < (Prelude.fromIntegral totalAngle)) $ javaIteration (loop) $ do
                Control.Monad.void (BasicArrayList.add pointsBasicArrayList (jio (VectorRotationGenerator.getListAtAngle this width height pointBasicArrayList (jio (AngleFactory.getAt ((jget (this).angleFactory)) (jget index))))))
                jset index (((jget index) + angleIncrement))
            newPoints <- (VectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame ((jget (this).vectorAnimationUtil)) pointsBasicArrayList (jio (BasicArrayList.size pointBasicArrayList)))
            pure (newPoints)


-- throws Exception
getListAtAngle :: (JavaObjectClass this_) => this_ -> Int -> Int -> BasicArrayList.BasicArrayList -> Angle.Angle -> IO (BasicArrayList.BasicArrayList)
getListAtAngle object_ a1 a2 a3 a4 = jmethod object_ "getListAtAngle" (\() -> (getListAtAngle_impl (javaCast object_ :: VectorRotationGenerator))) () a1 a2 a3 a4

getListAtAngle_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> BasicArrayList.BasicArrayList -> Angle.Angle -> IO (BasicArrayList.BasicArrayList)
getListAtAngle_super object_ a1 a2 a3 a4 = (getListAtAngle_impl (javaCast object_ :: VectorRotationGenerator)) a1 a2 a3 a4

getListAtAngle_impl :: VectorRotationGenerator -> Int -> Int -> BasicArrayList.BasicArrayList -> Angle.Angle -> IO (BasicArrayList.BasicArrayList)
getListAtAngle_impl this width height pointBasicArrayList angle = do
        graphicsPipe <- (BasicGraphicsPipeline.new_1 pointBasicArrayList)
        Control.Monad.void (BasicGraphicsPipeline.createMatrix graphicsPipe)
        Control.Monad.void (BasicGraphicsPipeline.translate graphicsPipe (Prelude.negate ((width `Data.Bits.shiftR` 1))) (Prelude.negate ((height `Data.Bits.shiftR` 1))))
        Control.Monad.void (BasicGraphicsPipeline.rotateToAngle graphicsPipe angle)
        Control.Monad.void (BasicGraphicsPipeline.translate graphicsPipe ((width `Data.Bits.shiftR` 1)) ((height `Data.Bits.shiftR` 1)))
        (BasicGraphicsPipeline.getMatrix graphicsPipe)


