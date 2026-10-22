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
-- package org.allbinary.vector
module PointsUtil where

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

data PointsUtil = PointsUtil
    { header_ :: JavaHeader
    }

instance JavaNull PointsUtil where
    javaNull = javaNullRecord "PointsUtil"

instance JavaEquals PointsUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PointsUtil where
    (==) = jrecordEquals

instance JavaObjectClass PointsUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PointsUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = PointsUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "adjustXY" (\() -> adjustXY_impl this)
    jregisterMethod header_ "adjust" (\() -> adjust_impl this)
    jregisterMethod header_ "adjust_3" (\() -> adjust_3_impl this)
    pure this

initFields_ :: PointsUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PointsUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PointsUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PointsUtil)
getInstance = do
        pure (PointsUtil.instance_)


adjustXY :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (JavaArray (Int))) -> Int -> Int -> IO (JavaArray (JavaArray (JavaArray (Int))))
adjustXY object_ a1 a2 a3 = jmethod object_ "adjustXY" (\() -> (adjustXY_impl (javaCast object_ :: PointsUtil))) () a1 a2 a3

adjustXY_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (JavaArray (Int))) -> Int -> Int -> IO (JavaArray (JavaArray (JavaArray (Int))))
adjustXY_super object_ a1 a2 a3 = (adjustXY_impl (javaCast object_ :: PointsUtil)) a1 a2 a3

adjustXY_impl :: PointsUtil -> JavaArray (JavaArray (JavaArray (Int))) -> Int -> Int -> IO (JavaArray (JavaArray (JavaArray (Int))))
adjustXY_impl this points x y = do
        let size = (jlength points)
        let newPoints = (jnewArray3 (size) (0) (0) 0)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let size2 = (jlength (jindex points (index)))
            jsetIndex newPoints (index) ((jnewArray2 (size2) (2) 0))
            forM_ [0 .. size2 - 1] $ \index2 -> javaIteration (pure ()) $ do
                if ((jindex ((jindex ((jindex points (index))) (index2))) (0)) /= 1000) then do
                    jsetIndex ((jindex ((jindex newPoints (index))) (index2))) (0) (((jindex ((jindex ((jindex points (index))) (index2))) (0)) + x))
                    jsetIndex ((jindex ((jindex newPoints (index))) (index2))) (1) (((jindex ((jindex ((jindex points (index))) (index2))) (1)) + y))
                else do
                    jsetIndex ((jindex ((jindex newPoints (index))) (index2))) (0) (1000)
                    jsetIndex ((jindex ((jindex newPoints (index))) (index2))) (1) (1000)
        pure (newPoints)


adjust :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> Int -> IO (JavaArray (JavaArray (Int)))
adjust object_ a1 a2 = jmethod object_ "adjust" (\() -> (adjust_impl (javaCast object_ :: PointsUtil))) () a1 a2

adjust_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> Int -> IO (JavaArray (JavaArray (Int)))
adjust_super object_ a1 a2 = (adjust_impl (javaCast object_ :: PointsUtil)) a1 a2

adjust_impl :: PointsUtil -> JavaArray (JavaArray (Int)) -> Int -> IO (JavaArray (JavaArray (Int)))
adjust_impl this points both = do
        (PointsUtil.adjust_3 this points both both)


adjust_3 :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> Int -> Int -> IO (JavaArray (JavaArray (Int)))
adjust_3 object_ a1 a2 a3 = jmethod object_ "adjust_3" (\() -> (adjust_3_impl (javaCast object_ :: PointsUtil))) () a1 a2 a3

adjust_3_super :: (JavaObjectClass this_) => this_ -> JavaArray (JavaArray (Int)) -> Int -> Int -> IO (JavaArray (JavaArray (Int)))
adjust_3_super object_ a1 a2 a3 = (adjust_3_impl (javaCast object_ :: PointsUtil)) a1 a2 a3

adjust_3_impl :: PointsUtil -> JavaArray (JavaArray (Int)) -> Int -> Int -> IO (JavaArray (JavaArray (Int)))
adjust_3_impl this points x y = do
        let newPoints = (jnewArray2 ((jlength points)) (2) 0)
        forM_ [0 .. (jlength points) - 1] $ \index2 -> javaIteration (pure ()) $ do
            if ((jindex ((jindex points (index2))) (0)) /= 1000) then do
                jsetIndex ((jindex newPoints (index2))) (0) (((jindex ((jindex points (index2))) (0)) + x))
                jsetIndex ((jindex newPoints (index2))) (1) (((jindex ((jindex points (index2))) (1)) + y))
            else do
                jsetIndex ((jindex newPoints (index2))) (0) (1000)
                jsetIndex ((jindex newPoints (index2))) (1) (1000)
        pure (newPoints)


