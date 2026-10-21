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
-- package org.allbinary.media.image.comparison.motion
module AllMotionRectangles (module AllMotionRectangles, module MotionRectangles) where

import MotionRectangles hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createMotionRectangles, createMotionRectangles_super, createMotionRectangles_impl, addPixelDeltaToExistingMotionRectangle, addPixelDeltaToExistingMotionRectangle_super, addPixelDeltaToExistingMotionRectangle_impl, addPixelDeltaToAMotionRectangle, addPixelDeltaToAMotionRectangle_super, addPixelDeltaToAMotionRectangle_impl, shouldPixelDeltaPartOfMotionRectangle, shouldPixelDeltaPartOfMotionRectangle_super, shouldPixelDeltaPartOfMotionRectangle_impl, isPixelDeltaLikelyPartOfMotionRectangle, isPixelDeltaLikelyPartOfMotionRectangle_super, isPixelDeltaLikelyPartOfMotionRectangle_impl, nAME)
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
import qualified MotionRectangle -- same package or java.lang
import qualified Rectangle -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified ImageComparisonResult -- org.allbinary.media.image.comparison.ImageComparisonResult
import qualified PixelDelta -- org.allbinary.media.image.comparison.pixel.PixelDelta
-- import java.awt.*
import qualified MotionRectangles

data AllMotionRectangles = AllMotionRectangles
    { header_ :: JavaHeader
    , base :: MotionRectangles.MotionRectangles
    }

instance JavaNull AllMotionRectangles where
    javaNull = javaNullRecord "AllMotionRectangles"

instance JavaEquals AllMotionRectangles where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllMotionRectangles where
    (==) = jrecordEquals

instance JavaObjectClass AllMotionRectangles where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "allMotionRectangles_"

newRecord_ :: IO AllMotionRectangles
newRecord_ = do
    base <- MotionRectangles.newRecord_
    let header_ = base.header_
    let this = AllMotionRectangles header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "createMotionRectangles" (\() -> createMotionRectangles_impl this)
    jregisterMethod header_ "addPixelDeltaToExistingMotionRectangle" (\() -> addPixelDeltaToExistingMotionRectangle_impl this)
    jregisterMethod header_ "addPixelDeltaToAMotionRectangle" (\() -> addPixelDeltaToAMotionRectangle_impl this)
    jregisterMethod header_ "shouldPixelDeltaPartOfMotionRectangle" (\() -> shouldPixelDeltaPartOfMotionRectangle_impl this)
    jregisterMethod header_ "isPixelDeltaLikelyPartOfMotionRectangle" (\() -> isPixelDeltaLikelyPartOfMotionRectangle_impl this)
    pure this

initFields_ :: AllMotionRectangles -> IO ()
initFields_ this = do
    pure ()

new_1 :: ImageComparisonResult.ImageComparisonResult -> IO AllMotionRectangles
new_1 imageComparisonResult = do
    this <- newRecord_
    init_1 this imageComparisonResult
    pure this

init_1 :: AllMotionRectangles -> ImageComparisonResult.ImageComparisonResult -> IO ()
init_1 this imageComparisonResult = do
        MotionRectangles.init_2 this.base (nAME) (imageComparisonResult)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AllMotionRectangles.createMotionRectangles this imageComparisonResult)
        pure ()


-- throws Exception
createMotionRectangles :: (JavaObjectClass this_) => this_ -> ImageComparisonResult.ImageComparisonResult -> IO (())
createMotionRectangles object_ a1 = jmethod object_ "createMotionRectangles" (\() -> (createMotionRectangles_impl (javaCast object_ :: AllMotionRectangles))) () a1

createMotionRectangles_super :: (JavaObjectClass this_) => this_ -> ImageComparisonResult.ImageComparisonResult -> IO (())
createMotionRectangles_super object_ a1 = (createMotionRectangles_impl (javaCast object_ :: AllMotionRectangles)) a1

createMotionRectangles_impl :: AllMotionRectangles -> ImageComparisonResult.ImageComparisonResult -> IO (())
createMotionRectangles_impl this imageComparisonInfo = do
        vector <- (ImageComparisonResult.getNonMatchingPixelVector imageComparisonInfo)
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let pixelDelta = (javaCast (jio (BasicArrayList.get vector index)) :: PixelDelta.PixelDelta)
            Control.Monad.void (AllMotionRectangles.addPixelDeltaToAMotionRectangle this pixelDelta)
        pure ()


-- throws Exception
addPixelDeltaToExistingMotionRectangle :: (JavaObjectClass this_) => this_ -> PixelDelta.PixelDelta -> IO (Bool)
addPixelDeltaToExistingMotionRectangle object_ a1 = jmethod object_ "addPixelDeltaToExistingMotionRectangle" (\() -> (addPixelDeltaToExistingMotionRectangle_impl (javaCast object_ :: AllMotionRectangles))) () a1

addPixelDeltaToExistingMotionRectangle_super :: (JavaObjectClass this_) => this_ -> PixelDelta.PixelDelta -> IO (Bool)
addPixelDeltaToExistingMotionRectangle_super object_ a1 = (addPixelDeltaToExistingMotionRectangle_impl (javaCast object_ :: AllMotionRectangles)) a1

addPixelDeltaToExistingMotionRectangle_impl :: AllMotionRectangles -> PixelDelta.PixelDelta -> IO (Bool)
addPixelDeltaToExistingMotionRectangle_impl this pixelDelta = do
    javaCatchReturn $ do
        vector <- (MotionRectangles.getVector this)
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let motionRectangle = (javaCast (jio (BasicArrayList.get vector index)) :: MotionRectangle.MotionRectangle)
            when (jio (AllMotionRectangles.shouldPixelDeltaPartOfMotionRectangle this motionRectangle pixelDelta)) $ do
                newWidth <- newIORef (((jio (GPoint.getX ((jio (PixelDelta.getPoint pixelDelta))))) - (jget ((jio (MotionRectangle.getRectangle motionRectangle))).x)))
                newHeight <- newIORef (((jio (GPoint.getY ((jio (PixelDelta.getPoint pixelDelta))))) - (jget ((jio (MotionRectangle.getRectangle motionRectangle))).y)))
                when ((jget newWidth) < (jget ((jio (MotionRectangle.getRectangle motionRectangle))).width)) $ do
                    jset newWidth ((jget ((jio (MotionRectangle.getRectangle motionRectangle))).width))
                when ((jget newHeight) < (jget ((jio (MotionRectangle.getRectangle motionRectangle))).height)) $ do
                    jset newHeight ((jget ((jio (MotionRectangle.getRectangle motionRectangle))).height))
                Control.Monad.void (Rectangle.setSize ((jio (MotionRectangle.getRectangle motionRectangle))) (jget newWidth) (jget newHeight))
                javaReturn (True)
        pure (False)


-- throws Exception
addPixelDeltaToAMotionRectangle :: (JavaObjectClass this_) => this_ -> PixelDelta.PixelDelta -> IO (())
addPixelDeltaToAMotionRectangle object_ a1 = jmethod object_ "addPixelDeltaToAMotionRectangle" (\() -> (addPixelDeltaToAMotionRectangle_impl (javaCast object_ :: AllMotionRectangles))) () a1

addPixelDeltaToAMotionRectangle_super :: (JavaObjectClass this_) => this_ -> PixelDelta.PixelDelta -> IO (())
addPixelDeltaToAMotionRectangle_super object_ a1 = (addPixelDeltaToAMotionRectangle_impl (javaCast object_ :: AllMotionRectangles)) a1

addPixelDeltaToAMotionRectangle_impl :: AllMotionRectangles -> PixelDelta.PixelDelta -> IO (())
addPixelDeltaToAMotionRectangle_impl this pixelDelta = do
        when (Prelude.not (jio (AllMotionRectangles.addPixelDeltaToExistingMotionRectangle this pixelDelta))) $ do
            newRectangle <- (Rectangle.new_4 (jio (GPoint.getX ((jio (PixelDelta.getPoint pixelDelta))))) (jio (GPoint.getY ((jio (PixelDelta.getPoint pixelDelta))))) 1 1)
            motionRectangle <- (MotionRectangle.new_1 newRectangle)
            Control.Monad.void (BasicArrayList.add ((jio (MotionRectangle.getPixelDeltaVector motionRectangle))) pixelDelta)
            Control.Monad.void (BasicArrayList.add ((jio (MotionRectangles.getVector this))) motionRectangle)
        pure ()


-- throws Exception
shouldPixelDeltaPartOfMotionRectangle :: (JavaObjectClass this_) => this_ -> MotionRectangle.MotionRectangle -> PixelDelta.PixelDelta -> IO (Bool)
shouldPixelDeltaPartOfMotionRectangle object_ a1 a2 = jmethod object_ "shouldPixelDeltaPartOfMotionRectangle" (\() -> (shouldPixelDeltaPartOfMotionRectangle_impl (javaCast object_ :: AllMotionRectangles))) () a1 a2

shouldPixelDeltaPartOfMotionRectangle_super :: (JavaObjectClass this_) => this_ -> MotionRectangle.MotionRectangle -> PixelDelta.PixelDelta -> IO (Bool)
shouldPixelDeltaPartOfMotionRectangle_super object_ a1 a2 = (shouldPixelDeltaPartOfMotionRectangle_impl (javaCast object_ :: AllMotionRectangles)) a1 a2

shouldPixelDeltaPartOfMotionRectangle_impl :: AllMotionRectangles -> MotionRectangle.MotionRectangle -> PixelDelta.PixelDelta -> IO (Bool)
shouldPixelDeltaPartOfMotionRectangle_impl this motionRectangle pixelDelta = do
    javaCatchReturn $ do
        isPixelLeftOfTheRectangle <- newIORef (False)
        when ((jget ((jio (MotionRectangle.getRectangle motionRectangle))).y) > (jio (GPoint.getY ((jio (PixelDelta.getPoint pixelDelta)))))) $ do
            javaThrow ((JavaException "Exception" "PixelAboveTheRectangle"))
        when ((jget ((jio (MotionRectangle.getRectangle motionRectangle))).x) > (jio (GPoint.getX ((jio (PixelDelta.getPoint pixelDelta)))))) $ do
            jset isPixelLeftOfTheRectangle (True)
        when (Prelude.not (jget isPixelLeftOfTheRectangle)) $ do
            javaReturn =<< (AllMotionRectangles.isPixelDeltaLikelyPartOfMotionRectangle this motionRectangle pixelDelta)
        pure (False)


-- throws Exception
isPixelDeltaLikelyPartOfMotionRectangle :: (JavaObjectClass this_) => this_ -> MotionRectangle.MotionRectangle -> PixelDelta.PixelDelta -> IO (Bool)
isPixelDeltaLikelyPartOfMotionRectangle object_ a1 a2 = jmethod object_ "isPixelDeltaLikelyPartOfMotionRectangle" (\() -> (isPixelDeltaLikelyPartOfMotionRectangle_impl (javaCast object_ :: AllMotionRectangles))) () a1 a2

isPixelDeltaLikelyPartOfMotionRectangle_super :: (JavaObjectClass this_) => this_ -> MotionRectangle.MotionRectangle -> PixelDelta.PixelDelta -> IO (Bool)
isPixelDeltaLikelyPartOfMotionRectangle_super object_ a1 a2 = (isPixelDeltaLikelyPartOfMotionRectangle_impl (javaCast object_ :: AllMotionRectangles)) a1 a2

isPixelDeltaLikelyPartOfMotionRectangle_impl :: AllMotionRectangles -> MotionRectangle.MotionRectangle -> PixelDelta.PixelDelta -> IO (Bool)
isPixelDeltaLikelyPartOfMotionRectangle_impl this motionRectangle pixelDelta = do
    javaCatchReturn $ do
        let maxX = ((jget ((jio (MotionRectangle.getRectangle motionRectangle))).x) + (jget ((jio (MotionRectangle.getRectangle motionRectangle))).width))
        let maxY = ((jget ((jio (MotionRectangle.getRectangle motionRectangle))).y) + (jget ((jio (MotionRectangle.getRectangle motionRectangle))).height))
        let horizontalDistance = ((jio (GPoint.getX ((jio (PixelDelta.getPoint pixelDelta))))) - maxX)
        let verticalDistance = ((jio (GPoint.getY ((jio (PixelDelta.getPoint pixelDelta))))) - maxY)
        when ((horizontalDistance < (jget (this).base.mAX_PIXEL_DISTANCE_THRESHOLD)) && (verticalDistance < (jget (this).base.mAX_PIXEL_DISTANCE_THRESHOLD))) $ do
            javaReturn (True)
        pure (False)


