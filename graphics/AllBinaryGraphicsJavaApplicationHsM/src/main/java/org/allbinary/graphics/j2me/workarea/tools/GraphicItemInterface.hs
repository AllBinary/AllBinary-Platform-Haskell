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
module GraphicItemInterface where

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
import qualified Graphics -- same package or java.lang
import qualified MouseEvent -- same package or java.lang
import qualified KeyEvent -- same package or java.lang
import qualified MutableTreeNode -- javax.swing.tree.MutableTreeNode
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified CanvasDom -- org.allbinary.graphics.j2me.workarea.canvas.CanvasDom
import qualified IntegerDimension -- org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension
import qualified Node -- org.w3c.dom.Node
-- import java.awt.*

-- Java interface: the classes that implement it have these functions
data GraphicItemInterface = GraphicItemInterface
    { header_ :: JavaHeader
    }

instance JavaNull GraphicItemInterface where
    javaNull = javaNullRecord "GraphicItemInterface"

instance JavaEquals GraphicItemInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GraphicItemInterface where
    (==) = jrecordEquals

instance JavaObjectClass GraphicItemInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GraphicItemInterface
fromHeader_ header = GraphicItemInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GraphicItemInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: GraphicItemInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: GraphicItemInterface))

getName_impl :: GraphicItemInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


setColor :: (JavaObjectClass this_) => this_ -> Color.Color -> IO (())
setColor object_ a1 = jmethod object_ "setColor" (\() -> (setColor_impl (javaCast object_ :: GraphicItemInterface))) () a1

setColor_super :: (JavaObjectClass this_) => this_ -> Color.Color -> IO (())
setColor_super object_ a1 = (setColor_impl (javaCast object_ :: GraphicItemInterface)) a1

setColor_impl :: GraphicItemInterface -> Color.Color -> IO (())
setColor_impl this color = javaAbstractMethod "setColor"


getTreeNode :: (JavaObjectClass this_) => this_ -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode object_ = jmethod object_ "getTreeNode" (\() -> (getTreeNode_impl (javaCast object_ :: GraphicItemInterface))) ()

getTreeNode_super :: (JavaObjectClass this_) => this_ -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode_super object_ = (getTreeNode_impl (javaCast object_ :: GraphicItemInterface))

getTreeNode_impl :: GraphicItemInterface -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode_impl this = javaAbstractMethod "getTreeNode"


getPointsInterface :: (JavaObjectClass this_) => this_ -> IO (Points.Points)
getPointsInterface object_ = jmethod object_ "getPointsInterface" (\() -> (getPointsInterface_impl (javaCast object_ :: GraphicItemInterface))) ()

getPointsInterface_super :: (JavaObjectClass this_) => this_ -> IO (Points.Points)
getPointsInterface_super object_ = (getPointsInterface_impl (javaCast object_ :: GraphicItemInterface))

getPointsInterface_impl :: GraphicItemInterface -> IO (Points.Points)
getPointsInterface_impl this = javaAbstractMethod "getPointsInterface"


setPointsInterface :: (JavaObjectClass this_) => this_ -> Points.Points -> IO (())
setPointsInterface object_ a1 = jmethod object_ "setPointsInterface" (\() -> (setPointsInterface_impl (javaCast object_ :: GraphicItemInterface))) () a1

setPointsInterface_super :: (JavaObjectClass this_) => this_ -> Points.Points -> IO (())
setPointsInterface_super object_ a1 = (setPointsInterface_impl (javaCast object_ :: GraphicItemInterface)) a1

setPointsInterface_impl :: GraphicItemInterface -> Points.Points -> IO (())
setPointsInterface_impl this points = javaAbstractMethod "setPointsInterface"


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: GraphicItemInterface))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: GraphicItemInterface))

isValid_impl :: GraphicItemInterface -> IO (Bool)
isValid_impl this = javaAbstractMethod "isValid"


isActive :: (JavaObjectClass this_) => this_ -> IO (Bool)
isActive object_ = jmethod object_ "isActive" (\() -> (isActive_impl (javaCast object_ :: GraphicItemInterface))) ()

isActive_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isActive_super object_ = (isActive_impl (javaCast object_ :: GraphicItemInterface))

isActive_impl :: GraphicItemInterface -> IO (Bool)
isActive_impl this = javaAbstractMethod "isActive"


deactivate :: (JavaObjectClass this_) => this_ -> IO (())
deactivate object_ = jmethod object_ "deactivate" (\() -> (deactivate_impl (javaCast object_ :: GraphicItemInterface))) ()

deactivate_super :: (JavaObjectClass this_) => this_ -> IO (())
deactivate_super object_ = (deactivate_impl (javaCast object_ :: GraphicItemInterface))

deactivate_impl :: GraphicItemInterface -> IO (())
deactivate_impl this = javaAbstractMethod "deactivate"


activate :: (JavaObjectClass this_) => this_ -> IO (())
activate object_ = jmethod object_ "activate" (\() -> (activate_impl (javaCast object_ :: GraphicItemInterface))) ()

activate_super :: (JavaObjectClass this_) => this_ -> IO (())
activate_super object_ = (activate_impl (javaCast object_ :: GraphicItemInterface))

activate_impl :: GraphicItemInterface -> IO (())
activate_impl this = javaAbstractMethod "activate"


setFulcrumPoint :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setFulcrumPoint object_ a1 = jmethod object_ "setFulcrumPoint" (\() -> (setFulcrumPoint_impl (javaCast object_ :: GraphicItemInterface))) () a1

setFulcrumPoint_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setFulcrumPoint_super object_ a1 = (setFulcrumPoint_impl (javaCast object_ :: GraphicItemInterface)) a1

setFulcrumPoint_impl :: GraphicItemInterface -> GPoint.GPoint -> IO (())
setFulcrumPoint_impl this point = javaAbstractMethod "setFulcrumPoint"


-- throws Exception
translate :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
translate object_ a1 a2 = jmethod object_ "translate" (\() -> (translate_impl (javaCast object_ :: GraphicItemInterface))) () a1 a2

translate_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
translate_super object_ a1 a2 = (translate_impl (javaCast object_ :: GraphicItemInterface)) a1 a2

translate_impl :: GraphicItemInterface -> Int -> Int -> IO (())
translate_impl this x y = javaAbstractMethod "translate"


setRotate :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setRotate object_ a1 = jmethod object_ "setRotate" (\() -> (setRotate_impl (javaCast object_ :: GraphicItemInterface))) () a1

setRotate_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setRotate_super object_ a1 = (setRotate_impl (javaCast object_ :: GraphicItemInterface)) a1

setRotate_impl :: GraphicItemInterface -> Double -> IO (())
setRotate_impl this theta = javaAbstractMethod "setRotate"


addRotate :: (JavaObjectClass this_) => this_ -> Double -> IO (())
addRotate object_ a1 = jmethod object_ "addRotate" (\() -> (addRotate_impl (javaCast object_ :: GraphicItemInterface))) () a1

addRotate_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
addRotate_super object_ a1 = (addRotate_impl (javaCast object_ :: GraphicItemInterface)) a1

addRotate_impl :: GraphicItemInterface -> Double -> IO (())
addRotate_impl this theta = javaAbstractMethod "addRotate"


setAngle :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setAngle object_ a1 = jmethod object_ "setAngle" (\() -> (setAngle_impl (javaCast object_ :: GraphicItemInterface))) () a1

setAngle_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setAngle_super object_ a1 = (setAngle_impl (javaCast object_ :: GraphicItemInterface)) a1

setAngle_impl :: GraphicItemInterface -> Double -> IO (())
setAngle_impl this angle = javaAbstractMethod "setAngle"


addAngle :: (JavaObjectClass this_) => this_ -> Double -> IO (())
addAngle object_ a1 = jmethod object_ "addAngle" (\() -> (addAngle_impl (javaCast object_ :: GraphicItemInterface))) () a1

addAngle_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
addAngle_super object_ a1 = (addAngle_impl (javaCast object_ :: GraphicItemInterface)) a1

addAngle_impl :: GraphicItemInterface -> Double -> IO (())
addAngle_impl this angle = javaAbstractMethod "addAngle"


getAngle :: (JavaObjectClass this_) => this_ -> IO (Double)
getAngle object_ = jmethod object_ "getAngle" (\() -> (getAngle_impl (javaCast object_ :: GraphicItemInterface))) ()

getAngle_super :: (JavaObjectClass this_) => this_ -> IO (Double)
getAngle_super object_ = (getAngle_impl (javaCast object_ :: GraphicItemInterface))

getAngle_impl :: GraphicItemInterface -> IO (Double)
getAngle_impl this = javaAbstractMethod "getAngle"


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Double -> IntegerDimension.IntegerDimension -> Int -> Int -> IO (())
paint object_ a1 a2 a3 a4 a5 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: GraphicItemInterface))) () a1 a2 a3 a4 a5

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Double -> IntegerDimension.IntegerDimension -> Int -> Int -> IO (())
paint_super object_ a1 a2 a3 a4 a5 = (paint_impl (javaCast object_ :: GraphicItemInterface)) a1 a2 a3 a4 a5

paint_impl :: GraphicItemInterface -> Graphics.Graphics -> Double -> IntegerDimension.IntegerDimension -> Int -> Int -> IO (())
paint_impl this g canvasAngle dimension x y = javaAbstractMethod "paint"


-- throws Exception
toDom :: (JavaObjectClass this_) => this_ -> CanvasDom.CanvasDom -> IO (Node.Node)
toDom object_ a1 = jmethod object_ "toDom" (\() -> (toDom_impl (javaCast object_ :: GraphicItemInterface))) () a1

toDom_super :: (JavaObjectClass this_) => this_ -> CanvasDom.CanvasDom -> IO (Node.Node)
toDom_super object_ a1 = (toDom_impl (javaCast object_ :: GraphicItemInterface)) a1

toDom_impl :: GraphicItemInterface -> CanvasDom.CanvasDom -> IO (Node.Node)
toDom_impl this canvasDom = javaAbstractMethod "toDom"


removePoint :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
removePoint object_ = jmethod object_ "removePoint" (\() -> (removePoint_impl (javaCast object_ :: GraphicItemInterface))) ()

removePoint_super :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
removePoint_super object_ = (removePoint_impl (javaCast object_ :: GraphicItemInterface))

removePoint_impl :: GraphicItemInterface -> IO (GPoint.GPoint)
removePoint_impl this = javaAbstractMethod "removePoint"


addPoint :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
addPoint object_ a1 = jmethod object_ "addPoint" (\() -> (addPoint_impl (javaCast object_ :: GraphicItemInterface))) () a1

addPoint_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
addPoint_super object_ a1 = (addPoint_impl (javaCast object_ :: GraphicItemInterface)) a1

addPoint_impl :: GraphicItemInterface -> GPoint.GPoint -> IO (())
addPoint_impl this point = javaAbstractMethod "addPoint"


mouseClicked :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseClicked object_ a1 a2 a3 = jmethod object_ "mouseClicked" (\() -> (mouseClicked_impl (javaCast object_ :: GraphicItemInterface))) () a1 a2 a3

mouseClicked_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseClicked_super object_ a1 a2 a3 = (mouseClicked_impl (javaCast object_ :: GraphicItemInterface)) a1 a2 a3

mouseClicked_impl :: GraphicItemInterface -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseClicked_impl this mouseEvent xPixelsPerCell yPixelsPerCell = javaAbstractMethod "mouseClicked"


mouseEntered :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseEntered object_ a1 = jmethod object_ "mouseEntered" (\() -> (mouseEntered_impl (javaCast object_ :: GraphicItemInterface))) () a1

mouseEntered_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseEntered_super object_ a1 = (mouseEntered_impl (javaCast object_ :: GraphicItemInterface)) a1

mouseEntered_impl :: GraphicItemInterface -> MouseEvent.MouseEvent -> IO (())
mouseEntered_impl this mouseEvent = javaAbstractMethod "mouseEntered"


mouseExited :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseExited object_ a1 = jmethod object_ "mouseExited" (\() -> (mouseExited_impl (javaCast object_ :: GraphicItemInterface))) () a1

mouseExited_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseExited_super object_ a1 = (mouseExited_impl (javaCast object_ :: GraphicItemInterface)) a1

mouseExited_impl :: GraphicItemInterface -> MouseEvent.MouseEvent -> IO (())
mouseExited_impl this mouseEvent = javaAbstractMethod "mouseExited"


mousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mousePressed object_ a1 a2 a3 = jmethod object_ "mousePressed" (\() -> (mousePressed_impl (javaCast object_ :: GraphicItemInterface))) () a1 a2 a3

mousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mousePressed_super object_ a1 a2 a3 = (mousePressed_impl (javaCast object_ :: GraphicItemInterface)) a1 a2 a3

mousePressed_impl :: GraphicItemInterface -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mousePressed_impl this mouseEvent xPixelsPerCell yPixelsPerCell = javaAbstractMethod "mousePressed"


mouseReleased :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseReleased object_ a1 a2 a3 = jmethod object_ "mouseReleased" (\() -> (mouseReleased_impl (javaCast object_ :: GraphicItemInterface))) () a1 a2 a3

mouseReleased_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseReleased_super object_ a1 a2 a3 = (mouseReleased_impl (javaCast object_ :: GraphicItemInterface)) a1 a2 a3

mouseReleased_impl :: GraphicItemInterface -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseReleased_impl this mouseEvent xPixelsPerCell yPixelsPerCell = javaAbstractMethod "mouseReleased"


mouseDragged :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseDragged object_ a1 a2 a3 = jmethod object_ "mouseDragged" (\() -> (mouseDragged_impl (javaCast object_ :: GraphicItemInterface))) () a1 a2 a3

mouseDragged_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseDragged_super object_ a1 a2 a3 = (mouseDragged_impl (javaCast object_ :: GraphicItemInterface)) a1 a2 a3

mouseDragged_impl :: GraphicItemInterface -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseDragged_impl this mouseEvent xPixelsPerCell yPixelsPerCell = javaAbstractMethod "mouseDragged"


mouseMoved :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseMoved object_ a1 a2 a3 = jmethod object_ "mouseMoved" (\() -> (mouseMoved_impl (javaCast object_ :: GraphicItemInterface))) () a1 a2 a3

mouseMoved_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseMoved_super object_ a1 a2 a3 = (mouseMoved_impl (javaCast object_ :: GraphicItemInterface)) a1 a2 a3

mouseMoved_impl :: GraphicItemInterface -> MouseEvent.MouseEvent -> Int -> Int -> IO (())
mouseMoved_impl this mouseEvent xPixelsPerCell yPixelsPerCell = javaAbstractMethod "mouseMoved"


keyPressed :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyPressed object_ a1 = jmethod object_ "keyPressed" (\() -> (keyPressed_impl (javaCast object_ :: GraphicItemInterface))) () a1

keyPressed_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyPressed_super object_ a1 = (keyPressed_impl (javaCast object_ :: GraphicItemInterface)) a1

keyPressed_impl :: GraphicItemInterface -> KeyEvent.KeyEvent -> IO (())
keyPressed_impl this keyEvent = javaAbstractMethod "keyPressed"


keyReleased :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyReleased object_ a1 = jmethod object_ "keyReleased" (\() -> (keyReleased_impl (javaCast object_ :: GraphicItemInterface))) () a1

keyReleased_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyReleased_super object_ a1 = (keyReleased_impl (javaCast object_ :: GraphicItemInterface)) a1

keyReleased_impl :: GraphicItemInterface -> KeyEvent.KeyEvent -> IO (())
keyReleased_impl this keyEvent = javaAbstractMethod "keyReleased"


keyTyped :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyTyped object_ a1 = jmethod object_ "keyTyped" (\() -> (keyTyped_impl (javaCast object_ :: GraphicItemInterface))) () a1

keyTyped_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyTyped_super object_ a1 = (keyTyped_impl (javaCast object_ :: GraphicItemInterface)) a1

keyTyped_impl :: GraphicItemInterface -> KeyEvent.KeyEvent -> IO (())
keyTyped_impl this keyEvent = javaAbstractMethod "keyTyped"


-- throws Exception
duplicate :: (JavaObjectClass this_) => this_ -> IO (GraphicItemInterface)
duplicate object_ = jmethod object_ "duplicate" (\() -> (duplicate_impl (javaCast object_ :: GraphicItemInterface))) ()

duplicate_super :: (JavaObjectClass this_) => this_ -> IO (GraphicItemInterface)
duplicate_super object_ = (duplicate_impl (javaCast object_ :: GraphicItemInterface))

duplicate_impl :: GraphicItemInterface -> IO (GraphicItemInterface)
duplicate_impl this = javaAbstractMethod "duplicate"


