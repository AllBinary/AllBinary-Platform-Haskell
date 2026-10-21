{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.game.displayable.canvas
module NullAllBinaryGameCanvas where

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
import qualified Command -- javax.microedition.lcdui.Command
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified AllBinaryGameCanvasInterface

-- implements AllBinaryGameCanvasInterface
data NullAllBinaryGameCanvas = NullAllBinaryGameCanvas
    { header_ :: JavaHeader
    }

instance JavaNull NullAllBinaryGameCanvas where
    javaNull = javaNullRecord "NullAllBinaryGameCanvas"

instance JavaEquals NullAllBinaryGameCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullAllBinaryGameCanvas where
    (==) = jrecordEquals

instance JavaObjectClass NullAllBinaryGameCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_ALLBINARY_GAME_CANVAS #-}
nULL_ALLBINARY_GAME_CANVAS = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullAllBinaryGameCanvas
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullAllBinaryGameCanvas header_
    jregisterLevel header_ this
    AllBinaryGameCanvasInterface.registerInterface_ header_
    jregisterMethod header_ "getLayerManager" (\() -> getLayerManager_impl this)
    jregisterMethod header_ "addCommand" (\() -> addCommand_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "removeCommand" (\() -> removeCommand_impl this)
    jregisterMethod header_ "setCommandListener" (\() -> setCommandListener_impl this)
    pure this

initFields_ :: NullAllBinaryGameCanvas -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullAllBinaryGameCanvas
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullAllBinaryGameCanvas -> IO ()
init_ this = do
    initFields_ this


getLayerManager :: (JavaObjectClass this_) => this_ -> IO (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
getLayerManager object_ = jmethod object_ "getLayerManager" (\() -> (getLayerManager_impl (javaCast object_ :: NullAllBinaryGameCanvas))) ()

getLayerManager_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
getLayerManager_super object_ = (getLayerManager_impl (javaCast object_ :: NullAllBinaryGameCanvas))

getLayerManager_impl :: NullAllBinaryGameCanvas -> IO (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
getLayerManager_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


addCommand :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
addCommand object_ a1 = jmethod object_ "addCommand" (\() -> (addCommand_impl (javaCast object_ :: NullAllBinaryGameCanvas))) () a1

addCommand_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
addCommand_super object_ a1 = (addCommand_impl (javaCast object_ :: NullAllBinaryGameCanvas)) a1

addCommand_impl :: NullAllBinaryGameCanvas -> Command.Command -> IO (())
addCommand_impl this cmd = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: NullAllBinaryGameCanvas))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: NullAllBinaryGameCanvas))

getHeight_impl :: NullAllBinaryGameCanvas -> IO (Int)
getHeight_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: NullAllBinaryGameCanvas))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: NullAllBinaryGameCanvas))

getWidth_impl :: NullAllBinaryGameCanvas -> IO (Int)
getWidth_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


removeCommand :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
removeCommand object_ a1 = jmethod object_ "removeCommand" (\() -> (removeCommand_impl (javaCast object_ :: NullAllBinaryGameCanvas))) () a1

removeCommand_super :: (JavaObjectClass this_) => this_ -> Command.Command -> IO (())
removeCommand_super object_ a1 = (removeCommand_impl (javaCast object_ :: NullAllBinaryGameCanvas)) a1

removeCommand_impl :: NullAllBinaryGameCanvas -> Command.Command -> IO (())
removeCommand_impl this cmd = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


setCommandListener :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
setCommandListener object_ a1 = jmethod object_ "setCommandListener" (\() -> (setCommandListener_impl (javaCast object_ :: NullAllBinaryGameCanvas))) () a1

setCommandListener_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
setCommandListener_super object_ a1 = (setCommandListener_impl (javaCast object_ :: NullAllBinaryGameCanvas)) a1

setCommandListener_impl :: NullAllBinaryGameCanvas -> CommandListener.CommandListener -> IO (())
setCommandListener_impl this l = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


