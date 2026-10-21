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
-- package org.allbinary.input.automation.actions.script.condition.processors.input
module MouseActionScriptInput (module MouseActionScriptInput, module BasicProfileActionScriptInput) where

import BasicProfileActionScriptInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setPoint, setPoint_super, setPoint_impl, getPoint, getPoint_super, getPoint_impl, getButtonClicks, getButtonClicks_super, getButtonClicks_impl, setButtonClicks, setButtonClicks_super, setButtonClicks_impl, showDialog, showDialog_super, showDialog_impl, toHashMap, toHashMap_super, toHashMap_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, process, process_super, process_impl, log, log_super, log_impl, logUtil, point, buttons, nAME, mouseActionScriptInputJPanel)
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
import qualified Point -- same package or java.lang
import qualified MouseActionScriptInputJPanel -- same package or java.lang
import qualified MouseActionScriptInputData -- same package or java.lang
import qualified MouseInputAutomationProcessor -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified InputEvent -- java.awt.event.InputEvent
import qualified HashMap -- java.util.HashMap
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList
-- import java.awt.*
import qualified BasicProfileActionScriptInput
import qualified MouseActionScriptInputInterface

-- implements MouseActionScriptInputInterface
data MouseActionScriptInput = MouseActionScriptInput
    { header_ :: JavaHeader
    , base :: BasicProfileActionScriptInput.BasicProfileActionScriptInput
    , logUtil :: IORef (LogUtil.LogUtil)
    , point :: IORef (Point.Point)
    , buttons :: IORef (Int)
    , mouseActionScriptInputJPanel :: IORef (MouseActionScriptInputJPanel.MouseActionScriptInputJPanel)
    }

instance JavaNull MouseActionScriptInput where
    javaNull = javaNullRecord "MouseActionScriptInput"

instance JavaEquals MouseActionScriptInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MouseActionScriptInput where
    (==) = jrecordEquals

instance JavaObjectClass MouseActionScriptInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "Mouse"

newRecord_ :: IO MouseActionScriptInput
newRecord_ = do
    base <- BasicProfileActionScriptInput.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    point <- newIORef javaNull
    buttons <- newIORef 0
    mouseActionScriptInputJPanel <- newIORef javaNull
    let this = MouseActionScriptInput header_ base logUtil point buttons mouseActionScriptInputJPanel
    jregisterLevel header_ this
    MouseActionScriptInputInterface.registerInterface_ header_
    jregisterMethod header_ "setPoint" (\() -> setPoint_impl this)
    jregisterMethod header_ "getPoint" (\() -> getPoint_impl this)
    jregisterMethod header_ "getButtonClicks" (\() -> getButtonClicks_impl this)
    jregisterMethod header_ "setButtonClicks" (\() -> setButtonClicks_impl this)
    jregisterMethod header_ "showDialog" (\() -> showDialog_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    pure this

initFields_ :: MouseActionScriptInput -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.point (javaNull)
    jset this.buttons (0)
    jset this.mouseActionScriptInputJPanel (javaNull)
    pure ()

new_1 :: Node.Node -> IO MouseActionScriptInput
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: MouseActionScriptInput -> Node.Node -> IO ()
init_1 this node = do
        BasicProfileActionScriptInput.init_2 this.base (nAME) (node)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.commonStrings)).cONSTRUCTOR))
        assignedValue <- (Point.new_)
        jset (this).point (assignedValue)
        actionNode <- (DomSearchHelper.getNode (jget MouseActionScriptInputData.nAME) (jio (Node.getChildNodes node)))
        if (actionNode /= javaNull) then do
            nodeList <- (Node.getChildNodes actionNode)
            forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
                childNode <- (NodeList.item nodeList index)
                if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget MouseActionScriptInputData.bUTTONS))) == 0) then do
                    buttons <- (DomNodeHelper.getTextNodeValue childNode)
                    Control.Monad.void (MouseActionScriptInput.setButtonClicks this (javaToString buttons))
                else if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget MouseActionScriptInputData.mOVE))) == 0) then do
                    mouseXNode <- (DomSearchHelper.getNode (jget MouseActionScriptInputData.mOVE_X) (jio (Node.getChildNodes childNode)))
                    mouseXString <- (DomNodeHelper.getTextNodeValue mouseXNode)
                    let mouseXInteger = (javaToString mouseXString)
                    mouseYNode <- (DomSearchHelper.getNode (jget MouseActionScriptInputData.mOVE_Y) (jio (Node.getChildNodes childNode)))
                    mouseYString <- (DomNodeHelper.getTextNodeValue mouseYNode)
                    let mouseYInteger = (javaToString mouseYString)
                    newPoint <- (Point.new_2 (mouseXInteger) (mouseYInteger))
                    Control.Monad.void (MouseActionScriptInput.setPoint this newPoint)
                else do
                    javaThrow ((JavaException "Exception" "Action Script Input Unknown Node"))
        else do
            javaThrow ((JavaException "Exception" "Action Script Input Node Null"))
        Control.Monad.void (BasicProfileActionScriptInput.setAllowsChildren this False)
        assignedValue <- (MouseActionScriptInputJPanel.new_1 this)
        jset (this).mouseActionScriptInputJPanel (assignedValue)
        pure ()

new_ :: IO MouseActionScriptInput
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MouseActionScriptInput -> IO ()
init_ this = do
        BasicProfileActionScriptInput.init_1 this.base (nAME)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (Point.new_)
        jset (this).point (assignedValue)
        Control.Monad.void (BasicProfileActionScriptInput.setAllowsChildren this False)
        assignedValue <- (MouseActionScriptInputJPanel.new_1 this)
        jset (this).mouseActionScriptInputJPanel (assignedValue)
        pure ()


setPoint :: (JavaObjectClass this_) => this_ -> Point.Point -> IO (())
setPoint object_ a1 = jmethod object_ "setPoint" (\() -> (setPoint_impl (javaCast object_ :: MouseActionScriptInput))) () a1

setPoint_super :: (JavaObjectClass this_) => this_ -> Point.Point -> IO (())
setPoint_super object_ a1 = (setPoint_impl (javaCast object_ :: MouseActionScriptInput)) a1

setPoint_impl :: MouseActionScriptInput -> Point.Point -> IO (())
setPoint_impl this point = do
        jset (this).point (point)
        pure ()


getPoint :: (JavaObjectClass this_) => this_ -> IO (Point.Point)
getPoint object_ = jmethod object_ "getPoint" (\() -> (getPoint_impl (javaCast object_ :: MouseActionScriptInput))) ()

getPoint_super :: (JavaObjectClass this_) => this_ -> IO (Point.Point)
getPoint_super object_ = (getPoint_impl (javaCast object_ :: MouseActionScriptInput))

getPoint_impl :: MouseActionScriptInput -> IO (Point.Point)
getPoint_impl this = do
        pure ((jget (this).point))


getButtonClicks :: (JavaObjectClass this_) => this_ -> IO (Int)
getButtonClicks object_ = jmethod object_ "getButtonClicks" (\() -> (getButtonClicks_impl (javaCast object_ :: MouseActionScriptInput))) ()

getButtonClicks_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getButtonClicks_super object_ = (getButtonClicks_impl (javaCast object_ :: MouseActionScriptInput))

getButtonClicks_impl :: MouseActionScriptInput -> IO (Int)
getButtonClicks_impl this = do
        pure ((jget (this).buttons))


setButtonClicks :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setButtonClicks object_ a1 = jmethod object_ "setButtonClicks" (\() -> (setButtonClicks_impl (javaCast object_ :: MouseActionScriptInput))) () a1

setButtonClicks_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setButtonClicks_super object_ a1 = (setButtonClicks_impl (javaCast object_ :: MouseActionScriptInput)) a1

setButtonClicks_impl :: MouseActionScriptInput -> Int -> IO (())
setButtonClicks_impl this buttons = do
        jset (this).buttons (buttons)
        pure ()


showDialog :: (JavaObjectClass this_) => this_ -> IO (())
showDialog object_ = jmethod object_ "showDialog" (\() -> (showDialog_impl (javaCast object_ :: MouseActionScriptInput))) ()

showDialog_super :: (JavaObjectClass this_) => this_ -> IO (())
showDialog_super object_ = (showDialog_impl (javaCast object_ :: MouseActionScriptInput))

showDialog_impl :: MouseActionScriptInput -> IO (())
showDialog_impl this = do
        Control.Monad.void (JDialog.setVisible ((jio (MouseActionScriptInputJPanel.getMouseActionJDialog ((jget (this).mouseActionScriptInputJPanel))))) True)
        pure ()


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: MouseActionScriptInput))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: MouseActionScriptInput))

toHashMap_impl :: MouseActionScriptInput -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget MouseActionScriptInputData.bUTTONS) (javaToString (jio (MouseActionScriptInput.getButtonClicks this))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("HashMap: " ++ (jio (HashMap.toString hashMap))) this "toHashMap()")
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: MouseActionScriptInput))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: MouseActionScriptInput)) a1

toXmlNode_impl :: MouseActionScriptInput -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (BasicProfileActionScriptInput.toXmlNode_super this.base document)
        mouseNode <- (ModDomHelper.createNodeWithValueNodes document (jget MouseActionScriptInputData.nAME) (jio (MouseActionScriptInput.toHashMap this)))
        Control.Monad.void (Node.appendChild node mouseNode)
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget MouseActionScriptInputData.mOVE_X) (javaToString (jget ((jio (MouseActionScriptInput.getPoint this))).x)))
        Control.Monad.void (HashMap.put hashMap (jget MouseActionScriptInputData.mOVE_Y) (javaToString (jget ((jio (MouseActionScriptInput.getPoint this))).y)))
        Control.Monad.void (Node.appendChild mouseNode (jio (ModDomHelper.createNodeWithValueNodes document (jget MouseActionScriptInputData.mOVE) hashMap)))
        pure (node)


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: MouseActionScriptInput))) () a1

process_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: MouseActionScriptInput)) a1

process_impl :: MouseActionScriptInput -> Int64 -> IO (())
process_impl this frame = do
        Control.Monad.void (MouseInputAutomationProcessor.process this)
        pure ()


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: MouseActionScriptInput))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: MouseActionScriptInput))

log_impl :: MouseActionScriptInput -> IO (())
log_impl this = do
        buttonStringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append buttonStringBuffer "1: ")
        booleanFactory <- (BooleanFactory.getInstance)
        if ((((jio (MouseActionScriptInput.getButtonClicks this)) Data.Bits..&. InputEvent.bUTTON1_MASK)) /= 0) then do
            Control.Monad.void (StringMaker.append buttonStringBuffer (jget (booleanFactory).tRUE_STRING))
        else do
            Control.Monad.void (StringMaker.append buttonStringBuffer (jget (booleanFactory).fALSE_STRING))
        Control.Monad.void (StringMaker.append buttonStringBuffer " 2: ")
        if ((((jio (MouseActionScriptInput.getButtonClicks this)) Data.Bits..&. InputEvent.bUTTON2_MASK)) /= 0) then do
            Control.Monad.void (StringMaker.append buttonStringBuffer (jget (booleanFactory).tRUE_STRING))
        else do
            Control.Monad.void (StringMaker.append buttonStringBuffer (jget (booleanFactory).fALSE_STRING))
        Control.Monad.void (StringMaker.append buttonStringBuffer " 3: ")
        if ((((jio (MouseActionScriptInput.getButtonClicks this)) Data.Bits..&. InputEvent.bUTTON3_MASK)) /= 0) then do
            Control.Monad.void (StringMaker.append buttonStringBuffer (jget (booleanFactory).tRUE_STRING))
        else do
            Control.Monad.void (StringMaker.append buttonStringBuffer (jget (booleanFactory).fALSE_STRING))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((((("Input Type: " ++ (jio (InputRobotInterface.getName ((jio (BasicProfileActionScriptInput.getInputRobotInterface this)))))) ++ " Point: ") ++ javaToString (jio (MouseActionScriptInput.getPoint this))) ++ " Buttons Clicked: ") ++ (jio (StringMaker.toString buttonStringBuffer))) this "log")
        pure ()


