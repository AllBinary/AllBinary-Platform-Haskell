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
module CanvasJPanel (module CanvasJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initMyComponents, initMyComponents_super, initMyComponents_impl, getTreeNode, getTreeNode_super, getTreeNode_impl, initComponents, initComponents_super, initComponents_impl, setCanvasSize, setCanvasSize_super, setCanvasSize_impl, setGrid, setGrid_super, setGrid_impl, setGrid, setGrid_super, setGrid_impl, setDefaultGrid, setDefaultGrid_super, setDefaultGrid_impl, getAngle, getAngle_super, getAngle_impl, setAngle, setAngle_super, setAngle_impl, addAngle, addAngle_super, addAngle_impl, explodeAll, explodeAll_super, explodeAll_impl, explode, explode_super, explode_impl, mirror, mirror_super, mirror_impl, center, center_super, center_impl, setNewTool, setNewTool_super, setNewTool_impl, duplicateGraphicItem, duplicateGraphicItem_super, duplicateGraphicItem_impl, duplicateGraphicItemHashMap, duplicateGraphicItemHashMap_super, duplicateGraphicItemHashMap_impl, getGraphicItemHashMap, getGraphicItemHashMap_super, getGraphicItemHashMap_impl, getXPixelsPerWorkAreaPixel, getXPixelsPerWorkAreaPixel_super, getXPixelsPerWorkAreaPixel_impl, getYPixelsPerWorkAreaPixel, getYPixelsPerWorkAreaPixel_super, getYPixelsPerWorkAreaPixel_impl, getSelectedTool, getSelectedTool_super, getSelectedTool_impl, drawItems, drawItems_super, drawItems_impl, drawGrid, drawGrid_super, drawGrid_impl, paint, paint_super, paint_impl, repaint, repaint_super, repaint_impl, toDom, toDom_super, toDom_impl, changed, changed_super, changed_impl, mouseClicked, mouseClicked_super, mouseClicked_impl, mouseEntered, mouseEntered_super, mouseEntered_impl, mouseExited, mouseExited_super, mouseExited_impl, mousePressed, mousePressed_super, mousePressed_impl, mouseReleased, mouseReleased_super, mouseReleased_impl, mouseDragged, mouseDragged_super, mouseDragged_impl, mouseMoved, mouseMoved_super, mouseMoved_impl, logMouseEvent, logMouseEvent_super, logMouseEvent_impl, keyPressed, keyPressed_super, keyPressed_impl, keyReleased, keyReleased_super, keyReleased_impl, keyTyped, keyTyped_super, keyTyped_impl, delete, delete_super, delete_impl, deselect, deselect_super, deselect_impl, highlight, highlight_super, highlight_impl, duplicate, duplicate_super, duplicate_impl, duplicate, duplicate_super, duplicate_impl, rotate, rotate_super, rotate_impl, getCanvasDimension, getCanvasDimension_super, getCanvasDimension_impl, setCanvasDimension, setCanvasDimension_super, setCanvasDimension_impl, getGrid, getGrid_super, getGrid_impl, logUtil, frame, guiLog, gameInputStrings, selectedTool, graphicItemHashMap, canvasDimension, angle, canvasTreeNode, frameLabel, workAreaJTreeJPanel, gridColor, backgroundColor, grid)
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
import qualified CanvasTreeLabel -- same package or java.lang
import qualified Color -- same package or java.lang
import qualified Grid -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified CanvasDom -- same package or java.lang
import qualified GridLayout -- same package or java.lang
import qualified Graphics -- same package or java.lang
import qualified MouseEvent -- same package or java.lang
import qualified KeyEvent -- same package or java.lang
import qualified BasicColor -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DefaultMutableTreeNode -- javax.swing.tree.DefaultMutableTreeNode
import qualified MutableTreeNode -- javax.swing.tree.MutableTreeNode
import qualified VectorExplosionGenerator -- org.allbinary.animation.VectorExplosionGenerator
import qualified VectorMirrorGenerator -- org.allbinary.animation.VectorMirrorGenerator
import qualified VectorCenterGenerator -- org.allbinary.animation.vector.VectorCenterGenerator
import qualified GameInputStrings -- org.allbinary.game.input.GameInputStrings
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified GraphicsException -- org.allbinary.graphics.j2me.GraphicsException
import qualified StatusFactory -- org.allbinary.graphics.j2me.StatusFactory
import qualified WorkAreaJTreeJPanel -- org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel
import qualified GraphicItemFactory -- org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory
import qualified GraphicItemInterface -- org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface
import qualified LinesGraphicItem -- org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem
import qualified MouseStrings -- org.allbinary.graphics.j2me.workarea.tools.MouseStrings
import qualified Points -- org.allbinary.graphics.j2me.workarea.tools.Points
import qualified ToolFactory -- org.allbinary.graphics.j2me.workarea.tools.ToolFactory
import qualified MyGraphicItemEvent -- org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent
import qualified MyGraphicItemEventListener -- org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener
import qualified MyGraphicItemEventService -- org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService
import qualified RandomRotationFactory -- org.allbinary.graphics.pipeline.RandomRotationFactory
import qualified LOGGING -- org.allbinary.log.LOGGING
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified GuiLog -- org.allbinary.logic.communication.log.GuiLog
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified PositionStrings -- org.allbinary.math.PositionStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified Node -- org.w3c.dom.Node
-- import java.awt.*
import qualified JPanel
import qualified MouseListener
import qualified MouseMotionListener
import qualified KeyListener

-- implements MouseListener
-- implements MouseMotionListener
-- implements KeyListener
-- implements MyGraphicItemEventListener
data CanvasJPanel = CanvasJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , guiLog :: IORef (GuiLog.GuiLog)
    , gameInputStrings :: IORef (GameInputStrings.GameInputStrings)
    , selectedTool :: IORef (GraphicItemInterface.GraphicItemInterface)
    , graphicItemHashMap :: IORef (HashMap.HashMap)
    , canvasDimension :: IORef (IntegerDimension.IntegerDimension)
    , angle :: IORef (Double)
    , canvasTreeNode :: IORef (DefaultMutableTreeNode.DefaultMutableTreeNode)
    , frameLabel :: IORef (CanvasTreeLabel.CanvasTreeLabel)
    , workAreaJTreeJPanel :: IORef (WorkAreaJTreeJPanel.WorkAreaJTreeJPanel)
    , grid :: IORef (Grid.Grid)
    }

instance JavaNull CanvasJPanel where
    javaNull = javaNullRecord "CanvasJPanel"

instance JavaEquals CanvasJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CanvasJPanel where
    (==) = jrecordEquals

instance JavaObjectClass CanvasJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE frame #-}
frame = unsafePerformIO (newIORef (0))

{-# NOINLINE gridColor #-}
gridColor = unsafePerformIO ((Color.new_1 (jio (BasicColor.intValue ((jget ((jio (BasicColorFactory.getInstance))).wHITE))))))

{-# NOINLINE backgroundColor #-}
backgroundColor = unsafePerformIO ((Color.new_1 (jio (BasicColor.intValue ((jget ((jio (BasicColorFactory.getInstance))).cLEAR_COLOR))))))

newRecord_ :: IO CanvasJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    guiLog <- newIORef javaNull
    gameInputStrings <- newIORef javaNull
    selectedTool <- newIORef javaNull
    graphicItemHashMap <- newIORef javaNull
    canvasDimension <- newIORef javaNull
    angle <- newIORef 0.0
    canvasTreeNode <- newIORef javaNull
    frameLabel <- newIORef javaNull
    workAreaJTreeJPanel <- newIORef javaNull
    grid <- newIORef javaNull
    let this = CanvasJPanel header_ base logUtil guiLog gameInputStrings selectedTool graphicItemHashMap canvasDimension angle canvasTreeNode frameLabel workAreaJTreeJPanel grid
    jregisterLevel header_ this
    MouseListener.registerInterface_ header_
    MouseMotionListener.registerInterface_ header_
    KeyListener.registerInterface_ header_
    MyGraphicItemEventListener.registerInterface_ header_
    jregisterMethod header_ "initMyComponents" (\() -> initMyComponents_impl this)
    jregisterMethod header_ "getTreeNode" (\() -> getTreeNode_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "setCanvasSize" (\() -> setCanvasSize_impl this)
    jregisterMethod header_ "setGrid" (\() -> setGrid_impl this)
    jregisterMethod header_ "setGrid" (\() -> setGrid_impl this)
    jregisterMethod header_ "setDefaultGrid" (\() -> setDefaultGrid_impl this)
    jregisterMethod header_ "getAngle" (\() -> getAngle_impl this)
    jregisterMethod header_ "setAngle" (\() -> setAngle_impl this)
    jregisterMethod header_ "addAngle" (\() -> addAngle_impl this)
    jregisterMethod header_ "explodeAll" (\() -> explodeAll_impl this)
    jregisterMethod header_ "explode" (\() -> explode_impl this)
    jregisterMethod header_ "mirror" (\() -> mirror_impl this)
    jregisterMethod header_ "center" (\() -> center_impl this)
    jregisterMethod header_ "setNewTool" (\() -> setNewTool_impl this)
    jregisterMethod header_ "duplicateGraphicItem" (\() -> duplicateGraphicItem_impl this)
    jregisterMethod header_ "duplicateGraphicItemHashMap" (\() -> duplicateGraphicItemHashMap_impl this)
    jregisterMethod header_ "getGraphicItemHashMap" (\() -> getGraphicItemHashMap_impl this)
    jregisterMethod header_ "getXPixelsPerWorkAreaPixel" (\() -> getXPixelsPerWorkAreaPixel_impl this)
    jregisterMethod header_ "getYPixelsPerWorkAreaPixel" (\() -> getYPixelsPerWorkAreaPixel_impl this)
    jregisterMethod header_ "getSelectedTool" (\() -> getSelectedTool_impl this)
    jregisterMethod header_ "drawItems" (\() -> drawItems_impl this)
    jregisterMethod header_ "drawGrid" (\() -> drawGrid_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "repaint" (\() -> repaint_impl this)
    jregisterMethod header_ "toDom" (\() -> toDom_impl this)
    jregisterMethod header_ "changed" (\() -> changed_impl this)
    jregisterMethod header_ "mouseClicked" (\() -> mouseClicked_impl this)
    jregisterMethod header_ "mouseEntered" (\() -> mouseEntered_impl this)
    jregisterMethod header_ "mouseExited" (\() -> mouseExited_impl this)
    jregisterMethod header_ "mousePressed" (\() -> mousePressed_impl this)
    jregisterMethod header_ "mouseReleased" (\() -> mouseReleased_impl this)
    jregisterMethod header_ "mouseDragged" (\() -> mouseDragged_impl this)
    jregisterMethod header_ "mouseMoved" (\() -> mouseMoved_impl this)
    jregisterMethod header_ "logMouseEvent" (\() -> logMouseEvent_impl this)
    jregisterMethod header_ "keyPressed" (\() -> keyPressed_impl this)
    jregisterMethod header_ "keyReleased" (\() -> keyReleased_impl this)
    jregisterMethod header_ "keyTyped" (\() -> keyTyped_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "deselect" (\() -> deselect_impl this)
    jregisterMethod header_ "highlight" (\() -> highlight_impl this)
    jregisterMethod header_ "duplicate" (\() -> duplicate_impl this)
    jregisterMethod header_ "duplicate" (\() -> duplicate_impl this)
    jregisterMethod header_ "rotate" (\() -> rotate_impl this)
    jregisterMethod header_ "getCanvasDimension" (\() -> getCanvasDimension_impl this)
    jregisterMethod header_ "setCanvasDimension" (\() -> setCanvasDimension_impl this)
    jregisterMethod header_ "getGrid" (\() -> getGrid_impl this)
    pure this

initFields_ :: CanvasJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.guiLog =<< (GuiLog.getInstance)
    jset this.gameInputStrings =<< (GameInputStrings.getInstance)
    jset this.selectedTool (javaNull)
    jset this.graphicItemHashMap (javaNull)
    jset this.canvasDimension (javaNull)
    jset this.angle (0.0)
    jset this.canvasTreeNode (javaNull)
    jset this.frameLabel (javaNull)
    jset this.workAreaJTreeJPanel (javaNull)
    jset this.grid (javaNull)
    pure ()

new_4 :: WorkAreaJTreeJPanel.WorkAreaJTreeJPanel -> Dimension.Dimension -> Int -> Int -> IO CanvasJPanel
new_4 workAreaJTreeJPanel dimension x y = do
    this <- newRecord_
    init_4 this workAreaJTreeJPanel dimension x y
    pure this

init_4 :: CanvasJPanel -> WorkAreaJTreeJPanel.WorkAreaJTreeJPanel -> Dimension.Dimension -> Int -> Int -> IO ()
init_4 this workAreaJTreeJPanel dimension x y = do
        JPanel.init_ this.base
        initFields_ this
        assignedValue <- (Grid.new_)
        jset (this).grid (assignedValue)
        handle (\(e :: JavaException) -> do
            when (jio (LOGGING.contains (LOGGING.gRAPHICSCREATION))) $ do
                Control.Monad.void (GuiLog.put ((jget (this).guiLog)) "Constructor Error" this "contructor" e)
            ) $ do
            jset (this).workAreaJTreeJPanel (workAreaJTreeJPanel)
            Control.Monad.void (CanvasJPanel.initComponents this)
            Control.Monad.void (CanvasJPanel.initMyComponents this)
            Control.Monad.void (JPanel.setSize this dimension)
            Control.Monad.void (CanvasJPanel.setCanvasSize this x y)
        pure ()

new_3 :: WorkAreaJTreeJPanel.WorkAreaJTreeJPanel -> Dimension.Dimension -> CanvasDom.CanvasDom -> IO CanvasJPanel
new_3 workAreaJTreeJPanel dimension canvasDom = do
    this <- newRecord_
    init_3 this workAreaJTreeJPanel dimension canvasDom
    pure this

init_3 :: CanvasJPanel -> WorkAreaJTreeJPanel.WorkAreaJTreeJPanel -> Dimension.Dimension -> CanvasDom.CanvasDom -> IO ()
init_3 this workAreaJTreeJPanel dimension canvasDom = do
        JPanel.init_ this.base
        initFields_ this
        assignedValue <- (Grid.new_1 (jio (CanvasDom.getGrid canvasDom)))
        jset (this).grid (assignedValue)
        handle (\(e :: JavaException) -> do
            when (jio (LOGGING.contains (LOGGING.gRAPHICSCREATION))) $ do
                Control.Monad.void (GuiLog.put ((jget (this).guiLog)) "Constructor Error" this "contructor" e)
            ) $ do
            jset (this).workAreaJTreeJPanel (workAreaJTreeJPanel)
            Control.Monad.void (CanvasJPanel.initComponents this)
            Control.Monad.void (CanvasJPanel.initMyComponents this)
            Control.Monad.void (JPanel.setSize this dimension)
            Control.Monad.void (CanvasJPanel.setCanvasSize this (jio (IntegerDimension.getWidth ((jio (CanvasDom.getDimension canvasDom))))) (jio (IntegerDimension.getHeight ((jio (CanvasDom.getDimension canvasDom))))))
            assignedValue <- (CanvasDom.getGraphicItemHashMap canvasDom)
            jset (this).graphicItemHashMap (assignedValue)
            graphicItemArray <- (HashMap.toArray ((jio (HashMap.keySet ((jget (this).graphicItemHashMap))))))
            let size = (jlength graphicItemArray)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let graphicItemTreeNode = (javaCast (jindex graphicItemArray (index)) :: MutableTreeNode.MutableTreeNode)
                Control.Monad.void (DefaultMutableTreeNode.add ((jget (this).canvasTreeNode)) graphicItemTreeNode)
            Control.Monad.void (CanvasJPanel.repaint this)
            Control.Monad.void (CanvasJPanel.setAngle this (jio (CanvasDom.getAngle canvasDom)))
            Control.Monad.void (WorkAreaJTreeJPanel.updateTree ((jget (this).workAreaJTreeJPanel)))
            Control.Monad.void (WorkAreaJTreeJPanel.expand ((jget (this).workAreaJTreeJPanel)))
            Control.Monad.void (WorkAreaJTreeJPanel.repaint ((jget (this).workAreaJTreeJPanel)))
        pure ()


-- throws Exception
initMyComponents :: (JavaObjectClass this_) => this_ -> IO (())
initMyComponents object_ = jmethod object_ "initMyComponents" (\() -> (initMyComponents_impl (javaCast object_ :: CanvasJPanel))) ()

initMyComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initMyComponents_super object_ = (initMyComponents_impl (javaCast object_ :: CanvasJPanel))

initMyComponents_impl :: CanvasJPanel -> IO (())
initMyComponents_impl this = do
        assignedValue <- (CanvasTreeLabel.new_1 ("FrameLabel" ++ (javaToString (Prelude.fromIntegral ((jget CanvasJPanel.frame)) :: Int))))
        jset (this).frameLabel (assignedValue)
        assignedValue <- (DefaultMutableTreeNode.new_1 (jget (this).frameLabel))
        jset (this).canvasTreeNode (assignedValue)
        jset CanvasJPanel.frame ((jget CanvasJPanel.frame) + 1)
        Control.Monad.void (WorkAreaJTreeJPanel.add ((jget (this).workAreaJTreeJPanel)) (jio (CanvasJPanel.getTreeNode this)))
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).graphicItemHashMap (assignedValue)
        assignedValue <- (PointFactory.createXY ((jio (PointFactory.getInstance))) 0 0)
        jset ((jget (this).grid)).grid (assignedValue)
        Control.Monad.void (CanvasJPanel.setCanvasDimension this (jio (IntegerDimension.new_2 0 0)))
        jset (this).selectedTool (javaNull)
        Control.Monad.void (JPanel.addKeyListener this this)
        Control.Monad.void (JPanel.addMouseListener this this)
        Control.Monad.void (JPanel.addMouseMotionListener this this)
        Control.Monad.void (MyGraphicItemEventService.addListener this)
        pure ()


getTreeNode :: (JavaObjectClass this_) => this_ -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode object_ = jmethod object_ "getTreeNode" (\() -> (getTreeNode_impl (javaCast object_ :: CanvasJPanel))) ()

getTreeNode_super :: (JavaObjectClass this_) => this_ -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode_super object_ = (getTreeNode_impl (javaCast object_ :: CanvasJPanel))

getTreeNode_impl :: CanvasJPanel -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode_impl this = do
        pure ((javaCast (jget (this).canvasTreeNode) :: MutableTreeNode.MutableTreeNode))


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: CanvasJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: CanvasJPanel))

initComponents_impl :: CanvasJPanel -> IO (())
initComponents_impl this = do
        Control.Monad.void (JPanel.setLayout this (jio (GridLayout.new_2 1 1)))
        pure ()


-- throws Exception
setCanvasSize :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setCanvasSize object_ a1 a2 = jmethod object_ "setCanvasSize" (\() -> (setCanvasSize_impl (javaCast object_ :: CanvasJPanel))) () a1 a2

setCanvasSize_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setCanvasSize_super object_ a1 a2 = (setCanvasSize_impl (javaCast object_ :: CanvasJPanel)) a1 a2

setCanvasSize_impl :: CanvasJPanel -> Int -> Int -> IO (())
setCanvasSize_impl this x y = do
        jset ((jget (this).grid)).isGridPossible (True)
        when (x <= 0) $ do
            jset ((jget (this).grid)).isGridPossible (False)
            javaThrow ((JavaException "GraphicsException" ("X Size Error: " ++ javaToString x) this "setWorkAreaSize"))
        when (y <= 0) $ do
            jset ((jget (this).grid)).isGridPossible (False)
            javaThrow ((JavaException "GraphicsException" ("Y Size Error: " ++ javaToString y) this "setWorkAreaSize"))
        when (x > (jio (JPanel.getWidth this))) $ do
            jset ((jget (this).grid)).isGridPossible (False)
        when (y > (jio (JPanel.getHeight this))) $ do
            jset ((jget (this).grid)).isGridPossible (False)
        Control.Monad.void (CanvasJPanel.setCanvasDimension this (jio (IntegerDimension.new_2 x y)))
        jset ((jget (this).grid)).isChanged (True)
        pure ()


setGrid :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setGrid object_ a1 = jmethod object_ "setGrid" (\() -> (setGrid_impl (javaCast object_ :: CanvasJPanel))) () a1

setGrid_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setGrid_super object_ a1 = (setGrid_impl (javaCast object_ :: CanvasJPanel)) a1

setGrid_impl :: CanvasJPanel -> GPoint.GPoint -> IO (())
setGrid_impl this point = do
        Control.Monad.void (CanvasJPanel.setGrid this (jio (GPoint.getX point)) (jio (GPoint.getY point)))
        pure ()


-- Java overload of setGrid with a different parameter count: give it a different name
setGrid :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setGrid object_ a1 a2 = jmethod object_ "setGrid" (\() -> (setGrid_impl (javaCast object_ :: CanvasJPanel))) () a1 a2

setGrid_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setGrid_super object_ a1 a2 = (setGrid_impl (javaCast object_ :: CanvasJPanel)) a1 a2

setGrid_impl :: CanvasJPanel -> Int -> Int -> IO (())
setGrid_impl this xSize ySize = do
        handle (\(e :: JavaException) -> do
            pure ()
            ) $ do
            when ((xSize >= ((jio (IntegerDimension.getWidth ((jio (CanvasJPanel.getCanvasDimension this))))) `quot` 2)) || (xSize < 1)) $ do
                javaThrow ((JavaException "GraphicsException" ((("X Size Error: " ++ javaToString xSize) ++ " WorkArea X: ") ++ javaToString (jio (IntegerDimension.getWidth ((jio (CanvasJPanel.getCanvasDimension this)))))) this "setGrid"))
            when ((ySize >= ((jio (IntegerDimension.getHeight ((jio (CanvasJPanel.getCanvasDimension this))))) `quot` 2)) || (ySize < 1)) $ do
                javaThrow ((JavaException "GraphicsException" ((("Y Size Error" ++ javaToString ySize) ++ " WorkArea Y: ") ++ javaToString (jio (IntegerDimension.getHeight ((jio (CanvasJPanel.getCanvasDimension this)))))) this "setGrid"))
            assignedValue <- (PointFactory.createXY ((jio (PointFactory.getInstance))) xSize ySize)
            jset ((jget (this).grid)).grid (assignedValue)
            jset ((jget (this).grid)).isChanged (True)
        pure ()


-- throws Exception
setDefaultGrid :: (JavaObjectClass this_) => this_ -> IO (())
setDefaultGrid object_ = jmethod object_ "setDefaultGrid" (\() -> (setDefaultGrid_impl (javaCast object_ :: CanvasJPanel))) ()

setDefaultGrid_super :: (JavaObjectClass this_) => this_ -> IO (())
setDefaultGrid_super object_ = (setDefaultGrid_impl (javaCast object_ :: CanvasJPanel))

setDefaultGrid_impl :: CanvasJPanel -> IO (())
setDefaultGrid_impl this = do
        let xPixelsPerWorkAreaPixel = ((jio (JPanel.getWidth this)) / (jio (IntegerDimension.getWidth ((jio (CanvasJPanel.getCanvasDimension this))))))
        let yPixelsPerWorkAreaPixel = ((jio (JPanel.getHeight this)) / (jio (IntegerDimension.getHeight ((jio (CanvasJPanel.getCanvasDimension this))))))
        Control.Monad.void (CanvasJPanel.setGrid this 1 1)
        jset ((jget (this).grid)).isChanged (True)
        pure ()


getAngle :: (JavaObjectClass this_) => this_ -> IO (Double)
getAngle object_ = jmethod object_ "getAngle" (\() -> (getAngle_impl (javaCast object_ :: CanvasJPanel))) ()

getAngle_super :: (JavaObjectClass this_) => this_ -> IO (Double)
getAngle_super object_ = (getAngle_impl (javaCast object_ :: CanvasJPanel))

getAngle_impl :: CanvasJPanel -> IO (Double)
getAngle_impl this = do
        pure ((jget (this).angle))


setAngle :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setAngle object_ a1 = jmethod object_ "setAngle" (\() -> (setAngle_impl (javaCast object_ :: CanvasJPanel))) () a1

setAngle_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setAngle_super object_ a1 = (setAngle_impl (javaCast object_ :: CanvasJPanel)) a1

setAngle_impl :: CanvasJPanel -> Double -> IO (())
setAngle_impl this angle = do
        jset (this).angle (angle)
        pure ()


addAngle :: (JavaObjectClass this_) => this_ -> Double -> IO (())
addAngle object_ a1 = jmethod object_ "addAngle" (\() -> (addAngle_impl (javaCast object_ :: CanvasJPanel))) () a1

addAngle_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
addAngle_super object_ a1 = (addAngle_impl (javaCast object_ :: CanvasJPanel)) a1

addAngle_impl :: CanvasJPanel -> Double -> IO (())
addAngle_impl this angle = do
        Control.Monad.void (CanvasJPanel.setAngle this ((jget (this).angle) + angle))
        pure ()


explodeAll :: (JavaObjectClass this_) => this_ -> IO (())
explodeAll object_ = jmethod object_ "explodeAll" (\() -> (explodeAll_impl (javaCast object_ :: CanvasJPanel))) ()

explodeAll_super :: (JavaObjectClass this_) => this_ -> IO (())
explodeAll_super object_ = (explodeAll_impl (javaCast object_ :: CanvasJPanel))

explodeAll_impl :: CanvasJPanel -> IO (())
explodeAll_impl this = do
        newPoints <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        graphicItemArray <- (HashMap.toArray ((jio (HashMap.keySet ((jio (CanvasJPanel.getGraphicItemHashMap this)))))))
        let size = (jlength graphicItemArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let graphicItemNode = (javaCast (jindex graphicItemArray (index)) :: MutableTreeNode.MutableTreeNode)
            let graphicItem = (javaCast (jio (HashMap.get ((jio (CanvasJPanel.getGraphicItemHashMap this))) graphicItemNode)) :: GraphicItemInterface.GraphicItemInterface)
            when ((jio (GraphicItemInterface.getName graphicItem)) == (jio (LinesGraphicItem.getStaticName))) $ do
                fix $ \loop -> when ((jio (GraphicItemInterface.getSize ((jio (GraphicItemInterface.getPointsInterface graphicItem))))) > 2) $ javaIteration (loop) $ do
                    newGraphicItem <- (fmap (\value_ -> javaCast value_ :: GraphicItemInterface.GraphicItemInterface) (GraphicItemFactory.getInstance ((jio (GraphicItemFactory.getInstance ((jio (GraphicItemFactory.getInstance))) (jio (GraphicItemInterface.getName graphicItem))))) this))
                    pointOne <- (GPoint.getInstance (jio (GraphicItemInterface.removePoint graphicItem)))
                    pointTwo <- (GPoint.getInstance (jio (GraphicItemInterface.removePoint graphicItem)))
                    when ((pointOne /= javaNull) && (pointTwo /= javaNull)) $ do
                        Control.Monad.void (GraphicItemInterface.addPoint newGraphicItem pointOne)
                        Control.Monad.void (GraphicItemInterface.addPoint newGraphicItem pointTwo)
                    Control.Monad.void (BasicArrayList.add newPoints newGraphicItem)
        size2 <- (BasicArrayList.size newPoints)
        forM_ [0 .. size2 - 1] $ \index -> javaIteration (pure ()) $ do
            let newGraphicItem = (javaCast (jio (BasicArrayList.get newPoints index)) :: GraphicItemInterface.GraphicItemInterface)
            Control.Monad.void (DefaultMutableTreeNode.add ((jget (this).canvasTreeNode)) (jio (GraphicItemInterface.getTreeNode newGraphicItem)))
            Control.Monad.void (HashMap.put ((jio (CanvasJPanel.getGraphicItemHashMap this))) (jio (GraphicItemInterface.getTreeNode newGraphicItem)) newGraphicItem)
        Control.Monad.void (WorkAreaJTreeJPanel.updateTree ((jget (this).workAreaJTreeJPanel)))
        Control.Monad.void (WorkAreaJTreeJPanel.expand ((jget (this).workAreaJTreeJPanel)))
        Control.Monad.void (WorkAreaJTreeJPanel.repaint ((jget (this).workAreaJTreeJPanel)))
        pure ()


-- throws Exception
explode :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
explode object_ a1 a2 = jmethod object_ "explode" (\() -> (explode_impl (javaCast object_ :: CanvasJPanel))) () a1 a2

explode_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
explode_super object_ a1 a2 = (explode_impl (javaCast object_ :: CanvasJPanel)) a1 a2

explode_impl :: CanvasJPanel -> Int -> Int -> IO (())
explode_impl this howMuch explosionType = do
        graphicItemArray <- (HashMap.toArray ((jio (HashMap.keySet ((jio (CanvasJPanel.getGraphicItemHashMap this)))))))
        let size = (jlength graphicItemArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let item = (javaCast (jio (HashMap.get ((jio (CanvasJPanel.getGraphicItemHashMap this))) (jindex graphicItemArray (index)))) :: GraphicItemInterface.GraphicItemInterface)
            basicArrayList <- (VectorExplosionGenerator.createList ((jio (VectorExplosionGenerator.getInstance))) (jio (GraphicItemInterface.getPoints ((jio (GraphicItemInterface.getPointsInterface item))))) howMuch (jget ((jio (VectorExplosionGenerator.getInstance))).rANDOM))
            newPoints <- (Points.new_)
            Control.Monad.void (Points.addPoints newPoints basicArrayList)
            Control.Monad.void (GraphicItemInterface.setPointsInterface item newPoints)
            angleDelta <- (RandomRotationFactory.getNextRandomAngle ((jio (RandomRotationFactory.getInstance))) howMuch)
            Control.Monad.void (GraphicItemInterface.setAngle item angleDelta)
        Control.Monad.void (CanvasJPanel.repaint this)
        pure ()


-- throws Exception
mirror :: (JavaObjectClass this_) => this_ -> IO (())
mirror object_ = jmethod object_ "mirror" (\() -> (mirror_impl (javaCast object_ :: CanvasJPanel))) ()

mirror_super :: (JavaObjectClass this_) => this_ -> IO (())
mirror_super object_ = (mirror_impl (javaCast object_ :: CanvasJPanel))

mirror_impl :: CanvasJPanel -> IO (())
mirror_impl this = do
        width <- (IntegerDimension.getWidth ((jio (CanvasJPanel.getCanvasDimension this))))
        graphicItemArray <- (HashMap.toArray ((jio (HashMap.keySet ((jio (CanvasJPanel.getGraphicItemHashMap this)))))))
        let size = (jlength graphicItemArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let item = (javaCast (jio (HashMap.get ((jio (CanvasJPanel.getGraphicItemHashMap this))) (jindex graphicItemArray (index)))) :: GraphicItemInterface.GraphicItemInterface)
            basicArrayList <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (VectorMirrorGenerator.getInstance ((jio (VectorMirrorGenerator.getInstance))) (jio (GraphicItemInterface.getPoints ((jio (GraphicItemInterface.getPointsInterface item))))) width))
            newPoints <- (Points.new_)
            Control.Monad.void (Points.addPoints newPoints basicArrayList)
            Control.Monad.void (GraphicItemInterface.setPointsInterface item newPoints)
        Control.Monad.void (CanvasJPanel.repaint this)
        pure ()


-- throws Exception
center :: (JavaObjectClass this_) => this_ -> IO (())
center object_ = jmethod object_ "center" (\() -> (center_impl (javaCast object_ :: CanvasJPanel))) ()

center_super :: (JavaObjectClass this_) => this_ -> IO (())
center_super object_ = (center_impl (javaCast object_ :: CanvasJPanel))

center_impl :: CanvasJPanel -> IO (())
center_impl this = do
        Control.Monad.void (VectorCenterGenerator.transform ((jio (VectorCenterGenerator.new_))) (jio (CanvasJPanel.getGraphicItemHashMap this)))
        Control.Monad.void (CanvasJPanel.repaint this)
        pure ()


setNewTool :: (JavaObjectClass this_) => this_ -> IO (())
setNewTool object_ = jmethod object_ "setNewTool" (\() -> (setNewTool_impl (javaCast object_ :: CanvasJPanel))) ()

setNewTool_super :: (JavaObjectClass this_) => this_ -> IO (())
setNewTool_super object_ = (setNewTool_impl (javaCast object_ :: CanvasJPanel))

setNewTool_impl :: CanvasJPanel -> IO (())
setNewTool_impl this = do
        handle (\(e :: JavaException) -> do
            pure ()
            ) $ do
            Control.Monad.void (StatusFactory.setStatus ((jio (StatusFactory.getInstance))) "Tool Selected")
            assignedValue <- (GraphicsItemInterfaceFactoryInterface.getInstance ((jio (ToolFactory.getSelectedToolFactory ((jio (ToolFactory.getInstance)))))) this)
            jset (this).selectedTool (assignedValue)
            newNode <- (GraphicItemInterface.getTreeNode ((jget (this).selectedTool)))
            Control.Monad.void (HashMap.put ((jio (CanvasJPanel.getGraphicItemHashMap this))) newNode (jget (this).selectedTool))
            Control.Monad.void (DefaultMutableTreeNode.add ((jget (this).canvasTreeNode)) newNode)
            when ((jio (CanvasJPanel.getSelectedTool this)) == javaNull) $ do
                javaThrow ((JavaException "GraphicsException" "No Tool Selected" this "setSelectedTool"))
        pure ()


-- throws Exception
duplicateGraphicItem :: (JavaObjectClass this_) => this_ -> GraphicItemInterface.GraphicItemInterface -> IO (())
duplicateGraphicItem object_ a1 = jmethod object_ "duplicateGraphicItem" (\() -> (duplicateGraphicItem_impl (javaCast object_ :: CanvasJPanel))) () a1

duplicateGraphicItem_super :: (JavaObjectClass this_) => this_ -> GraphicItemInterface.GraphicItemInterface -> IO (())
duplicateGraphicItem_super object_ a1 = (duplicateGraphicItem_impl (javaCast object_ :: CanvasJPanel)) a1

duplicateGraphicItem_impl :: CanvasJPanel -> GraphicItemInterface.GraphicItemInterface -> IO (())
duplicateGraphicItem_impl this graphicItem = do
        graphicItemClone <- (GraphicItemInterface.duplicate graphicItem)
        Control.Monad.void (HashMap.put ((jio (CanvasJPanel.getGraphicItemHashMap this))) (jio (GraphicItemInterface.getTreeNode graphicItemClone)) graphicItemClone)
        Control.Monad.void (DefaultMutableTreeNode.add ((jget (this).canvasTreeNode)) (jio (GraphicItemInterface.getTreeNode graphicItemClone)))
        pure ()


-- throws Exception
duplicateGraphicItemHashMap :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
duplicateGraphicItemHashMap object_ a1 = jmethod object_ "duplicateGraphicItemHashMap" (\() -> (duplicateGraphicItemHashMap_impl (javaCast object_ :: CanvasJPanel))) () a1

duplicateGraphicItemHashMap_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
duplicateGraphicItemHashMap_super object_ a1 = (duplicateGraphicItemHashMap_impl (javaCast object_ :: CanvasJPanel)) a1

duplicateGraphicItemHashMap_impl :: CanvasJPanel -> HashMap.HashMap -> IO (())
duplicateGraphicItemHashMap_impl this hashMap = do
        mutableTreeNodeArray <- (HashMap.toArray ((jio (HashMap.keySet hashMap))))
        let size = (jlength mutableTreeNodeArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let treeNode = (javaCast (jindex mutableTreeNodeArray (index)) :: MutableTreeNode.MutableTreeNode)
            let graphicItem = (javaCast (jio (HashMap.get hashMap treeNode)) :: GraphicItemInterface.GraphicItemInterface)
            Control.Monad.void (CanvasJPanel.duplicateGraphicItem this graphicItem)
        pure ()


getGraphicItemHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getGraphicItemHashMap object_ = jmethod object_ "getGraphicItemHashMap" (\() -> (getGraphicItemHashMap_impl (javaCast object_ :: CanvasJPanel))) ()

getGraphicItemHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getGraphicItemHashMap_super object_ = (getGraphicItemHashMap_impl (javaCast object_ :: CanvasJPanel))

getGraphicItemHashMap_impl :: CanvasJPanel -> IO (HashMap.HashMap)
getGraphicItemHashMap_impl this = do
        pure ((jget (this).graphicItemHashMap))


getXPixelsPerWorkAreaPixel :: (JavaObjectClass this_) => this_ -> IO (Int)
getXPixelsPerWorkAreaPixel object_ = jmethod object_ "getXPixelsPerWorkAreaPixel" (\() -> (getXPixelsPerWorkAreaPixel_impl (javaCast object_ :: CanvasJPanel))) ()

getXPixelsPerWorkAreaPixel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getXPixelsPerWorkAreaPixel_super object_ = (getXPixelsPerWorkAreaPixel_impl (javaCast object_ :: CanvasJPanel))

getXPixelsPerWorkAreaPixel_impl :: CanvasJPanel -> IO (Int)
getXPixelsPerWorkAreaPixel_impl this = do
    javaCatchReturn $ do
        let x = (((jio (GPoint.getX ((jget ((jio (CanvasJPanel.getGrid this))).grid)))) * (((jio (JPanel.getWidth this)) - 10))) / (jio (IntegerDimension.getWidth ((jio (CanvasJPanel.getCanvasDimension this))))))
        if ((jio (Grid.getZoom ((jio (CanvasJPanel.getGrid this))))) == 1) then do
            javaReturn (1)
        else do
            javaReturn (x)


getYPixelsPerWorkAreaPixel :: (JavaObjectClass this_) => this_ -> IO (Int)
getYPixelsPerWorkAreaPixel object_ = jmethod object_ "getYPixelsPerWorkAreaPixel" (\() -> (getYPixelsPerWorkAreaPixel_impl (javaCast object_ :: CanvasJPanel))) ()

getYPixelsPerWorkAreaPixel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getYPixelsPerWorkAreaPixel_super object_ = (getYPixelsPerWorkAreaPixel_impl (javaCast object_ :: CanvasJPanel))

getYPixelsPerWorkAreaPixel_impl :: CanvasJPanel -> IO (Int)
getYPixelsPerWorkAreaPixel_impl this = do
    javaCatchReturn $ do
        let y = (((jio (GPoint.getY ((jget ((jio (CanvasJPanel.getGrid this))).grid)))) * (((jio (JPanel.getHeight this)) - 10))) / (jio (IntegerDimension.getHeight ((jio (CanvasJPanel.getCanvasDimension this))))))
        if ((jio (Grid.getZoom ((jio (CanvasJPanel.getGrid this))))) == 1) then do
            javaReturn (1)
        else do
            javaReturn (y)


getSelectedTool :: (JavaObjectClass this_) => this_ -> IO (GraphicItemInterface.GraphicItemInterface)
getSelectedTool object_ = jmethod object_ "getSelectedTool" (\() -> (getSelectedTool_impl (javaCast object_ :: CanvasJPanel))) ()

getSelectedTool_super :: (JavaObjectClass this_) => this_ -> IO (GraphicItemInterface.GraphicItemInterface)
getSelectedTool_super object_ = (getSelectedTool_impl (javaCast object_ :: CanvasJPanel))

getSelectedTool_impl :: CanvasJPanel -> IO (GraphicItemInterface.GraphicItemInterface)
getSelectedTool_impl this = do
        pure ((jget (this).selectedTool))


drawItems :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
drawItems object_ a1 = jmethod object_ "drawItems" (\() -> (drawItems_impl (javaCast object_ :: CanvasJPanel))) () a1

drawItems_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
drawItems_super object_ a1 = (drawItems_impl (javaCast object_ :: CanvasJPanel)) a1

drawItems_impl :: CanvasJPanel -> Graphics.Graphics -> IO (())
drawItems_impl this graphics = do
        let angleDouble = (jget (this).angle)
        graphicItemArray <- (HashMap.toArray ((jio (HashMap.keySet ((jio (CanvasJPanel.getGraphicItemHashMap this)))))))
        let size = (jlength graphicItemArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let item = (javaCast (jio (HashMap.get ((jio (CanvasJPanel.getGraphicItemHashMap this))) (jindex graphicItemArray (index)))) :: GraphicItemInterface.GraphicItemInterface)
            Control.Monad.void (GraphicItemInterface.paint item graphics angleDouble (jio (CanvasJPanel.getCanvasDimension this)) (jio (CanvasJPanel.getXPixelsPerWorkAreaPixel this)) (jio (CanvasJPanel.getYPixelsPerWorkAreaPixel this)))
        pure ()


drawGrid :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
drawGrid object_ a1 = jmethod object_ "drawGrid" (\() -> (drawGrid_impl (javaCast object_ :: CanvasJPanel))) () a1

drawGrid_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
drawGrid_super object_ a1 = (drawGrid_impl (javaCast object_ :: CanvasJPanel)) a1

drawGrid_impl :: CanvasJPanel -> Graphics.Graphics -> IO (())
drawGrid_impl this graphics = do
        let xAdjust = ((((jio (JPanel.getWidth this)) `rem` (jio (CanvasJPanel.getXPixelsPerWorkAreaPixel this)))) / 2)
        let yAdjust = ((((jio (JPanel.getHeight this)) `rem` (jio (CanvasJPanel.getYPixelsPerWorkAreaPixel this)))) / 2)
        let xLeft = xAdjust
        let yUpper = yAdjust
        let xRight = ((jio (JPanel.getWidth this)) - xAdjust)
        let yLower = ((jio (JPanel.getHeight this)) - yAdjust)
        Control.Monad.void (Graphics.setColor graphics (CanvasJPanel.gridColor))
        forM_ [yAdjust, yAdjust + ((jio (CanvasJPanel.getYPixelsPerWorkAreaPixel this))) .. ((jio (JPanel.getHeight this)) - yAdjust)] $ \value -> javaIteration (pure ()) $ do
            Control.Monad.void (Graphics.drawLine graphics xLeft value xRight value)
        forM_ [xAdjust, xAdjust + ((jio (CanvasJPanel.getYPixelsPerWorkAreaPixel this))) .. ((jio (JPanel.getWidth this)) - xAdjust)] $ \value -> javaIteration (pure ()) $ do
            Control.Monad.void (Graphics.drawLine graphics value yUpper value yLower)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: CanvasJPanel))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: CanvasJPanel)) a1

paint_impl :: CanvasJPanel -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        handle (\(e :: JavaException) -> do
            pure ()
            ) $ do
            when (jget ((jio (CanvasJPanel.getGrid this))).isChanged) $ do
                Control.Monad.void (Graphics.setColor graphics (CanvasJPanel.backgroundColor))
                Control.Monad.void (Graphics.fillRect graphics 0 0 (jio (JPanel.getWidth this)) (jio (JPanel.getHeight this)))
                when ((((jio (Grid.getZoom ((jio (CanvasJPanel.getGrid this))))) > 2) && (jget ((jio (CanvasJPanel.getGrid this))).isGridOn)) && (jget ((jio (CanvasJPanel.getGrid this))).isGridPossible)) $ do
                    Control.Monad.void (CanvasJPanel.setDefaultGrid this)
                    Control.Monad.void (CanvasJPanel.drawGrid this graphics)
                Control.Monad.void (CanvasJPanel.drawItems this graphics)
                Control.Monad.void (Graphics.drawString graphics (javaToString (jio (CanvasJPanel.getAngle this))) ((jio (JPanel.getWidth this)) - 75) ((jio (JPanel.getHeight this)) - 15))
                jset ((jget (this).grid)).isChanged (False)
        pure ()


repaint :: (JavaObjectClass this_) => this_ -> IO (())
repaint object_ = jmethod object_ "repaint" (\() -> (repaint_impl (javaCast object_ :: CanvasJPanel))) ()

repaint_super :: (JavaObjectClass this_) => this_ -> IO (())
repaint_super object_ = (repaint_impl (javaCast object_ :: CanvasJPanel))

repaint_impl :: CanvasJPanel -> IO (())
repaint_impl this = do
        when ((jget (this).grid) /= javaNull) $ do
            jset ((jget (this).grid)).isChanged (True)
        Control.Monad.void (JPanel.repaint_super this.base)
        pure ()


-- throws Exception
toDom :: (JavaObjectClass this_) => this_ -> IO (Node.Node)
toDom object_ = jmethod object_ "toDom" (\() -> (toDom_impl (javaCast object_ :: CanvasJPanel))) ()

toDom_super :: (JavaObjectClass this_) => this_ -> IO (Node.Node)
toDom_super object_ = (toDom_impl (javaCast object_ :: CanvasJPanel))

toDom_impl :: CanvasJPanel -> IO (Node.Node)
toDom_impl this = do
        (CanvasDom.toDom ((jio (CanvasDom.new_1 this))))


changed :: (JavaObjectClass this_) => this_ -> IO (())
changed object_ = jmethod object_ "changed" (\() -> (changed_impl (javaCast object_ :: CanvasJPanel))) ()

changed_super :: (JavaObjectClass this_) => this_ -> IO (())
changed_super object_ = (changed_impl (javaCast object_ :: CanvasJPanel))

changed_impl :: CanvasJPanel -> IO (())
changed_impl this = do
        jset ((jget (this).grid)).isChanged (True)
        pure ()


mouseClicked :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseClicked object_ a1 = jmethod object_ "mouseClicked" (\() -> (mouseClicked_impl (javaCast object_ :: CanvasJPanel))) () a1

mouseClicked_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseClicked_super object_ a1 = (mouseClicked_impl (javaCast object_ :: CanvasJPanel)) a1

mouseClicked_impl :: CanvasJPanel -> MouseEvent.MouseEvent -> IO (())
mouseClicked_impl this mouseEvent = do
        Control.Monad.void (StatusFactory.setStatusNoLog ((jio (StatusFactory.getInstance))) ((jget ((jio (MouseStrings.getInstance))).mOUSE_CLICKED_LABEL) + (jio (CanvasJPanel.logMouseEvent this mouseEvent))))
        if (((jio (CanvasJPanel.getSelectedTool this)) /= javaNull) && (jio (GraphicItemInterface.isActive ((jio (CanvasJPanel.getSelectedTool this)))))) then do
            graphicItem <- (CanvasJPanel.getSelectedTool this)
            Control.Monad.void (GraphicItemInterface.mouseClicked graphicItem mouseEvent (jio (CanvasJPanel.getXPixelsPerWorkAreaPixel this)) (jio (CanvasJPanel.getYPixelsPerWorkAreaPixel this)))
        else do
            Control.Monad.void (CanvasJPanel.setNewTool this)
            graphicItem <- (CanvasJPanel.getSelectedTool this)
            when (graphicItem /= javaNull) $ do
                Control.Monad.void (GraphicItemInterface.mouseClicked graphicItem mouseEvent (jio (CanvasJPanel.getXPixelsPerWorkAreaPixel this)) (jio (CanvasJPanel.getYPixelsPerWorkAreaPixel this)))
        jset ((jget (this).grid)).isChanged (True)
        Control.Monad.void (CanvasJPanel.repaint this)
        Control.Monad.void (WorkAreaJTreeJPanel.updateTree ((jget (this).workAreaJTreeJPanel)))
        Control.Monad.void (WorkAreaJTreeJPanel.expand ((jget (this).workAreaJTreeJPanel)))
        Control.Monad.void (WorkAreaJTreeJPanel.repaint ((jget (this).workAreaJTreeJPanel)))
        pure ()


mouseEntered :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseEntered object_ a1 = jmethod object_ "mouseEntered" (\() -> (mouseEntered_impl (javaCast object_ :: CanvasJPanel))) () a1

mouseEntered_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseEntered_super object_ a1 = (mouseEntered_impl (javaCast object_ :: CanvasJPanel)) a1

mouseEntered_impl :: CanvasJPanel -> MouseEvent.MouseEvent -> IO (())
mouseEntered_impl this mouseEvent = do
        Control.Monad.void (StatusFactory.setStatusNoLog ((jio (StatusFactory.getInstance))) (jio (CanvasJPanel.logMouseEvent this mouseEvent)))
        pure ()


mouseExited :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseExited object_ a1 = jmethod object_ "mouseExited" (\() -> (mouseExited_impl (javaCast object_ :: CanvasJPanel))) () a1

mouseExited_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseExited_super object_ a1 = (mouseExited_impl (javaCast object_ :: CanvasJPanel)) a1

mouseExited_impl :: CanvasJPanel -> MouseEvent.MouseEvent -> IO (())
mouseExited_impl this mouseEvent = do
        Control.Monad.void (StatusFactory.setStatusNoLog ((jio (StatusFactory.getInstance))) (jio (CanvasJPanel.logMouseEvent this mouseEvent)))
        pure ()


mousePressed :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mousePressed object_ a1 = jmethod object_ "mousePressed" (\() -> (mousePressed_impl (javaCast object_ :: CanvasJPanel))) () a1

mousePressed_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mousePressed_super object_ a1 = (mousePressed_impl (javaCast object_ :: CanvasJPanel)) a1

mousePressed_impl :: CanvasJPanel -> MouseEvent.MouseEvent -> IO (())
mousePressed_impl this mouseEvent = do
        Control.Monad.void (StatusFactory.setStatusNoLog ((jio (StatusFactory.getInstance))) ((jget ((jio (MouseStrings.getInstance))).mOUSE_PRESSED_LABEL) + (jio (CanvasJPanel.logMouseEvent this mouseEvent))))
        when ((jio (CanvasJPanel.getSelectedTool this)) /= javaNull) $ do
            graphicItem <- (CanvasJPanel.getSelectedTool this)
            Control.Monad.void (GraphicItemInterface.mousePressed graphicItem mouseEvent (jio (CanvasJPanel.getXPixelsPerWorkAreaPixel this)) (jio (CanvasJPanel.getYPixelsPerWorkAreaPixel this)))
        Control.Monad.void (JPanel.requestFocus this)
        jset ((jget (this).grid)).isChanged (True)
        Control.Monad.void (CanvasJPanel.repaint this)
        pure ()


mouseReleased :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseReleased object_ a1 = jmethod object_ "mouseReleased" (\() -> (mouseReleased_impl (javaCast object_ :: CanvasJPanel))) () a1

mouseReleased_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseReleased_super object_ a1 = (mouseReleased_impl (javaCast object_ :: CanvasJPanel)) a1

mouseReleased_impl :: CanvasJPanel -> MouseEvent.MouseEvent -> IO (())
mouseReleased_impl this mouseEvent = do
        Control.Monad.void (StatusFactory.setStatusNoLog ((jio (StatusFactory.getInstance))) ((jget ((jio (MouseStrings.getInstance))).mOUSE_RELEASED_LABEL) + (jio (CanvasJPanel.logMouseEvent this mouseEvent))))
        graphicItem <- (CanvasJPanel.getSelectedTool this)
        when (graphicItem /= javaNull) $ do
            Control.Monad.void (GraphicItemInterface.mouseReleased graphicItem mouseEvent (jio (CanvasJPanel.getXPixelsPerWorkAreaPixel this)) (jio (CanvasJPanel.getYPixelsPerWorkAreaPixel this)))
        Control.Monad.void (JPanel.requestFocus this)
        jset ((jget (this).grid)).isChanged (True)
        Control.Monad.void (CanvasJPanel.repaint this)
        pure ()


mouseDragged :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseDragged object_ a1 = jmethod object_ "mouseDragged" (\() -> (mouseDragged_impl (javaCast object_ :: CanvasJPanel))) () a1

mouseDragged_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseDragged_super object_ a1 = (mouseDragged_impl (javaCast object_ :: CanvasJPanel)) a1

mouseDragged_impl :: CanvasJPanel -> MouseEvent.MouseEvent -> IO (())
mouseDragged_impl this mouseEvent = do
        Control.Monad.void (StatusFactory.setStatusNoLog ((jio (StatusFactory.getInstance))) ((jget ((jio (MouseStrings.getInstance))).mOUSE_DRAGGED_LABEL) + (jio (CanvasJPanel.logMouseEvent this mouseEvent))))
        graphicItem <- (CanvasJPanel.getSelectedTool this)
        when (graphicItem /= javaNull) $ do
            Control.Monad.void (GraphicItemInterface.mouseDragged graphicItem mouseEvent (jio (CanvasJPanel.getXPixelsPerWorkAreaPixel this)) (jio (CanvasJPanel.getYPixelsPerWorkAreaPixel this)))
        Control.Monad.void (JPanel.requestFocus this)
        jset ((jget (this).grid)).isChanged (True)
        Control.Monad.void (CanvasJPanel.repaint this)
        pure ()


mouseMoved :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseMoved object_ a1 = jmethod object_ "mouseMoved" (\() -> (mouseMoved_impl (javaCast object_ :: CanvasJPanel))) () a1

mouseMoved_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (())
mouseMoved_super object_ a1 = (mouseMoved_impl (javaCast object_ :: CanvasJPanel)) a1

mouseMoved_impl :: CanvasJPanel -> MouseEvent.MouseEvent -> IO (())
mouseMoved_impl this mouseEvent = do
        Control.Monad.void (StatusFactory.setStatusNoLog ((jio (StatusFactory.getInstance))) ((jget ((jio (MouseStrings.getInstance))).mOUSE_MOVED_LABEL) + (jio (CanvasJPanel.logMouseEvent this mouseEvent))))
        when (((jio (CanvasJPanel.getSelectedTool this)) /= javaNull) && (jio (GraphicItemInterface.isActive ((jio (CanvasJPanel.getSelectedTool this)))))) $ do
            graphicItem <- (CanvasJPanel.getSelectedTool this)
            Control.Monad.void (GraphicItemInterface.mouseMoved graphicItem mouseEvent (jio (CanvasJPanel.getXPixelsPerWorkAreaPixel this)) (jio (CanvasJPanel.getYPixelsPerWorkAreaPixel this)))
        Control.Monad.void (JPanel.requestFocus this)
        jset ((jget (this).grid)).isChanged (True)
        Control.Monad.void (CanvasJPanel.repaint this)
        pure ()


logMouseEvent :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (String)
logMouseEvent object_ a1 = jmethod object_ "logMouseEvent" (\() -> (logMouseEvent_impl (javaCast object_ :: CanvasJPanel))) () a1

logMouseEvent_super :: (JavaObjectClass this_) => this_ -> MouseEvent.MouseEvent -> IO (String)
logMouseEvent_super object_ a1 = (logMouseEvent_impl (javaCast object_ :: CanvasJPanel)) a1

logMouseEvent_impl :: CanvasJPanel -> MouseEvent.MouseEvent -> IO (String)
logMouseEvent_impl this mouseEvent = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (PositionStrings.getInstance))).x_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger ((jio (MouseEvent.getX mouseEvent)) / (jio (CanvasJPanel.getXPixelsPerWorkAreaPixel this))))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (PositionStrings.getInstance))).y_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger ((jio (MouseEvent.getY mouseEvent)) / (jio (CanvasJPanel.getYPixelsPerWorkAreaPixel this))))))
        (StringMaker.toString stringBuffer)


keyPressed :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyPressed object_ a1 = jmethod object_ "keyPressed" (\() -> (keyPressed_impl (javaCast object_ :: CanvasJPanel))) () a1

keyPressed_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyPressed_super object_ a1 = (keyPressed_impl (javaCast object_ :: CanvasJPanel)) a1

keyPressed_impl :: CanvasJPanel -> KeyEvent.KeyEvent -> IO (())
keyPressed_impl this keyEvent = do
        Control.Monad.void (StatusFactory.setStatus ((jio (StatusFactory.getInstance))) "Key Pressed")
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget ((jget (this).gameInputStrings)).kEY_PRESSED) e)
            ) $ do
            graphicItemArray <- (HashMap.toArray ((jio (HashMap.keySet ((jget (this).graphicItemHashMap))))))
            let size = (jlength graphicItemArray)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let graphicItemInterface = (javaCast (jio (HashMap.get ((jget (this).graphicItemHashMap)) (jindex graphicItemArray (index)))) :: GraphicItemInterface.GraphicItemInterface)
                keyCode <- (KeyEvent.getKeyCode keyEvent)
                when (jio (GraphicItemInterface.isActive graphicItemInterface)) $ do
                    if (keyCode == (jget (keyEvent).vK_UP)) then do
                        Control.Monad.void (GraphicItemInterface.translate graphicItemInterface 0 (Prelude.negate 1))
                    else if (keyCode == (jget (keyEvent).vK_DOWN)) then do
                        Control.Monad.void (GraphicItemInterface.translate graphicItemInterface 0 1)
                    else if (keyCode == (jget (keyEvent).vK_LEFT)) then do
                        Control.Monad.void (GraphicItemInterface.translate graphicItemInterface (Prelude.negate 1) 0)
                    else when (keyCode == (jget (keyEvent).vK_RIGHT)) $ do
                        Control.Monad.void (GraphicItemInterface.translate graphicItemInterface 1 0)
        if (((jio (CanvasJPanel.getSelectedTool this)) /= javaNull) && (jio (GraphicItemInterface.isActive ((jio (CanvasJPanel.getSelectedTool this)))))) then do
            Control.Monad.void (StatusFactory.setStatus ((jio (StatusFactory.getInstance))) "Key Pressed for Tool")
            graphicItem <- (CanvasJPanel.getSelectedTool this)
            Control.Monad.void (GraphicItemInterface.keyPressed graphicItem keyEvent)
        else do
            Control.Monad.void (CanvasJPanel.setNewTool this)
        jset ((jget (this).grid)).isChanged (True)
        Control.Monad.void (CanvasJPanel.repaint this)
        pure ()


keyReleased :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyReleased object_ a1 = jmethod object_ "keyReleased" (\() -> (keyReleased_impl (javaCast object_ :: CanvasJPanel))) () a1

keyReleased_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyReleased_super object_ a1 = (keyReleased_impl (javaCast object_ :: CanvasJPanel)) a1

keyReleased_impl :: CanvasJPanel -> KeyEvent.KeyEvent -> IO (())
keyReleased_impl this keyEvent = do
        pure ()


keyTyped :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyTyped object_ a1 = jmethod object_ "keyTyped" (\() -> (keyTyped_impl (javaCast object_ :: CanvasJPanel))) () a1

keyTyped_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyTyped_super object_ a1 = (keyTyped_impl (javaCast object_ :: CanvasJPanel)) a1

keyTyped_impl :: CanvasJPanel -> KeyEvent.KeyEvent -> IO (())
keyTyped_impl this keyEvent = do
        pure ()


delete :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
delete object_ a1 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: CanvasJPanel))) () a1

delete_super :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
delete_super object_ a1 = (delete_impl (javaCast object_ :: CanvasJPanel)) a1

delete_impl :: CanvasJPanel -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
delete_impl this evt = do
        Control.Monad.void (HashMap.remove ((jio (CanvasJPanel.getGraphicItemHashMap this))) (jio (MyGraphicItemEvent.getTreeNode evt)))
        Control.Monad.void (WorkAreaJTreeJPanel.updateTree ((jget (this).workAreaJTreeJPanel)))
        Control.Monad.void (WorkAreaJTreeJPanel.expand ((jget (this).workAreaJTreeJPanel)))
        Control.Monad.void (WorkAreaJTreeJPanel.repaint ((jget (this).workAreaJTreeJPanel)))
        pure ()


deselect :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
deselect object_ a1 = jmethod object_ "deselect" (\() -> (deselect_impl (javaCast object_ :: CanvasJPanel))) () a1

deselect_super :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
deselect_super object_ a1 = (deselect_impl (javaCast object_ :: CanvasJPanel)) a1

deselect_impl :: CanvasJPanel -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
deselect_impl this evt = do
        let graphicItemInterface = (javaCast (jio (HashMap.get ((jio (CanvasJPanel.getGraphicItemHashMap this))) (jio (MyGraphicItemEvent.getTreeNode evt)))) :: GraphicItemInterface.GraphicItemInterface)
        when (graphicItemInterface /= javaNull) $ do
            Control.Monad.void (GraphicItemInterface.setColor graphicItemInterface (Color.wHITE))
            Control.Monad.void (GraphicItemInterface.deactivate graphicItemInterface)
            Control.Monad.void (WorkAreaJTreeJPanel.repaint ((jget (this).workAreaJTreeJPanel)))
        pure ()


highlight :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
highlight object_ a1 = jmethod object_ "highlight" (\() -> (highlight_impl (javaCast object_ :: CanvasJPanel))) () a1

highlight_super :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
highlight_super object_ a1 = (highlight_impl (javaCast object_ :: CanvasJPanel)) a1

highlight_impl :: CanvasJPanel -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
highlight_impl this evt = do
        let graphicItemInterface = (javaCast (jio (HashMap.get ((jio (CanvasJPanel.getGraphicItemHashMap this))) (jio (MyGraphicItemEvent.getTreeNode evt)))) :: GraphicItemInterface.GraphicItemInterface)
        when (graphicItemInterface /= javaNull) $ do
            Control.Monad.void (GraphicItemInterface.setColor graphicItemInterface (Color.yELLOW))
            Control.Monad.void (GraphicItemInterface.activate graphicItemInterface)
            Control.Monad.void (WorkAreaJTreeJPanel.repaint ((jget (this).workAreaJTreeJPanel)))
        pure ()


-- throws Exception
duplicate :: (JavaObjectClass this_) => this_ -> IO (CanvasJPanel)
duplicate object_ = jmethod object_ "duplicate" (\() -> (duplicate_impl (javaCast object_ :: CanvasJPanel))) ()

duplicate_super :: (JavaObjectClass this_) => this_ -> IO (CanvasJPanel)
duplicate_super object_ = (duplicate_impl (javaCast object_ :: CanvasJPanel))

duplicate_impl :: CanvasJPanel -> IO (CanvasJPanel)
duplicate_impl this = do
        newCanvasJPanel <- (new_4 (jget (this).workAreaJTreeJPanel) (jio (JPanel.getSize this)) (jio (IntegerDimension.getWidth ((jio (CanvasJPanel.getCanvasDimension this))))) (jio (IntegerDimension.getHeight ((jio (CanvasJPanel.getCanvasDimension this))))))
        Control.Monad.void (CanvasJPanel.setGrid newCanvasJPanel (jio (Grid.getGrid ((jio (CanvasJPanel.getGrid this))))))
        Control.Monad.void (CanvasJPanel.setAngle newCanvasJPanel (jio (CanvasJPanel.getAngle this)))
        Control.Monad.void (CanvasJPanel.duplicateGraphicItemHashMap newCanvasJPanel (jio (CanvasJPanel.getGraphicItemHashMap this)))
        Control.Monad.void (WorkAreaJTreeJPanel.updateTree ((jget (this).workAreaJTreeJPanel)))
        Control.Monad.void (WorkAreaJTreeJPanel.expand ((jget (this).workAreaJTreeJPanel)))
        Control.Monad.void (WorkAreaJTreeJPanel.repaint ((jget (this).workAreaJTreeJPanel)))
        pure (newCanvasJPanel)


-- throws Exception
-- Java overload of duplicate with a different parameter count: give it a different name
duplicate :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
duplicate object_ a1 = jmethod object_ "duplicate" (\() -> (duplicate_impl (javaCast object_ :: CanvasJPanel))) () a1

duplicate_super :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
duplicate_super object_ a1 = (duplicate_impl (javaCast object_ :: CanvasJPanel)) a1

duplicate_impl :: CanvasJPanel -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
duplicate_impl this event = do
        treeNode <- (MyGraphicItemEvent.getTreeNode event)
        let graphicItem = (javaCast (jio (HashMap.get ((jio (CanvasJPanel.getGraphicItemHashMap this))) treeNode)) :: GraphicItemInterface.GraphicItemInterface)
        when (graphicItem /= javaNull) $ do
            Control.Monad.void (CanvasJPanel.duplicateGraphicItem this graphicItem)
            Control.Monad.void (WorkAreaJTreeJPanel.updateTree ((jget (this).workAreaJTreeJPanel)))
            Control.Monad.void (WorkAreaJTreeJPanel.expand ((jget (this).workAreaJTreeJPanel)))
            Control.Monad.void (WorkAreaJTreeJPanel.repaint ((jget (this).workAreaJTreeJPanel)))
        pure ()


rotate :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
rotate object_ a1 = jmethod object_ "rotate" (\() -> (rotate_impl (javaCast object_ :: CanvasJPanel))) () a1

rotate_super :: (JavaObjectClass this_) => this_ -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
rotate_super object_ a1 = (rotate_impl (javaCast object_ :: CanvasJPanel)) a1

rotate_impl :: CanvasJPanel -> MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
rotate_impl this event = do
        treeNode <- (MyGraphicItemEvent.getTreeNode event)
        let graphicItem = (javaCast (jio (HashMap.get ((jio (CanvasJPanel.getGraphicItemHashMap this))) treeNode)) :: GraphicItemInterface.GraphicItemInterface)
        when (graphicItem /= javaNull) $ do
            Control.Monad.void (GraphicItemInterface.addAngle graphicItem (jio (MyGraphicItemEvent.getAngle event)))
        pure ()


getCanvasDimension :: (JavaObjectClass this_) => this_ -> IO (IntegerDimension.IntegerDimension)
getCanvasDimension object_ = jmethod object_ "getCanvasDimension" (\() -> (getCanvasDimension_impl (javaCast object_ :: CanvasJPanel))) ()

getCanvasDimension_super :: (JavaObjectClass this_) => this_ -> IO (IntegerDimension.IntegerDimension)
getCanvasDimension_super object_ = (getCanvasDimension_impl (javaCast object_ :: CanvasJPanel))

getCanvasDimension_impl :: CanvasJPanel -> IO (IntegerDimension.IntegerDimension)
getCanvasDimension_impl this = do
        pure ((jget (this).canvasDimension))


setCanvasDimension :: (JavaObjectClass this_) => this_ -> IntegerDimension.IntegerDimension -> IO (())
setCanvasDimension object_ a1 = jmethod object_ "setCanvasDimension" (\() -> (setCanvasDimension_impl (javaCast object_ :: CanvasJPanel))) () a1

setCanvasDimension_super :: (JavaObjectClass this_) => this_ -> IntegerDimension.IntegerDimension -> IO (())
setCanvasDimension_super object_ a1 = (setCanvasDimension_impl (javaCast object_ :: CanvasJPanel)) a1

setCanvasDimension_impl :: CanvasJPanel -> IntegerDimension.IntegerDimension -> IO (())
setCanvasDimension_impl this canvasDimension = do
        jset (this).canvasDimension (canvasDimension)
        pure ()


getGrid :: (JavaObjectClass this_) => this_ -> IO (Grid.Grid)
getGrid object_ = jmethod object_ "getGrid" (\() -> (getGrid_impl (javaCast object_ :: CanvasJPanel))) ()

getGrid_super :: (JavaObjectClass this_) => this_ -> IO (Grid.Grid)
getGrid_super object_ = (getGrid_impl (javaCast object_ :: CanvasJPanel))

getGrid_impl :: CanvasJPanel -> IO (Grid.Grid)
getGrid_impl this = do
        pure ((jget (this).grid))


