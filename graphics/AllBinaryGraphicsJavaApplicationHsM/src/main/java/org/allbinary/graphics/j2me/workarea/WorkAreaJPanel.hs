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
-- package org.allbinary.graphics.j2me.workarea
module WorkAreaJPanel (module WorkAreaJPanel, module JPanel) where

import JPanel hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initMyComponents, initMyComponents_super, initMyComponents_impl, getCanvasHashMap, getCanvasHashMap_super, getCanvasHashMap_impl, play, play_super, play_impl, stop, stop_super, stop_impl, isPlaying, isPlaying_super, isPlaying_impl, getName, getName_super, getName_impl, setName, setName_super, setName_impl, disableCanvas, disableCanvas_super, disableCanvas_impl, enableCanvas, enableCanvas_super, enableCanvas_impl, deselect, deselect_super, deselect_impl, select, select_super, select_impl, changeZoom, changeZoom_super, changeZoom_impl, getCurrentFrame, getCurrentFrame_super, getCurrentFrame_impl, initDuplicate, initDuplicate_super, initDuplicate_impl, duplicate_overload1, duplicate_overload1_super, duplicate_overload1_impl, duplicate, autoRotate, autoRotate_super, autoRotate_impl, explodeAll, explodeAll_super, explodeAll_impl, autoExplode, autoExplode_super, autoExplode_impl, autoMirror, autoMirror_super, autoMirror_impl, select_overload1, select_overload1_super, select_overload1_impl, select, select_overload2, select_overload2_super, select_overload2_impl, select, getDocument, getDocument_super, getDocument_impl, toDocument, toDocument_super, toDocument_impl, initComponents, initComponents_super, initComponents_impl, innerJPanelKeyReleased, innerJPanelKeyReleased_super, innerJPanelKeyReleased_impl, innerJPanelKeyPressed, innerJPanelKeyPressed_super, innerJPanelKeyPressed_impl, innerJPanelKeyTyped, innerJPanelKeyTyped_super, innerJPanelKeyTyped_impl, keyPressed, keyPressed_super, keyPressed_impl, keyReleased, keyReleased_super, keyReleased_impl, keyTyped, keyTyped_super, keyTyped_impl, delete, delete_super, delete_impl, duplicate_overload2, duplicate_overload2_super, duplicate_overload2_impl, duplicate, select_overload3, select_overload3_super, select_overload3_impl, select, rotate, rotate_super, rotate_impl, explode, explode_super, explode_impl, autoExplode, autoExplode_super, autoExplode_impl, center, center_super, center_impl, center, center_super, center_impl, run, run_super, run_impl, logUtil, canvasJPanelList, canvasHolderJPanel, name, selectedFrame, document, propertiesJPanel, workAreaJTreeJPanel, isPlaying, innerJPanel)
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
import qualified WorkAreaJTreeJPanel -- same package or java.lang
import qualified Component -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified WorkAreaDom -- same package or java.lang
import qualified GridLayout -- same package or java.lang
import qualified GridBagLayout -- same package or java.lang
import qualified GridBagConstraints -- same package or java.lang
import qualified KeyAdapter -- same package or java.lang
import qualified KeyEvent -- same package or java.lang
import qualified Thread -- same package or java.lang
import qualified EventListener -- java.util.EventListener
import qualified HashMap -- java.util.HashMap
import qualified LinkedList -- java.util.LinkedList
import qualified MutableTreeNode -- javax.swing.tree.MutableTreeNode
import qualified DomHelper -- org.allbinary.dom.DomHelper
import qualified StatusFactory -- org.allbinary.graphics.j2me.StatusFactory
import qualified CanvasDom -- org.allbinary.graphics.j2me.workarea.canvas.CanvasDom
import qualified CanvasJPanel -- org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel
import qualified MyCanvasEvent -- org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent
import qualified MyCanvasEventListener -- org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener
import qualified MyCanvasEventService -- org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService
import qualified PropertiesJPanel -- org.allbinary.graphics.j2me.workarea.properties.PropertiesJPanel
import qualified ToolJPanel -- org.allbinary.graphics.j2me.workarea.tools.ToolJPanel
import qualified LOGGING -- org.allbinary.log.LOGGING
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
-- import java.awt.*
-- import javax.swing.*
import qualified JPanel
import qualified WorkAreaJPanelInterface
import qualified Runnable

-- implements WorkAreaJPanelInterface
-- implements MyCanvasEventListener
-- implements EventListener
-- implements Runnable
data WorkAreaJPanel = WorkAreaJPanel
    { header_ :: JavaHeader
    , base :: JPanel.JPanel
    , logUtil :: IORef (LogUtil.LogUtil)
    , canvasJPanelList :: IORef (LinkedList.LinkedList)
    , canvasHolderJPanel :: IORef (JPanel.JPanel)
    , name :: IORef (String)
    , selectedFrame :: IORef (Int)
    , propertiesJPanel :: IORef (PropertiesJPanel.PropertiesJPanel)
    , workAreaJTreeJPanel :: IORef (WorkAreaJTreeJPanel.WorkAreaJTreeJPanel)
    , isPlaying :: IORef (Bool)
    , innerJPanel :: IORef (JPanel.JPanel)
    }

instance JavaNull WorkAreaJPanel where
    javaNull = javaNullRecord "WorkAreaJPanel"

instance JavaEquals WorkAreaJPanel where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WorkAreaJPanel where
    (==) = jrecordEquals

instance JavaObjectClass WorkAreaJPanel where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE document #-}
document = unsafePerformIO (newIORef (javaNull))

newRecord_ :: IO WorkAreaJPanel
newRecord_ = do
    base <- JPanel.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    canvasJPanelList <- newIORef javaNull
    canvasHolderJPanel <- newIORef javaNull
    name <- newIORef ""
    selectedFrame <- newIORef 0
    propertiesJPanel <- newIORef javaNull
    workAreaJTreeJPanel <- newIORef javaNull
    isPlaying <- newIORef False
    innerJPanel <- newIORef javaNull
    let this = WorkAreaJPanel header_ base logUtil canvasJPanelList canvasHolderJPanel name selectedFrame propertiesJPanel workAreaJTreeJPanel isPlaying innerJPanel
    jregisterLevel header_ this
    WorkAreaJPanelInterface.registerInterface_ header_
    MyCanvasEventListener.registerInterface_ header_
    EventListener.registerInterface_ header_
    Runnable.registerInterface_ header_
    jregisterMethod header_ "initMyComponents" (\() -> initMyComponents_impl this)
    jregisterMethod header_ "getCanvasHashMap" (\() -> getCanvasHashMap_impl this)
    jregisterMethod header_ "play" (\() -> play_impl this)
    jregisterMethod header_ "stop" (\() -> stop_impl this)
    jregisterMethod header_ "isPlaying" (\() -> isPlaying_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "disableCanvas" (\() -> disableCanvas_impl this)
    jregisterMethod header_ "enableCanvas" (\() -> enableCanvas_impl this)
    jregisterMethod header_ "deselect" (\() -> deselect_impl this)
    jregisterMethod header_ "select" (\() -> select_impl this)
    jregisterMethod header_ "changeZoom" (\() -> changeZoom_impl this)
    jregisterMethod header_ "getCurrentFrame" (\() -> getCurrentFrame_impl this)
    jregisterMethod header_ "initDuplicate" (\() -> initDuplicate_impl this)
    jregisterMethod header_ "duplicate_overload1" (\() -> duplicate_overload1_impl this)
    jregisterMethod header_ "autoRotate" (\() -> autoRotate_impl this)
    jregisterMethod header_ "explodeAll" (\() -> explodeAll_impl this)
    jregisterMethod header_ "autoExplode" (\() -> autoExplode_impl this)
    jregisterMethod header_ "autoMirror" (\() -> autoMirror_impl this)
    jregisterMethod header_ "select_overload1" (\() -> select_overload1_impl this)
    jregisterMethod header_ "select_overload2" (\() -> select_overload2_impl this)
    jregisterMethod header_ "toDocument" (\() -> toDocument_impl this)
    jregisterMethod header_ "initComponents" (\() -> initComponents_impl this)
    jregisterMethod header_ "innerJPanelKeyReleased" (\() -> innerJPanelKeyReleased_impl this)
    jregisterMethod header_ "innerJPanelKeyPressed" (\() -> innerJPanelKeyPressed_impl this)
    jregisterMethod header_ "innerJPanelKeyTyped" (\() -> innerJPanelKeyTyped_impl this)
    jregisterMethod header_ "keyPressed" (\() -> keyPressed_impl this)
    jregisterMethod header_ "keyReleased" (\() -> keyReleased_impl this)
    jregisterMethod header_ "keyTyped" (\() -> keyTyped_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "duplicate_overload2" (\() -> duplicate_overload2_impl this)
    jregisterMethod header_ "select_overload3" (\() -> select_overload3_impl this)
    jregisterMethod header_ "rotate" (\() -> rotate_impl this)
    jregisterMethod header_ "explode" (\() -> explode_impl this)
    jregisterMethod header_ "autoExplode" (\() -> autoExplode_impl this)
    jregisterMethod header_ "center" (\() -> center_impl this)
    jregisterMethod header_ "center" (\() -> center_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    pure this

initFields_ :: WorkAreaJPanel -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.canvasJPanelList (javaNull)
    jset this.canvasHolderJPanel (javaNull)
    jset this.name ("")
    jset this.selectedFrame (0)
    jset this.propertiesJPanel (javaNull)
    jset this.workAreaJTreeJPanel (javaNull)
    jset this.isPlaying (False)
    jset this.innerJPanel (javaNull)
    pure ()

new_4 :: String -> Dimension.Dimension -> Int -> Int -> IO WorkAreaJPanel
new_4 name dimension x y = do
    this <- newRecord_
    init_4 this name dimension x y
    pure this

init_4 :: WorkAreaJPanel -> String -> Dimension.Dimension -> Int -> Int -> IO ()
init_4 this name dimension x y = do
        JPanel.init_ this.base
        initFields_ this
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            Control.Monad.void (WorkAreaJPanel.initComponents this)
            jset (this).name (name)
            Control.Monad.void (WorkAreaJPanel.initMyComponents this dimension)
            assignedValue <- (WorkAreaJTreeJPanel.new_1 (jget (this).name))
            jset (this).workAreaJTreeJPanel (assignedValue)
            canvasJPanel <- (CanvasJPanel.new_4 (jget (this).workAreaJTreeJPanel) (jio (JPanel.getSize this)) x y)
            Control.Monad.void (LinkedList.add ((jget (this).canvasJPanelList)) canvasJPanel)
            jset (this).selectedFrame (0)
            Control.Monad.void (PropertiesJPanel.set ((jget (this).propertiesJPanel)) (jget (this).workAreaJTreeJPanel))
            Control.Monad.void (JPanel.add ((jget (this).canvasHolderJPanel)) (javaCast canvasJPanel :: Component.Component))
        pure ()

new_2 :: WorkAreaDom.WorkAreaDom -> Dimension.Dimension -> IO WorkAreaJPanel
new_2 workAreaDom dimension = do
    this <- newRecord_
    init_2 this workAreaDom dimension
    pure this

init_2 :: WorkAreaJPanel -> WorkAreaDom.WorkAreaDom -> Dimension.Dimension -> IO ()
init_2 this workAreaDom dimension = do
        JPanel.init_ this.base
        initFields_ this
        handle (\(e :: JavaException) -> do
            when (jio (LOGGING.contains (LOGGING.lOADINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Constructor Error" this "WorkAreaJPanel" e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (WorkAreaJPanel.initComponents this)
            assignedValue <- (WorkAreaDom.getName workAreaDom)
            jset (this).name (assignedValue)
            Control.Monad.void (WorkAreaJPanel.initMyComponents this dimension)
            canvasNodeList <- (WorkAreaDom.getCanvasNodes workAreaDom)
            numberOfFrames <- (BasicArrayList.size canvasNodeList)
            forM_ [0 .. numberOfFrames - 1] $ \index -> javaIteration (pure ()) $ do
                let node = (javaCast (jio (BasicArrayList.get canvasNodeList index)) :: Node.Node)
                canvasJPanel <- (CanvasJPanel.new_3 (jget (this).workAreaJTreeJPanel) (jio (JPanel.getSize this)) (jio (CanvasDom.new_1 node)))
                Control.Monad.void (LinkedList.add ((jget (this).canvasJPanelList)) canvasJPanel)
            jset (this).selectedFrame (0)
            Control.Monad.void (JPanel.add ((jget (this).canvasHolderJPanel)) (javaCast (jio (WorkAreaJPanel.getCurrentFrame this)) :: Component.Component))
            Control.Monad.void (PropertiesJPanel.set ((jget (this).propertiesJPanel)) (jget (this).workAreaJTreeJPanel))
        pure ()


initMyComponents :: (JavaObjectClass this_) => this_ -> Dimension.Dimension -> IO (())
initMyComponents object_ a1 = jmethod object_ "initMyComponents" (\() -> (initMyComponents_impl (javaCast object_ :: WorkAreaJPanel))) () a1

initMyComponents_super :: (JavaObjectClass this_) => this_ -> Dimension.Dimension -> IO (())
initMyComponents_super object_ a1 = (initMyComponents_impl (javaCast object_ :: WorkAreaJPanel)) a1

initMyComponents_impl :: WorkAreaJPanel -> Dimension.Dimension -> IO (())
initMyComponents_impl this dimension = do
        assignedValue <- (WorkAreaJTreeJPanel.new_1 (jget (this).name))
        jset (this).workAreaJTreeJPanel (assignedValue)
        assignedValue <- (JPanel.new_)
        jset (this).canvasHolderJPanel (assignedValue)
        Control.Monad.void (JPanel.setSize ((jget (this).canvasHolderJPanel)) dimension)
        Control.Monad.void (JPanel.setLayout ((jget (this).canvasHolderJPanel)) (jio (GridLayout.new_2 1 1)))
        Control.Monad.void (JPanel.setSize this dimension)
        assignedValue <- (LinkedList.new_)
        jset (this).canvasJPanelList (assignedValue)
        gridBagLayout <- (GridBagLayout.new_)
        gridBagConstraints <- newIORef =<< (GridBagConstraints.new_)
        Control.Monad.void (JPanel.setLayout ((jget (this).innerJPanel)) gridBagLayout)
        jset ((jget gridBagConstraints)).gridx (0)
        jset ((jget gridBagConstraints)).gridy (0)
        jset ((jget gridBagConstraints)).gridwidth (1)
        jset ((jget gridBagConstraints)).fill ((jget ((jget (java.awt).gridBagConstraints)).bOTH))
        jset ((jget gridBagConstraints)).weightx (0.05)
        jset ((jget gridBagConstraints)).weighty (0.05)
        toolJPanel <- (ToolJPanel.new_)
        Control.Monad.void (GridBagLayout.setConstraints gridBagLayout toolJPanel (jget gridBagConstraints))
        Control.Monad.void (JPanel.add ((jget (this).innerJPanel)) toolJPanel)
        assignedValue <- (GridBagConstraints.new_)
        jset gridBagConstraints (assignedValue)
        jset ((jget gridBagConstraints)).gridx (1)
        jset ((jget gridBagConstraints)).gridy (0)
        jset ((jget gridBagConstraints)).gridwidth (6)
        jset ((jget gridBagConstraints)).fill ((jget ((jget (java.awt).gridBagConstraints)).bOTH))
        jset ((jget gridBagConstraints)).weightx (1)
        jset ((jget gridBagConstraints)).weighty (1)
        Control.Monad.void (GridBagLayout.setConstraints gridBagLayout (jget (this).canvasHolderJPanel) (jget gridBagConstraints))
        Control.Monad.void (JPanel.add ((jget (this).innerJPanel)) (jget (this).canvasHolderJPanel))
        assignedValue <- (GridBagConstraints.new_)
        jset gridBagConstraints (assignedValue)
        jset ((jget gridBagConstraints)).gridx (8)
        jset ((jget gridBagConstraints)).gridy (0)
        jset ((jget gridBagConstraints)).gridwidth ((jget ((jget (java.awt).gridBagConstraints)).rEMAINDER))
        jset ((jget gridBagConstraints)).fill ((jget ((jget (java.awt).gridBagConstraints)).bOTH))
        jset ((jget gridBagConstraints)).weightx (0.1)
        jset ((jget gridBagConstraints)).weighty (0.1)
        assignedValue <- (PropertiesJPanel.new_)
        jset (this).propertiesJPanel (assignedValue)
        Control.Monad.void (GridBagLayout.setConstraints gridBagLayout (jget (this).propertiesJPanel) (jget gridBagConstraints))
        Control.Monad.void (JPanel.add ((jget (this).innerJPanel)) (jget (this).propertiesJPanel))
        Control.Monad.void (MyCanvasEventService.addListener (javaCast this :: MyCanvasEventListener.MyCanvasEventListener))
        pure ()


getCanvasHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getCanvasHashMap object_ = jmethod object_ "getCanvasHashMap" (\() -> (getCanvasHashMap_impl (javaCast object_ :: WorkAreaJPanel))) ()

getCanvasHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getCanvasHashMap_super object_ = (getCanvasHashMap_impl (javaCast object_ :: WorkAreaJPanel))

getCanvasHashMap_impl :: WorkAreaJPanel -> IO (HashMap.HashMap)
getCanvasHashMap_impl this = do
        canvasJPanelHashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        size <- (LinkedList.size ((jget (this).canvasJPanelList)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let canvasJPanel = (javaCast (jio (LinkedList.get ((jget (this).canvasJPanelList)) index)) :: CanvasJPanel.CanvasJPanel)
            Control.Monad.void (HashMap.put canvasJPanelHashMap (jio (CanvasJPanel.getTreeNode canvasJPanel)) (Prelude.fromIntegral (index) :: Int))
        pure (canvasJPanelHashMap)


play :: (JavaObjectClass this_) => this_ -> IO (())
play object_ = jmethod object_ "play" (\() -> (play_impl (javaCast object_ :: WorkAreaJPanel))) ()

play_super :: (JavaObjectClass this_) => this_ -> IO (())
play_super object_ = (play_impl (javaCast object_ :: WorkAreaJPanel))

play_impl :: WorkAreaJPanel -> IO (())
play_impl this = do
        jset (this).isPlaying (True)
        pure ()


stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: WorkAreaJPanel))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: WorkAreaJPanel))

stop_impl :: WorkAreaJPanel -> IO (())
stop_impl this = do
        jset (this).isPlaying (False)
        pure ()


isPlaying :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPlaying object_ = jmethod object_ "isPlaying" (\() -> (isPlaying_impl (javaCast object_ :: WorkAreaJPanel))) ()

isPlaying_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPlaying_super object_ = (isPlaying_impl (javaCast object_ :: WorkAreaJPanel))

isPlaying_impl :: WorkAreaJPanel -> IO (Bool)
isPlaying_impl this = do
        pure ((jget (this).isPlaying))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: WorkAreaJPanel))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: WorkAreaJPanel))

getName_impl :: WorkAreaJPanel -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: WorkAreaJPanel))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: WorkAreaJPanel)) a1

setName_impl :: WorkAreaJPanel -> String -> IO (())
setName_impl this value = do
        jset (this).name (value)
        pure ()


disableCanvas :: (JavaObjectClass this_) => this_ -> IO (())
disableCanvas object_ = jmethod object_ "disableCanvas" (\() -> (disableCanvas_impl (javaCast object_ :: WorkAreaJPanel))) ()

disableCanvas_super :: (JavaObjectClass this_) => this_ -> IO (())
disableCanvas_super object_ = (disableCanvas_impl (javaCast object_ :: WorkAreaJPanel))

disableCanvas_impl :: WorkAreaJPanel -> IO (())
disableCanvas_impl this = do
        Control.Monad.void (JPanel.removeAll ((jget (this).canvasHolderJPanel)))
        pure ()


enableCanvas :: (JavaObjectClass this_) => this_ -> IO (())
enableCanvas object_ = jmethod object_ "enableCanvas" (\() -> (enableCanvas_impl (javaCast object_ :: WorkAreaJPanel))) ()

enableCanvas_super :: (JavaObjectClass this_) => this_ -> IO (())
enableCanvas_super object_ = (enableCanvas_impl (javaCast object_ :: WorkAreaJPanel))

enableCanvas_impl :: WorkAreaJPanel -> IO (())
enableCanvas_impl this = do
        Control.Monad.void (JPanel.add ((jget (this).canvasHolderJPanel)) (javaCast (jio (WorkAreaJPanel.getCurrentFrame this)) :: Component.Component))
        pure ()


deselect :: (JavaObjectClass this_) => this_ -> IO (())
deselect object_ = jmethod object_ "deselect" (\() -> (deselect_impl (javaCast object_ :: WorkAreaJPanel))) ()

deselect_super :: (JavaObjectClass this_) => this_ -> IO (())
deselect_super object_ = (deselect_impl (javaCast object_ :: WorkAreaJPanel))

deselect_impl :: WorkAreaJPanel -> IO (())
deselect_impl this = do
        Control.Monad.void (JPanel.setVisible_super this.base False)
        pure ()


select :: (JavaObjectClass this_) => this_ -> IO (())
select object_ = jmethod object_ "select" (\() -> (select_impl (javaCast object_ :: WorkAreaJPanel))) ()

select_super :: (JavaObjectClass this_) => this_ -> IO (())
select_super object_ = (select_impl (javaCast object_ :: WorkAreaJPanel))

select_impl :: WorkAreaJPanel -> IO (())
select_impl this = do
        Control.Monad.void (JPanel.setVisible_super this.base True)
        when ((jio (JPanel.getComponentCount ((jget (this).canvasHolderJPanel)))) == 1) $ do
            component <- (JPanel.getComponent ((jget (this).canvasHolderJPanel)) 0)
            when (component /= javaNull) $ do
                Control.Monad.void (Component.repaint component)
        pure ()


changeZoom :: (JavaObjectClass this_) => this_ -> Int -> IO (())
changeZoom object_ a1 = jmethod object_ "changeZoom" (\() -> (changeZoom_impl (javaCast object_ :: WorkAreaJPanel))) () a1

changeZoom_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
changeZoom_super object_ a1 = (changeZoom_impl (javaCast object_ :: WorkAreaJPanel)) a1

changeZoom_impl :: WorkAreaJPanel -> Int -> IO (())
changeZoom_impl this factor = do
        size <- (LinkedList.size ((jget (this).canvasJPanelList)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let canvasJPanel = (javaCast (jio (LinkedList.get ((jget (this).canvasJPanelList)) index)) :: CanvasJPanel.CanvasJPanel)
            Control.Monad.void (Grid.setZoom ((jio (CanvasJPanel.getGrid canvasJPanel))) ((jio (Grid.getZoom ((jio (CanvasJPanel.getGrid canvasJPanel))))) + factor))
        pure ()


getCurrentFrame :: (JavaObjectClass this_) => this_ -> IO (CanvasJPanel.CanvasJPanel)
getCurrentFrame object_ = jmethod object_ "getCurrentFrame" (\() -> (getCurrentFrame_impl (javaCast object_ :: WorkAreaJPanel))) ()

getCurrentFrame_super :: (JavaObjectClass this_) => this_ -> IO (CanvasJPanel.CanvasJPanel)
getCurrentFrame_super object_ = (getCurrentFrame_impl (javaCast object_ :: WorkAreaJPanel))

getCurrentFrame_impl :: WorkAreaJPanel -> IO (CanvasJPanel.CanvasJPanel)
getCurrentFrame_impl this = do
        pure ((javaCast (jio (LinkedList.get ((jget (this).canvasJPanelList)) (jget (this).selectedFrame))) :: CanvasJPanel.CanvasJPanel))


initDuplicate :: (JavaObjectClass this_) => this_ -> CanvasJPanel.CanvasJPanel -> IO (())
initDuplicate object_ a1 = jmethod object_ "initDuplicate" (\() -> (initDuplicate_impl (javaCast object_ :: WorkAreaJPanel))) () a1

initDuplicate_super :: (JavaObjectClass this_) => this_ -> CanvasJPanel.CanvasJPanel -> IO (())
initDuplicate_super object_ a1 = (initDuplicate_impl (javaCast object_ :: WorkAreaJPanel)) a1

initDuplicate_impl :: WorkAreaJPanel -> CanvasJPanel.CanvasJPanel -> IO (())
initDuplicate_impl this newCanvasJPanel = do
        when (newCanvasJPanel /= javaNull) $ do
            Control.Monad.void (LinkedList.add ((jget (this).canvasJPanelList)) newCanvasJPanel)
            Control.Monad.void (WorkAreaJPanel.select this ((jio (LinkedList.size ((jget (this).canvasJPanelList)))) - 1))
        pure ()


-- Java overloads of duplicate: calls the overload for the types of the arguments
duplicate :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
duplicate this a1
    | jisInstanceOf a1 (javaNull :: MutableTreeNode.MutableTreeNode) = duplicate_overload1 this (javaCast a1 :: MutableTreeNode.MutableTreeNode)
    | jisInstanceOf a1 (javaNull :: MyCanvasEvent.MyCanvasEvent) = duplicate_overload2 this (javaCast a1 :: MyCanvasEvent.MyCanvasEvent)
    | otherwise = duplicate_overload2 this (javaCast a1 :: MyCanvasEvent.MyCanvasEvent)

-- throws Exception
duplicate_overload1 :: (JavaObjectClass this_) => this_ -> MutableTreeNode.MutableTreeNode -> IO (())
duplicate_overload1 object_ a1 = jmethod object_ "duplicate_overload1" (\() -> (duplicate_overload1_impl (javaCast object_ :: WorkAreaJPanel))) () a1

duplicate_overload1_super :: (JavaObjectClass this_) => this_ -> MutableTreeNode.MutableTreeNode -> IO (())
duplicate_overload1_super object_ a1 = (duplicate_overload1_impl (javaCast object_ :: WorkAreaJPanel)) a1

duplicate_overload1_impl :: WorkAreaJPanel -> MutableTreeNode.MutableTreeNode -> IO (())
duplicate_overload1_impl this treeNode = do
        canvasJPanelHashMap <- (WorkAreaJPanel.getCanvasHashMap this)
        when (jio (HashMap.containsKey canvasJPanelHashMap treeNode)) $ do
            let frameInteger = (javaCast (jio (HashMap.get canvasJPanelHashMap treeNode)) :: Int)
            let canvasJPanel = (javaCast (jio (LinkedList.get ((jget (this).canvasJPanelList)) (frameInteger))) :: CanvasJPanel.CanvasJPanel)
            Control.Monad.void (WorkAreaJPanel.initDuplicate this (jio (CanvasJPanel.duplicate canvasJPanel)))
        pure ()


-- throws Exception
autoRotate :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
autoRotate object_ a1 a2 = jmethod object_ "autoRotate" (\() -> (autoRotate_impl (javaCast object_ :: WorkAreaJPanel))) () a1 a2

autoRotate_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
autoRotate_super object_ a1 a2 = (autoRotate_impl (javaCast object_ :: WorkAreaJPanel)) a1 a2

autoRotate_impl :: WorkAreaJPanel -> Int -> Int -> IO (())
autoRotate_impl this increments totalAngle = do
        let incrementAngle = ((totalAngle `quot` increments))
        forM_ [1 .. increments - 1] $ \index -> javaIteration (pure ()) $ do
            let canvasJPanel = (javaCast (jio (WorkAreaJPanel.getCurrentFrame this)) :: CanvasJPanel.CanvasJPanel)
            newCanvasJPanel <- (CanvasJPanel.duplicate canvasJPanel)
            Control.Monad.void (CanvasJPanel.setAngle newCanvasJPanel (incrementAngle * index))
            Control.Monad.void (WorkAreaJPanel.initDuplicate this newCanvasJPanel)
        pure ()


explodeAll :: (JavaObjectClass this_) => this_ -> IO (())
explodeAll object_ = jmethod object_ "explodeAll" (\() -> (explodeAll_impl (javaCast object_ :: WorkAreaJPanel))) ()

explodeAll_super :: (JavaObjectClass this_) => this_ -> IO (())
explodeAll_super object_ = (explodeAll_impl (javaCast object_ :: WorkAreaJPanel))

explodeAll_impl :: WorkAreaJPanel -> IO (())
explodeAll_impl this = do
        let canvasJPanel = (javaCast (jio (WorkAreaJPanel.getCurrentFrame this)) :: CanvasJPanel.CanvasJPanel)
        Control.Monad.void (CanvasJPanel.explodeAll canvasJPanel)
        pure ()


-- throws Exception
autoExplode :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
autoExplode object_ a1 a2 = jmethod object_ "autoExplode" (\() -> (autoExplode_impl (javaCast object_ :: WorkAreaJPanel))) () a1 a2

autoExplode_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
autoExplode_super object_ a1 a2 = (autoExplode_impl (javaCast object_ :: WorkAreaJPanel)) a1 a2

autoExplode_impl :: WorkAreaJPanel -> Int -> Int -> IO (())
autoExplode_impl this numberOfFrames explodeType = do
        forM_ [1 .. numberOfFrames - 1] $ \index -> javaIteration (pure ()) $ do
            let canvasJPanel = (javaCast (jio (WorkAreaJPanel.getCurrentFrame this)) :: CanvasJPanel.CanvasJPanel)
            newCanvasJPanel <- (CanvasJPanel.duplicate canvasJPanel)
            Control.Monad.void (CanvasJPanel.explode newCanvasJPanel (index + 1) explodeType)
            Control.Monad.void (WorkAreaJPanel.initDuplicate this newCanvasJPanel)
        pure ()


-- throws Exception
autoMirror :: (JavaObjectClass this_) => this_ -> IO (())
autoMirror object_ = jmethod object_ "autoMirror" (\() -> (autoMirror_impl (javaCast object_ :: WorkAreaJPanel))) ()

autoMirror_super :: (JavaObjectClass this_) => this_ -> IO (())
autoMirror_super object_ = (autoMirror_impl (javaCast object_ :: WorkAreaJPanel))

autoMirror_impl :: WorkAreaJPanel -> IO (())
autoMirror_impl this = do
        let canvasJPanel = (javaCast (jio (WorkAreaJPanel.getCurrentFrame this)) :: CanvasJPanel.CanvasJPanel)
        newCanvasJPanel <- (CanvasJPanel.duplicate canvasJPanel)
        Control.Monad.void (CanvasJPanel.mirror newCanvasJPanel)
        Control.Monad.void (WorkAreaJPanel.initDuplicate this newCanvasJPanel)
        pure ()


-- Java overloads of select: calls the overload for the types of the arguments
select :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
select this a1
    | jisInstanceOf a1 (javaNull :: Int) = select_overload1 this (javaCast a1 :: Int)
    | jisInstanceOf a1 (javaNull :: MutableTreeNode.MutableTreeNode) = select_overload2 this (javaCast a1 :: MutableTreeNode.MutableTreeNode)
    | jisInstanceOf a1 (javaNull :: MyCanvasEvent.MyCanvasEvent) = select_overload3 this (javaCast a1 :: MyCanvasEvent.MyCanvasEvent)
    | otherwise = select_overload3 this (javaCast a1 :: MyCanvasEvent.MyCanvasEvent)

-- Java overload of select with a different parameter count: give it a different name
select_overload1 :: (JavaObjectClass this_) => this_ -> Int -> IO (())
select_overload1 object_ a1 = jmethod object_ "select_overload1" (\() -> (select_overload1_impl (javaCast object_ :: WorkAreaJPanel))) () a1

select_overload1_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
select_overload1_super object_ a1 = (select_overload1_impl (javaCast object_ :: WorkAreaJPanel)) a1

select_overload1_impl :: WorkAreaJPanel -> Int -> IO (())
select_overload1_impl this index = do
        when (index < (jio (LinkedList.size ((jget (this).canvasJPanelList))))) $ do
            let canvasJPanel = (javaCast (jio (LinkedList.get ((jget (this).canvasJPanelList)) index)) :: CanvasJPanel.CanvasJPanel)
            when (canvasJPanel /= javaNull) $ do
                Control.Monad.void (JPanel.removeAll ((jget (this).canvasHolderJPanel)))
                Control.Monad.void (JPanel.add ((jget (this).canvasHolderJPanel)) canvasJPanel)
                jset (this).selectedFrame (index)
                Control.Monad.void (CanvasJPanel.changed canvasJPanel)
                Control.Monad.void (JPanel.repaint ((jget (this).canvasHolderJPanel)))
                Control.Monad.void (CanvasJPanel.repaint canvasJPanel)
        pure ()


-- Java overload of select with a different parameter count: give it a different name
select_overload2 :: (JavaObjectClass this_) => this_ -> MutableTreeNode.MutableTreeNode -> IO (())
select_overload2 object_ a1 = jmethod object_ "select_overload2" (\() -> (select_overload2_impl (javaCast object_ :: WorkAreaJPanel))) () a1

select_overload2_super :: (JavaObjectClass this_) => this_ -> MutableTreeNode.MutableTreeNode -> IO (())
select_overload2_super object_ a1 = (select_overload2_impl (javaCast object_ :: WorkAreaJPanel)) a1

select_overload2_impl :: WorkAreaJPanel -> MutableTreeNode.MutableTreeNode -> IO (())
select_overload2_impl this treeNode = do
        canvasJPanelHashMap <- (WorkAreaJPanel.getCanvasHashMap this)
        let frameInteger = (javaCast (jio (HashMap.get canvasJPanelHashMap treeNode)) :: Int)
        when (frameInteger /= javaNull) $ do
            Control.Monad.void (WorkAreaJPanel.select this (frameInteger))
        pure ()


getDocument :: IO (Document.Document)
getDocument = do
        pure ((jget WorkAreaJPanel.document))


-- throws Exception
toDocument :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toDocument object_ = jmethod object_ "toDocument" (\() -> (toDocument_impl (javaCast object_ :: WorkAreaJPanel))) ()

toDocument_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toDocument_super object_ = (toDocument_impl (javaCast object_ :: WorkAreaJPanel))

toDocument_impl :: WorkAreaJPanel -> IO (Document.Document)
toDocument_impl this = do
        assignedValue <- (DomHelper.createDocument ((jio (DomHelper.getInstance))))
        jset WorkAreaJPanel.document (assignedValue)
        workAreaNode <- (createElement ((jget WorkAreaJPanel.document)) (WorkAreaDom.wORKAREA))
        nameNode <- (createElement ((jget WorkAreaJPanel.document)) (WorkAreaDom.nAME))
        nameTextNode <- (createTextNode ((jget WorkAreaJPanel.document)) (jget (this).name))
        Control.Monad.void (Node.appendChild nameNode nameTextNode)
        framesNode <- (createElement ((jget WorkAreaJPanel.document)) (WorkAreaDom.fRAMES))
        size <- (LinkedList.size ((jget (this).canvasJPanelList)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let canvasJPanel = (javaCast (jio (LinkedList.get ((jget (this).canvasJPanelList)) index)) :: CanvasJPanel.CanvasJPanel)
            Control.Monad.void (Node.appendChild framesNode (jio (CanvasJPanel.toDom canvasJPanel)))
        Control.Monad.void (Node.appendChild workAreaNode nameNode)
        Control.Monad.void (Node.appendChild workAreaNode framesNode)
        Control.Monad.void (appendChild ((jget WorkAreaJPanel.document)) workAreaNode)
        pure ((jget document))


initComponents :: (JavaObjectClass this_) => this_ -> IO (())
initComponents object_ = jmethod object_ "initComponents" (\() -> (initComponents_impl (javaCast object_ :: WorkAreaJPanel))) ()

initComponents_super :: (JavaObjectClass this_) => this_ -> IO (())
initComponents_super object_ = (initComponents_impl (javaCast object_ :: WorkAreaJPanel))

initComponents_impl :: WorkAreaJPanel -> IO (())
initComponents_impl this = do
        assignedValue <- (JPanel.new_)
        jset (this).innerJPanel (assignedValue)
        Control.Monad.void (JPanel.setLayout this (jio (GridLayout.new_2 1 1)))
        Control.Monad.void (JPanel.addKeyListener ((jget (this).innerJPanel)) (KeyAdapter.new_ {- Java anonymous class body: implement it as a record of functions
            -- keyTyped
            -- keyPressed
            -- keyReleased
-}))
        Control.Monad.void (JPanel.add this (jget (this).innerJPanel))
        pure ()


innerJPanelKeyReleased :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
innerJPanelKeyReleased object_ a1 = jmethod object_ "innerJPanelKeyReleased" (\() -> (innerJPanelKeyReleased_impl (javaCast object_ :: WorkAreaJPanel))) () a1

innerJPanelKeyReleased_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
innerJPanelKeyReleased_super object_ a1 = (innerJPanelKeyReleased_impl (javaCast object_ :: WorkAreaJPanel)) a1

innerJPanelKeyReleased_impl :: WorkAreaJPanel -> KeyEvent.KeyEvent -> IO (())
innerJPanelKeyReleased_impl this evt = do
        Control.Monad.void (StatusFactory.setStatus ((jio (StatusFactory.getInstance))) "Key Pressed1")
        pure ()


innerJPanelKeyPressed :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
innerJPanelKeyPressed object_ a1 = jmethod object_ "innerJPanelKeyPressed" (\() -> (innerJPanelKeyPressed_impl (javaCast object_ :: WorkAreaJPanel))) () a1

innerJPanelKeyPressed_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
innerJPanelKeyPressed_super object_ a1 = (innerJPanelKeyPressed_impl (javaCast object_ :: WorkAreaJPanel)) a1

innerJPanelKeyPressed_impl :: WorkAreaJPanel -> KeyEvent.KeyEvent -> IO (())
innerJPanelKeyPressed_impl this evt = do
        Control.Monad.void (StatusFactory.setStatus ((jio (StatusFactory.getInstance))) "Key Pressed2")
        pure ()


innerJPanelKeyTyped :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
innerJPanelKeyTyped object_ a1 = jmethod object_ "innerJPanelKeyTyped" (\() -> (innerJPanelKeyTyped_impl (javaCast object_ :: WorkAreaJPanel))) () a1

innerJPanelKeyTyped_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
innerJPanelKeyTyped_super object_ a1 = (innerJPanelKeyTyped_impl (javaCast object_ :: WorkAreaJPanel)) a1

innerJPanelKeyTyped_impl :: WorkAreaJPanel -> KeyEvent.KeyEvent -> IO (())
innerJPanelKeyTyped_impl this evt = do
        Control.Monad.void (StatusFactory.setStatus ((jio (StatusFactory.getInstance))) "Key Pressed3")
        pure ()


keyPressed :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyPressed object_ a1 = jmethod object_ "keyPressed" (\() -> (keyPressed_impl (javaCast object_ :: WorkAreaJPanel))) () a1

keyPressed_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyPressed_super object_ a1 = (keyPressed_impl (javaCast object_ :: WorkAreaJPanel)) a1

keyPressed_impl :: WorkAreaJPanel -> KeyEvent.KeyEvent -> IO (())
keyPressed_impl this keyEvent = do
        Control.Monad.void (CanvasJPanel.keyPressed ((jio (WorkAreaJPanel.getCurrentFrame this))) keyEvent)
        pure ()


keyReleased :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyReleased object_ a1 = jmethod object_ "keyReleased" (\() -> (keyReleased_impl (javaCast object_ :: WorkAreaJPanel))) () a1

keyReleased_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyReleased_super object_ a1 = (keyReleased_impl (javaCast object_ :: WorkAreaJPanel)) a1

keyReleased_impl :: WorkAreaJPanel -> KeyEvent.KeyEvent -> IO (())
keyReleased_impl this keyEvent = do
        pure ()


keyTyped :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyTyped object_ a1 = jmethod object_ "keyTyped" (\() -> (keyTyped_impl (javaCast object_ :: WorkAreaJPanel))) () a1

keyTyped_super :: (JavaObjectClass this_) => this_ -> KeyEvent.KeyEvent -> IO (())
keyTyped_super object_ a1 = (keyTyped_impl (javaCast object_ :: WorkAreaJPanel)) a1

keyTyped_impl :: WorkAreaJPanel -> KeyEvent.KeyEvent -> IO (())
keyTyped_impl this keyEvent = do
        pure ()


delete :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
delete object_ a1 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: WorkAreaJPanel))) () a1

delete_super :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
delete_super object_ a1 = (delete_impl (javaCast object_ :: WorkAreaJPanel)) a1

delete_impl :: WorkAreaJPanel -> MyCanvasEvent.MyCanvasEvent -> IO (())
delete_impl this evt = do
        canvasJPanelHashMap <- (WorkAreaJPanel.getCanvasHashMap this)
        when (jio (HashMap.containsKey canvasJPanelHashMap (jio (MyCanvasEvent.getTreeNode evt)))) $ do
            Control.Monad.void (JPanel.removeAll ((jget (this).canvasHolderJPanel)))
            let frameInt = (javaCast (jio (HashMap.get canvasJPanelHashMap (jio (MyCanvasEvent.getTreeNode evt)))) :: Int)
            Control.Monad.void (LinkedList.remove ((jget (this).canvasJPanelList)) (frameInt))
            Control.Monad.void (WorkAreaJPanel.select this (frameInt))
        pure ()


-- throws Exception
duplicate_overload2 :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
duplicate_overload2 object_ a1 = jmethod object_ "duplicate_overload2" (\() -> (duplicate_overload2_impl (javaCast object_ :: WorkAreaJPanel))) () a1

duplicate_overload2_super :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
duplicate_overload2_super object_ a1 = (duplicate_overload2_impl (javaCast object_ :: WorkAreaJPanel)) a1

duplicate_overload2_impl :: WorkAreaJPanel -> MyCanvasEvent.MyCanvasEvent -> IO (())
duplicate_overload2_impl this evt = do
        Control.Monad.void (WorkAreaJPanel.duplicate this (jio (MyCanvasEvent.getTreeNode evt)))
        pure ()


-- Java overload of select with a different parameter count: give it a different name
select_overload3 :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
select_overload3 object_ a1 = jmethod object_ "select_overload3" (\() -> (select_overload3_impl (javaCast object_ :: WorkAreaJPanel))) () a1

select_overload3_super :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
select_overload3_super object_ a1 = (select_overload3_impl (javaCast object_ :: WorkAreaJPanel)) a1

select_overload3_impl :: WorkAreaJPanel -> MyCanvasEvent.MyCanvasEvent -> IO (())
select_overload3_impl this evt = do
        Control.Monad.void (WorkAreaJPanel.select this (jio (MyCanvasEvent.getTreeNode evt)))
        Control.Monad.void (StatusFactory.setStatus ((jio (StatusFactory.getInstance))) "Frame Selected")
        pure ()


rotate :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
rotate object_ a1 = jmethod object_ "rotate" (\() -> (rotate_impl (javaCast object_ :: WorkAreaJPanel))) () a1

rotate_super :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
rotate_super object_ a1 = (rotate_impl (javaCast object_ :: WorkAreaJPanel)) a1

rotate_impl :: WorkAreaJPanel -> MyCanvasEvent.MyCanvasEvent -> IO (())
rotate_impl this evt = do
        canvasJPanelHashMap <- (WorkAreaJPanel.getCanvasHashMap this)
        treeNode <- (MyCanvasEvent.getTreeNode evt)
        let frameInt = (javaCast (jio (HashMap.get canvasJPanelHashMap (jio (MyCanvasEvent.getTreeNode evt)))) :: Int)
        let canvasJPanel = (javaCast (jio (LinkedList.get ((jget (this).canvasJPanelList)) (frameInt))) :: CanvasJPanel.CanvasJPanel)
        when (canvasJPanel /= javaNull) $ do
            Control.Monad.void (CanvasJPanel.addAngle canvasJPanel (jio (MyCanvasEvent.getAngle evt)))
            Control.Monad.void (WorkAreaJPanel.select this (frameInt))
        Control.Monad.void (StatusFactory.setStatus ((jio (StatusFactory.getInstance))) "Canvas Rotated")
        pure ()


explode :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
explode object_ a1 = jmethod object_ "explode" (\() -> (explode_impl (javaCast object_ :: WorkAreaJPanel))) () a1

explode_super :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
explode_super object_ a1 = (explode_impl (javaCast object_ :: WorkAreaJPanel)) a1

explode_impl :: WorkAreaJPanel -> MyCanvasEvent.MyCanvasEvent -> IO (())
explode_impl this evt = do
        Control.Monad.void (WorkAreaJPanel.explodeAll this)
        pure ()


-- throws Exception
-- Java overload of autoExplode with a different parameter count: give it a different name
autoExplode :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
autoExplode object_ a1 = jmethod object_ "autoExplode" (\() -> (autoExplode_impl (javaCast object_ :: WorkAreaJPanel))) () a1

autoExplode_super :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
autoExplode_super object_ a1 = (autoExplode_impl (javaCast object_ :: WorkAreaJPanel)) a1

autoExplode_impl :: WorkAreaJPanel -> MyCanvasEvent.MyCanvasEvent -> IO (())
autoExplode_impl this evt = do
        Control.Monad.void (WorkAreaJPanel.autoExplode this 10 0)
        pure ()


-- throws Exception
center :: (JavaObjectClass this_) => this_ -> IO (())
center object_ = jmethod object_ "center" (\() -> (center_impl (javaCast object_ :: WorkAreaJPanel))) ()

center_super :: (JavaObjectClass this_) => this_ -> IO (())
center_super object_ = (center_impl (javaCast object_ :: WorkAreaJPanel))

center_impl :: WorkAreaJPanel -> IO (())
center_impl this = do
        let canvasJPanel = (javaCast (jio (WorkAreaJPanel.getCurrentFrame this)) :: CanvasJPanel.CanvasJPanel)
        Control.Monad.void (CanvasJPanel.center canvasJPanel)
        pure ()


-- throws Exception
-- Java overload of center with a different parameter count: give it a different name
center :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
center object_ a1 = jmethod object_ "center" (\() -> (center_impl (javaCast object_ :: WorkAreaJPanel))) () a1

center_super :: (JavaObjectClass this_) => this_ -> MyCanvasEvent.MyCanvasEvent -> IO (())
center_super object_ a1 = (center_impl (javaCast object_ :: WorkAreaJPanel)) a1

center_impl :: WorkAreaJPanel -> MyCanvasEvent.MyCanvasEvent -> IO (())
center_impl this evt = do
        Control.Monad.void (WorkAreaJPanel.center this)
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: WorkAreaJPanel))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: WorkAreaJPanel))

run_impl :: WorkAreaJPanel -> IO (())
run_impl this = do
        handle (\(e :: JavaException) -> do
            pure ()
            ) $ do
            fix $ \loop -> when True $ javaIteration (loop) $ do
                if (jio (WorkAreaJPanel.isPlaying this)) then do
                    size <- (LinkedList.size ((jget (this).canvasJPanelList)))
                    forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                        when (Prelude.not (jio (WorkAreaJPanel.isPlaying this))) $ do
                            throwIO JavaBreak
                        Control.Monad.void (WorkAreaJPanel.select this index)
                        Control.Monad.void (threadDelay (Prelude.fromIntegral 100 * 1000))
                else do
                    Control.Monad.void (threadDelay (Prelude.fromIntegral 500 * 1000))
                Control.Monad.void (threadDelay (Prelude.fromIntegral 250 * 1000))
        pure ()


