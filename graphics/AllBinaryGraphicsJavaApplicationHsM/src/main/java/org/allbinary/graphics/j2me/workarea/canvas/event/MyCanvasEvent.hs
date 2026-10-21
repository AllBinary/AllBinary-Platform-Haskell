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
-- package org.allbinary.graphics.j2me.workarea.canvas.event
module MyCanvasEvent (module MyCanvasEvent, module EventObject) where

import EventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getSource, getSource_super, getSource_impl, toString, toString_super, toString_impl, getCommand, getCommand_super, getCommand_impl, getTreeNode, getTreeNode_super, getTreeNode_impl, getAngle, getAngle_super, getAngle_impl)
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
import qualified MyCanvasEventSource -- same package or java.lang
import qualified MutableTreeNode -- javax.swing.tree.MutableTreeNode
import qualified EventObject

data MyCanvasEvent = MyCanvasEvent
    { header_ :: JavaHeader
    , base :: EventObject.EventObject
    }

instance JavaNull MyCanvasEvent where
    javaNull = javaNullRecord "MyCanvasEvent"

instance JavaEquals MyCanvasEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MyCanvasEvent where
    (==) = jrecordEquals

instance JavaObjectClass MyCanvasEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MyCanvasEvent
newRecord_ = do
    base <- EventObject.newRecord_
    let header_ = base.header_
    let this = MyCanvasEvent header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getSource" (\() -> getSource_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getCommand" (\() -> getCommand_impl this)
    jregisterMethod header_ "getTreeNode" (\() -> getTreeNode_impl this)
    jregisterMethod header_ "getAngle" (\() -> getAngle_impl this)
    pure this

initFields_ :: MyCanvasEvent -> IO ()
initFields_ this = do
    pure ()

new_1 :: (JavaObjectClass o1) => o1 -> IO MyCanvasEvent
new_1 sourceObject_ = do
    this <- newRecord_
    init_1 this sourceObject_
    pure this

init_1 :: (JavaObjectClass o1) => MyCanvasEvent -> o1 -> IO ()
init_1 this sourceObject_ = do
        let source = jtoObject sourceObject_
        EventObject.init_1 this.base (source)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getSource :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getSource object_ = jmethod object_ "getSource" (\() -> (getSource_impl (javaCast object_ :: MyCanvasEvent))) ()

getSource_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getSource_super object_ = (getSource_impl (javaCast object_ :: MyCanvasEvent))

getSource_impl :: MyCanvasEvent -> IO (Any.Any)
getSource_impl this = do
        (fmap jtoObject (EventObject.getSource_super this.base))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: MyCanvasEvent))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: MyCanvasEvent))

toString_impl :: MyCanvasEvent -> IO (String)
toString_impl this = do
        (EventObject.toString_super this.base)


getCommand :: (JavaObjectClass this_) => this_ -> IO (String)
getCommand object_ = jmethod object_ "getCommand" (\() -> (getCommand_impl (javaCast object_ :: MyCanvasEvent))) ()

getCommand_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCommand_super object_ = (getCommand_impl (javaCast object_ :: MyCanvasEvent))

getCommand_impl :: MyCanvasEvent -> IO (String)
getCommand_impl this = do
        let myEventSource = (javaCast (jio (MyCanvasEvent.getSource this)) :: MyCanvasEventSource.MyCanvasEventSource)
        (MyCanvasEventSource.getCommand myEventSource)


getTreeNode :: (JavaObjectClass this_) => this_ -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode object_ = jmethod object_ "getTreeNode" (\() -> (getTreeNode_impl (javaCast object_ :: MyCanvasEvent))) ()

getTreeNode_super :: (JavaObjectClass this_) => this_ -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode_super object_ = (getTreeNode_impl (javaCast object_ :: MyCanvasEvent))

getTreeNode_impl :: MyCanvasEvent -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode_impl this = do
        let myEventSource = (javaCast (jio (MyCanvasEvent.getSource this)) :: MyCanvasEventSource.MyCanvasEventSource)
        (MyCanvasEventSource.getTreeNode myEventSource)


getAngle :: (JavaObjectClass this_) => this_ -> IO (Double)
getAngle object_ = jmethod object_ "getAngle" (\() -> (getAngle_impl (javaCast object_ :: MyCanvasEvent))) ()

getAngle_super :: (JavaObjectClass this_) => this_ -> IO (Double)
getAngle_super object_ = (getAngle_impl (javaCast object_ :: MyCanvasEvent))

getAngle_impl :: MyCanvasEvent -> IO (Double)
getAngle_impl this = do
        let myEventSource = (javaCast (jio (MyCanvasEvent.getSource this)) :: MyCanvasEventSource.MyCanvasEventSource)
        (MyCanvasEventSource.getAngle myEventSource)


