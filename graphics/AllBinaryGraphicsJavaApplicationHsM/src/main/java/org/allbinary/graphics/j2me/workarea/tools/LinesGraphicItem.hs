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
module LinesGraphicItem where

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
import qualified Color -- same package or java.lang
import qualified Points -- same package or java.lang
import qualified PointsDomUtil -- same package or java.lang
import qualified Graphics2D -- same package or java.lang
import qualified BasicStroke -- same package or java.lang
import qualified PointsUtil -- same package or java.lang
import qualified Graphics -- same package or java.lang
import qualified MouseEvent -- same package or java.lang
import qualified KeyEvent -- same package or java.lang
import qualified BasicColor -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DefaultMutableTreeNode -- javax.swing.tree.DefaultMutableTreeNode
import qualified MutableTreeNode -- javax.swing.tree.MutableTreeNode
import qualified DomHelper -- org.allbinary.dom.DomHelper
import qualified GameInputStrings -- org.allbinary.game.input.GameInputStrings
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified StatusFactory -- org.allbinary.graphics.j2me.StatusFactory
import qualified CanvasDom -- org.allbinary.graphics.j2me.workarea.canvas.CanvasDom
import qualified IntegerDimension -- org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension
import qualified BasicGraphicsPipeline -- org.allbinary.graphics.pipeline.BasicGraphicsPipeline
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PositionStrings -- org.allbinary.math.PositionStrings
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList
-- import java.awt.*
import qualified GraphicItemInterface

-- implements GraphicItemInterface
data LinesGraphicItem = LinesGraphicItem
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , gameInputStrings :: IORef (GameInputStrings.GameInputStrings)
    , treeNode :: IORef (DefaultMutableTreeNode.DefaultMutableTreeNode)
    , pointTreeNodeVector :: IORef (BasicArrayList.BasicArrayList)
    , currentMousePoint :: IORef (GPoint.GPoint)
    , fulcrumPoint :: IORef (GPoint.GPoint)
    , active :: IORef (Bool)
    , theta :: IORef (Double)
    , color :: IORef (Color.Color)
    , points :: IORef (Points.Points)
    }

instance JavaNull LinesGraphicItem where
    javaNull = javaNullRecord "LinesGraphicItem"

instance JavaEquals LinesGraphicItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LinesGraphicItem where
    (==) = jrecordEquals

instance JavaObjectClass LinesGraphicItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

rECT = "rect"

aRC = "arc"

sTRING = "string"

cHAR = "char"

iMAGE = "image"

{-# NOINLINE item #-}
item = unsafePerformIO (newIORef (0))

nAME = "Line Tool"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LinesGraphicItem
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    gameInputStrings <- newIORef javaNull
    treeNode <- newIORef javaNull
    pointTreeNodeVector <- newIORef javaNull
    currentMousePoint <- newIORef javaNull
    fulcrumPoint <- newIORef javaNull
    active <- newIORef False
    theta <- newIORef 0.0
    color <- newIORef javaNull
    points <- newIORef javaNull
    let this = LinesGraphicItem header_ logUtil commonStrings gameInputStrings treeNode pointTreeNodeVector currentMousePoint fulcrumPoint active theta color points
    jregisterLevel header_ this
    GraphicItemInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "translate" (\() -> translate_impl this)
    jregisterMethod header_ "setRotate" (\() -> setRotate_impl this)
    jregisterMethod header_ "addRotate" (\() -> addRotate_impl this)
    jregisterMethod header_ "setAngle" (\() -> setAngle_impl this)
    jregisterMethod header_ "addAngle" (\() -> addAngle_impl this)
    jregisterMethod header_ "getTreeNode" (\() -> getTreeNode_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "addPoint_overload1" (\() -> addPoint_overload1_impl this)
    jregisterMethod header_ "addPoint_overload2" (\() -> addPoint_overload2_impl this)
    jregisterMethod header_ "removePoint" (\() -> removePoint_impl this)
    jregisterMethod header_ "isActive" (\() -> isActive_impl this)
    jregisterMethod header_ "deactivate" (\() -> deactivate_impl this)
    jregisterMethod header_ "activate" (\() -> activate_impl this)
    jregisterMethod header_ "duplicatePoints" (\() -> duplicatePoints_impl this)
    jregisterMethod header_ "duplicate" (\() -> duplicate_impl this)
    jregisterMethod header_ "getAngle" (\() -> getAngle_impl this)
    jregisterMethod header_ "setFulcrumPoint" (\() -> setFulcrumPoint_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "toDom" (\() -> toDom_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "getPointsInterface" (\() -> getPointsInterface_impl this)
    jregisterMethod header_ "setPointsInterface" (\() -> setPointsInterface_impl this)
    jregisterMethod header_ "getColor" (\() -> getColor_impl this)
    jregisterMethod header_ "setColor" (\() -> setColor_impl this)
    jregisterMethod header_ "mouseClicked" (\() -> mouseClicked_impl this)
    jregisterMethod header_ "mouseEntered" (\() -> mouseEntered_impl this)
    jregisterMethod header_ "mouseExited" (\() -> mouseExited_impl this)
    jregisterMethod header_ "mousePressed" (\() -> mousePressed_impl this)
    jregisterMethod header_ "mouseReleased" (\() -> mouseReleased_impl this)
    jregisterMethod header_ "mouseDragged" (\() -> mouseDragged_impl this)
    jregisterMethod header_ "mouseMoved" (\() -> mouseMoved_impl this)
    jregisterMethod header_ "keyPressed" (\() -> keyPressed_impl this)
    jregisterMethod header_ "keyReleased" (\() -> keyReleased_impl this)
    jregisterMethod header_ "keyTyped" (\() -> keyTyped_impl this)
    pure this

initFields_ :: LinesGraphicItem -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.gameInputStrings =<< (GameInputStrings.getInstance)
    jset this.treeNode (javaNull)
    jset this.pointTreeNodeVector (javaNull)
    jset this.currentMousePoint (javaNull)
    jset this.fulcrumPoint (javaNull)
    jset this.active (False)
    jset this.theta (0.0)
    jset this.color =<< (Color.new_1 (jio (BasicColor.intValue ((jget ((jio (BasicColorFactory.getInstance))).wHITE)))))
    jset this.points (javaNull)
    pure ()

new_ :: IO LinesGraphicItem
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LinesGraphicItem -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (Points.new_)
        jset (this).points (assignedValue)
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).cONSTRUCTOR) e)
            ) $ do
            Control.Monad.void (LinesGraphicItem.init this)
            jset (this).active (True)
        pure ()

new_1 :: Node.Node -> IO LinesGraphicItem
new_1 linesNode = do
    this <- newRecord_
    init_1 this linesNode
    pure this

init_1 :: LinesGraphicItem -> Node.Node -> IO ()
init_1 this linesNode = do
        initFields_ this
        assignedValue <- (Points.new_)
        jset (this).points (assignedValue)
        Control.Monad.void (LinesGraphicItem.init this)
        jset (this).active (False)
        lineNodes <- (DomHelper.getWithoutTextNodes ((jio (DomHelper.getInstance))) (jio (Node.getChildNodes linesNode)))
        numberOfLines <- (BasicArrayList.size lineNodes)
        forM_ [0 .. numberOfLines - 1] $ \index -> javaIteration (pure ()) $ do
            let lineNode = (javaCast (jio (BasicArrayList.get lineNodes index)) :: Node.Node)
            pointNodes <- (DomHelper.getWithoutTextNodes ((jio (DomHelper.getInstance))) (jio (Node.getChildNodes lineNode)))
            pointOneNode <- (DomHelper.searchNodeList ((jio (DomHelper.getInstance))) (jget ((jio (PointsDomUtil.getInstance))).pOINTONE) pointNodes)
            Control.Monad.void (LinesGraphicItem.addPoint this (jio (Node.getChildNodes pointOneNode)))
            when (index == (numberOfLines - 1)) $ do
                pointTwoNode <- (DomHelper.searchNodeList ((jio (DomHelper.getInstance))) (jget ((jio (PointsDomUtil.getInstance))).pOINTTWO) pointNodes)
                Control.Monad.void (LinesGraphicItem.addPoint this (jio (Node.getChildNodes pointTwoNode)))
        when (numberOfLines == 0) $ do
            javaThrow ((JavaException "Exception" "Lines node does not contain a line"))
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: LinesGraphicItem))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: LinesGraphicItem))

init_impl :: LinesGraphicItem -> IO (())
init_impl this = do
        assignedValue <- (DefaultMutableTreeNode.new_1 ((jget ((jio (PointsDomUtil.getInstance))).lINES) + (jget LinesGraphicItem.item)))
        jset (this).treeNode (assignedValue)
        jset LinesGraphicItem.item ((jget LinesGraphicItem.item) + 1)
        Control.Monad.void (Points.init ((jget (this).points)))
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).pointTreeNodeVector (assignedValue)
        assignedValue <- (PointFactory.createXY ((jio (PointFactory.getInstance))) 0 0)
        jset (this).fulcrumPoint (assignedValue)
        pure ()


-- throws Exception
translate :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
translate object_ a1 a2 = jmethod object_ "translate" (\() -> (translate_impl (javaCast object_ :: LinesGraphicItem))) () a1 a2

translate_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
translate_super object_ a1 a2 = (translate_impl (javaCast object_ :: LinesGraphicItem)) a1 a2

translate_impl :: LinesGraphicItem -> Int -> Int -> IO (())
translate_impl this x y = do
        Control.Monad.void (StatusFactory.setStatus ((jio (StatusFactory.getInstance))) ("Translating: " ++ javaToString (jio (Points.getPoints ((jget (this).points))))))
        basicGraphicsPipeline <- (BasicGraphicsPipeline.new_1 (jio (Points.getPoints ((jget (this).points)))))
        Control.Monad.void (BasicGraphicsPipeline.translate basicGraphicsPipeline x y)
        assignedValue <- (Points.new_)
        jset (this).points (assignedValue)
        Control.Monad.void (Points.addPoints ((jget (this).points)) (jio (BasicGraphicsPipeline.getMatrix basicGraphicsPipeline)))
        pure ()


setRotate :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setRotate object_ a1 = jmethod object_ "setRotate" (\() -> (setRotate_impl (javaCast object_ :: LinesGraphicItem))) () a1

setRotate_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setRotate_super object_ a1 = (setRotate_impl (javaCast object_ :: LinesGraphicItem)) a1

setRotate_impl :: LinesGraphicItem -> Double -> IO (())
setRotate_impl this theta = do
        theta <- newIORef theta
        fix $ \loop -> when ((jget theta) > (2 * Math.pI)) $ javaIteration (loop) $ do
            jset theta (((jget theta) - (2 * Math.pI)))
        fix $ \loop -> when ((jget theta) < 0.0) $ javaIteration (loop) $ do
            jset theta (((jget theta) + (2 * Math.pI)))
        jset (this).theta ((jget theta))
        pure ()


addRotate :: (JavaObjectClass this_) => this_ -> Double -> IO (())
addRotate object_ a1 = jmethod object_ "addRotate" (\() -> (addRotate_impl (javaCast object_ :: LinesGraphicItem))) () a1

addRotate_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
addRotate_super object_ a1 = (addRotate_impl (javaCast object_ :: LinesGraphicItem)) a1

addRotate_impl :: LinesGraphicItem -> Double -> IO (())
addRotate_impl this theta = do
        Control.Monad.void (LinesGraphicItem.setRotate this ((jget (this).theta) + theta))
        pure ()


setAngle :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setAngle object_ a1 = jmethod object_ "setAngle" (\() -> (setAngle_impl (javaCast object_ :: LinesGraphicItem))) () a1

setAngle_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setAngle_super object_ a1 = (setAngle_impl (javaCast object_ :: LinesGraphicItem)) a1

setAngle_impl :: LinesGraphicItem -> Double -> IO (())
setAngle_impl this angle = do
        Control.Monad.void (LinesGraphicItem.setRotate this (angle * pi / 180))
        pure ()


addAngle :: (JavaObjectClass this_) => this_ -> Double -> IO (())
addAngle object_ a1 = jmethod object_ "addAngle" (\() -> (addAngle_impl (javaCast object_ :: LinesGraphicItem))) () a1

addAngle_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
addAngle_super object_ a1 = (addAngle_impl (javaCast object_ :: LinesGraphicItem)) a1

addAngle_impl :: LinesGraphicItem -> Double -> IO (())
addAngle_impl this angle = do
        Control.Monad.void (LinesGraphicItem.setRotate this ((jget (this).theta) + (angle * pi / 180)))
        pure ()


getTreeNode :: (JavaObjectClass this_) => this_ -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode object_ = jmethod object_ "getTreeNode" (\() -> (getTreeNode_impl (javaCast object_ :: LinesGraphicItem))) ()

getTreeNode_super :: (JavaObjectClass this_) => this_ -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode_super object_ = (getTreeNode_impl (javaCast object_ :: LinesGraphicItem))

getTreeNode_impl :: LinesGraphicItem -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode_impl this = do
        pure ((javaCast (jget (this).treeNode) :: MutableTreeNode.MutableTreeNode))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: LinesGraphicItem))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: LinesGraphicItem))

getName_impl :: LinesGraphicItem -> IO (String)
getName_impl this = do
        pure (LinesGraphicItem.nAME)


getStaticName :: IO (String)
getStaticName = do
        pure (LinesGraphicItem.nAME)


-- Java overloads of addPoint: calls the overload for the types of the arguments
addPoint :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
addPoint this a1
    | jisInstanceOf a1 (javaNull :: NodeList.NodeList) = addPoint_overload1 this (javaCast a1 :: NodeList.NodeList)
    | jisInstanceOf a1 (javaNull :: GPoint.GPoint) = addPoint_overload2 this (javaCast a1 :: GPoint.GPoint)
    | otherwise = addPoint_overload2 this (javaCast a1 :: GPoint.GPoint)

-- throws Exception
addPoint_overload1 :: (JavaObjectClass this_) => this_ -> NodeList.NodeList -> IO (())
addPoint_overload1 object_ a1 = jmethod object_ "addPoint_overload1" (\() -> (addPoint_overload1_impl (javaCast object_ :: LinesGraphicItem))) () a1

addPoint_overload1_super :: (JavaObjectClass this_) => this_ -> NodeList.NodeList -> IO (())
addPoint_overload1_super object_ a1 = (addPoint_overload1_impl (javaCast object_ :: LinesGraphicItem)) a1

addPoint_overload1_impl :: LinesGraphicItem -> NodeList.NodeList -> IO (())
addPoint_overload1_impl this pointNodes = do
        list <- (DomHelper.getWithoutTextNodes ((jio (DomHelper.getInstance))) pointNodes)
        xNode <- (DomHelper.searchNodeList ((jio (DomHelper.getInstance))) (jget ((jio (PositionStrings.getInstance))).x) list)
        xTextNode <- (Node.getFirstChild xNode)
        let xInteger = (Prelude.fromIntegral ((jio (Node.getNodeValue xTextNode))) :: Int)
        yNode <- (DomHelper.searchNodeList ((jio (DomHelper.getInstance))) (jget ((jio (PositionStrings.getInstance))).y) list)
        yTextNode <- (Node.getFirstChild yNode)
        let yInteger = (Prelude.fromIntegral ((jio (Node.getNodeValue yTextNode))) :: Int)
        point <- (PointFactory.createXY ((jio (PointFactory.getInstance))) (xInteger) (yInteger))
        Control.Monad.void (LinesGraphicItem.addPoint this point)
        pure ()


addPoint_overload2 :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
addPoint_overload2 object_ a1 = jmethod object_ "addPoint_overload2" (\() -> (addPoint_overload2_impl (javaCast object_ :: LinesGraphicItem))) () a1

addPoint_overload2_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
addPoint_overload2_super object_ a1 = (addPoint_overload2_impl (javaCast object_ :: LinesGraphicItem)) a1

addPoint_overload2_impl :: LinesGraphicItem -> GPoint.GPoint -> IO (())
addPoint_overload2_impl this point = do
        Control.Monad.void (BasicArrayList.add ((jio (Points.getPoints ((jget (this).points))))) point)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (GPoint.toString point)) this "addPoint")
        Control.Monad.void (BasicArrayList.add ((jget (this).pointTreeNodeVector)) (jio (DefaultMutableTreeNode.new_1 (jio (GPoint.toString point)))))
        Control.Monad.void (DefaultMutableTreeNode.add ((jget (this).treeNode)) (javaCast (jio (BasicArrayList.get ((jget (this).pointTreeNodeVector)) ((jio (BasicArrayList.size ((jget (this).pointTreeNodeVector)))) - 1))) :: DefaultMutableTreeNode.DefaultMutableTreeNode))
        pure ()


removePoint :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
removePoint object_ = jmethod object_ "removePoint" (\() -> (removePoint_impl (javaCast object_ :: LinesGraphicItem))) ()

removePoint_super :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
removePoint_super object_ = (removePoint_impl (javaCast object_ :: LinesGraphicItem))

removePoint_impl :: LinesGraphicItem -> IO (GPoint.GPoint)
removePoint_impl this = do
        point <- newIORef (javaNull)
        when ((jio (Points.getSize ((jget (this).points)))) > 0) $ do
            let lastPoint = ((jio (Points.getSize ((jget (this).points)))) - 1)
            jset point ((javaCast (jio (BasicArrayList.removeAt ((jio (Points.getPoints ((jget (this).points))))) lastPoint)) :: GPoint.GPoint))
            let index = ((jio (BasicArrayList.size ((jget (this).pointTreeNodeVector)))) - 1)
            when (index > 0) $ do
                Control.Monad.void (DefaultMutableTreeNode.remove ((jget (this).treeNode)) (javaCast (jio (BasicArrayList.get ((jget (this).pointTreeNodeVector)) index)) :: DefaultMutableTreeNode.DefaultMutableTreeNode))
                Control.Monad.void (BasicArrayList.remove ((jget (this).pointTreeNodeVector)) index)
        pure ((jget point))


isActive :: (JavaObjectClass this_) => this_ -> IO (Bool)
isActive object_ = jmethod object_ "isActive" (\() -> (isActive_impl (javaCast object_ :: LinesGraphicItem))) ()

isActive_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isActive_super object_ = (isActive_impl (javaCast object_ :: LinesGraphicItem))

isActive_impl :: LinesGraphicItem -> IO (Bool)
isActive_impl this = do
        pure ((jget (this).active))


deactivate :: (JavaObjectClass this_) => this_ -> IO (())
deactivate object_ = jmethod object_ "deactivate" (\() -> (deactivate_impl (javaCast object_ :: LinesGraphicItem))) ()

deactivate_super :: (JavaObjectClass this_) => this_ -> IO (())
deactivate_super object_ = (deactivate_impl (javaCast object_ :: LinesGraphicItem))

deactivate_impl :: LinesGraphicItem -> IO (())
deactivate_impl this = do
        jset (this).active (False)
        pure ()


activate :: (JavaObjectClass this_) => this_ -> IO (())
activate object_ = jmethod object_ "activate" (\() -> (activate_impl (javaCast object_ :: LinesGraphicItem))) ()

activate_super :: (JavaObjectClass this_) => this_ -> IO (())
activate_super object_ = (activate_impl (javaCast object_ :: LinesGraphicItem))

activate_impl :: LinesGraphicItem -> IO (())
activate_impl this = do
        jset (this).active (True)
        pure ()


-- throws Exception
duplicatePoints :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
duplicatePoints object_ a1 = jmethod object_ "duplicatePoints" (\() -> (duplicatePoints_impl (javaCast object_ :: LinesGraphicItem))) () a1

duplicatePoints_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
duplicatePoints_super object_ a1 = (duplicatePoints_impl (javaCast object_ :: LinesGraphicItem)) a1

duplicatePoints_impl :: LinesGraphicItem -> BasicArrayList.BasicArrayList -> IO (())
duplicatePoints_impl this list = do
        size <- (BasicArrayList.size list)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let point = (javaCast (jio (BasicArrayList.get list index)) :: GPoint.GPoint)
            when (point /= javaNull) $ do
                Control.Monad.void (BasicArrayList.add ((jio (Points.getPoints ((jget (this).points))))) (jio (PointFactory.createXY ((jio (PointFactory.getInstance))) (jio (GPoint.getX point)) (jio (GPoint.getY point)))))
                Control.Monad.void (BasicArrayList.add ((jget (this).pointTreeNodeVector)) (jio (DefaultMutableTreeNode.new_1 (jio (GPoint.toString point)))))
                Control.Monad.void (DefaultMutableTreeNode.add ((jget (this).treeNode)) (javaCast (jio (BasicArrayList.get ((jget (this).pointTreeNodeVector)) ((jio (BasicArrayList.size ((jget (this).pointTreeNodeVector)))) - 1))) :: DefaultMutableTreeNode.DefaultMutableTreeNode))
        pure ()


-- throws Exception
duplicate :: (JavaObjectClass this_) => this_ -> IO (GraphicItemInterface.GraphicItemInterface)
duplicate object_ = jmethod object_ "duplicate" (\() -> (duplicate_impl (javaCast object_ :: LinesGraphicItem))) ()

duplicate_super :: (JavaObjectClass this_) => this_ -> IO (GraphicItemInterface.GraphicItemInterface)
duplicate_super object_ = (duplicate_impl (javaCast object_ :: LinesGraphicItem))

duplicate_impl :: LinesGraphicItem -> IO (GraphicItemInterface.GraphicItemInterface)
duplicate_impl this = do
        linesGraphicItem <- (new_)
        Control.Monad.void (LinesGraphicItem.duplicatePoints linesGraphicItem (jio (Points.getPoints ((jget (this).points)))))
        Control.Monad.void (LinesGraphicItem.deactivate linesGraphicItem)
        pure ((javaCast linesGraphicItem :: GraphicItemInterface.GraphicItemInterface))


getAngle :: (JavaObjectClass this_) => this_ -> IO (Double)
getAngle object_ = jmethod object_ "getAngle" (\() -> (getAngle_impl (javaCast object_ :: LinesGraphicItem))) ()

getAngle_super :: (JavaObjectClass this_) => this_ -> IO (Double)
getAngle_super object_ = (getAngle_impl (javaCast object_ :: LinesGraphicItem))

getAngle_impl :: LinesGraphicItem -> IO (Double)
getAngle_impl this = do
        pure (((jget (this).theta) * 180 / pi))


setFulcrumPoint :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setFulcrumPoint object_ a1 = jmethod object_ "setFulcrumPoint" (\() -> (setFulcrumPoint_impl (javaCast object_ :: LinesGraphicItem))) () a1

setFulcrumPoint_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setFulcrumPoint_super object_ a1 = (setFulcrumPoint_impl (javaCast object_ :: LinesGraphicItem)) a1

setFulcrumPoint_impl :: LinesGraphicItem -> GPoint.GPoint -> IO (())
setFulcrumPoint_impl this point = do
        jset (this).fulcrumPoint (point)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Double -> IntegerDimension.IntegerDimension -> Int -> Int -> IO (())
paint object_ a1 a2 a3 a4 a5 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: LinesGraphicItem))) () a1 a2 a3 a4 a5

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Double -> IntegerDimension.IntegerDimension -> Int -> Int -> IO (())
paint_super object_ a1 a2 a3 a4 a5 = (paint_impl (javaCast object_ :: LinesGraphicItem)) a1 a2 a3 a4 a5

paint_impl :: LinesGraphicItem -> Graphics.Graphics -> Double -> IntegerDimension.IntegerDimension -> Int -> Int -> IO (())
paint_impl this g canvasAngle dimension x y = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "mouseMoved" e)
            ) $ do
            let graphics = (javaCast g :: Graphics2D.Graphics2D)
            Control.Monad.void (Graphics2D.setColor graphics (jio (LinesGraphicItem.getColor this)))
            Control.Monad.void (Graphics2D.setStroke graphics (jio (BasicStroke.new_1 x)))
            when ((jio (LinesGraphicItem.isActive this)) && ((jget (this).currentMousePoint) /= javaNull)) $ do
                Control.Monad.void (BasicArrayList.add ((jio (Points.getPoints ((jget (this).points))))) (jget (this).currentMousePoint))
            tempPointVector <- (PointsUtil.doTransforms ((jio (PointsUtil.getInstance))) (jio (Points.getPoints ((jget (this).points)))) canvasAngle (jio (PointFactory.createXY ((jio (PointFactory.getInstance))) (jio (IntegerDimension.getWidth dimension)) (jio (IntegerDimension.getHeight dimension)))))
            when ((jio (LinesGraphicItem.isActive this)) && ((jget (this).currentMousePoint) /= javaNull)) $ do
                jset (this).currentMousePoint ((javaCast (jio (BasicArrayList.removeAt ((jio (Points.getPoints ((jget (this).points))))) ((jio (Points.getSize ((jget (this).points)))) - 1))) :: GPoint.GPoint))
            size <- (BasicArrayList.size tempPointVector)
            firstPoint <- newIORef (javaNull)
            when (size > 0) $ do
                jset firstPoint ((javaCast (jio (BasicArrayList.get tempPointVector 0)) :: GPoint.GPoint))
            forM_ [1 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let secondPoint = (javaCast (jio (BasicArrayList.get tempPointVector index)) :: GPoint.GPoint)
                Control.Monad.void (Graphics2D.drawLine graphics ((((jio (GPoint.getX ((jget firstPoint)))) * x)) - ((x `quot` 4))) ((((jio (GPoint.getY ((jget firstPoint)))) * y)) - ((y `quot` 4))) ((((jio (GPoint.getX secondPoint)) * x)) - ((x `quot` 4))) ((((jio (GPoint.getY secondPoint)) * y)) - ((y `quot` 4))))
                jset firstPoint (secondPoint)
        pure ()


-- throws Exception
toDom :: (JavaObjectClass this_) => this_ -> CanvasDom.CanvasDom -> IO (Node.Node)
toDom object_ a1 = jmethod object_ "toDom" (\() -> (toDom_impl (javaCast object_ :: LinesGraphicItem))) () a1

toDom_super :: (JavaObjectClass this_) => this_ -> CanvasDom.CanvasDom -> IO (Node.Node)
toDom_super object_ a1 = (toDom_impl (javaCast object_ :: LinesGraphicItem)) a1

toDom_impl :: LinesGraphicItem -> CanvasDom.CanvasDom -> IO (Node.Node)
toDom_impl this canvasDom = do
        (PointsDomUtil.toDom ((jio (PointsDomUtil.getInstance))) canvasDom (jio (Points.getPoints ((jget (this).points)))))


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: LinesGraphicItem))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: LinesGraphicItem))

isValid_impl :: LinesGraphicItem -> IO (Bool)
isValid_impl this = do
        (Points.isValid ((jget (this).points)))


getPointsInterface :: (JavaObjectClass this_) => this_ -> IO (Points.Points)
getPointsInterface object_ = jmethod object_ "getPointsInterface" (\() -> (getPointsInterface_impl (javaCast object_ :: LinesGraphicItem))) ()

getPointsInterface_super :: (JavaObjectClass this_) => this_ -> IO (Points.Points)
getPointsInterface_super object_ = (getPointsInterface_impl (javaCast object_ :: LinesGraphicItem))

getPointsInterface_impl :: LinesGraphicItem -> IO (Points.Points)
getPointsInterface_impl this = do
        pure ((jget (this).points))


setPointsInterface :: (JavaObjectClass this_) => this_ -> Points.Points -> IO (())
setPointsInterface object_ a1 = jmethod object_ "setPointsInterface" (\() -> (setPointsInterface_impl (javaCast object_ :: LinesGraphicItem))) () a1

setPointsInterface_super :: (JavaObjectClass this_) => this_ -> Points.Points -> IO (())
setPointsInterface_super object_ a1 = (setPointsInterface_impl (javaCast object_ :: LinesGraphicItem)) a1

setPointsInterface_impl :: LinesGraphicItem -> Points.Points -> IO (())
setPointsInterface_impl this points = do
        jset (this).points (points)
        pure ()


getColor :: (JavaObjectClass this_) => this_ -> IO (Color.Color)
getColor object_ = jmethod object_ "getColor" (\() -> (getColor_impl (javaCast object_ :: LinesGraphicItem))) ()

getColor_super :: (JavaObjectClass this_) => this_ -> IO (Color.Color)
getColor_super object_ = (getColor_impl (javaCast object_ :: LinesGraphicItem))

getColor_impl :: LinesGraphicItem -> IO (Color.Color)
getColor_impl this = do
        pure ((jget (this).color))


setColor :: (JavaObjectClass this_) => this_ -> Color.Color -> IO (())
setColor object_ a1 = jmethod object_ "setColor" (\() -> (setColor_impl (javaCast object_ :: LinesGraphicItem))) () a1

setColor_super :: (JavaObjectClass this_) => this_ -> Color.Color -> IO (())
setColor_super object_ a1 = (setColor_impl (javaCast object_ :: LinesGraphicItem)) a1

setColor_impl :: LinesGraphicItem -> Color.Color -> IO (())
setColor_impl this color = do
        jset (this).color (color)
        pure ()


mouseClicked :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseClicked object_ a1 a2 a3 = jmethod object_ "mouseClicked" (\() -> (mouseClicked_impl (javaCast object_ :: LinesGraphicItem))) () a1 a2 a3

mouseClicked_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseClicked_super object_ a1 a2 a3 = (mouseClicked_impl (javaCast object_ :: LinesGraphicItem)) a1 a2 a3

mouseClicked_impl :: LinesGraphicItem -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseClicked_impl this mouseEvent x y = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "mouseMoved" e)
            ) $ do
            mousePoint <- (PointFactory.createXY ((jio (PointFactory.getInstance))) (jget ((jio (MouseEvent.getPoint mouseEvent))).x) (jget ((jio (MouseEvent.getPoint mouseEvent))).y))
            if ((((jio (MouseEvent.getModifiers mouseEvent)) Data.Bits..&. (jget (mouseEvent).bUTTON1_MASK))) == (jget (mouseEvent).bUTTON1_MASK)) then do
                point <- (PointFactory.createXY ((jio (PointFactory.getInstance))) ((jio (GPoint.getX mousePoint)) `quot` x) ((jio (GPoint.getY mousePoint)) `quot` y))
                Control.Monad.void (StatusFactory.setStatus ((jio (StatusFactory.getInstance))) ("Line Point Added: " ++ (jio (GPoint.toString point))))
                Control.Monad.void (LinesGraphicItem.addPoint this point)
            else when ((((jio (MouseEvent.getModifiers mouseEvent)) Data.Bits..&. (jget (mouseEvent).bUTTON3_MASK))) == (jget (mouseEvent).bUTTON3_MASK)) $ do
                Control.Monad.void (StatusFactory.setStatus ((jio (StatusFactory.getInstance))) "Line Point Removed")
                Control.Monad.void (LinesGraphicItem.removePoint this)
            jset (this).currentMousePoint (mousePoint)
        pure ()


mouseEntered :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseEntered object_ a1 = jmethod object_ "mouseEntered" (\() -> (mouseEntered_impl (javaCast object_ :: LinesGraphicItem))) () a1

mouseEntered_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseEntered_super object_ a1 = (mouseEntered_impl (javaCast object_ :: LinesGraphicItem)) a1

mouseEntered_impl :: LinesGraphicItem -> MouseEvent.MouseEvent -> IO (())
mouseEntered_impl this mouseEvent = do
        pure ()


mouseExited :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseExited object_ a1 = jmethod object_ "mouseExited" (\() -> (mouseExited_impl (javaCast object_ :: LinesGraphicItem))) () a1

mouseExited_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseExited_super object_ a1 = (mouseExited_impl (javaCast object_ :: LinesGraphicItem)) a1

mouseExited_impl :: LinesGraphicItem -> MouseEvent.MouseEvent -> IO (())
mouseExited_impl this mouseEvent = do
        pure ()


mousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mousePressed object_ a1 a2 a3 = jmethod object_ "mousePressed" (\() -> (mousePressed_impl (javaCast object_ :: LinesGraphicItem))) () a1 a2 a3

mousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mousePressed_super object_ a1 a2 a3 = (mousePressed_impl (javaCast object_ :: LinesGraphicItem)) a1 a2 a3

mousePressed_impl :: LinesGraphicItem -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mousePressed_impl this mouseEvent xPixelsPerCell yPixelsPerCell = do
        pure ()


mouseReleased :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseReleased object_ a1 a2 a3 = jmethod object_ "mouseReleased" (\() -> (mouseReleased_impl (javaCast object_ :: LinesGraphicItem))) () a1 a2 a3

mouseReleased_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseReleased_super object_ a1 a2 a3 = (mouseReleased_impl (javaCast object_ :: LinesGraphicItem)) a1 a2 a3

mouseReleased_impl :: LinesGraphicItem -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseReleased_impl this mouseEvent xPixelsPerCell yPixelsPerCell = do
        pure ()


mouseDragged :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseDragged object_ a1 a2 a3 = jmethod object_ "mouseDragged" (\() -> (mouseDragged_impl (javaCast object_ :: LinesGraphicItem))) () a1 a2 a3

mouseDragged_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseDragged_super object_ a1 a2 a3 = (mouseDragged_impl (javaCast object_ :: LinesGraphicItem)) a1 a2 a3

mouseDragged_impl :: LinesGraphicItem -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseDragged_impl this mouseEvent xPixelsPerCell yPixelsPerCell = do
        pure ()


mouseMoved :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseMoved object_ a1 a2 a3 = jmethod object_ "mouseMoved" (\() -> (mouseMoved_impl (javaCast object_ :: LinesGraphicItem))) () a1 a2 a3

mouseMoved_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseMoved_super object_ a1 a2 a3 = (mouseMoved_impl (javaCast object_ :: LinesGraphicItem)) a1 a2 a3

mouseMoved_impl :: LinesGraphicItem -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseMoved_impl this mouseEvent x y = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "mouseMoved" e)
            ) $ do
            mousePoint <- (PointFactory.createXY ((jio (PointFactory.getInstance))) (jget ((jio (MouseEvent.getPoint mouseEvent))).x) (jget ((jio (MouseEvent.getPoint mouseEvent))).y))
            point <- (PointFactory.createXY ((jio (PointFactory.getInstance))) ((jio (GPoint.getX mousePoint)) `quot` x) ((jio (GPoint.getY mousePoint)) `quot` y))
            jset (this).currentMousePoint (point)
        pure ()


keyPressed :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyPressed object_ a1 = jmethod object_ "keyPressed" (\() -> (keyPressed_impl (javaCast object_ :: LinesGraphicItem))) () a1

keyPressed_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyPressed_super object_ a1 = (keyPressed_impl (javaCast object_ :: LinesGraphicItem)) a1

keyPressed_impl :: LinesGraphicItem -> KeyEvent.KeyEvent -> IO (())
keyPressed_impl this keyEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget this.gameInputStrings)).kEY_PRESSED) e)
            ) $ do
            keyCode <- (KeyEvent.getKeyCode keyEvent)
            if (keyCode == (jget (keyEvent).vK_ESCAPE)) then do
                Control.Monad.void (StatusFactory.setStatus ((jio (StatusFactory.getInstance))) "Deactivated")
                Control.Monad.void (LinesGraphicItem.deactivate this)
            else if (keyCode == (jget (keyEvent).vK_UP)) then do
                Control.Monad.void (LinesGraphicItem.translate this 0 (Prelude.negate 1))
            else if (keyCode == (jget (keyEvent).vK_DOWN)) then do
                Control.Monad.void (LinesGraphicItem.translate this 0 1)
            else if (keyCode == (jget (keyEvent).vK_LEFT)) then do
                Control.Monad.void (LinesGraphicItem.translate this (Prelude.negate 1) 0)
            else when (keyCode == (jget (keyEvent).vK_RIGHT)) $ do
                Control.Monad.void (LinesGraphicItem.translate this 1 0)
        pure ()


keyReleased :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyReleased object_ a1 = jmethod object_ "keyReleased" (\() -> (keyReleased_impl (javaCast object_ :: LinesGraphicItem))) () a1

keyReleased_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyReleased_super object_ a1 = (keyReleased_impl (javaCast object_ :: LinesGraphicItem)) a1

keyReleased_impl :: LinesGraphicItem -> KeyEvent.KeyEvent -> IO (())
keyReleased_impl this keyEvent = do
        pure ()


keyTyped :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyTyped object_ a1 = jmethod object_ "keyTyped" (\() -> (keyTyped_impl (javaCast object_ :: LinesGraphicItem))) () a1

keyTyped_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyTyped_super object_ a1 = (keyTyped_impl (javaCast object_ :: LinesGraphicItem)) a1

keyTyped_impl :: LinesGraphicItem -> KeyEvent.KeyEvent -> IO (())
keyTyped_impl this keyEvent = do
        pure ()


