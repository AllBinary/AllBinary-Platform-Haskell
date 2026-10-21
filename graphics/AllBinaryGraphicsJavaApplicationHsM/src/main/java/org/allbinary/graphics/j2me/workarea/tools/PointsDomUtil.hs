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
module PointsDomUtil where

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
import qualified PointsUtil -- same package or java.lang
import qualified Document -- same package or java.lang
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified WorkAreaJPanel -- org.allbinary.graphics.j2me.workarea.WorkAreaJPanel
import qualified CanvasDom -- org.allbinary.graphics.j2me.workarea.canvas.CanvasDom
import qualified PositionStrings -- org.allbinary.math.PositionStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified Node -- org.w3c.dom.Node

data PointsDomUtil = PointsDomUtil
    { header_ :: JavaHeader
    , lINES :: IORef (String)
    , pOINTONE :: IORef (String)
    , pOINTTWO :: IORef (String)
    , rOTATEDPOINTONE :: IORef (String)
    , rOTATEDPOINTTWO :: IORef (String)
    , lINE :: IORef (String)
    }

instance JavaNull PointsDomUtil where
    javaNull = javaNullRecord "PointsDomUtil"

instance JavaEquals PointsDomUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PointsDomUtil where
    (==) = jrecordEquals

instance JavaObjectClass PointsDomUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PointsDomUtil
newRecord_ = do
    header_ <- newJavaHeader
    lINES <- newIORef ""
    pOINTONE <- newIORef ""
    pOINTTWO <- newIORef ""
    rOTATEDPOINTONE <- newIORef ""
    rOTATEDPOINTTWO <- newIORef ""
    lINE <- newIORef ""
    let this = PointsDomUtil header_ lINES pOINTONE pOINTTWO rOTATEDPOINTONE rOTATEDPOINTTWO lINE
    jregisterLevel header_ this
    jregisterMethod header_ "toDom" (\() -> toDom_impl this)
    jregisterMethod header_ "getPointNode" (\() -> getPointNode_impl this)
    pure this

initFields_ :: PointsDomUtil -> IO ()
initFields_ this = do
    jset this.lINES ("lines")
    jset this.pOINTONE ("pointOne")
    jset this.pOINTTWO ("pointTwo")
    jset this.rOTATEDPOINTONE ("rotatedPointOne")
    jset this.rOTATEDPOINTTWO ("rotatedPointTwo")
    jset this.lINE ("line")
    pure ()

new_ :: IO PointsDomUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PointsDomUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PointsDomUtil)
getInstance = do
        pure (PointsDomUtil.instance_)


-- throws Exception
toDom :: (JavaObjectClass this_) => this_ -> CanvasDom.CanvasDom -> BasicArrayList.BasicArrayList -> IO (Node.Node)
toDom object_ a1 a2 = jmethod object_ "toDom" (\() -> (toDom_impl (javaCast object_ :: PointsDomUtil))) () a1 a2

toDom_super :: (JavaObjectClass this_) => this_ -> CanvasDom.CanvasDom -> BasicArrayList.BasicArrayList -> IO (Node.Node)
toDom_super object_ a1 a2 = (toDom_impl (javaCast object_ :: PointsDomUtil)) a1 a2

toDom_impl :: PointsDomUtil -> CanvasDom.CanvasDom -> BasicArrayList.BasicArrayList -> IO (Node.Node)
toDom_impl this canvasDom pointVector = do
        tempPointVector <- (PointsUtil.doTransforms ((jio (PointsUtil.getInstance))) pointVector (jio (CanvasDom.getAngle canvasDom)) (jio (PointFactory.createXY ((jio (PointFactory.getInstance))) (jio (IntegerDimension.getWidth ((jio (CanvasDom.getDimension canvasDom))))) (jio (IntegerDimension.getHeight ((jio (CanvasDom.getDimension canvasDom))))))))
        document <- (WorkAreaJPanel.getDocument)
        let linesNode = (javaCast (jio (Document.createElement document (jget (this).lINES))) :: Node.Node)
        size2 <- (BasicArrayList.size tempPointVector)
        size <- (BasicArrayList.size pointVector)
        firstPoint <- newIORef (javaNull)
        rotatedFirstPoint <- newIORef (javaNull)
        index <- newIORef (0)
        when (((jget index) < size) && ((jget index) < size2)) $ do
            jset rotatedFirstPoint ((javaCast (jio (BasicArrayList.get tempPointVector (jget index))) :: GPoint.GPoint))
            jset firstPoint ((javaCast (jio (BasicArrayList.get pointVector (jget index))) :: GPoint.GPoint))
            jset index ((jget index) + 1)
        fix $ \loop -> when (((jget index) < size) && ((jget index) < size2)) $ javaIteration (loop) $ do
            let lineNode = (javaCast (jio (Document.createElement document (jget (this).lINE))) :: Node.Node)
            let rotatedSecondPoint = (javaCast (jio (BasicArrayList.get tempPointVector (jget index))) :: GPoint.GPoint)
            let secondPoint = (javaCast (jio (BasicArrayList.get pointVector (jget index))) :: GPoint.GPoint)
            pointOneNode <- (PointsDomUtil.getPointNode this (jget firstPoint) (jget (this).pOINTONE))
            pointTwoNode <- (PointsDomUtil.getPointNode this secondPoint (jget (this).pOINTTWO))
            rotatedPointOneNode <- (PointsDomUtil.getPointNode this (jget rotatedFirstPoint) (jget (this).rOTATEDPOINTONE))
            rotatedPointTwoNode <- (PointsDomUtil.getPointNode this rotatedSecondPoint (jget (this).rOTATEDPOINTTWO))
            Control.Monad.void (Node.appendChild lineNode pointOneNode)
            Control.Monad.void (Node.appendChild lineNode pointTwoNode)
            Control.Monad.void (Node.appendChild lineNode rotatedPointOneNode)
            Control.Monad.void (Node.appendChild lineNode rotatedPointTwoNode)
            jset firstPoint (secondPoint)
            jset rotatedFirstPoint (rotatedSecondPoint)
            Control.Monad.void (Node.appendChild linesNode lineNode)
            jset index ((jget index) + 1)
        pure (linesNode)


getPointNode :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> String -> IO (Node.Node)
getPointNode object_ a1 a2 = jmethod object_ "getPointNode" (\() -> (getPointNode_impl (javaCast object_ :: PointsDomUtil))) () a1 a2

getPointNode_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> String -> IO (Node.Node)
getPointNode_super object_ a1 a2 = (getPointNode_impl (javaCast object_ :: PointsDomUtil)) a1 a2

getPointNode_impl :: PointsDomUtil -> GPoint.GPoint -> String -> IO (Node.Node)
getPointNode_impl this point pointName = do
        document <- (WorkAreaJPanel.getDocument)
        let pointNode = (javaCast (jio (Document.createElement document pointName)) :: Node.Node)
        let xNode = (javaCast (jio (Document.createElement document (jget ((jio (PositionStrings.getInstance))).x))) :: Node.Node)
        let xTextNode = (javaCast (jio (Document.createTextNode document (javaToString (jio (GPoint.getX point))))) :: Node.Node)
        Control.Monad.void (Node.appendChild xNode xTextNode)
        let yNode = (javaCast (jio (Document.createElement document (jget ((jio (PositionStrings.getInstance))).y))) :: Node.Node)
        let yTextNode = (javaCast (jio (Document.createTextNode document (javaToString (jio (GPoint.getY point))))) :: Node.Node)
        Control.Monad.void (Node.appendChild yNode yTextNode)
        Control.Monad.void (Node.appendChild pointNode xNode)
        Control.Monad.void (Node.appendChild pointNode yNode)
        pure (pointNode)


