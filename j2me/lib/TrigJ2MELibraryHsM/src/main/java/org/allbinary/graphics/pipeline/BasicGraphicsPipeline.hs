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
-- package org.allbinary.graphics.pipeline
module BasicGraphicsPipeline where

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
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Angle -- org.allbinary.math.Angle
import qualified NoDecimalTrigTable -- org.allbinary.math.NoDecimalTrigTable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data BasicGraphicsPipeline = BasicGraphicsPipeline
    { header_ :: JavaHeader
    , pointBasicArrayList :: IORef (BasicArrayList.BasicArrayList)
    , noDecimalTrigTable :: IORef (NoDecimalTrigTable.NoDecimalTrigTable)
    }

instance JavaNull BasicGraphicsPipeline where
    javaNull = javaNullRecord "BasicGraphicsPipeline"

instance JavaEquals BasicGraphicsPipeline where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicGraphicsPipeline where
    (==) = jrecordEquals

instance JavaObjectClass BasicGraphicsPipeline where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicGraphicsPipeline
newRecord_ = do
    header_ <- newJavaHeader
    pointBasicArrayList <- newIORef javaNull
    noDecimalTrigTable <- newIORef javaNull
    let this = BasicGraphicsPipeline header_ pointBasicArrayList noDecimalTrigTable
    jregisterLevel header_ this
    jregisterMethod header_ "setInitMatrix" (\() -> setInitMatrix_impl this)
    jregisterMethod header_ "createMatrix" (\() -> createMatrix_impl this)
    jregisterMethod header_ "translate" (\() -> translate_impl this)
    jregisterMethod header_ "rotateToAngle" (\() -> rotateToAngle_impl this)
    jregisterMethod header_ "rotate" (\() -> rotate_impl this)
    jregisterMethod header_ "mirror" (\() -> mirror_impl this)
    jregisterMethod header_ "getMatrix" (\() -> getMatrix_impl this)
    pure this

initFields_ :: BasicGraphicsPipeline -> IO ()
initFields_ this = do
    jset this.pointBasicArrayList (javaNull)
    jset this.noDecimalTrigTable =<< (NoDecimalTrigTable.getInstance)
    pure ()

new_1 :: BasicArrayList.BasicArrayList -> IO BasicGraphicsPipeline
new_1 points = do
    this <- newRecord_
    init_1 this points
    pure this

init_1 :: BasicGraphicsPipeline -> BasicArrayList.BasicArrayList -> IO ()
init_1 this points = do
        initFields_ this
        jset (this).pointBasicArrayList (points)
        pure ()


setInitMatrix :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setInitMatrix object_ a1 = jmethod object_ "setInitMatrix" (\() -> (setInitMatrix_impl (javaCast object_ :: BasicGraphicsPipeline))) () a1

setInitMatrix_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setInitMatrix_super object_ a1 = (setInitMatrix_impl (javaCast object_ :: BasicGraphicsPipeline)) a1

setInitMatrix_impl :: BasicGraphicsPipeline -> BasicArrayList.BasicArrayList -> IO (())
setInitMatrix_impl this points = do
        jset (this).pointBasicArrayList (points)
        pure ()


createMatrix :: (JavaObjectClass this_) => this_ -> IO (())
createMatrix object_ = jmethod object_ "createMatrix" (\() -> (createMatrix_impl (javaCast object_ :: BasicGraphicsPipeline))) ()

createMatrix_super :: (JavaObjectClass this_) => this_ -> IO (())
createMatrix_super object_ = (createMatrix_impl (javaCast object_ :: BasicGraphicsPipeline))

createMatrix_impl :: BasicGraphicsPipeline -> IO (())
createMatrix_impl this = do
        pure ()


-- throws Exception
translate :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
translate object_ a1 a2 = jmethod object_ "translate" (\() -> (translate_impl (javaCast object_ :: BasicGraphicsPipeline))) () a1 a2

translate_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
translate_super object_ a1 a2 = (translate_impl (javaCast object_ :: BasicGraphicsPipeline)) a1 a2

translate_impl :: BasicGraphicsPipeline -> Int -> Int -> IO (())
translate_impl this x y = do
        newBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        size <- (BasicArrayList.size ((jget (this).pointBasicArrayList)))
        pointFactory <- (PointFactory.getInstance)
        secondPoint <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset secondPoint ((javaCast (jindex ((jget ((jget (this).pointBasicArrayList)).objectArray)) (index)) :: GPoint.GPoint))
            if ((jio (GPoint.getX ((jget secondPoint)))) /= 1000) then do
                Control.Monad.void (BasicArrayList.add newBasicArrayList (jio (PointFactory.createXY pointFactory ((jio (GPoint.getX ((jget secondPoint)))) + x) ((jio (GPoint.getY ((jget secondPoint)))) + y))))
            else do
                Control.Monad.void (BasicArrayList.add newBasicArrayList (jget secondPoint))
        jset (this).pointBasicArrayList (newBasicArrayList)
        pure ()


-- throws Exception
rotateToAngle :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
rotateToAngle object_ a1 = jmethod object_ "rotateToAngle" (\() -> (rotateToAngle_impl (javaCast object_ :: BasicGraphicsPipeline))) () a1

rotateToAngle_super :: (JavaObjectClass this_) => this_ -> Angle.Angle -> IO (())
rotateToAngle_super object_ a1 = (rotateToAngle_impl (javaCast object_ :: BasicGraphicsPipeline)) a1

rotateToAngle_impl :: BasicGraphicsPipeline -> Angle.Angle -> IO (())
rotateToAngle_impl this angle = do
        Control.Monad.void (BasicGraphicsPipeline.rotate this (Prelude.fromIntegral (jio (Angle.getValue angle))))
        pure ()


-- throws Exception
rotate :: (JavaObjectClass this_) => this_ -> Int -> IO (())
rotate object_ a1 = jmethod object_ "rotate" (\() -> (rotate_impl (javaCast object_ :: BasicGraphicsPipeline))) () a1

rotate_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
rotate_super object_ a1 = (rotate_impl (javaCast object_ :: BasicGraphicsPipeline)) a1

rotate_impl :: BasicGraphicsPipeline -> Int -> IO (())
rotate_impl this angle = do
        newBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        secondPoint <- newIORef (javaNull)
        y <- newIORef (0)
        secondX <- newIORef (0)
        secondY <- newIORef (0)
        point <- newIORef (javaNull)
        pointFactory <- (PointFactory.getInstance)
        size <- (BasicArrayList.size ((jget (this).pointBasicArrayList)))
        sin <- newIORef (0)
        cos <- newIORef (0)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset secondPoint ((javaCast (jindex ((jget ((jget (this).pointBasicArrayList)).objectArray)) (index)) :: GPoint.GPoint))
            if ((jio (GPoint.getX ((jget secondPoint)))) /= 1000) then do
                assignedValue <- (NoDecimalTrigTable.sin ((jget (this).noDecimalTrigTable)) angle)
                jset sin (assignedValue)
                assignedValue <- (NoDecimalTrigTable.cos ((jget (this).noDecimalTrigTable)) angle)
                jset cos (assignedValue)
                jset y (((Prelude.fromIntegral (jio (GPoint.getY ((jget secondPoint))))) * (jget sin)))
                jset secondX (((((Prelude.fromIntegral (jio (GPoint.getX ((jget secondPoint))))) * (jget cos))) - (jget y)))
                jset secondY (((((Prelude.fromIntegral (jio (GPoint.getX ((jget secondPoint))))) * (jget sin))) + (((Prelude.fromIntegral (jio (GPoint.getY ((jget secondPoint))))) * (jget cos)))))
                assignedValue <- (PointFactory.createXY pointFactory ((Prelude.fromIntegral (jget secondX)) `quot` 10000) ((Prelude.fromIntegral (jget secondY)) `quot` 10000))
                jset point (assignedValue)
                Control.Monad.void (BasicArrayList.add newBasicArrayList (jget point))
            else do
                Control.Monad.void (BasicArrayList.add newBasicArrayList (jget secondPoint))
        jset (this).pointBasicArrayList (newBasicArrayList)
        pure ()


-- throws Exception
mirror :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mirror object_ a1 = jmethod object_ "mirror" (\() -> (mirror_impl (javaCast object_ :: BasicGraphicsPipeline))) () a1

mirror_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
mirror_super object_ a1 = (mirror_impl (javaCast object_ :: BasicGraphicsPipeline)) a1

mirror_impl :: BasicGraphicsPipeline -> Int -> IO (())
mirror_impl this width = do
        pointFactory <- (PointFactory.getInstance)
        let halfWidth = ((width `Data.Bits.shiftR` 1))
        newBasicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        secondPoint <- newIORef (javaNull)
        newX <- newIORef (0)
        point <- newIORef (javaNull)
        size <- (BasicArrayList.size ((jget (this).pointBasicArrayList)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset secondPoint ((javaCast (jindex ((jget ((jget (this).pointBasicArrayList)).objectArray)) (index)) :: GPoint.GPoint))
            if ((jio (GPoint.getX ((jget secondPoint)))) /= 1000) then do
                jset newX (0)
                if ((jio (GPoint.getX ((jget secondPoint)))) > halfWidth) then do
                    jset newX ((halfWidth - (((jio (GPoint.getX ((jget secondPoint)))) - halfWidth))))
                else do
                    jset newX ((halfWidth + ((halfWidth - (jio (GPoint.getX ((jget secondPoint))))))))
                assignedValue <- (PointFactory.createXY pointFactory (jget newX) (jio (GPoint.getY ((jget secondPoint)))))
                jset point (assignedValue)
                Control.Monad.void (BasicArrayList.add newBasicArrayList (jget point))
            else do
                Control.Monad.void (BasicArrayList.add newBasicArrayList (jget secondPoint))
        jset (this).pointBasicArrayList (newBasicArrayList)
        pure ()


getMatrix :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getMatrix object_ = jmethod object_ "getMatrix" (\() -> (getMatrix_impl (javaCast object_ :: BasicGraphicsPipeline))) ()

getMatrix_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getMatrix_super object_ = (getMatrix_impl (javaCast object_ :: BasicGraphicsPipeline))

getMatrix_impl :: BasicGraphicsPipeline -> IO (BasicArrayList.BasicArrayList)
getMatrix_impl this = do
        pure ((jget (this).pointBasicArrayList))


