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
-- package org.allbinary.animation.vector
module VectorCenterGenerator where

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
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified GraphicItemInterface -- org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface
import qualified LinesGraphicItem -- org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem
import qualified Points -- org.allbinary.graphics.j2me.workarea.tools.Points
import qualified BasicGraphicsPipeline -- org.allbinary.graphics.pipeline.BasicGraphicsPipeline
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data VectorCenterGenerator = VectorCenterGenerator
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , minX :: IORef (Int)
    , minY :: IORef (Int)
    , maxX :: IORef (Int)
    , maxY :: IORef (Int)
    , dx :: IORef (Int)
    , dy :: IORef (Int)
    , width :: IORef (Int)
    , height :: IORef (Int)
    }

instance JavaNull VectorCenterGenerator where
    javaNull = javaNullRecord "VectorCenterGenerator"

instance JavaEquals VectorCenterGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VectorCenterGenerator where
    (==) = jrecordEquals

instance JavaObjectClass VectorCenterGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO VectorCenterGenerator
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    minX <- newIORef 0
    minY <- newIORef 0
    maxX <- newIORef 0
    maxY <- newIORef 0
    dx <- newIORef 0
    dy <- newIORef 0
    width <- newIORef 0
    height <- newIORef 0
    let this = VectorCenterGenerator header_ logUtil commonStrings minX minY maxX maxY dx dy width height
    jregisterLevel header_ this
    jregisterMethod header_ "calculate" (\() -> calculate_impl this)
    jregisterMethod header_ "transform" (\() -> transform_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "setWidth" (\() -> setWidth_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "setHeight" (\() -> setHeight_impl this)
    pure this

initFields_ :: VectorCenterGenerator -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.minX ((2147483647 :: Int))
    jset this.minY ((2147483647 :: Int))
    jset this.maxX (((-2147483648) :: Int))
    jset this.maxY (((-2147483648) :: Int))
    jset this.dx (0)
    jset this.dy (0)
    jset this.width (0)
    jset this.height (0)
    pure ()

new_ :: IO VectorCenterGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: VectorCenterGenerator -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
calculate :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
calculate object_ a1 = jmethod object_ "calculate" (\() -> (calculate_impl (javaCast object_ :: VectorCenterGenerator))) () a1

calculate_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
calculate_super object_ a1 = (calculate_impl (javaCast object_ :: VectorCenterGenerator)) a1

calculate_impl :: VectorCenterGenerator -> HashMap.HashMap -> IO (())
calculate_impl this hashMap = do
        graphicItemArray <- (HashMap.toArray ((jio (HashMap.keySet hashMap))))
        let size = (jlength graphicItemArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let item = (javaCast (jio (HashMap.get hashMap (jindex graphicItemArray (index)))) :: GraphicItemInterface.GraphicItemInterface)
            when ((jio (GraphicItemInterface.getName item)) == (jio (LinesGraphicItem.getStaticName))) $ do
                Control.Monad.void (VectorCenterGenerator.getInstance this (jio (GraphicItemInterface.getPoints ((jio (GraphicItemInterface.getPointsInterface item))))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((((((("minX: " ++ javaToString (jget (this).minX)) ++ " minY: ") ++ javaToString (jget (this).minY)) ++ " maxX: ") ++ javaToString (jget (this).maxX)) ++ " maxY: ") ++ javaToString (jget (this).maxY)) this (jget ((jget (this).commonStrings)).gET_INSTANCE))
        Control.Monad.void (VectorCenterGenerator.setWidth this ((jget (this).maxX) - (jget (this).minX)))
        Control.Monad.void (VectorCenterGenerator.setHeight this ((jget (this).maxY) - (jget (this).minY)))
        max <- newIORef =<< (VectorCenterGenerator.getWidth this)
        when ((jio (VectorCenterGenerator.getHeight this)) > (jget max)) $ do
            assignedValue <- (VectorCenterGenerator.getHeight this)
            jset max (assignedValue)
        let middle = ((jget max) `quot` 2)
        commonLabels <- (CommonLabels.getInstance)
        s <- (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (commonLabels).wIDTH_LABEL)))) (jio (VectorCenterGenerator.getWidth this))))) (jget (commonLabels).hEIGHT_LABEL)))) (jio (VectorCenterGenerator.getHeight this))))) " max: "))) (jget max)))) " middle: "))) middle))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) s this (jget ((jget (this).commonStrings)).gET_INSTANCE))
        let currentMiddleX = ((jget (this).minX) + ((jio (VectorCenterGenerator.getWidth this)) `quot` 2))
        let currentMiddleY = ((jget (this).minY) + ((jio (VectorCenterGenerator.getHeight this)) `quot` 2))
        jset (this).dx ((middle - currentMiddleX))
        jset (this).dy ((middle - currentMiddleY))
        pure ()


-- throws Exception
transform :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
transform object_ a1 = jmethod object_ "transform" (\() -> (transform_impl (javaCast object_ :: VectorCenterGenerator))) () a1

transform_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
transform_super object_ a1 = (transform_impl (javaCast object_ :: VectorCenterGenerator)) a1

transform_impl :: VectorCenterGenerator -> HashMap.HashMap -> IO (())
transform_impl this hashMap = do
        Control.Monad.void (VectorCenterGenerator.calculate this hashMap)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) " dx: "))) (jget (this).dx)))) " dy: "))) (jget (this).dy)))))) this (jget ((jget (this).commonStrings)).gET_INSTANCE))
        graphicItemArray <- (HashMap.toArray ((jio (HashMap.keySet hashMap))))
        let size = (jlength graphicItemArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let item = (javaCast (jio (HashMap.get hashMap (jindex graphicItemArray (index)))) :: GraphicItemInterface.GraphicItemInterface)
            list <- (VectorCenterGenerator.translate (jio (GraphicItemInterface.getPoints ((jio (GraphicItemInterface.getPointsInterface item))))) (jget this.dx) (jget this.dy))
            newPoints <- (Points.new_)
            Control.Monad.void (Points.addPoints newPoints list)
            Control.Monad.void (GraphicItemInterface.setPointsInterface item newPoints)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: VectorCenterGenerator))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: VectorCenterGenerator)) a1

getInstance_impl :: VectorCenterGenerator -> BasicArrayList.BasicArrayList -> IO (())
getInstance_impl this pointVector = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).gET_INSTANCE) e)
            javaThrow (e)
            ) $ do
            size <- (BasicArrayList.size pointVector)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let point = (javaCast (jio (BasicArrayList.get pointVector index)) :: GPoint.GPoint)
                when ((jio (GPoint.getX point)) < (jget (this).minX)) $ do
                    assignedValue <- (GPoint.getX point)
                    jset (this).minX (assignedValue)
                when ((jio (GPoint.getX point)) > (jget (this).maxX)) $ do
                    assignedValue <- (GPoint.getX point)
                    jset (this).maxX (assignedValue)
                when ((jio (GPoint.getY point)) < (jget (this).minY)) $ do
                    assignedValue <- (GPoint.getY point)
                    jset (this).minY (assignedValue)
                when ((jio (GPoint.getY point)) > (jget (this).maxY)) $ do
                    assignedValue <- (GPoint.getY point)
                    jset (this).maxY (assignedValue)
        pure ()


-- throws Exception
translate :: BasicArrayList.BasicArrayList -> Int -> Int -> IO (BasicArrayList.BasicArrayList)
translate list x y = do
        graphicsPipe <- (BasicGraphicsPipeline.new_1 list)
        Control.Monad.void (BasicGraphicsPipeline.createMatrix graphicsPipe)
        Control.Monad.void (BasicGraphicsPipeline.translate graphicsPipe x y)
        (BasicGraphicsPipeline.getMatrix graphicsPipe)


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: VectorCenterGenerator))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: VectorCenterGenerator))

getWidth_impl :: VectorCenterGenerator -> IO (Int)
getWidth_impl this = do
        pure ((jget (this).width))


setWidth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWidth object_ a1 = jmethod object_ "setWidth" (\() -> (setWidth_impl (javaCast object_ :: VectorCenterGenerator))) () a1

setWidth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setWidth_super object_ a1 = (setWidth_impl (javaCast object_ :: VectorCenterGenerator)) a1

setWidth_impl :: VectorCenterGenerator -> Int -> IO (())
setWidth_impl this width = do
        jset (this).width (width)
        pure ()


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: VectorCenterGenerator))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: VectorCenterGenerator))

getHeight_impl :: VectorCenterGenerator -> IO (Int)
getHeight_impl this = do
        pure ((jget (this).height))


setHeight :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight object_ a1 = jmethod object_ "setHeight" (\() -> (setHeight_impl (javaCast object_ :: VectorCenterGenerator))) () a1

setHeight_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHeight_super object_ a1 = (setHeight_impl (javaCast object_ :: VectorCenterGenerator)) a1

setHeight_impl :: VectorCenterGenerator -> Int -> IO (())
setHeight_impl this height = do
        jset (this).height (height)
        pure ()


