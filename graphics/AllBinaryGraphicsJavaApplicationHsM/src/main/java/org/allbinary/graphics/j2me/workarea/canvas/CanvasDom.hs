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
-- package org.allbinary.graphics.j2me.workarea.canvas
module CanvasDom where

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
import qualified IntegerDimension -- same package or java.lang
import qualified Grid -- same package or java.lang
import qualified CanvasJPanel -- same package or java.lang
import qualified Document -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified VectorCenterGenerator -- org.allbinary.animation.vector.VectorCenterGenerator
import qualified DomHelper -- org.allbinary.dom.DomHelper
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified GraphicsStrings -- org.allbinary.graphics.GraphicsStrings
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified WorkAreaJPanel -- org.allbinary.graphics.j2me.workarea.WorkAreaJPanel
import qualified GraphicItemFactory -- org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory
import qualified GraphicItemInterface -- org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface
import qualified LinesGraphicItem -- org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified Node -- org.w3c.dom.Node

data CanvasDom = CanvasDom
    { header_ :: JavaHeader
    , graphicsStrings :: IORef (GraphicsStrings.GraphicsStrings)
    , graphicItemHashMap :: IORef (HashMap.HashMap)
    , angle :: IORef (Double)
    , dimension :: IORef (IntegerDimension.IntegerDimension)
    , grid :: IORef (Grid.Grid)
    }

instance JavaNull CanvasDom where
    javaNull = javaNullRecord "CanvasDom"

instance JavaEquals CanvasDom where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CanvasDom where
    (==) = jrecordEquals

instance JavaObjectClass CanvasDom where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fRAME = "frame"

rOTATE = "rotate"

sIZE = "size"

x = "X"

y = "Y"

zOOM = "zoom"

gRID = "grid"

eNABLED = "enabled"

pOSSIBLE = "possible"

gRAPHICITEMS = "graphicItems"

rEAL_SIZE = "realSize"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CanvasDom
newRecord_ = do
    header_ <- newJavaHeader
    graphicsStrings <- newIORef javaNull
    graphicItemHashMap <- newIORef javaNull
    angle <- newIORef 0.0
    dimension <- newIORef javaNull
    grid <- newIORef javaNull
    let this = CanvasDom header_ graphicsStrings graphicItemHashMap angle dimension grid
    jregisterLevel header_ this
    jregisterMethod header_ "getAngle" (\() -> getAngle_impl this)
    jregisterMethod header_ "getGraphicItemHashMap" (\() -> getGraphicItemHashMap_impl this)
    jregisterMethod header_ "setAngle" (\() -> setAngle_impl this)
    jregisterMethod header_ "setWorkArea" (\() -> setWorkArea_impl this)
    jregisterMethod header_ "setGrid" (\() -> setGrid_impl this)
    jregisterMethod header_ "getPointNode" (\() -> getPointNode_impl this)
    jregisterMethod header_ "toDom" (\() -> toDom_impl this)
    jregisterMethod header_ "getDimension" (\() -> getDimension_impl this)
    jregisterMethod header_ "setDimension" (\() -> setDimension_impl this)
    jregisterMethod header_ "getGrid" (\() -> getGrid_impl this)
    pure this

initFields_ :: CanvasDom -> IO ()
initFields_ this = do
    jset this.graphicsStrings =<< (GraphicsStrings.getInstance)
    jset this.graphicItemHashMap (javaNull)
    jset this.angle (0.0)
    jset this.dimension (javaNull)
    jset this.grid (javaNull)
    pure ()

new_1 :: Node.Node -> IO CanvasDom
new_1 canvasNode = do
    this <- newRecord_
    init_1 this canvasNode
    pure this

init_1 :: CanvasDom -> Node.Node -> IO ()
init_1 this canvasNode = do
        initFields_ this
        assignedValue <- (Grid.new_)
        jset (this).grid (assignedValue)
        assignedValue <- (PointFactory.createXY ((jio (PointFactory.getInstance))) 0 0)
        jset ((jget (this).grid)).grid (assignedValue)
        assignedValue <- (IntegerDimension.new_2 0 0)
        jset (this).dimension (assignedValue)
        name <- (Node.getNodeName canvasNode)
        if ((Prelude.fromEnum (Prelude.compare name (CanvasDom.fRAME)) - 1) == 0) then do
            assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            jset (this).graphicItemHashMap (assignedValue)
            angleNode <- (DomHelper.searchNodeList ((jio (DomHelper.getInstance))) rOTATE (jio (Node.getChildNodes canvasNode)))
            angleTextNode <- (Node.getFirstChild angleNode)
            let angle = (jio (Node.getNodeValue angleTextNode))
            Control.Monad.void (CanvasDom.setAngle this angle)
            sizeNode <- (DomHelper.searchNodeList ((jio (DomHelper.getInstance))) sIZE (jio (Node.getChildNodes canvasNode)))
            xNode <- (DomHelper.searchNodeList ((jio (DomHelper.getInstance))) x (jio (Node.getChildNodes sizeNode)))
            xTextNode <- (Node.getFirstChild xNode)
            let x = (Prelude.fromIntegral ((jio (Node.getNodeValue xTextNode))) :: Int)
            yNode <- (DomHelper.searchNodeList ((jio (DomHelper.getInstance))) y (jio (Node.getChildNodes sizeNode)))
            yTextNode <- (Node.getFirstChild yNode)
            let y = (Prelude.fromIntegral ((jio (Node.getNodeValue yTextNode))) :: Int)
            Control.Monad.void (CanvasDom.setWorkArea this x y)
            zoomNode <- (DomHelper.searchNodeList ((jio (DomHelper.getInstance))) zOOM (jio (Node.getChildNodes canvasNode)))
            zoomTextNode <- (Node.getFirstChild zoomNode)
            Control.Monad.void (Grid.setZoom ((jget (this).grid)) (Prelude.fromIntegral ((jio (Node.getNodeValue zoomTextNode))) :: Int))
            gridNode <- (DomHelper.searchNodeList ((jio (DomHelper.getInstance))) gRID (jio (Node.getChildNodes canvasNode)))
            gridSizeNode <- (DomHelper.searchNodeList ((jio (DomHelper.getInstance))) sIZE (jio (Node.getChildNodes gridNode)))
            gridXNode <- (DomHelper.searchNodeList ((jio (DomHelper.getInstance))) x (jio (Node.getChildNodes gridSizeNode)))
            gridXTextNode <- (Node.getFirstChild gridXNode)
            let gridX = (Prelude.fromIntegral ((jio (Node.getNodeValue gridXTextNode))) :: Int)
            gridYNode <- (DomHelper.searchNodeList ((jio (DomHelper.getInstance))) y (jio (Node.getChildNodes gridSizeNode)))
            gridYTextNode <- (Node.getFirstChild gridYNode)
            let gridY = (Prelude.fromIntegral ((jio (Node.getNodeValue gridYTextNode))) :: Int)
            Control.Monad.void (CanvasDom.setGrid this gridX gridY)
            enableNode <- (DomHelper.searchNodeList ((jio (DomHelper.getInstance))) eNABLED (jio (Node.getChildNodes gridNode)))
            enableTextNode <- (Node.getFirstChild enableNode)
            Control.Monad.void (Grid.showGrid ((jget (this).grid)) (jio (Node.getNodeValue enableTextNode)))
            possibleNode <- (DomHelper.searchNodeList ((jio (DomHelper.getInstance))) pOSSIBLE (jio (Node.getChildNodes gridNode)))
            possibleTextNode <- (Node.getFirstChild possibleNode)
            jset ((jget (this).grid)).isGridPossible ((jio (Node.getNodeValue possibleTextNode)))
            graphicItemNodeList <- (DomHelper.getChildrenWithoutTextNodes ((jio (DomHelper.getInstance))) gRAPHICITEMS (jio (Node.getChildNodes canvasNode)))
            when (graphicItemNodeList /= javaNull) $ do
                assignedValue <- (GraphicItemFactory.getInstance_1 ((jio (GraphicItemFactory.getInstance))) graphicItemNodeList)
                jset (this).graphicItemHashMap (assignedValue)
        else do
            javaThrow ((JavaException "Exception" ("Frame Element Not Found but Found: " ++ name)))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: CanvasJPanel.CanvasJPanel -> IO CanvasDom
new_1 canvasJPanel = do
    this <- newRecord_
    init_1 this canvasJPanel
    pure this

init_1 :: CanvasDom -> CanvasJPanel.CanvasJPanel -> IO ()
init_1 this canvasJPanel = do
        initFields_ this
        assignedValue <- (CanvasJPanel.getAngle canvasJPanel)
        jset (this).angle (assignedValue)
        assignedValue <- (CanvasJPanel.getGraphicItemHashMap canvasJPanel)
        jset (this).graphicItemHashMap (assignedValue)
        assignedValue <- (CanvasJPanel.getCanvasDimension canvasJPanel)
        jset (this).dimension (assignedValue)
        assignedValue <- (Grid.new_1 (jio (CanvasJPanel.getGrid canvasJPanel)))
        jset (this).grid (assignedValue)
        assignedValue <- (CanvasJPanel.getAngle canvasJPanel)
        jset (this).angle (assignedValue)
        pure ()


getAngle :: (JavaObjectClass this_) => this_ -> IO (Double)
getAngle object_ = jmethod object_ "getAngle" (\() -> (getAngle_impl (javaCast object_ :: CanvasDom))) ()

getAngle_super :: (JavaObjectClass this_) => this_ -> IO (Double)
getAngle_super object_ = (getAngle_impl (javaCast object_ :: CanvasDom))

getAngle_impl :: CanvasDom -> IO (Double)
getAngle_impl this = do
        pure ((jget (this).angle))


getGraphicItemHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getGraphicItemHashMap object_ = jmethod object_ "getGraphicItemHashMap" (\() -> (getGraphicItemHashMap_impl (javaCast object_ :: CanvasDom))) ()

getGraphicItemHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getGraphicItemHashMap_super object_ = (getGraphicItemHashMap_impl (javaCast object_ :: CanvasDom))

getGraphicItemHashMap_impl :: CanvasDom -> IO (HashMap.HashMap)
getGraphicItemHashMap_impl this = do
        pure ((jget (this).graphicItemHashMap))


setAngle :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setAngle object_ a1 = jmethod object_ "setAngle" (\() -> (setAngle_impl (javaCast object_ :: CanvasDom))) () a1

setAngle_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setAngle_super object_ a1 = (setAngle_impl (javaCast object_ :: CanvasDom)) a1

setAngle_impl :: CanvasDom -> Double -> IO (())
setAngle_impl this angle = do
        jset (this).angle (angle)
        pure ()


-- throws Exception
setWorkArea :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setWorkArea object_ a1 a2 = jmethod object_ "setWorkArea" (\() -> (setWorkArea_impl (javaCast object_ :: CanvasDom))) () a1 a2

setWorkArea_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setWorkArea_super object_ a1 a2 = (setWorkArea_impl (javaCast object_ :: CanvasDom)) a1 a2

setWorkArea_impl :: CanvasDom -> Int -> Int -> IO (())
setWorkArea_impl this x y = do
        Control.Monad.void (CanvasDom.setDimension this (jio (IntegerDimension.new_2 x y)))
        pure ()


-- throws Exception
setGrid :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setGrid object_ a1 a2 = jmethod object_ "setGrid" (\() -> (setGrid_impl (javaCast object_ :: CanvasDom))) () a1 a2

setGrid_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setGrid_super object_ a1 a2 = (setGrid_impl (javaCast object_ :: CanvasDom)) a1 a2

setGrid_impl :: CanvasDom -> Int -> Int -> IO (())
setGrid_impl this gridX gridY = do
        assignedValue <- (PointFactory.createXY ((jio (PointFactory.getInstance))) gridX gridY)
        jset ((jget (this).grid)).grid (assignedValue)
        pure ()


getPointNode :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> String -> IO (Node.Node)
getPointNode object_ a1 a2 = jmethod object_ "getPointNode" (\() -> (getPointNode_impl (javaCast object_ :: CanvasDom))) () a1 a2

getPointNode_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> String -> IO (Node.Node)
getPointNode_super object_ a1 a2 = (getPointNode_impl (javaCast object_ :: CanvasDom)) a1 a2

getPointNode_impl :: CanvasDom -> GPoint.GPoint -> String -> IO (Node.Node)
getPointNode_impl this point pointName = do
        document <- (WorkAreaJPanel.getDocument)
        let pointNode = (javaCast (jio (Document.createElement document pointName)) :: Node.Node)
        let xNode = (javaCast (jio (Document.createElement document x)) :: Node.Node)
        let xTextNode = (javaCast (jio (Document.createTextNode document (javaToString (jio (GPoint.getX point))))) :: Node.Node)
        Control.Monad.void (Node.appendChild xNode xTextNode)
        let yNode = (javaCast (jio (Document.createElement document y)) :: Node.Node)
        let yTextNode = (javaCast (jio (Document.createTextNode document (javaToString (jio (GPoint.getY point))))) :: Node.Node)
        Control.Monad.void (Node.appendChild yNode yTextNode)
        Control.Monad.void (Node.appendChild pointNode xNode)
        Control.Monad.void (Node.appendChild pointNode yNode)
        pure (pointNode)


-- throws Exception
toDom :: (JavaObjectClass this_) => this_ -> IO (Node.Node)
toDom object_ = jmethod object_ "toDom" (\() -> (toDom_impl (javaCast object_ :: CanvasDom))) ()

toDom_super :: (JavaObjectClass this_) => this_ -> IO (Node.Node)
toDom_super object_ = (toDom_impl (javaCast object_ :: CanvasDom))

toDom_impl :: CanvasDom -> IO (Node.Node)
toDom_impl this = do
        document <- (WorkAreaJPanel.getDocument)
        let frameNode = (javaCast (jio (Document.createElement document fRAME)) :: Node.Node)
        let angleNode = (javaCast (jio (Document.createElement document rOTATE)) :: Node.Node)
        let angleTextNode = (javaCast (jio (Document.createTextNode document (javaToString (jio (CanvasDom.getAngle this))))) :: Node.Node)
        Control.Monad.void (Node.appendChild angleNode angleTextNode)
        let sizeNode = (javaCast (jio (CanvasDom.getPointNode this (jio (PointFactory.createXY ((jio (PointFactory.getInstance))) (jio (IntegerDimension.getWidth ((jio (CanvasDom.getDimension this))))) (jio (IntegerDimension.getHeight ((jio (CanvasDom.getDimension this))))))) sIZE)) :: Node.Node)
        let zoomNode = (javaCast (jio (Document.createElement document zOOM)) :: Node.Node)
        let zoomTextNode = (javaCast (jio (Document.createTextNode document (javaToString (Prelude.fromIntegral ((jio (Grid.getZoom ((jio (CanvasDom.getGrid this)))))) :: Int)))) :: Node.Node)
        Control.Monad.void (Node.appendChild zoomNode zoomTextNode)
        let gridNode = (javaCast (jio (Document.createElement document gRID)) :: Node.Node)
        let gridSizeNode = (javaCast (jio (CanvasDom.getPointNode this (jget ((jio (CanvasDom.getGrid this))).grid) sIZE)) :: Node.Node)
        Control.Monad.void (Node.appendChild gridNode gridSizeNode)
        let enableNode = (javaCast (jio (Document.createElement document eNABLED)) :: Node.Node)
        let enableTextNode = (javaCast (jio (Document.createTextNode document (javaToString (jio (Grid.isGridOn ((jio (CanvasDom.getGrid this)))))))) :: Node.Node)
        Control.Monad.void (Node.appendChild enableNode enableTextNode)
        Control.Monad.void (Node.appendChild gridNode enableNode)
        let possibleNode = (javaCast (jio (Document.createElement document pOSSIBLE)) :: Node.Node)
        let possibleTextNode = (javaCast (jio (Document.createTextNode document (javaToString (jio (Grid.isGridPossible ((jio (CanvasDom.getGrid this)))))))) :: Node.Node)
        Control.Monad.void (Node.appendChild possibleNode possibleTextNode)
        Control.Monad.void (Node.appendChild gridNode possibleNode)
        let realSizeNode = (javaCast (jio (Document.createElement document rEAL_SIZE)) :: Node.Node)
        vectorCenterGenerator <- (VectorCenterGenerator.new_)
        Control.Monad.void (VectorCenterGenerator.calculate vectorCenterGenerator (jio (CanvasDom.getGraphicItemHashMap this)))
        let widthNode = (javaCast (jio (Document.createElement document (jget ((jget (this).graphicsStrings)).wIDTH))) :: Node.Node)
        let widthTextNode = (javaCast (jio (Document.createTextNode document (javaToString (jio (VectorCenterGenerator.getWidth vectorCenterGenerator))))) :: Node.Node)
        Control.Monad.void (Node.appendChild widthNode widthTextNode)
        Control.Monad.void (Node.appendChild realSizeNode widthNode)
        let heightNode = (javaCast (jio (Document.createElement document (jget ((jget (this).graphicsStrings)).hEIGHT))) :: Node.Node)
        let heightTextNode = (javaCast (jio (Document.createTextNode document (javaToString (jio (VectorCenterGenerator.getHeight vectorCenterGenerator))))) :: Node.Node)
        Control.Monad.void (Node.appendChild heightNode heightTextNode)
        Control.Monad.void (Node.appendChild realSizeNode heightNode)
        Control.Monad.void (Node.appendChild frameNode angleNode)
        Control.Monad.void (Node.appendChild frameNode sizeNode)
        Control.Monad.void (Node.appendChild frameNode zoomNode)
        Control.Monad.void (Node.appendChild frameNode gridNode)
        Control.Monad.void (Node.appendChild frameNode realSizeNode)
        let graphicItemNode = (javaCast (jio (Document.createElement document gRAPHICITEMS)) :: Node.Node)
        graphicItemArray <- (HashMap.toArray ((jio (HashMap.keySet ((jio (CanvasDom.getGraphicItemHashMap this)))))))
        let size = (jlength graphicItemArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let item = (javaCast (jio (HashMap.get ((jget (this).graphicItemHashMap)) (jindex graphicItemArray (index)))) :: GraphicItemInterface.GraphicItemInterface)
            when ((jio (GraphicItemInterface.getName item)) == (jio (LinesGraphicItem.getStaticName))) $ do
                when (jio (GraphicItemInterface.isValid item)) $ do
                    Control.Monad.void (Node.appendChild graphicItemNode (jio (GraphicItemInterface.toDom item this)))
        Control.Monad.void (Node.appendChild frameNode graphicItemNode)
        pure (frameNode)


getDimension :: (JavaObjectClass this_) => this_ -> IO (IntegerDimension.IntegerDimension)
getDimension object_ = jmethod object_ "getDimension" (\() -> (getDimension_impl (javaCast object_ :: CanvasDom))) ()

getDimension_super :: (JavaObjectClass this_) => this_ -> IO (IntegerDimension.IntegerDimension)
getDimension_super object_ = (getDimension_impl (javaCast object_ :: CanvasDom))

getDimension_impl :: CanvasDom -> IO (IntegerDimension.IntegerDimension)
getDimension_impl this = do
        pure ((jget (this).dimension))


setDimension :: (JavaObjectClass this_) => this_ -> IntegerDimension.IntegerDimension -> IO (())
setDimension object_ a1 = jmethod object_ "setDimension" (\() -> (setDimension_impl (javaCast object_ :: CanvasDom))) () a1

setDimension_super :: (JavaObjectClass this_) => this_ -> IntegerDimension.IntegerDimension -> IO (())
setDimension_super object_ a1 = (setDimension_impl (javaCast object_ :: CanvasDom)) a1

setDimension_impl :: CanvasDom -> IntegerDimension.IntegerDimension -> IO (())
setDimension_impl this dimension = do
        jset (this).dimension (dimension)
        pure ()


getGrid :: (JavaObjectClass this_) => this_ -> IO (Grid.Grid)
getGrid object_ = jmethod object_ "getGrid" (\() -> (getGrid_impl (javaCast object_ :: CanvasDom))) ()

getGrid_super :: (JavaObjectClass this_) => this_ -> IO (Grid.Grid)
getGrid_super object_ = (getGrid_impl (javaCast object_ :: CanvasDom))

getGrid_impl :: CanvasDom -> IO (Grid.Grid)
getGrid_impl this = do
        pure ((jget (this).grid))


