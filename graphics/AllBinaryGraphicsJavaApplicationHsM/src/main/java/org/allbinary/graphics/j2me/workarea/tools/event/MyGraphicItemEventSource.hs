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
-- package org.allbinary.graphics.j2me.workarea.tools.event
module MyGraphicItemEventSource where

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
import qualified MutableTreeNode -- javax.swing.tree.MutableTreeNode

data MyGraphicItemEventSource = MyGraphicItemEventSource
    { header_ :: JavaHeader
    , command :: IORef (String)
    , treeNode :: IORef (MutableTreeNode.MutableTreeNode)
    , angle :: IORef (Double)
    }

instance JavaNull MyGraphicItemEventSource where
    javaNull = javaNullRecord "MyGraphicItemEventSource"

instance JavaEquals MyGraphicItemEventSource where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MyGraphicItemEventSource where
    (==) = jrecordEquals

instance JavaObjectClass MyGraphicItemEventSource where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MyGraphicItemEventSource
newRecord_ = do
    header_ <- newJavaHeader
    command <- newIORef ""
    treeNode <- newIORef javaNull
    angle <- newIORef 0.0
    let this = MyGraphicItemEventSource header_ command treeNode angle
    jregisterLevel header_ this
    jregisterMethod header_ "getCommand" (\() -> getCommand_impl this)
    jregisterMethod header_ "getTreeNode" (\() -> getTreeNode_impl this)
    jregisterMethod header_ "getAngle" (\() -> getAngle_impl this)
    jregisterMethod header_ "setAngle" (\() -> setAngle_impl this)
    pure this

initFields_ :: MyGraphicItemEventSource -> IO ()
initFields_ this = do
    jset this.command (javaNull)
    jset this.treeNode (javaNull)
    jset this.angle (0.0)
    pure ()

new_2 :: String -> MutableTreeNode.MutableTreeNode -> IO MyGraphicItemEventSource
new_2 command treeNode = do
    this <- newRecord_
    init_2 this command treeNode
    pure this

init_2 :: MyGraphicItemEventSource -> String -> MutableTreeNode.MutableTreeNode -> IO ()
init_2 this command treeNode = do
        initFields_ this
        jset (this).command (command)
        jset (this).treeNode (treeNode)
        pure ()

new_3 :: String -> Double -> MutableTreeNode.MutableTreeNode -> IO MyGraphicItemEventSource
new_3 command angle treeNode = do
    this <- newRecord_
    init_3 this command angle treeNode
    pure this

init_3 :: MyGraphicItemEventSource -> String -> Double -> MutableTreeNode.MutableTreeNode -> IO ()
init_3 this command angle treeNode = do
        initFields_ this
        jset (this).command (command)
        jset (this).treeNode (treeNode)
        Control.Monad.void (MyGraphicItemEventSource.setAngle this angle)
        pure ()


getCommand :: (JavaObjectClass this_) => this_ -> IO (String)
getCommand object_ = jmethod object_ "getCommand" (\() -> (getCommand_impl (javaCast object_ :: MyGraphicItemEventSource))) ()

getCommand_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCommand_super object_ = (getCommand_impl (javaCast object_ :: MyGraphicItemEventSource))

getCommand_impl :: MyGraphicItemEventSource -> IO (String)
getCommand_impl this = do
        pure ((jget (this).command))


getTreeNode :: (JavaObjectClass this_) => this_ -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode object_ = jmethod object_ "getTreeNode" (\() -> (getTreeNode_impl (javaCast object_ :: MyGraphicItemEventSource))) ()

getTreeNode_super :: (JavaObjectClass this_) => this_ -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode_super object_ = (getTreeNode_impl (javaCast object_ :: MyGraphicItemEventSource))

getTreeNode_impl :: MyGraphicItemEventSource -> IO (MutableTreeNode.MutableTreeNode)
getTreeNode_impl this = do
        pure ((jget (this).treeNode))


getAngle :: (JavaObjectClass this_) => this_ -> IO (Double)
getAngle object_ = jmethod object_ "getAngle" (\() -> (getAngle_impl (javaCast object_ :: MyGraphicItemEventSource))) ()

getAngle_super :: (JavaObjectClass this_) => this_ -> IO (Double)
getAngle_super object_ = (getAngle_impl (javaCast object_ :: MyGraphicItemEventSource))

getAngle_impl :: MyGraphicItemEventSource -> IO (Double)
getAngle_impl this = do
        pure ((jget (this).angle))


setAngle :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setAngle object_ a1 = jmethod object_ "setAngle" (\() -> (setAngle_impl (javaCast object_ :: MyGraphicItemEventSource))) () a1

setAngle_super :: (JavaObjectClass this_) => this_ -> Double -> IO (())
setAngle_super object_ a1 = (setAngle_impl (javaCast object_ :: MyGraphicItemEventSource)) a1

setAngle_impl :: MyGraphicItemEventSource -> Double -> IO (())
setAngle_impl this angle = do
        jset (this).angle (angle)
        pure ()


