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
module SelectionTool where

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
import qualified Any -- same package or java.lang
import qualified LinesGraphicItem -- same package or java.lang
import qualified Graphics -- same package or java.lang
import qualified MouseEvent -- same package or java.lang
import qualified MouseStrings -- same package or java.lang
import qualified KeyEvent -- same package or java.lang
import qualified BasicColor -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified MutableTreeNode -- javax.swing.tree.MutableTreeNode
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified CanvasDom -- org.allbinary.graphics.j2me.workarea.canvas.CanvasDom
import qualified CanvasJPanel -- org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel
import qualified IntegerDimension -- org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified RectangleCollisionPointUtil -- org.allbinary.math.RectangleCollisionPointUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Node -- org.w3c.dom.Node
-- import java.awt.*
import qualified GraphicItemInterface

-- implements GraphicItemInterface
data SelectionTool = SelectionTool
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , canvasJPanel :: IORef (CanvasJPanel.CanvasJPanel)
    , active :: IORef (Bool)
    , controlIdDown :: IORef (Bool)
    , rectColor :: IORef (Color.Color)
    , startPoint :: IORef (GPoint.GPoint)
    , endPoint :: IORef (GPoint.GPoint)
    }

instance JavaNull SelectionTool where
    javaNull = javaNullRecord "SelectionTool"

instance JavaEquals SelectionTool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SelectionTool where
    (==) = jrecordEquals

instance JavaObjectClass SelectionTool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "Selection Tool"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SelectionTool
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    canvasJPanel <- newIORef javaNull
    active <- newIORef False
    controlIdDown <- newIORef False
    rectColor <- newIORef javaNull
    startPoint <- newIORef javaNull
    endPoint <- newIORef javaNull
    let this = SelectionTool header_ logUtil commonStrings canvasJPanel active controlIdDown rectColor startPoint endPoint
    jregisterLevel header_ this
    GraphicItemInterface.registerInterface_ header_
    jregisterMethod header_ "setColor" (\() -> setColor_impl this)
    jregisterMethod header_ "getTreeNode" (\() -> getTreeNode_impl this)
    jregisterMethod header_ "getPointsInterface" (\() -> getPointsInterface_impl this)
    jregisterMethod header_ "setPointsInterface" (\() -> setPointsInterface_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "isActive" (\() -> isActive_impl this)
    jregisterMethod header_ "deactivate" (\() -> deactivate_impl this)
    jregisterMethod header_ "activate" (\() -> activate_impl this)
    jregisterMethod header_ "setFulcrumPoint" (\() -> setFulcrumPoint_impl this)
    jregisterMethod header_ "translate" (\() -> translate_impl this)
    jregisterMethod header_ "setRotate" (\() -> setRotate_impl this)
    jregisterMethod header_ "addRotate" (\() -> addRotate_impl this)
    jregisterMethod header_ "setAngle" (\() -> setAngle_impl this)
    jregisterMethod header_ "addAngle" (\() -> addAngle_impl this)
    jregisterMethod header_ "getAngle" (\() -> getAngle_impl this)
    jregisterMethod header_ "makeSelection" (\() -> makeSelection_impl this)
    jregisterMethod header_ "getXRect" (\() -> getXRect_impl this)
    jregisterMethod header_ "getYRect" (\() -> getYRect_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "toDom" (\() -> toDom_impl this)
    jregisterMethod header_ "removePoint" (\() -> removePoint_impl this)
    jregisterMethod header_ "addPoint" (\() -> addPoint_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "mouseClicked" (\() -> mouseClicked_impl this)
    jregisterMethod header_ "mouseMoved" (\() -> mouseMoved_impl this)
    jregisterMethod header_ "mouseEntered" (\() -> mouseEntered_impl this)
    jregisterMethod header_ "mouseExited" (\() -> mouseExited_impl this)
    jregisterMethod header_ "mousePressed" (\() -> mousePressed_impl this)
    jregisterMethod header_ "mouseReleased" (\() -> mouseReleased_impl this)
    jregisterMethod header_ "mouseDragged" (\() -> mouseDragged_impl this)
    jregisterMethod header_ "keyPressed" (\() -> keyPressed_impl this)
    jregisterMethod header_ "keyReleased" (\() -> keyReleased_impl this)
    jregisterMethod header_ "keyTyped" (\() -> keyTyped_impl this)
    jregisterMethod header_ "duplicate" (\() -> duplicate_impl this)
    pure this

initFields_ :: SelectionTool -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.canvasJPanel (javaNull)
    jset this.active (True)
    jset this.controlIdDown (False)
    jset this.rectColor =<< (Color.new_1 (jio (BasicColor.intValue ((jget ((jio (BasicColorFactory.getInstance))).rED)))))
    jset this.startPoint ((jget ((jio (PointFactory.getInstance))).zERO_ZERO))
    jset this.endPoint ((jget (this).startPoint))
    pure ()

new_1 :: CanvasJPanel.CanvasJPanel -> IO SelectionTool
new_1 canvasJPanel = do
    this <- newRecord_
    init_1 this canvasJPanel
    pure this

init_1 :: SelectionTool -> CanvasJPanel.CanvasJPanel -> IO ()
init_1 this canvasJPanel = do
        initFields_ this
        jset (this).canvasJPanel (canvasJPanel)
        pure ()


setColor :: (JavaObjectClass this_) => this_ -> Color.Color -> IO (())
setColor object_ a1 = jmethod object_ "setColor" (\() -> (setColor_impl (javaCast object_ :: SelectionTool))) () a1

setColor_super :: (JavaObjectClass this_) => this_ -> Color.Color -> IO (())
setColor_super object_ a1 = (setColor_impl (javaCast object_ :: SelectionTool)) a1

setColor_impl :: SelectionTool -> Color.Color -> IO (())
setColor_impl this color = do
        pure ()


getTreeNode :: (JavaObjectClass this_) => this_ -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode object_ = jmethod object_ "getTreeNode" (\() -> (getTreeNode_impl (javaCast object_ :: SelectionTool))) ()

getTreeNode_super :: (JavaObjectClass this_) => this_ -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode_super object_ = (getTreeNode_impl (javaCast object_ :: SelectionTool))

getTreeNode_impl :: SelectionTool -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode_impl this = do
        pure (javaNull)


getPointsInterface :: (JavaObjectClass this_) => this_ -> IO (Points.Points)
getPointsInterface object_ = jmethod object_ "getPointsInterface" (\() -> (getPointsInterface_impl (javaCast object_ :: SelectionTool))) ()

getPointsInterface_super :: (JavaObjectClass this_) => this_ -> IO (Points.Points)
getPointsInterface_super object_ = (getPointsInterface_impl (javaCast object_ :: SelectionTool))

getPointsInterface_impl :: SelectionTool -> IO (Points.Points)
getPointsInterface_impl this = do
        pure (javaNull)


setPointsInterface :: (JavaObjectClass this_) => this_ -> Points.Points -> IO (())
setPointsInterface object_ a1 = jmethod object_ "setPointsInterface" (\() -> (setPointsInterface_impl (javaCast object_ :: SelectionTool))) () a1

setPointsInterface_super :: (JavaObjectClass this_) => this_ -> Points.Points -> IO (())
setPointsInterface_super object_ a1 = (setPointsInterface_impl (javaCast object_ :: SelectionTool)) a1

setPointsInterface_impl :: SelectionTool -> Points.Points -> IO (())
setPointsInterface_impl this points = do
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: SelectionTool))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: SelectionTool))

isValid_impl :: SelectionTool -> IO (Bool)
isValid_impl this = do
        pure (True)


isActive :: (JavaObjectClass this_) => this_ -> IO (Bool)
isActive object_ = jmethod object_ "isActive" (\() -> (isActive_impl (javaCast object_ :: SelectionTool))) ()

isActive_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isActive_super object_ = (isActive_impl (javaCast object_ :: SelectionTool))

isActive_impl :: SelectionTool -> IO (Bool)
isActive_impl this = do
        pure ((jget (this).active))


deactivate :: (JavaObjectClass this_) => this_ -> IO (())
deactivate object_ = jmethod object_ "deactivate" (\() -> (deactivate_impl (javaCast object_ :: SelectionTool))) ()

deactivate_super :: (JavaObjectClass this_) => this_ -> IO (())
deactivate_super object_ = (deactivate_impl (javaCast object_ :: SelectionTool))

deactivate_impl :: SelectionTool -> IO (())
deactivate_impl this = do
        pure ()


activate :: (JavaObjectClass this_) => this_ -> IO (())
activate object_ = jmethod object_ "activate" (\() -> (activate_impl (javaCast object_ :: SelectionTool))) ()

activate_super :: (JavaObjectClass this_) => this_ -> IO (())
activate_super object_ = (activate_impl (javaCast object_ :: SelectionTool))

activate_impl :: SelectionTool -> IO (())
activate_impl this = do
        pure ()


setFulcrumPoint :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setFulcrumPoint object_ a1 = jmethod object_ "setFulcrumPoint" (\() -> (setFulcrumPoint_impl (javaCast object_ :: SelectionTool))) () a1

setFulcrumPoint_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setFulcrumPoint_super object_ a1 = (setFulcrumPoint_impl (javaCast object_ :: SelectionTool)) a1

setFulcrumPoint_impl :: SelectionTool -> GPoint.GPoint -> IO (())
setFulcrumPoint_impl this point = do
        pure ()


-- throws Exception
translate :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
translate object_ a1 a2 = jmethod object_ "translate" (\() -> (translate_impl (javaCast object_ :: SelectionTool))) () a1 a2

translate_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
translate_super object_ a1 a2 = (translate_impl (javaCast object_ :: SelectionTool)) a1 a2

translate_impl :: SelectionTool -> Int -> Int -> IO (())
translate_impl this x y = do
        pure ()


setRotate :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setRotate object_ a1 = jmethod object_ "setRotate" (\() -> (setRotate_impl (javaCast object_ :: SelectionTool))) () a1

setRotate_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setRotate_super object_ a1 = (setRotate_impl (javaCast object_ :: SelectionTool)) a1

setRotate_impl :: SelectionTool -> Double -> IO (())
setRotate_impl this theta = do
        pure ()


addRotate :: (JavaObjectClass this_) => this_ -> Double -> IO (())
addRotate object_ a1 = jmethod object_ "addRotate" (\() -> (addRotate_impl (javaCast object_ :: SelectionTool))) () a1

addRotate_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
addRotate_super object_ a1 = (addRotate_impl (javaCast object_ :: SelectionTool)) a1

addRotate_impl :: SelectionTool -> Double -> IO (())
addRotate_impl this theta = do
        pure ()


setAngle :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setAngle object_ a1 = jmethod object_ "setAngle" (\() -> (setAngle_impl (javaCast object_ :: SelectionTool))) () a1

setAngle_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setAngle_super object_ a1 = (setAngle_impl (javaCast object_ :: SelectionTool)) a1

setAngle_impl :: SelectionTool -> Double -> IO (())
setAngle_impl this angle = do
        pure ()


addAngle :: (JavaObjectClass this_) => this_ -> Double -> IO (())
addAngle object_ a1 = jmethod object_ "addAngle" (\() -> (addAngle_impl (javaCast object_ :: SelectionTool))) () a1

addAngle_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
addAngle_super object_ a1 = (addAngle_impl (javaCast object_ :: SelectionTool)) a1

addAngle_impl :: SelectionTool -> Double -> IO (())
addAngle_impl this angle = do
        pure ()


getAngle :: (JavaObjectClass this_) => this_ -> IO (Double)
getAngle object_ = jmethod object_ "getAngle" (\() -> (getAngle_impl (javaCast object_ :: SelectionTool))) ()

getAngle_super :: (JavaObjectClass this_) => this_ -> IO (Double)
getAngle_super object_ = (getAngle_impl (javaCast object_ :: SelectionTool))

getAngle_impl :: SelectionTool -> IO (Double)
getAngle_impl this = do
        pure (0.0)


makeSelection :: (JavaObjectClass this_) => this_ -> IO (())
makeSelection object_ = jmethod object_ "makeSelection" (\() -> (makeSelection_impl (javaCast object_ :: SelectionTool))) ()

makeSelection_super :: (JavaObjectClass this_) => this_ -> IO (())
makeSelection_super object_ = (makeSelection_impl (javaCast object_ :: SelectionTool))

makeSelection_impl :: SelectionTool -> IO (())
makeSelection_impl this = do
        xRect <- (SelectionTool.getXRect this)
        let xRect2 = ((Prelude.abs ((jio (GPoint.getX ((jget (this).endPoint)))) - (jio (GPoint.getX ((jget (this).startPoint)))))) + xRect)
        yRect <- (SelectionTool.getYRect this)
        let yRect2 = ((Prelude.abs ((jio (GPoint.getY ((jget (this).endPoint)))) - (jio (GPoint.getY ((jget (this).startPoint)))))) + yRect)
        hashMap <- (CanvasJPanel.getGraphicItemHashMap ((jget (this).canvasJPanel)))
        graphicItemArray <- (HashMap.toArray ((jio (HashMap.keySet hashMap))))
        let size = (jlength graphicItemArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let item = (javaCast (jio (HashMap.get hashMap (jindex graphicItemArray (index)))) :: GraphicItemInterface.GraphicItemInterface)
            when ((jio (GraphicItemInterface.getName item)) == (jio (LinesGraphicItem.getStaticName))) $ do
                if (jio (RectangleCollisionPointUtil.allPointsInsideCell xRect yRect xRect2 yRect2 (jio (GraphicItemInterface.getPoints ((jio (GraphicItemInterface.getPointsInterface item))))) (jio (CanvasJPanel.getXPixelsPerWorkAreaPixel ((jget (this).canvasJPanel)))) (jio (CanvasJPanel.getYPixelsPerWorkAreaPixel ((jget (this).canvasJPanel)))))) then do
                    Control.Monad.void (GraphicItemInterface.setColor item (Color.yELLOW))
                    Control.Monad.void (GraphicItemInterface.activate item)
                else when (Prelude.not (jget (this).controlIdDown)) $ do
                    Control.Monad.void (GraphicItemInterface.setColor item (Color.wHITE))
                    Control.Monad.void (GraphicItemInterface.deactivate item)
        pure ()


getXRect :: (JavaObjectClass this_) => this_ -> IO (Int)
getXRect object_ = jmethod object_ "getXRect" (\() -> (getXRect_impl (javaCast object_ :: SelectionTool))) ()

getXRect_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getXRect_super object_ = (getXRect_impl (javaCast object_ :: SelectionTool))

getXRect_impl :: SelectionTool -> IO (Int)
getXRect_impl this = do
        let xDiff = ((jio (GPoint.getX ((jget (this).endPoint)))) - (jio (GPoint.getX ((jget (this).startPoint)))))
        xRect <- newIORef =<< (GPoint.getX ((jget (this).startPoint)))
        when (xDiff < 0) $ do
            assignedValue <- (GPoint.getX ((jget (this).endPoint)))
            jset xRect (assignedValue)
        pure ((jget xRect))


getYRect :: (JavaObjectClass this_) => this_ -> IO (Int)
getYRect object_ = jmethod object_ "getYRect" (\() -> (getYRect_impl (javaCast object_ :: SelectionTool))) ()

getYRect_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getYRect_super object_ = (getYRect_impl (javaCast object_ :: SelectionTool))

getYRect_impl :: SelectionTool -> IO (Int)
getYRect_impl this = do
        let yDiff = ((jio (GPoint.getY ((jget (this).endPoint)))) - (jio (GPoint.getY ((jget (this).startPoint)))))
        yRect <- newIORef =<< (GPoint.getY ((jget (this).startPoint)))
        when (yDiff < 0) $ do
            assignedValue <- (GPoint.getY ((jget (this).endPoint)))
            jset yRect (assignedValue)
        pure ((jget yRect))


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Double -> IntegerDimension.IntegerDimension -> Int -> Int -> IO (())
paint object_ a1 a2 a3 a4 a5 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: SelectionTool))) () a1 a2 a3 a4 a5

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Double -> IntegerDimension.IntegerDimension -> Int -> Int -> IO (())
paint_super object_ a1 a2 a3 a4 a5 = (paint_impl (javaCast object_ :: SelectionTool)) a1 a2 a3 a4 a5

paint_impl :: SelectionTool -> Graphics.Graphics -> Double -> IntegerDimension.IntegerDimension -> Int -> Int -> IO (())
paint_impl this g canvasAngle dimension x y = do
        Control.Monad.void (Graphics.setColor g (jget (this).rectColor))
        xRect <- (SelectionTool.getXRect this)
        let width = (Prelude.abs ((jio (GPoint.getX ((jget (this).endPoint)))) - (jio (GPoint.getX ((jget (this).startPoint))))))
        yRect <- (SelectionTool.getYRect this)
        let height = (Prelude.abs ((jio (GPoint.getY ((jget (this).endPoint)))) - (jio (GPoint.getY ((jget (this).startPoint))))))
        Control.Monad.void (Graphics.drawRect g xRect yRect width height)
        pure ()


-- throws Exception
toDom :: (JavaObjectClass this_) => this_ -> CanvasDom.CanvasDom -> IO (Node.Node)
toDom object_ a1 = jmethod object_ "toDom" (\() -> (toDom_impl (javaCast object_ :: SelectionTool))) () a1

toDom_super :: (JavaObjectClass this_) => this_ -> CanvasDom.CanvasDom -> IO (Node.Node)
toDom_super object_ a1 = (toDom_impl (javaCast object_ :: SelectionTool)) a1

toDom_impl :: SelectionTool -> CanvasDom.CanvasDom -> IO (Node.Node)
toDom_impl this canvasDom = do
        pure (javaNull)


removePoint :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
removePoint object_ = jmethod object_ "removePoint" (\() -> (removePoint_impl (javaCast object_ :: SelectionTool))) ()

removePoint_super :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
removePoint_super object_ = (removePoint_impl (javaCast object_ :: SelectionTool))

removePoint_impl :: SelectionTool -> IO (GPoint.GPoint)
removePoint_impl this = do
        pure (javaNull)


addPoint :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
addPoint object_ a1 = jmethod object_ "addPoint" (\() -> (addPoint_impl (javaCast object_ :: SelectionTool))) () a1

addPoint_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
addPoint_super object_ a1 = (addPoint_impl (javaCast object_ :: SelectionTool)) a1

addPoint_impl :: SelectionTool -> GPoint.GPoint -> IO (())
addPoint_impl this point = do
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: SelectionTool))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: SelectionTool))

getName_impl :: SelectionTool -> IO (String)
getName_impl this = do
        pure (SelectionTool.nAME)


getStaticName :: IO (String)
getStaticName = do
        pure (SelectionTool.nAME)


mouseClicked :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseClicked object_ a1 a2 a3 = jmethod object_ "mouseClicked" (\() -> (mouseClicked_impl (javaCast object_ :: SelectionTool))) () a1 a2 a3

mouseClicked_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseClicked_super object_ a1 a2 a3 = (mouseClicked_impl (javaCast object_ :: SelectionTool)) a1 a2 a3

mouseClicked_impl :: SelectionTool -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseClicked_impl this mouseEvent xPixelsPerCell yPixelsPerCell = do
        pure ()


mouseMoved :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseMoved object_ a1 a2 a3 = jmethod object_ "mouseMoved" (\() -> (mouseMoved_impl (javaCast object_ :: SelectionTool))) () a1 a2 a3

mouseMoved_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseMoved_super object_ a1 a2 a3 = (mouseMoved_impl (javaCast object_ :: SelectionTool)) a1 a2 a3

mouseMoved_impl :: SelectionTool -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseMoved_impl this mouseEvent xPixelsPerCell yPixelsPerCell = do
        pure ()


mouseEntered :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseEntered object_ a1 = jmethod object_ "mouseEntered" (\() -> (mouseEntered_impl (javaCast object_ :: SelectionTool))) () a1

mouseEntered_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseEntered_super object_ a1 = (mouseEntered_impl (javaCast object_ :: SelectionTool)) a1

mouseEntered_impl :: SelectionTool -> MouseEvent.MouseEvent -> IO (())
mouseEntered_impl this mouseEvent = do
        pure ()


mouseExited :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseExited object_ a1 = jmethod object_ "mouseExited" (\() -> (mouseExited_impl (javaCast object_ :: SelectionTool))) () a1

mouseExited_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseExited_super object_ a1 = (mouseExited_impl (javaCast object_ :: SelectionTool)) a1

mouseExited_impl :: SelectionTool -> MouseEvent.MouseEvent -> IO (())
mouseExited_impl this mouseEvent = do
        pure ()


mousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mousePressed object_ a1 a2 a3 = jmethod object_ "mousePressed" (\() -> (mousePressed_impl (javaCast object_ :: SelectionTool))) () a1 a2 a3

mousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mousePressed_super object_ a1 a2 a3 = (mousePressed_impl (javaCast object_ :: SelectionTool)) a1 a2 a3

mousePressed_impl :: SelectionTool -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mousePressed_impl this mouseEvent xPixelsPerCell yPixelsPerCell = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jio (MouseStrings.getInstance))).mOUSE_PRESSED))
        assignedValue <- (PointFactory.createXY ((jio (PointFactory.getInstance))) (jio (MouseEvent.getX mouseEvent)) (jio (MouseEvent.getY mouseEvent)))
        jset (this).startPoint (assignedValue)
        jset (this).endPoint ((jget (this).startPoint))
        pure ()


mouseReleased :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseReleased object_ a1 a2 a3 = jmethod object_ "mouseReleased" (\() -> (mouseReleased_impl (javaCast object_ :: SelectionTool))) () a1 a2 a3

mouseReleased_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseReleased_super object_ a1 a2 a3 = (mouseReleased_impl (javaCast object_ :: SelectionTool)) a1 a2 a3

mouseReleased_impl :: SelectionTool -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseReleased_impl this mouseEvent xPixelsPerCell yPixelsPerCell = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jio (MouseStrings.getInstance))).mOUSE_RELEASED))
        assignedValue <- (PointFactory.createXY ((jio (PointFactory.getInstance))) (jio (MouseEvent.getX mouseEvent)) (jio (MouseEvent.getY mouseEvent)))
        jset (this).endPoint (assignedValue)
        jset (this).active (False)
        Control.Monad.void (SelectionTool.makeSelection this)
        pure ()


mouseDragged :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseDragged object_ a1 a2 a3 = jmethod object_ "mouseDragged" (\() -> (mouseDragged_impl (javaCast object_ :: SelectionTool))) () a1 a2 a3

mouseDragged_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseDragged_super object_ a1 a2 a3 = (mouseDragged_impl (javaCast object_ :: SelectionTool)) a1 a2 a3

mouseDragged_impl :: SelectionTool -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseDragged_impl this mouseEvent xPixelsPerCell yPixelsPerCell = do
        assignedValue <- (PointFactory.createXY ((jio (PointFactory.getInstance))) (jio (MouseEvent.getX mouseEvent)) (jio (MouseEvent.getY mouseEvent)))
        jset (this).endPoint (assignedValue)
        pure ()


keyPressed :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyPressed object_ a1 = jmethod object_ "keyPressed" (\() -> (keyPressed_impl (javaCast object_ :: SelectionTool))) () a1

keyPressed_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyPressed_super object_ a1 = (keyPressed_impl (javaCast object_ :: SelectionTool)) a1

keyPressed_impl :: SelectionTool -> KeyEvent.KeyEvent -> IO (())
keyPressed_impl this keyEvent = do
        when ((jio (KeyEvent.getKeyCode keyEvent)) == (jget (keyEvent).vK_CONTROL)) $ do
            jset (this).controlIdDown (True)
        pure ()


keyReleased :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyReleased object_ a1 = jmethod object_ "keyReleased" (\() -> (keyReleased_impl (javaCast object_ :: SelectionTool))) () a1

keyReleased_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyReleased_super object_ a1 = (keyReleased_impl (javaCast object_ :: SelectionTool)) a1

keyReleased_impl :: SelectionTool -> KeyEvent.KeyEvent -> IO (())
keyReleased_impl this keyEvent = do
        when ((jio (KeyEvent.getKeyCode keyEvent)) == (jget (keyEvent).vK_CONTROL)) $ do
            jset (this).controlIdDown (False)
        pure ()


keyTyped :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyTyped object_ a1 = jmethod object_ "keyTyped" (\() -> (keyTyped_impl (javaCast object_ :: SelectionTool))) () a1

keyTyped_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyTyped_super object_ a1 = (keyTyped_impl (javaCast object_ :: SelectionTool)) a1

keyTyped_impl :: SelectionTool -> KeyEvent.KeyEvent -> IO (())
keyTyped_impl this keyEvent = do
        pure ()


-- throws Exception
duplicate :: (JavaObjectClass this_) => this_ -> IO (GraphicItemInterface.GraphicItemInterface)
duplicate object_ = jmethod object_ "duplicate" (\() -> (duplicate_impl (javaCast object_ :: SelectionTool))) ()

duplicate_super :: (JavaObjectClass this_) => this_ -> IO (GraphicItemInterface.GraphicItemInterface)
duplicate_super object_ = (duplicate_impl (javaCast object_ :: SelectionTool))

duplicate_impl :: SelectionTool -> IO (GraphicItemInterface.GraphicItemInterface)
duplicate_impl this = do
        pure (javaNull)


