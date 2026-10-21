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
-- package org.allbinary.graphics.j2me.workarea.tools
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
import qualified VectorRotationGenerator -- org.allbinary.animation.VectorRotationGenerator
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

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
    jregisterMethod header_ "doTransforms" (\() -> doTransforms_impl this)
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


-- throws Exception
doTransforms :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> Double -> GPoint.GPoint -> IO (BasicArrayList.BasicArrayList)
doTransforms object_ a1 a2 a3 = jmethod object_ "doTransforms" (\() -> (doTransforms_impl (javaCast object_ :: PointsUtil))) () a1 a2 a3

doTransforms_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> Double -> GPoint.GPoint -> IO (BasicArrayList.BasicArrayList)
doTransforms_super object_ a1 a2 a3 = (doTransforms_impl (javaCast object_ :: PointsUtil)) a1 a2 a3

doTransforms_impl :: PointsUtil -> BasicArrayList.BasicArrayList -> Double -> GPoint.GPoint -> IO (BasicArrayList.BasicArrayList)
doTransforms_impl this pointVector angle fulcrumPoint = do
        (VectorRotationGenerator.getListAtAngle ((jio (VectorRotationGenerator.getInstance))) (jio (GPoint.getX fulcrumPoint)) (jio (GPoint.getY fulcrumPoint)) pointVector (jio (AngleFactory.getAt ((jio (AngleFactory.getInstance))) (Prelude.fromIntegral angle))))


