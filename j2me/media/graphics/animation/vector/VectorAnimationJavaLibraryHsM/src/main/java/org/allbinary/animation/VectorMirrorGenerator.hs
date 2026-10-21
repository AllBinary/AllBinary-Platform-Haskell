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
module VectorMirrorGenerator where

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
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListS -- org.allbinary.util.BasicArrayListS

data VectorMirrorGenerator = VectorMirrorGenerator
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , vectorAnimationUtil :: IORef (VectorAnimationUtil.VectorAnimationUtil)
    }

instance JavaNull VectorMirrorGenerator where
    javaNull = javaNullRecord "VectorMirrorGenerator"

instance JavaEquals VectorMirrorGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VectorMirrorGenerator where
    (==) = jrecordEquals

instance JavaObjectClass VectorMirrorGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VectorMirrorGenerator
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    vectorAnimationUtil <- newIORef javaNull
    let this = VectorMirrorGenerator header_ logUtil vectorAnimationUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_overload1" (\() -> getInstance_overload1_impl this)
    jregisterMethod header_ "getInstance_overload2" (\() -> getInstance_overload2_impl this)
    pure this

initFields_ :: VectorMirrorGenerator -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.vectorAnimationUtil =<< (VectorAnimationUtil.getInstance)
    pure ()


getInstance :: IO (VectorMirrorGenerator)
getInstance = do
        pure (VectorMirrorGenerator.instance_)

new_ :: IO VectorMirrorGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: VectorMirrorGenerator -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> IO (JavaArray (JavaArray (JavaArray (Int))))
getInstance this a1 a2
    | jisInstanceOf a1 (javaNull :: JavaArray (JavaArray (JavaArray (Int)))) = getInstance_overload1 this (javaCast a1 :: JavaArray (JavaArray (JavaArray (Int)))) a2
    | jisInstanceOf a1 (javaNull :: BasicArrayList.BasicArrayList) = getInstance_overload2 this (javaCast a1 :: BasicArrayList.BasicArrayList) a2
    | otherwise = getInstance_overload2 this (javaCast a1 :: BasicArrayList.BasicArrayList) a2

-- Java overload of getInstance with a different parameter count: give it a different name
getInstance_overload1 :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (JavaArray (Int))) -> Int -> IO (JavaArray (JavaArray (JavaArray (Int))))
getInstance_overload1 object_ a1 a2 = jmethod object_ "getInstance_overload1" (\() -> (getInstance_overload1_impl (javaCast object_ :: VectorMirrorGenerator))) () a1 a2

getInstance_overload1_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (JavaArray (Int))) -> Int -> IO (JavaArray (JavaArray (JavaArray (Int))))
getInstance_overload1_super object_ a1 a2 = (getInstance_overload1_impl (javaCast object_ :: VectorMirrorGenerator)) a1 a2

getInstance_overload1_impl :: VectorMirrorGenerator -> JavaArray (JavaArray (JavaArray (Int))) -> Int -> IO (JavaArray (JavaArray (JavaArray (Int))))
getInstance_overload1_impl this points width = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            pure ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY_ARRAY_ARRAY))
            ) $ do
            pointFactory <- (PointFactory.getInstance)
            pointBasicArrayList <- newIORef (javaNull)
            nextPoints <- newIORef (javaNull)
            size2 <- newIORef (0)
            let size = (jlength points)
            pointsBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListS.new_1 size))
            forM_ [0 .. size - 1] $ \frame -> javaIteration (pure ()) $ do
                jset nextPoints ((jindex points (frame)))
                jset size2 ((jlength (jget nextPoints)))
                assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListS.new_1 (jget size2)))
                jset pointBasicArrayList (assignedValue)
                forM_ [0 .. (jget size2) - 1] $ \index -> javaIteration (pure ()) $ do
                    Control.Monad.void (BasicArrayList.add ((jget pointBasicArrayList)) (jio (PointFactory.createXY pointFactory (jindex ((jindex ((jget nextPoints)) (index))) (0)) (jindex ((jindex ((jget nextPoints)) (index))) (1)))))
                Control.Monad.void (BasicArrayList.add pointsBasicArrayList (jget pointBasicArrayList))
            forM_ [0 .. (jlength points) - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (BasicArrayList.add pointsBasicArrayList (jio (VectorMirrorGenerator.getInstance this (javaCast (jindex ((jget (pointsBasicArrayList).objectArray)) (index)) :: BasicArrayList.BasicArrayList) width)))
            newPoints <- (VectorAnimationUtil.toAnimationArrayFromListOfPointList ((jget (this).vectorAnimationUtil)) pointsBasicArrayList)
            pure (newPoints)


-- throws Exception
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance_overload2 :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> Int -> IO (BasicArrayList.BasicArrayList)
getInstance_overload2 object_ a1 a2 = jmethod object_ "getInstance_overload2" (\() -> (getInstance_overload2_impl (javaCast object_ :: VectorMirrorGenerator))) () a1 a2

getInstance_overload2_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> Int -> IO (BasicArrayList.BasicArrayList)
getInstance_overload2_super object_ a1 a2 = (getInstance_overload2_impl (javaCast object_ :: VectorMirrorGenerator)) a1 a2

getInstance_overload2_impl :: VectorMirrorGenerator -> BasicArrayList.BasicArrayList -> Int -> IO (BasicArrayList.BasicArrayList)
getInstance_overload2_impl this pointBasicArrayList width = do
        graphicsPipe <- (BasicGraphicsPipeline.new_1 pointBasicArrayList)
        Control.Monad.void (BasicGraphicsPipeline.createMatrix graphicsPipe)
        Control.Monad.void (BasicGraphicsPipeline.mirror graphicsPipe width)
        (BasicGraphicsPipeline.getMatrix graphicsPipe)


